# -*- coding: utf-8 -*-
"""Build the English UI test package (com.t4game.en) from the decoded 1.17 tree.

Scope: essential navigation UI only.
  - exact-match smali `const-string` literals
  - exact-match entries in unknown/Language/Language*.str
  - AndroidManifest package/authority/label for a separate test package

Nothing is guessed: every Chinese source string below was read out of the
decoded tree (smali / JADX sources / Language*.str) by the preceding analysis.
Long lore / quest / item descriptions are intentionally left untranslated.
"""
import io
import os
import re
import sys

sys.stdout.reconfigure(encoding="utf-8")

ROOT = os.path.dirname(os.path.abspath(__file__))
DECODED = os.path.join(ROOT, "decoded")
REPORT = os.path.join(ROOT, "apply_report.txt")

NEW_PACKAGE = "com.t4game.en"
NEW_AUTHORITY = "downloads.com.t4game.en"
NEW_LABEL = "TruThan EN"

# --------------------------------------------------------------------------
# zh -> en  (one English rendering per Chinese source string)
# --------------------------------------------------------------------------
PAIRS = [
    # ---- core dialog buttons (Language.smali StrCurrent) ----
    ("\u786e\u5b9a", "OK"),                       # 确定
    ("\u8fd4\u56de", "Back"),                     # 返回
    ("\u53d6\u6d88", "Cancel"),                   # 取消
    ("\u9009\u62e9", "Select"),                   # 选择
    ("\u5b8c\u6210", "Done"),                     # 完成
    ("'0'\u952e\u5feb\u901f\u67e5\u770b", "Press 0 to view"),  # '0'键快速查看
    ("\u540c\u610f", "Agree"),                    # 同意
    ("\u4e0d\u540c\u610f", "Disagree"),           # 不同意
    ("\u662f", "Yes"),                            # 是
    ("\u5426", "No"),                             # 否
    ("\u8be6\u60c5", "Details"),                  # 详情

    # ---- start menu / boot dialogs (MainMenu.java) ----
    ("\u9009\u62e9\u670d\u52a1\u5668", "Select Server"),      # 选择服务器
    ("\u8fdb\u5165", "Enter"),                               # 进入
    ("\u786e\u8ba4\u9000\u51fa\uff1f", "Confirm Exit?"),      # 确认退出？
    ("\u786e\u8ba4", "Confirm"),                             # 确认
    ("\u9000\u51fa", "Exit"),                                # 退出
    ("\u662f\u5426\u6253\u5f00\u58f0\u97f3\uff1f", "Enable sound?"),  # 是否打开声音？
    ("\u7f51\u7edc\u6545\u969c\uff0c\u70b9\u51fb\u786e\u5b9a\u91cd\u65b0\u8fde\u63a5",
     "Network error. Tap OK to reconnect"),
    ("\u8fde\u63a5\u4e2d\u8bf7\u7a0d\u5019...", "Connecting, please wait..."),
    ("\u5065 \u5eb7 \u6e38 \u620f \u5fe0 \u544a", "HEALTH GAME NOTICE"),
    ("\u62b5\u5236\u4e0d\u826f\u6e38\u620f,\u62d2\u7edd\u76d7\u7248\u6e38\u620f.",
     "Reject poor games. Say no to piracy."),
    ("\u6ce8\u610f\u81ea\u6211\u4fdd\u62a4,\u8c28\u9632\u53d7\u9a97\u4e0a\u5f53",
     "Protect yourself. Beware of scams."),
    ("\u9002\u5ea6\u6e38\u620f\u76ca\u8111,\u6c89\u8ff7\u6e38\u620f\u4f24\u8eab.",
     "Play in moderation. Overplaying harms health."),
    ("\u5408\u7406\u5b89\u6392\u65f6\u95f4,\u4eab\u53d7\u5065\u5eb7\u751f\u6d3b.",
     "Manage your time. Enjoy a healthy life."),
    ("\u670d\u52a1\u5668", "Server"),
    ("\u89d2\u8272", "Role"),
    ("\u72b6\u6001", "Status"),
    ("\u7f51\u7edc\u6545\u969c\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55",
     "Network error. Please log in again."),
    ("\u7f51\u7edc\u72b6\u51b5\u4e0d\u597d\u6b63\u5728\u5bfb\u627e\u7f51\u7edc\u8bf7\u7b49\u5019",
     "Poor network. Searching for signal, please wait..."),
    ("\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u60a8\u5728\u8054\u7f51\u65b9\u5f0f\u4e2d\u66f4\u6539\u60a8\u7684\u7f51\u7edc\u8fde\u63a5\u8bbe\u7f6e\uff0cCMWAP\u7528\u6237\u63a8\u8350\u9009\u62e9WAP\u8054\u7f51\uff0cUNINET\u7528\u6237\u8bf7\u9009\u62e9NET\u8054\u7f51",
     "Network error. Change your network mode: pick WAP for CMWAP, NET for UNINET."),
    ("\u79fb\u52a8\u7528\u6237\u8bf7\u9009\u62e9\u79fb\u52a8\u7f51\uff0c\u8054\u901a\u7528\u6237\u8bf7\u9009\u62e9\u8054\u901a\u7f51\uff0c\u201c\u8054\u7f51\u65b9\u5f0f\u201d\u53ef\u5728\u201c\u5f00\u59cb\u6e38\u620f\u201d\u9009\u9879\u4e2d\u8fdb\u884c\u624b\u52a8\u66f4\u6539\uff01",
     "China Mobile users pick Mobile; China Unicom users pick Unicom. You can change \"Network mode\" under \"Start Game\"."),
    ("\u79fb\u52a8\u7f51", "Mobile"),
    ("\u8054\u901a\u7f51", "Unicom"),
    ("\u7f51\u7edc\u6545\u969c", "Network Error"),
    ("\u7f51\u7edc\u9519\u8bef", "Network Error"),
    ("\u4eb2\u7231\u7684\u73a9\u5bb6\u63d0\u9192\u60a8:\u6e38\u620f\u8fdb\u884c\u65f6\u9700\u4f7f\u7528\u4f20\u8f93\u91cf\u82e5\u60a8\u5c1a\u672a\u7533\u8bf7\u4f20\u8f93\u8d44\u8d39\u6216\u662f\u7533\u8bf7\u4e86\u4f4e\u4f20\u8f93\u8d44\u8d39\u5efa\u8bae\u60a8\u4f9d\u7167\u81ea\u8eab\u6e38\u620f\u4e60\u60ef\u7533\u8bf7\u5408\u9002\u7684\u4f20\u8f93\u8d44\u8d39\u82e5\u6b32\u6539\u53d8\u4f20\u8f93\u8d44\u8d39\u53ef\u7528\u624b\u673a\u76f4\u62e8\u53f0\u54e5\u5927\u5ba2\u670d\u4e13\u7ebf188",
     "Dear player: gameplay uses mobile data. If you have no data plan, please pick one that fits your usage. To change your plan, dial carrier support at 188."),

    # ---- account login (AuthenticateCommon.java) ----
    ("\u8d26\u53f7:", "Account:"),
    ("\u8d26\u53f7\uff1a", "Account:"),
    ("\u5bc6\u7801:", "Password:"),
    ("\u5bc6\u7801\uff1a", "Password:"),
    ("\u767b\u5f55\u6e38\u620f", "Log In"),
    ("\u6ce8\u518c\u8d26\u53f7", "Register"),
    ("\u8054\u7f51\u65b9\u5f0f", "Network Mode"),
    ("\u4fee\u590d\u6e38\u620f", "Repair Game"),
    ("\u5b98\u65b9\u7f51\u7ad9", "Official Site"),
    ("\u4e2a\u4eba\u4e2d\u5fc3", "Account Center"),
    ("\u4fee\u6539\u5bc6\u7801", "Change Password"),
    ("\u4fdd\u5b58\u7528\u6237\u5bc6\u7801", "Save password"),
    ("\u6e38\u620f\u5173\u4e8e", "About"),
    ("\u6e38\u620f\u5e2e\u52a9", "Help"),
    ("\u7248\u672c\u53f7\uff1a", "Version:"),
    ("\u8d44\u6e90\u53f7\uff1a", "Resource:"),
    ("\u7248\u6743\u58f0\u660e\uff1a", "Copyright:"),
    ("t4game\u51fa\u54c1\uff0c\u7248\u6743\u6240\u6709", "Published by t4game. All rights reserved."),
    ("24\u5c0f\u65f6\u5ba2\u670d\u7535\u8bdd\uff1a", "24h support:"),
    ("\u8bdb\u795e\u5b98\u7f51\uff1a", "Official site:"),
    ("\u67e5\u770b", "View"),
    ("\u8bf7\u70b9\u6b64\u67e5\u770b\u534f\u8bae\u8be6\u60c5", "Tap here to read the agreement"),
    ("\u60a8\u73b0\u5728\u7684\u7f51\u7edc\u8fde\u63a5\u65b9\u5f0f\u4e3a[", "Your network mode is ["),
    ("\u8054\u7f51\u65b9\u5f0f\u8bbe\u7f6e", "Network settings"),
    ("\u5f00\u59cb\u6e38\u620f", "Start Game"),

    # ---- role list / role create (RoleLogin.java) ----
    ("\u89d2\u8272\u5217\u8868", "Role List"),
    ("\u804c\u4e1a", "Class"),
    ("\u804c\u4e1a\uff1a", "Class:"),
    ("\u6027\u522b", "Gender"),
    ("\u56fd\u5bb6", "Country"),
    ("\u540d\u5b57", "Name"),
    ("\u540d\u79f0", "Name"),
    ("\u540d\u79f0:", "Name:"),
    ("\u540d\u79f0\uff1a", "Name:"),
    ("\u7ea7\u522b", "Level"),
    ("\u7b49\u7ea7", "Level"),
    ("\u7b49\u7ea7:", "Level:"),
    ("\u7b49\u7ea7\uff1a", "Level:"),
    ("\u573a\u666f:", "Scene:"),
    ("\u8fdb\u5165\u6e38\u620f", "Enter Game"),
    ("\u5220\u9664\u89d2\u8272", "Delete Role"),
    ("\u521b\u5efa\u89d2\u8272", "Create Role"),
    ("\u4fee\u6539\u540d\u79f0", "Rename"),
    ("\u8bf7\u8f93\u5165\uff1a", "Enter:"),
    ("\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57:", "Enter role name:"),
    ("\u8bf4\u660e:", "Note:"),
    ("\u89d2\u8272\u540d\u4e0d\u80fd\u8d85\u8fc76\u4e2a\u6c49\u5b57\u6216\u5b57\u7b26(\u5305\u62ec\u6570\u5b57\u3001\u5b57\u6bcd\u3001\u4e0b\u5212\u7ebf\u7b49)",
     "Role name: up to 6 Chinese characters, letters, digits or \"_\"."),
    ("\u8bf7\u8f93\u5165\u89d2\u8272\u7684\u540d\u5b57\uff01", "Please enter a role name!"),
    ("\u8bf7\u8f93\u5165delete\u3002", "Type delete."),
    ("\u5220\u9664\u89d2\u8272\u5c06\u65e0\u6cd5\u5bfb\u56de\uff0c\u8bf7\u8f93\u5165delete\u518d\u786e\u8ba4\u3002",
     "Deleting a role is permanent. Type delete to confirm."),
    ("\u8bf7\u8f93\u51656~16\u4f4d\u9ad8\u7ea7\u5bc6\u7801", "Enter a 6-16 character advanced password"),
    ("\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\uff0c\u8bf7\u60a8\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a",
     "For your security, enter your advanced password:"),
    ("\u521b\u5efa", "Create"),
    ("\u8bf7\u8f93\u5165delete", "Type delete"),
    ("\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801", "Enter advanced password"),
    ("\u7ea7", " Lv"),
    ("\u89d2\u8272\u5df2\u6ee1\uff01", "All role slots are used!"),
    ("\u60a8\u7684\u540d\u5b57\u4e0d\u7b26\u5408\u89c4\u8303\u8bf7\u5148\u4fee\u6539\u540d\u79f0\uff01",
     "Invalid name. Please rename first."),
    ("\u7f51\u7edc\u4e2d\u65ad\uff01", "Connection lost!"),
    ("\u83b7\u53d6\u5931\u8d25", "Fetch failed"),
    ("\u7248\u672c\u592a\u4f4e", "Version too low"),
    ("\u5220\u9664\u6210\u529f", "Deleted"),
    ("\u5220\u9664\u5931\u8d25", "Delete failed"),
    ("\u89d2\u8272\u540d\u4e3a\u7a7a\u6216\u8d85\u8fc7\u957f\u5ea6\u9650\u5236\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f",
     "Name is empty or too long. Rename the role?"),
    ("\u89d2\u8272\u540d\u4e2d\u6709\u975e\u6cd5\u5b57\u7b26\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f",
     "Name has invalid characters. Rename the role?"),
    ("\u89d2\u8272\u540d\u5df2\u5b58\u5728\u662f\u5426\u91cd\u65b0\u4fee\u6539\u89d2\u8272\uff1f",
     "Name already exists. Rename the role?"),
    ("\u4fee\u6539\u89d2\u8272\u540d\u6210\u529f\u662f\u5426\u767b\u5f55\uff1f", "Renamed. Log in now?"),
    ("\u89d2\u8272\u540d\u5df2\u5b58\u5728\uff0c\u8bf7\u53e6\u6362\u4e00\u4e2a\uff01",
     "Name already exists. Try another one!"),
    ("\u521b\u5efa\u5931\u8d25", "Create failed"),
    ("\u8be5\u89d2\u8272\u540d\u4e0d\u80fd\u6ce8\u518c\uff0c\u8bf7\u53e6\u6362\u4e00\u4e2a\uff01",
     "This name is not allowed. Try another one!"),
    ("\u540d\u5b57\u53ef\u7531\u5b57\u6bcd\u3001\u6570\u5b57\u3001\u6c49\u5b57\u7ec4\u6210\uff0c\u6700\u591a\u4e0d\u8d85\u8fc7\u516d\u4e2a\u3002",
     "A name may use letters, digits or Chinese characters, up to 6 characters."),
    ("\u9ad8\u7ea7\u5bc6\u7801\u9519\u8bef\uff01", "Wrong advanced password!"),
    ("\u521b\u5efa\u65b0\u89d2\u8272", "New Role"),
    ("\u8fdb\u5165\u6e38\u620f", "Enter Game"),

    # class / nation names (CommonConstants OCCUPATION_NAMES / NATION_NAMES)
    ("\u529b\u58eb", "Warrior"),
    ("\u523a\u5ba2", "Assassin"),
    ("\u5524\u96f7\u5e08", "Thundercaller"),
    ("\u5929\u5e08", "Heavenly Master"),
    ("\u6b66\u795e", "War God"),
    ("\u5723\u4ed9", "Saint"),
    ("\u4e1c\u56fd", "East"),
    ("\u5357\u56fd", "South"),
    ("\u5317\u56fd", "North"),

    # ---- NPC function labels (CommonConstants NPC_FUNCTION_NAMES) ----
    ("\u88c5\u5907\u6253\u5b54", "Drill Socket"),
    ("\u5b9d\u77f3\u9576\u5d4c", "Socket Gem"),
    ("\u7075\u73e0\u5347\u7ea7", "Upgrade Orb"),
    ("\u88c5\u5907\u5f3a\u5316", "Enhance Gear"),
    ("\u5408\u6210\u6750\u6599\u5347\u7ea7", "Upgrade Material"),
    ("\u88c5\u5907\u62c6\u89e3", "Salvage Gear"),
    ("\u88c5\u5907\u6253\u9020", "Craft Gear"),
    ("\u4ea4\u8c08", "Talk"),
    ("\u4e70\u5356\u6b66\u5668", "Buy/Sell Weapons"),
    ("\u4fee\u7406\u88c5\u5907", "Repair Gear"),
    ("\u4e70\u5356\u836f\u54c1", "Buy/Sell Potions"),
    ("\u4e70\u5356\u539f\u6599", "Buy/Sell Materials"),
    ("\u4e70\u5356\u6742\u7269", "Buy/Sell Misc"),
    ("\u4f20\u9001", "Teleport"),
    ("\u7ed1\u5b9a\u590d\u6d3b\u70b9", "Bind Respawn"),
    ("\u6211\u8981\u4e70", "I want to buy"),
    ("\u6211\u8981\u5356", "I want to sell"),
    ("\u4e70\u5f69\u7968", "Buy lottery"),
    ("\u5151\u5956", "Claim prize"),
    ("\u8fdb\u5165\u526f\u672c", "Enter dungeon"),
    ("\u5b58\u53d6\u7269\u54c1", "Store/Withdraw"),
    ("\u53d6\u51fa", "Take Out"),
    ("\u5f3a\u5316\u6cd5\u5b9d", "Enhance Artifact"),
    ("\u89e3\u6563\u5e2e\u6d3e", "Disband gang"),
    ("\u65b0\u5efa\u5e2e\u6d3e", "Create gang"),
    ("\u5e2e\u6d3e\u7ba1\u7406", "Gang Management"),
    ("\u5b66\u4e60\u6280\u80fd", "Learn Skill"),
    ("\u529f\u52cb\u5151\u6362", "Exchange Honor"),
    ("\u56fd\u6218\u62a5\u540d", "Sign up (nation war)"),
    ("\u7ed3\u5a5a", "Marry"),
    ("\u79bb\u5a5a", "Divorce"),
    ("\u5e2e\u6218\u62a5\u540d", "Sign up (gang war)"),
    ("\u65ad\u7edd\u5173\u7cfb", "End relation"),
    ("\u62dc\u5e08", "Take master"),
    ("\u6536\u5f92", "Take apprentice"),
    ("\u6cd5\u5b9d\u5b58\u653e", "Store artifact"),
    ("\u9886\u53d6\u5de5\u8d44", "Claim salary"),
    ("\u5de5\u8d44\u8bb0\u5f55", "Salary record"),
    ("\u5de5\u8d44\u8bf4\u660e", "Salary help"),
    ("\u8d2d\u4e70\u4fdd\u9669", "Buy insurance"),
    ("\u9886\u53d6\u7ea2\u5229", "Claim bonus"),
    ("\u4fdd\u9669\u8bf4\u660e", "Insurance help"),
    ("\u4e70\u5356\u9632\u5177", "Buy/Sell Armor"),
    ("\u4e70\u5356\u9970\u54c1", "Buy/Sell Accessories"),
    ("\u5e2e\u6d3e\u5efa\u8bbe", "Gang building"),
    ("\u9010\u51fa\u5e08\u95e8", "Expel apprentice"),
    ("\u53db\u5e08", "Leave master"),
    ("\u51fa\u5e08", "Graduate"),
    ("\u6211\u7684\u5546\u54c1", "My goods"),
    ("\u5bc4\u5b58\u5904", "Deposit"),
    ("\u7b49\u7ea7\u5956\u52b1", "Level reward"),
    ("\u8ba2\u5a5a", "Engage"),
    ("\u53d6\u6d88\u8ba2\u5a5a", "Cancel engagement"),
    ("\u8fdb\u5165\u7ade\u6280\u573a", "Enter arena"),
    ("\u8fdb\u5165\u6218\u573a", "Enter battlefield"),
    ("\u8d29\u5356\u6240\u6709\u767d\u88c5", "Sell all white gear"),
    ("\u5f00\u542f\u8dd1\u73af\u4efb\u52a1", "Start ring quest"),
    ("\u4efb\u52a1\u8df3\u8fc7", "Skip quest"),
    ("\u67e5\u770b\u8dd1\u73af\u4efb\u52a1", "View ring quest"),
    ("\u6253\u5b54\u7b26\u5347\u7ea7", "Upgrade socket token"),
    ("\u5546\u5e97", "Shop"),
    ("\u9886\u53d6/\u66f4\u6362\u795d\u798f", "Claim/Change blessing"),
    ("\u9886\u53d6\u63a8\u8350\u4eba\u5de5\u8d44", "Claim referral salary"),
    ("\u767b\u8bb0\u63a8\u8350\u4eba", "Register referrer"),
    ("\u63a8\u8350\u4eba\u5de5\u8d44\u8be6\u5355", "Referral salary detail"),
    ("\u53ef\u9886\u53d6\u5956\u52b1\u6761\u76ee", "Claimable rewards"),
    ("\u8d29\u5356\u6240\u6709\u7eff\u88c5", "Sell all green gear"),
    ("\u6cbb\u7597", "Heal"),
    ("\u5408\u670d", "Server merge"),
    ("\u88c5\u5907\u586b\u5b54", "Fill socket"),
    ("\u7ed3\u4e49\u91d1\u5170", "Sworn brothers"),
    ("\u9886\u53d6\u79f0\u53f7", "Claim title"),
    ("\u7eb3\u5165\u65b0\u4eba", "Recruit member"),
    ("\u89e3\u9664\u5173\u7cfb", "End relation"),
    ("\u666e\u901a\u53d1\u578b\u5e97", "Basic barber"),
    ("\u7cbe\u54c1\u53d1\u578b\u5e97", "Premium barber"),
    ("\u5b9d\u77f3\u7cbe\u70bc", "Refine gem"),
    ("\u5c01\u795e\u4e4b\u6218", "War of Gods"),
    ("\u9738\u4e3b\u5956\u52b1", "Overlord reward"),

    # ---- inventory / item menus (GameScreen) ----
    ("\u80cc\u5305\u7269\u54c1", "Inventory"),
    ("\u7269\u54c1", "Items"),
    ("\u88c5\u5907", "Equip"),
    ("\u5378\u4e0b", "Unequip"),
    ("\u4f7f\u7528", "Use"),
    ("\u79fb\u52a8", "Move"),
    ("\u4e22\u5f03", "Discard"),
    ("\u62c6\u5206", "Split"),
    ("\u6574\u7406", "Tidy"),
    ("\u5347\u661f", "Star Up"),
    ("\u5347\u7ea7", "Upgrade"),
    ("\u9576\u5d4c", "Inlay"),
    ("\u6ce8\u7075", "Infuse"),
    ("\u70bc\u5316", "Refine"),
    ("\u653e\u5165", "Put Away"),
    ("\u5356\u51fa", "Sell"),
    ("\u5b66\u4e60\u6cd5\u672f", "Learn Spell"),
    ("\u6570\u91cf", "Qty"),
    ("\u65f6\u95f4", "Time"),

    # ---- combat / skill ----
    ("\u6280\u80fd\u5217\u8868", "Skill List"),
    ("\u666e\u901a\u653b\u51fb", "Normal Attack"),
    ("\u81ea\u5b9a\u4e49\u653b\u51fb\u5217\u8868", "Custom Attack List"),
    ("\u81ea\u5b9a\u4e49\u6218\u6597", "Custom Battle"),
    ("\u786e\u5b9a\u63d0\u4ea4\uff1f", "Confirm submission?"),
    ("\u6218\u6597\u4e2d\u4e0d\u80fd\u9000\u51fa\u6e38\u620f", "You cannot exit during combat"),

    # ---- main menu navigation (GameScreen leftMenu*) ----
    ("\u5b9d\u7269\u5546\u5e97", "Treasure Shop"),
    ("VIP\u7279\u6743", "VIP"),
    ("\u4eba\u7269\u5c5e\u6027", "Attributes"),
    ("\u5929\u8d4b\u6cd5\u672f", "Talents"),
    ("\u4efb\u52a1\u660e\u7ec6", "Quests"),
    ("NPC\u5bfc\u822a", "NPC Map"),
    ("\u5927\u5730\u56fe", "World Map"),
    ("\u7cfb\u7edf\u8bbe\u7f6e", "Settings"),
    ("\u5e2e\u52a9\u7b54\u7591", "Help"),
    ("\u4fbf\u6377\u7ec4\u961f", "Quick Party"),
    ("\u5c0f\u989d\u5145\u503c", "Small Top-up"),
    ("\u5927\u989d\u5145\u503c", "Large Top-up"),
    ("\u6cd5\u5b9d", "Artifacts"),
    ("\u5750\u9a91", "Mounts"),
    ("\u516b\u5366", "Bagua"),
    ("\u5e38\u89c4\u8bbe\u5b9a", "General"),
    ("\u8bbe\u7f6e\u6309\u952e", "Key Bindings"),
    ("\u5b89\u5168\u9501", "Security Lock"),
    ("\u5b89\u5168\u4e2d\u5fc3", "Security Center"),
    ("\u8054\u7cfbGM", "Contact GM"),
    ("\u8131\u79bb\u5361\u6b7b", "Unstick"),
    ("\u91cd\u9009\u89d2\u8272", "Choose Role"),
    ("\u9000\u51fa\u6e38\u620f", "Exit Game"),
    ("\u5c5e\u6027", "Attributes"),
    ("\u79f0\u53f7", "Titles"),
    ("\u5934\u8854", "Ranks"),
    ("\u4e2a\u6027", "Style"),
    ("VIP\u5c5e\u6027", "VIP Stats"),
    ("\u8fdc\u7a0b\u4ed3\u5e93", "Remote Warehouse"),
    ("\u81ea\u52a8\u5403\u836f", "Auto Potion"),
    ("\u7cfb\u7edf", "System"),
    ("\u804a\u5929", "Chat"),
    ("\u663e\u793a", "Display"),
    ("\u57fa\u7840", "Base"),
    ("\u6218\u6597", "Combat"),
    ("\u8363\u8a89", "Honor"),

    # ---- society / player action menus ----
    ("\u597d\u53cb", "Friends"),
    ("\u5e08\u95e8", "Master"),
    ("\u592b\u59bb", "Spouse"),
    ("\u7ed3\u4e49", "Sworn"),
    ("\u5e2e\u6d3e", "Gang"),
    ("\u9ed1\u540d\u5355", "Blacklist"),
    ("\u6069\u6028\u699c", "Grudges"),
    ("\u79c1\u804a", "Whisper"),
    ("\u6084\u6084\u8bdd", "Whisper"),
    ("\u4ea4\u6613", "Trade"),
    ("\u52a0\u4e3a\u597d\u53cb", "Add Friend"),
    ("\u6dfb\u52a0\u597d\u53cb", "Add Friend"),
    ("\u9080\u8bf7\u7ec4\u961f", "Invite Party"),
    ("\u7ec4\u961f\u9080\u8bf7", "Party Invite"),
    ("\u5f3a\u5236\u653b\u51fb", "Force Attack"),
    ("\u52a0\u5165\u9ed1\u540d\u5355", "Block"),
    ("\u8e22\u51fa\u961f\u4f0d", "Kick"),
    ("\u8f6c\u8ba9\u961f\u957f", "Pass Leader"),
    ("\u89e3\u6563\u961f\u4f0d", "Disband Party"),
    ("\u79fb\u51fa\u961f\u4f0d", "Remove from Party"),
    ("\u59d4\u4efb\u961f\u957f", "Appoint Leader"),
    ("\u79bb\u5f00\u961f\u4f0d", "Leave Party"),
    ("\u5e2e\u6d3e\u9080\u8bf7", "Gang Invite"),
    ("\u5207\u78cb", "Sparring"),
    ("\u5220\u9664", "Delete"),
    ("\u90ae\u4ef6", "Mail"),
    ("\u6dfb\u52a0\u6028\u5bb6", "Add Grudge"),
    ("\u67e5\u770b\u6028\u5bb6", "View Grudges"),
    ("\u8ffd\u8e2a\u6028\u5bb6", "Track Grudge"),
    ("\u5220\u9664\u6028\u5bb6", "Remove Grudge"),
    ("\u6e05\u9664\u5217\u8868", "Clear List"),
    ("\u91d1\u5170\u9080\u8bf7", "Sworn Invite"),
    ("\u5bfb\u627e\u91d1\u5170", "Find Sworn"),
    ("\u67e5\u770b\u88c5\u5907", "View Gear"),
    ("\u67e5\u770b\u6cd5\u5b9d", "View Artifact"),
    ("\u5e08\u95e8\u95ee\u5019", "Greet Master"),
    ("\u5e08\u95e8\u53ec\u5524", "Summon Master"),
    ("\u90ae\u4ef6", "Mail"),

    # ---- login / auth flow, loading and confirmations ----
    ("\u8bf7\u8f93\u5165\u7528\u6237\u540d\u548c\u5bc6\u7801", "Please enter a username and password"),
    ("\u7528\u6237\u767b\u5f55", "User Login"),
    ("\u7f51\u7edc\u9519\u8bef\uff0c\u8bf7\u91cd\u65b0\u767b\u5f55", "Network error. Please log in again."),
    ("\u8054\u7f51\u65b9\u5f0f\u8bbe\u7f6e\u6210\u529f\uff0c\u662f\u5426\u7ee7\u7eed", "Network settings saved. Continue?"),
    ("\u4fee\u590d\u4e2d\u8bf7\u7a0d\u5019...", "Repairing, please wait..."),
    ("\u5df2\u7ecf\u6210\u529f\u4fee\u590d\u6e38\u620f", "Game repaired successfully"),
    ("\u606d\u559c\u60a8\u6ce8\u518c\u6210\u529f\uff01 \u8d26\u53f7\uff1a", "Registration successful! Account:"),
    ("\u4e3a\u4fdd\u8bc1\u5e10\u53f7\u5b89\u5168\uff0c", "For account security,"),
    ("\u8bf7\u5c3d\u5feb\u4fee\u6539\u5bc6\u7801\u3002", "Please change your password soon."),
    ("\u4e3a\u4fdd\u8bc1\u5e10\u53f7\u5b89\u5168\uff0c\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u9ad8\u5bc6", "For account security, please bind an advanced password soon."),
    ("\u8bf7\u5c3d\u5feb\u7ed1\u5b9a\u9ad8\u5bc6", "Please bind an advanced password soon."),
    ("\u70b9\u51fb\u4e2d\u952e\u8fdb\u5165\u6e38\u620f", "Press the center key to enter the game"),
    ("\u901a\u7545", "Available"),
    ("\u706b\u7206", "Popular"),
    ("\u7e41\u5fd9", "Busy"),
    ("\u6ee1\u5458", "Full"),
    ("\u7ef4\u62a4", "Maintenance"),
    ("\u4e0b\u8f7d", "Download"),
    ("\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a", "Enter account:"),
    ("\u8d26\u53f7\u4e0d\u80fd\u4e3a\u7a7a", "Account cannot be empty"),
    ("\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a", "Enter password:"),
    ("\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a", "Password cannot be empty"),
    ("\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a", "Username and password cannot be empty"),
    ("\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002", "Invalid characters. Username and password may only contain letters and digits."),
    ("\u975e\u6cd5\u5b57\u7b26\uff0c\u8d26\u53f7\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002", "Invalid characters. Account and password may only contain letters and digits."),
    ("\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16", "Username and password must be 6-16 characters"),
    ("\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16\u3002", "Username and password must be 6-16 characters."),
    ("\u8d26\u53f7\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16\u4f4d\u3002", "Account and password must be 6-16 characters."),
    ("\u8bf7\u786e\u8ba4\u60a8\u7684\u8d26\u53f7\u548c\u5bc6\u7801\uff0c\u53ea\u80fd\u75316~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\u3002", "Please check your account and password: 6-16 letters or digits only."),
    ("\u8bf7\u8f93\u5165\uff01", "Enter a value!"),
    ("\u8f93\u5165\u975e\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01", "Invalid input. Please try again."),
    ("\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4\u3002", "The two passwords do not match."),
    ("\u4e24\u6b21\u8f93\u5165\u7684\u5bc6\u7801\u4e0d\u4e00\u81f4\uff01", "The two passwords do not match!"),
    ("\u8bfb\u53d6\u4e2d...", "Loading..."),
    ("\u7528\u6237\u540d\u5bc6\u7801\u9519\u8bef", "Wrong username or password"),
    ("\u5df2\u6709\u89d2\u8272\u767b\u9646", "A role is already logged in"),
    ("\u63d0\u793a", "Notice"),
    ("\u4f60\u786e\u5b9a\u8981\u5220\u9664\u5417\uff1f", "Are you sure you want to delete?"),
    ("\u9a8c\u8bc1\u4e2d\u8bf7\u7a0d\u5019...", "Verifying, please wait..."),
    ("\u8bf7\u6c42\u5df2\u7ecf\u53d1\u9001\uff01", "Request sent!"),
    ("0.\u8fd4\u56de", "0. Back"),
    ("\u5bc6\u7801\u627e\u56de", "Recover Password"),
    ("\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01", "The value cannot be below 0. Please try again."),
    ("\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002", "Please enter a value greater than 0."),
    ("\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a", "Enter advanced password:"),
    ("\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a", "Advanced password cannot be empty"),
]

# --------------------------------------------------------------------------
# smali helpers
# --------------------------------------------------------------------------
SMALI_ESCAPES = {"n": "\n", "t": "\t", "r": "\r", '"': '"', "\\": "\\", "'": "'"}


def decode_smali(raw):
    out = []
    i = 0
    while i < len(raw):
        c = raw[i]
        if c == "\\" and i + 1 < len(raw):
            nxt = raw[i + 1]
            if nxt == "u" and i + 5 < len(raw) + 1 and i + 6 <= len(raw):
                out.append(chr(int(raw[i + 2:i + 6], 16)))
                i += 6
                continue
            if nxt in SMALI_ESCAPES:
                out.append(SMALI_ESCAPES[nxt])
                i += 2
                continue
            out.append(nxt)
            i += 2
            continue
        out.append(c)
        i += 1
    return "".join(out)


def encode_smali(s):
    out = []
    for ch in s:
        if ch == "\\":
            out.append("\\\\")
        elif ch == '"':
            out.append('\\"')
        elif ch == "'":
            out.append("\\'")
        elif ch == "\n":
            out.append("\\n")
        elif ch == "\r":
            out.append("\\r")
        elif ch == "\t":
            out.append("\\t")
        elif ord(ch) < 0x20 or ord(ch) > 0x7E:
            out.append("\\u%04x" % ord(ch))
        else:
            out.append(ch)
    return "".join(out)


CONST_RE = re.compile(r'^(\s*const-string(?:/jumbo)?\s+v\d+,\s*")(.*)("\s*)$')


def build_mapping():
    mapping = {}
    conflicts = []
    for zh, en in PAIRS:
        if zh in mapping and mapping[zh] != en:
            conflicts.append((zh, mapping[zh], en))
        mapping[zh] = en
    if conflicts:
        print("CONFLICTS:")
        for c in conflicts:
            print("  %r -> %r vs %r" % c)
        raise SystemExit(2)
    return mapping


def apply_smali(mapping, report):
    hits = {zh: [] for zh in mapping}
    changed_files = 0
    for dp, dn, fn in os.walk(os.path.join(DECODED, "smali")):
        for name in sorted(fn):
            if not name.endswith(".smali"):
                continue
            path = os.path.join(dp, name)
            rel = os.path.relpath(path, DECODED)
            text = io.open(path, encoding="utf-8", errors="surrogateescape").read()
            lines = text.split("\n")
            changed = False
            for idx, line in enumerate(lines):
                m = CONST_RE.match(line)
                if not m:
                    continue
                value = decode_smali(m.group(2))
                if value in mapping:
                    hits[value].append("%s:%d" % (rel, idx + 1))
                    lines[idx] = m.group(1) + encode_smali(mapping[value]) + m.group(3)
                    changed = True
            if changed:
                changed_files += 1
                io.open(path, "w", encoding="utf-8", errors="surrogateescape").write("\n".join(lines))
    report.append("smali files modified: %d" % changed_files)
    return hits


def read_str_file(path):
    data = io.open(path, "rb").read()
    header = data[:2]
    pos = 2
    entries = []
    while pos < len(data):
        ln = int.from_bytes(data[pos:pos + 2], "big")
        pos += 2
        entries.append(data[pos:pos + ln].decode("utf-8"))
        pos += ln
    return header, entries


def write_str_file(path, header, entries):
    out = bytearray(header)
    for e in entries:
        raw = e.encode("utf-8")
        out += len(raw).to_bytes(2, "big") + raw
    io.open(path, "wb").write(bytes(out))


def apply_str(mapping, report):
    lang_dir = os.path.join(DECODED, "unknown", "Language")
    hits = {zh: [] for zh in mapping}
    for name in sorted(os.listdir(lang_dir)):
        if not name.endswith(".str"):
            continue
        path = os.path.join(lang_dir, name)
        header, entries = read_str_file(path)
        new_entries = []
        changed = 0
        for i, value in enumerate(entries):
            if value in mapping:
                hits[value].append("%s[%d]" % (name, i))
                new_entries.append(mapping[value])
                changed += 1
            else:
                new_entries.append(value)
        if changed:
            write_str_file(path, header, new_entries)
            report.append("  %s: %d/%d entries translated" % (name, changed, len(entries)))
    return hits


def patch_manifest():
    path = os.path.join(DECODED, "AndroidManifest.xml")
    text = io.open(path, encoding="utf-8").read()
    original = text
    text = text.replace('package="com.t4game"', 'package="%s"' % NEW_PACKAGE)
    text = text.replace('android:authorities="downloads.com.t4game"',
                        'android:authorities="%s"' % NEW_AUTHORITY)
    text = text.replace('android:label="@string/app_name"',
                        'android:label="%s"' % NEW_LABEL)
    if text != original:
        io.open(path, "w", encoding="utf-8").write(text)
        return True
    return False


def main():
    mapping = build_mapping()
    report = ["English UI translation apply report", "=" * 60,
              "mapping entries: %d" % len(mapping), ""]

    print("patching smali...")
    smali_hits = apply_smali(mapping, report)
    print("patching Language*.str...")
    str_hits = apply_str(mapping, report)
    manifest_ok = patch_manifest()
    report.append("")
    report.append("manifest package/authority/label patched: %s" % manifest_ok)

    zero = [zh for zh in mapping if not smali_hits[zh] and not str_hits[zh]]
    report.append("")
    report.append("=== entries with NO hit anywhere (%d) ===" % len(zero))
    for zh in zero:
        report.append("  %s -> %s" % (zh, mapping[zh]))

    report.append("")
    report.append("=== per-entry hits ===")
    for zh in sorted(mapping, key=lambda z: mapping[z]):
        s = smali_hits[zh]
        l = str_hits[zh]
        report.append("%-24s => %-28s smali=%d lang=%d" % (
            zh, mapping[zh], len(s), len(l)))
        if s:
            report.append("      smali: " + ", ".join(s[:12]) + (" ..." if len(s) > 12 else ""))
        if l:
            report.append("      lang : " + ", ".join(l[:12]) + (" ..." if len(l) > 12 else ""))

    io.open(REPORT, "w", encoding="utf-8").write("\n".join(report))
    print("\n".join(report[:12]))
    print("...")
    print("report -> %s" % REPORT)
    print("translated smali literals: %d" % sum(len(v) for v in smali_hits.values()))
    print("translated Language*.str entries: %d" % sum(len(v) for v in str_hits.values()))
    print("unmatched mapping entries: %d" % len(zero))


if __name__ == "__main__":
    main()
