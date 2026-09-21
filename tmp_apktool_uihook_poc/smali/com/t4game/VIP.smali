.class Lcom/t4game/VIP;
.super Ljava/lang/Object;


# instance fields
.field VIP_ACTIVATION:B

.field VIP_ALERT_VIEW:B

.field VIP_DEFAULT:B

.field VIP_GOODS_DETAILS:B

.field VIP_REWARDGOODS:B

.field private activation:B

.field alert_type:B

.field private curPoint:I

.field curVip:B

.field cur_state:B

.field gameScreen:Lcom/t4game/GameScreen;

.field private goodsDetails:[Ljava/lang/String;

.field private goodsId:I

.field private goodsName:Ljava/lang/String;

.field private iconId:[S

.field id:B

.field id_goods:B

.field id_lingqu:B

.field id_vip_des:B

.field id_vip_img:B

.field private imageId:I

.field msg:Ljava/lang/String;

.field page:I

.field private prerogative:[[Ljava/lang/String;

.field private surplusTime:I

.field t_l:[Ljava/lang/String;

.field totalPage:I

.field private totalPoint:I

.field private vipDesFlag:B

.field private vipLevel:B

.field private vipLevelFlag:B

.field private vipType:[B

.field vip_num:B


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x5

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-array v0, v6, [S

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/t4game/VIP;->iconId:[S

    new-array v0, v6, [B

    fill-array-data v0, :array_1

    iput-object v0, p0, Lcom/t4game/VIP;->vipType:[B

    new-array v0, v6, [[Ljava/lang/String;

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1.\u6bcf\u65e5\u53ef\u4ee5\u81ea\u52a8\u5403\u836f300\u6b21"

    aput-object v2, v1, v5

    const-string v2, "2.\u6bcf\u65e5\u514d\u8d39\u4f20\u900110\u6b21"

    aput-object v2, v1, v7

    const-string v2, "3.\u5468\u5de5\u8d44\u83b7\u5f97\u6570\u91cf\u63d0\u534710%"

    aput-object v2, v1, v8

    const-string v2, "4.\u53ef\u4f7f\u7528\u5927\u5730\u56fe\u4e2d\u7684VIP\u5bfb\u5f84\u529f\u80fd"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "5.\u597d\u53cb/\u6028\u5bb6\u6570\u91cf\u4e0a\u9650\u63d0\u534710\u4eba"

    aput-object v3, v1, v2

    const-string v2, "6.\u53ef\u4ee5\u83b7\u5f97VIP\u4e13\u5c5e\u79f0\u53f7"

    aput-object v2, v1, v6

    const/4 v2, 0x6

    const-string v3, "7.\u53ef\u4ee5\u5728VIP\u5546\u5e97\u4e2d\u4f7f\u7528\u79ef\u5206\u8d2d\u4e70\u5546\u57ce\u9053\u5177"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8.\u6bcf\u65e5\u8dd1\u73af\u4efb\u52a1\u8df3\u8fc7\u6b21\u6570\u589e\u52a0\u4e3a6\u6b21"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1.\u6bcf\u65e5\u81ea\u52a8\u5403\u836f\u6b21\u6570\u65e0\u9650"

    aput-object v2, v1, v5

    const-string v2, "2.\u53ef\u4f7f\u7528\u8fdc\u7a0b\u4ed3\u5e93\u529f\u80fd"

    aput-object v2, v1, v7

    const-string v2, "3.\u6cd5\u5b9d\u63d0\u534710%\u7ecf\u9a8c\u52a0\u6210"

    aput-object v2, v1, v8

    const-string v2, "4.\u6bcf\u65e5\u514d\u8d39\u4f20\u900120\u6b21"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "5.\u5468\u5de5\u8d44\u83b7\u5f97\u6570\u91cf\u63d0\u534715%"

    aput-object v3, v1, v2

    const-string v2, "6.\u53ef\u4f7f\u7528\u5927\u5730\u56fe\u4e2d\u7684VIP\u5bfb\u5f84\u529f\u80fd"

    aput-object v2, v1, v6

    const/4 v2, 0x6

    const-string v3, "7.\u597d\u53cb/\u6028\u5bb6\u6570\u91cf\u4e0a\u9650\u63d0\u534720\u4eba"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8.\u53ef\u4ee5\u83b7\u5f97VIP\u4e13\u5c5e\u79f0\u53f7"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9.\u53ef\u4ee5\u5728VIP\u5546\u5e97\u4e2d\u4f7f\u7528\u79ef\u5206\u8d2d\u4e70\u5546\u57ce\u9053\u5177"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "10.\u6bcf\u65e5\u8dd1\u73af\u4efb\u52a1\u8df3\u8fc7\u6b21\u6570\u589e\u52a0\u4e3a6\u6b21"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/16 v1, 0xd

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1.\u81ea\u52a8\u6302\u673a\u652f\u6301\u6302\u201c\u7ea2\u540d\u602a\u201d\u529f\u80fd"

    aput-object v2, v1, v5

    const-string v2, "2.\u5f53\u88c5\u5907\u80cc\u5305\u6ee1\u65f6\u652f\u6301\u81ea\u52a8\u5356\u767d\u3001\u7eff\u88c5\u529f\u80fd"

    aput-object v2, v1, v7

    const-string v2, "3.\u652f\u6301\u8bbe\u7f6e\u7b2c\u4e09\u6761\u5feb\u6377\u680f"

    aput-object v2, v1, v8

    const-string v2, "4.\u6bcf\u65e5\u81ea\u52a8\u5403\u836f\u6b21\u6570\u65e0\u9650"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "5.\u53ef\u4f7f\u7528\u8fdc\u7a0b\u4ed3\u5e93\u529f\u80fd"

    aput-object v3, v1, v2

    const-string v2, "6.\u6cd5\u5b9d\u63d0\u534720%\u7ecf\u9a8c\u52a0\u6210"

    aput-object v2, v1, v6

    const/4 v2, 0x6

    const-string v3, "7.\u6bcf\u65e5\u514d\u8d39\u4f20\u900130\u6b21"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8.\u5468\u5de5\u8d44\u83b7\u5f97\u6570\u91cf\u63d0\u534720%"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9.\u53ef\u4f7f\u7528\u5927\u5730\u56fe\u4e2d\u7684VIP\u5bfb\u5f84\u529f\u80fd"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "10.\u597d\u53cb/\u6028\u5bb6\u6570\u91cf\u4e0a\u9650\u63d0\u534750\u4eba"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "11.\u53ef\u4ee5\u83b7\u5f97VIP\u4e13\u5c5e\u79f0\u53f7"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "12.\u53ef\u4ee5\u5728VIP\u5546\u5e97\u4e2d\u4f7f\u7528\u79ef\u5206\u8d2d\u4e70\u5546\u57ce\u9053\u5177"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "13.\u6bcf\u65e5\u8dd1\u73af\u4efb\u52a1\u8df3\u8fc7\u6b21\u6570\u589e\u52a0\u4e3a6\u6b21"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0xf

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "1.\u6302\u673a\u72b6\u6001\u4e0b\u5bf9\u73a9\u5bb6\u7684\u81ea\u52a8\u8fd8\u51fb\u529f\u80fd"

    aput-object v2, v1, v5

    const-string v2, "2.\u514d\u8d39\u4f20\u9001\u6b21\u6570\u65e0\u9650"

    aput-object v2, v1, v7

    const-string v2, "3.\u53ef\u4ee5\u83b7\u5f97\u4e13\u5c5e\u65f6\u88c5\u53ca\u72ec\u7279\u7684\u804a\u5929\u989c\u8272"

    aput-object v2, v1, v8

    const-string v2, "4.\u81ea\u52a8\u6302\u673a\u652f\u6301\u6302\u201c\u7ea2\u540d\u602a\u201d\u529f\u80fd"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "5.\u5f53\u88c5\u5907\u80cc\u5305\u6ee1\u65f6\u652f\u6301\u81ea\u52a8\u5356\u767d\u3001\u7eff\u88c5\u529f\u80fd"

    aput-object v3, v1, v2

    const-string v2, "6.\u652f\u6301\u8bbe\u7f6e\u7b2c\u4e09\u6761\u5feb\u6377\u680f"

    aput-object v2, v1, v6

    const/4 v2, 0x6

    const-string v3, "7.\u6bcf\u65e5\u81ea\u52a8\u5403\u836f\u6b21\u6570\u65e0\u9650"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "8.\u53ef\u4f7f\u7528\u8fdc\u7a0b\u4ed3\u5e93\u529f\u80fd"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "9.\u6cd5\u5b9d\u63d0\u534730%\u7ecf\u9a8c\u52a0\u6210"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "10.\u5468\u5de5\u8d44\u83b7\u5f97\u6570\u91cf\u63d0\u534730%"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "11.\u53ef\u4f7f\u7528\u5927\u5730\u56fe\u4e2d\u7684VIP\u5bfb\u5f84\u529f\u80fd"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "12.\u597d\u53cb/\u6028\u5bb6\u6570\u91cf\u4e0a\u9650\u63d0\u5347100\u4eba"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "13.\u53ef\u4ee5\u83b7\u5f97VIP\u4e13\u5c5e\u79f0\u53f7"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "14.\u53ef\u4ee5\u5728VIP\u5546\u5e97\u4e2d\u4f7f\u7528\u79ef\u5206\u8d2d\u4e70\u5546\u57ce\u9053\u5177"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "15.\u6bcf\u65e5\u8dd1\u73af\u4efb\u52a1\u8df3\u8fc7\u6b21\u6570\u589e\u52a0\u4e3a6\u6b21"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const/16 v2, 0x10

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "1.\u6302\u673a\u72b6\u6001\u4e0b\u5bf9\u73a9\u5bb6\u7684\u81ea\u52a8\u8fd8\u51fb\u529f\u80fd"

    aput-object v3, v2, v5

    const-string v3, "2.\u201c\u5982\u610f\u94b1\u5e84\u201d\u53ef\u65e0\u9650\u6b21\u8d2d\u4e70"

    aput-object v3, v2, v7

    const-string v3, "3.\u514d\u8d39\u4f20\u9001\u6b21\u6570\u65e0\u9650"

    aput-object v3, v2, v8

    const-string v3, "4.\u53ef\u83b7\u5f97\u4e13\u5c5e\u5750\u9a91\u3001\u65f6\u88c5\u53ca\u72ec\u7279\u7684\u804a\u5929\u989c\u8272"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "5.\u81ea\u52a8\u6302\u673a\u652f\u6301\u6302\u201c\u7ea2\u540d\u602a\u201d\u529f\u80fd"

    aput-object v4, v2, v3

    const-string v3, "6.\u5f53\u88c5\u5907\u80cc\u5305\u6ee1\u65f6\u652f\u6301\u81ea\u52a8\u5356\u767d\u3001\u7eff\u88c5\u529f\u80fd"

    aput-object v3, v2, v6

    const/4 v3, 0x6

    const-string v4, "7.\u652f\u6301\u8bbe\u7f6e\u7b2c\u4e09\u6761\u5feb\u6377\u680f"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "8.\u6bcf\u65e5\u81ea\u52a8\u5403\u836f\u6b21\u6570\u65e0\u9650"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "9.\u53ef\u4f7f\u7528\u8fdc\u7a0b\u4ed3\u5e93\u529f\u80fd"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "10.\u6cd5\u5b9d\u63d0\u534750%\u7ecf\u9a8c\u52a0\u6210"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, "11.\u5468\u5de5\u8d44\u83b7\u5f97\u6570\u91cf\u63d0\u534750%"

    aput-object v4, v2, v3

    const/16 v3, 0xb

    const-string v4, "12.\u53ef\u4f7f\u7528\u5927\u5730\u56fe\u4e2d\u7684VIP\u5bfb\u5f84\u529f\u80fd"

    aput-object v4, v2, v3

    const/16 v3, 0xc

    const-string v4, "13.\u597d\u53cb/\u6028\u5bb6\u6570\u91cf\u4e0a\u9650\u63d0\u5347200\u4eba"

    aput-object v4, v2, v3

    const/16 v3, 0xd

    const-string v4, "14.\u53ef\u4ee5\u83b7\u5f97VIP\u4e13\u5c5e\u79f0\u53f7"

    aput-object v4, v2, v3

    const/16 v3, 0xe

    const-string v4, "15.\u53ef\u4ee5\u5728VIP\u5546\u5e97\u4e2d\u4f7f\u7528\u79ef\u5206\u8d2d\u4e70\u5546\u57ce\u9053\u5177"

    aput-object v4, v2, v3

    const/16 v3, 0xf

    const-string v4, "16.\u6bcf\u65e5\u8dd1\u73af\u4efb\u52a1\u8df3\u8fc7\u6b21\u6570\u589e\u52a0\u4e3a6\u6b21"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    iput-byte v5, p0, Lcom/t4game/VIP;->curVip:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v5, p0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    iput-byte v7, p0, Lcom/t4game/VIP;->VIP_ACTIVATION:B

    iput-byte v8, p0, Lcom/t4game/VIP;->VIP_REWARDGOODS:B

    iput-byte v9, p0, Lcom/t4game/VIP;->VIP_GOODS_DETAILS:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/VIP;->alert_type:B

    iput-byte v6, p0, Lcom/t4game/VIP;->vip_num:B

    iput-byte v5, p0, Lcom/t4game/VIP;->id_goods:B

    iput-byte v7, p0, Lcom/t4game/VIP;->id_lingqu:B

    iput-byte v8, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v9, p0, Lcom/t4game/VIP;->id_vip_des:B

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    iput-object p1, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    return-void

    nop

    :array_0
    .array-data 2
        0x1b70s
        0x1b71s
        0x1b72s
        0x1b73s
        0x1b74s
    .end array-data

    nop

    :array_1
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
    .end array-data
.end method

.method private handleTime(I)Ljava/lang/String;
    .locals 1

    if-lez p1, :cond_0

    invoke-static {p1}, Lcom/t4game/Util;->getTimePrecisionInHour(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "\u672a\u6fc0\u6d3b"

    goto :goto_0
.end method

.method private releaseTextAndArray()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/VIP;->iconId:[S

    iput-object v2, p0, Lcom/t4game/VIP;->vipType:[B

    move-object v0, v2

    check-cast v0, [[Ljava/lang/String;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v1, p0, Lcom/t4game/VIP;->cur_state:B

    iput-object v2, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawVIPAttribute(Ljavax/microedition/lcdui/Graphics;)V
    .locals 24

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->cur_state:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->VIP_GOODS_DETAILS:B

    move v6, v0

    if-ne v5, v6, :cond_2

    const-string v5, "VIP\u5c5e\u6027"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    const/16 v5, 0xa

    const/16 v8, 0xa

    sget v6, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/2addr v6, v5

    add-int/lit8 v7, v8, 0x20

    const/16 v9, 0x168

    shl-int/lit8 v5, v5, 0x1

    sub-int v12, v9, v5

    const/16 v5, 0xc8

    sget v9, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v5, v9

    shl-int/lit8 v8, v8, 0x1

    sub-int v13, v5, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->goodsName:Ljava/lang/String;

    move-object v5, v0

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    sget-object v10, Lcom/t4game/Data;->color:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v11, v5, 0x2a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    move-object v8, v0

    const/4 v9, 0x0

    sget v14, Lcom/t4game/Defaults;->sfh:I

    const/4 v15, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v7, 0x2

    aget v16, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    move-object v5, v0

    array-length v5, v5

    sget v7, Lcom/t4game/Defaults;->sfh:I

    div-int v7, v13, v7

    if-le v5, v7, :cond_1

    const/4 v5, 0x1

    move/from16 v17, v5

    :goto_0
    move-object/from16 v7, p1

    move v10, v6

    invoke-static/range {v7 .. v17}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIZ)V

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/4 v5, 0x0

    move/from16 v17, v5

    goto :goto_0

    :cond_2
    const-string v5, "VIP\u5c5e\u6027"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_goods:B

    move v6, v0

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v5, "\u67e5\u770b"

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintFunctionEndAlert(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    :goto_2
    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v6, 0x2

    aget v16, v5, v6

    const/16 v17, 0xa

    const/16 v18, 0xa

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v5, v5, v17

    add-int/lit8 v5, v18, 0x20

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v5, v5, 0x4

    const/16 v19, 0x1a

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v5, v5, 0x96

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/16 v8, 0xc8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCutOffRuleV(Ljavax/microedition/lcdui/Graphics;IIII)V

    add-int v5, v5, v19

    const/16 v6, 0x20

    const/4 v7, 0x1

    const/16 v8, 0xc8

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCutOffRuleV(Ljavax/microedition/lcdui/Graphics;IIII)V

    const/16 v5, 0x96

    shl-int/lit8 v6, v17, 0x1

    sub-int v10, v5, v6

    sget v5, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v11, v5, 0x2

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v8, v5, v17

    add-int/lit8 v9, v18, 0x20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    move-object v6, v0

    const/4 v7, 0x5

    sget v12, Lcom/t4game/Defaults;->sfh:I

    const/4 v13, -0x1

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v14, 0x2

    aget v14, v5, v14

    const/4 v15, 0x0

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v15}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIZ)V

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v7, v11, 0x2a

    const/16 v6, 0x96

    const/4 v8, 0x1

    move-object/from16 v0, p1

    move v1, v5

    move v2, v7

    move v3, v6

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCutOffRuleH(Ljavax/microedition/lcdui/Graphics;IIII)V

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v6, v5, 0x4b

    add-int v5, v7, v8

    add-int v7, v5, v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->goodsName:Ljava/lang/String;

    move-object v5, v0

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v9, -0x1

    sget-object v10, Lcom/t4game/Data;->color:[I

    const/4 v11, 0x2

    aget v10, v10, v11

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v6, v6, -0xc

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sget v8, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v8, v8, 0x1

    add-int/2addr v5, v8

    add-int/2addr v7, v5

    const/4 v5, 0x1

    sub-int v5, v6, v5

    const/4 v8, 0x1

    sub-int v8, v7, v8

    const/16 v9, 0x15

    const/16 v10, 0x15

    move-object/from16 v0, p1

    move v1, v5

    move v2, v8

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    new-instance v8, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/VIP;->imageId:I

    move v9, v0

    invoke-direct {v8, v9}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v8}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/lcdui/Image;

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_goods:B

    move v8, v0

    if-ne v5, v8, :cond_3

    const/4 v5, 0x2

    sub-int v5, v6, v5

    const/4 v8, 0x2

    sub-int v8, v7, v8

    move v0, v5

    move v1, v8

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    :cond_3
    const/4 v5, 0x0

    const/16 v8, 0x18

    const/16 v9, 0x18

    const/16 v10, 0x18

    const/16 v11, 0x18

    invoke-static/range {v5 .. v11}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v9, 0x1

    invoke-static {v5, v8, v9}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    add-int/lit8 v6, v6, 0xc

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v5, v5, 0x18

    add-int v12, v7, v5

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/16 v7, 0xd

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->activation:B

    move v7, v0

    const/4 v8, 0x1

    if-ne v7, v8, :cond_d

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v7, 0x2

    aget v5, v5, v7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v7, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_lingqu:B

    move v8, v0

    if-ne v7, v8, :cond_d

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v7, 0x5

    aget v5, v5, v7

    move v10, v5

    :goto_3
    const-string v5, "\u9886\u53d6"

    sget v7, Lcom/t4game/Defaults;->sfh:I

    shr-int/lit8 v7, v7, 0x1

    sub-int v7, v12, v7

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v9, -0x1

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v5, 0x1

    const/16 v7, 0x1e

    sub-int/2addr v6, v7

    const/16 v8, 0x3c

    sget v9, Lcom/t4game/Defaults;->sfh:I

    const/16 v10, 0x32

    sget v11, Lcom/t4game/Defaults;->sfh:I

    move v7, v12

    invoke-static/range {v5 .. v11}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x1

    invoke-static {v5, v6, v7}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v6, v5, 0x96

    const/16 v12, 0x28

    const/16 v7, 0x20

    const/4 v5, 0x2

    const/16 v9, 0xc8

    const/16 v11, 0x28

    move/from16 v8, v19

    move/from16 v10, v19

    invoke-static/range {v5 .. v11}, Lcom/t4game/LogicalMapping;->setHotspotPosition(IIIIIII)V

    const/4 v5, 0x2

    const/4 v8, 0x5

    const/4 v9, 0x5

    invoke-static {v5, v8, v9}, Lcom/t4game/LogicalMapping;->setHotspotInfo(III)V

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->curVip:B

    move v8, v0

    const/4 v9, 0x0

    invoke-static {v5, v8, v9}, Lcom/t4game/LogicalMapping;->specifyFocusedRowAndColByNum(III)V

    add-int v5, v7, v12

    const/4 v5, 0x0

    :goto_4
    const/4 v7, 0x4

    if-ge v5, v7, :cond_5

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    mul-int v7, v5, v12

    add-int/lit8 v7, v7, 0x48

    add-int v8, v6, v19

    mul-int v9, v5, v12

    add-int/lit8 v9, v9, 0x48

    move-object/from16 v0, p1

    move v1, v6

    move v2, v7

    move v3, v8

    move v4, v9

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    goto :goto_4

    :cond_4
    const/16 v7, 0xeb

    const-string v5, "\u70b9\u51fb\u786e\u5b9a\u952e\u53ef\u6fc0\u6d3bVIP"

    sget v6, Lcom/t4game/Defaults;->CANVAS_WW:I

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v9, -0x1

    const v10, 0xffffff

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->iconId:[S

    move-object v5, v0

    array-length v6, v5

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v5, v5, 0x96

    add-int/lit8 v7, v5, 0x1

    const/16 v5, 0x20

    const/16 v8, 0x18

    sub-int v8, v12, v8

    shr-int/lit8 v8, v8, 0x1

    add-int/lit8 v5, v5, 0x8

    const/4 v8, 0x0

    move v9, v5

    :goto_5
    if-ge v8, v6, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->iconHash:Ljava/util/Hashtable;

    new-instance v10, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->iconId:[S

    move-object v11, v0

    aget-short v11, v11, v8

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v5, v10}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavax/microedition/lcdui/Image;

    sget v10, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v7

    move v3, v9

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->curVip:B

    move v5, v0

    if-ne v8, v5, :cond_7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_vip_img:B

    move v10, v0

    if-eq v5, v10, :cond_6

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_vip_des:B

    move v10, v0

    if-ne v5, v10, :cond_7

    :cond_6
    const/4 v5, 0x2

    sub-int v5, v7, v5

    const/4 v10, 0x2

    sub-int v10, v9, v10

    move v0, v5

    move v1, v10

    move-object/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintFunctionBlockSelect(IILjavax/microedition/lcdui/Graphics;)V

    :cond_7
    add-int v5, v9, v12

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    move v9, v5

    goto :goto_5

    :cond_8
    const/16 v5, 0xd2

    sub-int v5, v5, v19

    shl-int/lit8 v6, v17, 0x1

    sub-int v15, v5, v6

    sget v12, Lcom/t4game/Defaults;->sfh:I

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v5, v5, 0x168

    sub-int/2addr v5, v15

    sub-int v6, v5, v17

    add-int/lit8 v7, v18, 0x20

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v8, 0x2

    aget v5, v5, v8

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id:B

    move v8, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->id_vip_des:B

    move v9, v0

    if-ne v8, v9, :cond_c

    sget-object v5, Lcom/t4game/Data;->color:[I

    const/4 v8, 0x5

    aget v5, v5, v8

    move v10, v5

    :goto_6
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "V"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->curVip:B

    move v8, v0

    add-int/lit8 v8, v8, 0x1

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, "\u7279\u6743"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v9, -0x1

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v14, v12, 0x2a

    const/16 v5, 0xc8

    shl-int/lit8 v7, v18, 0x1

    sub-int/2addr v5, v7

    sub-int v16, v5, v12

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->curVip:B

    move v7, v0

    aget-object v12, v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/VIP;->page:I

    move v5, v0

    if-gtz v5, :cond_9

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/VIP;->page:I

    :cond_9
    const/16 v17, -0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/VIP;->page:I

    move/from16 v19, v0

    sget v20, Lcom/t4game/Defaults;->sfh:I

    const/16 v21, 0x3

    const/16 v22, 0x4

    const/16 v23, 0x1

    move-object/from16 v11, p1

    move v13, v6

    move/from16 v18, v10

    invoke-static/range {v11 .. v23}, Lcom/t4game/DraftingUtil;->paintTextListInVertDirByPagination(Ljavax/microedition/lcdui/Graphics;[Ljava/lang/String;IIIIIIIIBBZ)I

    move-result v5

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/VIP;->totalPage:I

    sput v6, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sput v14, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sput v15, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sput v16, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->cur_state:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->VIP_ACTIVATION:B

    move v6, v0

    if-ne v5, v6, :cond_a

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_1

    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->cur_state:B

    move v5, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    move v6, v0

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/VIP;->alert_type:B

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x3

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_1

    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    move-object v5, v0

    const/4 v6, 0x1

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto/16 :goto_1

    :cond_c
    move v10, v5

    goto/16 :goto_6

    :cond_d
    move v10, v5

    goto/16 :goto_3
.end method

.method public initVIPActivation(Lcom/t4game/IoBuffer;)V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/VIP;->alert_type:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    :cond_0
    :goto_0
    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    if-ltz v0, :cond_5

    new-array v0, v8, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->vipLevel:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ACTIVATION:B

    if-ne v0, v1, :cond_4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    if-ne v1, v4, :cond_3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/VIP;->vipLevel:B

    iget-object v1, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v2, p0, Lcom/t4game/VIP;->vipLevel:B

    iput-byte v2, v1, Lcom/t4game/GUser;->vipLevel:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, p0, Lcom/t4game/VIP;->surplusTime:I

    if-ne v1, v4, :cond_2

    iget-object v1, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    iput v2, v1, Lcom/t4game/GUser;->vipExpireTime:I

    iget-object v1, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/t4game/GUser;->vipExpireTimeNode:J

    :cond_2
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/VIP;->activation:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->imageId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->goodsId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->goodsName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v1, v2}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14a

    invoke-static {v1, v2}, Lcom/t4game/Util;->getStringArrayBySpecifiedWidth([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/VIP;->vipLevel:B

    iput-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    :cond_3
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_REWARDGOODS:B

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    if-ne v1, v4, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/VIP;->activation:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->imageId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v1

    iput v1, p0, Lcom/t4game/VIP;->goodsId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->goodsName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-static {v1, v2}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x14a

    invoke-static {v1, v2}, Lcom/t4game/Util;->getStringArrayBySpecifiedWidth([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v1, p0, Lcom/t4game/VIP;->id:B

    goto/16 :goto_0

    :cond_5
    new-array v0, v8, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    goto/16 :goto_1
.end method

.method public initVIPAttribute(Lcom/t4game/IoBuffer;)V
    .locals 12

    const/4 v11, 0x4

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/VIP;->activation:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/VIP;->imageId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/VIP;->goodsId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/VIP;->goodsName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "\n"

    invoke-static {v0, v1}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x14a

    invoke-static {v0, v1}, Lcom/t4game/Util;->getStringArrayBySpecifiedWidth([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/VIP;->goodsDetails:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/VIP;->vipLevelFlag:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/VIP;->vipDesFlag:B

    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevelFlag:B

    if-ne v0, v8, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/VIP;->iconId:[S

    array-length v1, v1

    add-int/2addr v1, v0

    new-array v1, v1, [S

    iget-object v2, p0, Lcom/t4game/VIP;->iconId:[S

    iget-object v3, p0, Lcom/t4game/VIP;->iconId:[S

    array-length v3, v3

    sub-int/2addr v3, v8

    invoke-static {v2, v7, v1, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v2, p0, Lcom/t4game/VIP;->iconId:[S

    array-length v2, v2

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v3

    int-to-short v3, v3

    aput-short v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/VIP;->iconId:[S

    iput-object v1, p0, Lcom/t4game/VIP;->iconId:[S

    iget-byte v1, p0, Lcom/t4game/VIP;->vip_num:B

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/VIP;->vip_num:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/VIP;->vipDesFlag:B

    if-ne v0, v8, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v7

    :goto_1
    if-ge v1, v0, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    const-string v4, ","

    invoke-static {v3, v4}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aget-object v4, v4, v2

    array-length v4, v4

    array-length v5, v3

    add-int/2addr v4, v5

    new-array v4, v4, [Ljava/lang/String;

    iget-object v5, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aget-object v5, v5, v2

    iget-object v6, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aget-object v6, v6, v2

    array-length v6, v6

    sub-int/2addr v6, v8

    invoke-static {v5, v7, v4, v7, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v5, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aget-object v5, v5, v2

    array-length v5, v5

    array-length v6, v3

    sub-int/2addr v6, v8

    invoke-static {v3, v7, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget-object v3, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aput-object v4, v3, v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/VIP;->iconId:[S

    invoke-virtual {v0, v1, v2, v8}, Lcom/t4game/GameWorld;->getGoodsIcon(B[SZ)V

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, p0, Lcom/t4game/VIP;->imageId:I

    invoke-virtual {v0, v9, v1}, Lcom/t4game/GameWorld;->getOneIntroGoodIcon(II)V

    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    if-ltz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    iput-byte v0, p0, Lcom/t4game/VIP;->curVip:B

    new-array v0, v11, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->vipLevel:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    :goto_2
    iget-object v0, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    array-length v0, v0

    move v1, v7

    :goto_3
    if-ge v1, v0, :cond_4

    iget-object v2, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/VIP;->prerogative:[[Ljava/lang/String;

    aget-object v3, v3, v1

    const/16 v4, 0x82

    invoke-static {v3, v4}, Lcom/t4game/Util;->getStringArrayBySpecifiedWidth([Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    new-array v0, v11, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    goto/16 :goto_2

    :cond_4
    return-void
.end method

.method public pointerOfDialogVIPAttribute(II)V
    .locals 11

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v0, 0x5

    invoke-static {v0, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {v8, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v6, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v9, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v10, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {v7, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v4, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v5, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    move v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/VIP;->activation:B

    if-nez v0, :cond_1

    invoke-static {v6, p1, p2}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    invoke-static {p1, p2}, Lcom/t4game/LogicalMapping;->pointerEvent(II)V

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    if-ne v0, v7, :cond_4

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_des:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Lcom/t4game/VIP;->pressedOfDialogVIPAttribute(I)V

    :cond_2
    :goto_1
    sget v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v4, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v5, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    move v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_des:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    :cond_3
    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    if-ltz v0, :cond_7

    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->vipLevel:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    goto/16 :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/VIP;->curVip:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id:B

    invoke-static {v1}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    iget-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    if-eq v0, v1, :cond_2

    iput v6, p0, Lcom/t4game/VIP;->page:I

    goto/16 :goto_1

    :cond_5
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_des:B

    if-ne v0, v1, :cond_6

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/t4game/VIP;->pressedOfDialogVIPAttribute(I)V

    goto/16 :goto_1

    :cond_6
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    invoke-static {v0}, Lcom/t4game/LogicalMapping;->isConfirm(I)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x5

    invoke-virtual {p0, v0}, Lcom/t4game/VIP;->pressedOfDialogVIPAttribute(I)V

    goto/16 :goto_1

    :cond_7
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v10

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    goto/16 :goto_0
.end method

.method public pressedOfDialogVIPAttribute(I)V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v0, -0x7

    if-ne p1, v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    if-le v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    :cond_0
    :goto_0
    iget-byte v0, p0, Lcom/t4game/VIP;->vipLevel:B

    if-ltz v0, :cond_1a

    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->vipLevel:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    :goto_1
    return-void

    :cond_1
    invoke-direct {p0}, Lcom/t4game/VIP;->releaseTextAndArray()V

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->vipCallBack()V

    goto :goto_0

    :cond_2
    const/4 v0, -0x5

    if-eq p1, v0, :cond_3

    const/4 v0, -0x6

    if-ne p1, v0, :cond_9

    :cond_3
    iget-object v0, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/VIP;->msg:Ljava/lang/String;

    :cond_4
    iget-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ACTIVATION:B

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    goto/16 :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    if-ne v0, v1, :cond_7

    iget-byte v0, p0, Lcom/t4game/VIP;->alert_type:B

    if-ne v0, v3, :cond_6

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ACTIVATION:B

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendVIPActivation(BB)Z

    :cond_6
    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_DEFAULT:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    goto/16 :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_lingqu:B

    if-ne v0, v1, :cond_8

    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_REWARDGOODS:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_REWARDGOODS:B

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendVIPActivation(BB)Z

    goto/16 :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-object v0, p0, Lcom/t4game/VIP;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_ALERT_VIEW:B

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendVIPActivation(BB)Z

    goto/16 :goto_0

    :cond_9
    const/16 v0, 0x30

    if-ne p1, v0, :cond_a

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_goods:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/VIP;->VIP_GOODS_DETAILS:B

    iput-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    goto/16 :goto_0

    :cond_a
    iget-byte v0, p0, Lcom/t4game/VIP;->cur_state:B

    iget-byte v1, p0, Lcom/t4game/VIP;->VIP_GOODS_DETAILS:B

    if-ne v0, v1, :cond_b

    invoke-static {v5, p1}, Lcom/t4game/LogicalMapping;->keyEvent(II)Z

    goto/16 :goto_1

    :cond_b
    const/4 v0, -0x1

    if-ne p1, v0, :cond_10

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_lingqu:B

    if-ne v0, v1, :cond_d

    iget-byte v0, p0, Lcom/t4game/VIP;->activation:B

    if-nez v0, :cond_d

    iget-byte v0, p0, Lcom/t4game/VIP;->id_goods:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    :cond_c
    :goto_2
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_des:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/VIP;->page:I

    if-le v0, v3, :cond_f

    iget v0, p0, Lcom/t4game/VIP;->page:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/VIP;->page:I

    goto/16 :goto_0

    :cond_d
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_e

    iget-byte v0, p0, Lcom/t4game/VIP;->curVip:B

    invoke-static {v4, p1}, Lcom/t4game/LogicalMapping;->keyEvent(II)Z

    invoke-static {v4}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    iget-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    if-eq v0, v1, :cond_c

    iput v3, p0, Lcom/t4game/VIP;->page:I

    goto :goto_2

    :cond_e
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_lingqu:B

    if-ne v0, v1, :cond_c

    iget-byte v0, p0, Lcom/t4game/VIP;->id_goods:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    goto :goto_2

    :cond_f
    iput v3, p0, Lcom/t4game/VIP;->page:I

    goto/16 :goto_0

    :cond_10
    const/4 v0, -0x2

    if-ne p1, v0, :cond_15

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_goods:B

    if-ne v0, v1, :cond_11

    iget-byte v0, p0, Lcom/t4game/VIP;->id_lingqu:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    :cond_11
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_lingqu:B

    if-ne v0, v1, :cond_13

    iget-byte v0, p0, Lcom/t4game/VIP;->activation:B

    if-nez v0, :cond_13

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    :cond_12
    :goto_3
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_des:B

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/VIP;->page:I

    iget v1, p0, Lcom/t4game/VIP;->totalPage:I

    if-ge v0, v1, :cond_14

    iget v0, p0, Lcom/t4game/VIP;->page:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/VIP;->page:I

    goto/16 :goto_0

    :cond_13
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_12

    iget-byte v0, p0, Lcom/t4game/VIP;->curVip:B

    invoke-static {v4, p1}, Lcom/t4game/LogicalMapping;->keyEvent(II)Z

    invoke-static {v4}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    iget-byte v1, p0, Lcom/t4game/VIP;->curVip:B

    if-eq v0, v1, :cond_12

    iput v3, p0, Lcom/t4game/VIP;->page:I

    goto :goto_3

    :cond_14
    iget v0, p0, Lcom/t4game/VIP;->totalPage:I

    iput v0, p0, Lcom/t4game/VIP;->page:I

    goto/16 :goto_0

    :cond_15
    const/4 v0, -0x3

    if-ne p1, v0, :cond_17

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_16

    iget-byte v0, p0, Lcom/t4game/VIP;->id_goods:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    goto/16 :goto_0

    :cond_16
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_des:B

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    goto/16 :goto_0

    :cond_17
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_vip_img:B

    if-ne v0, v1, :cond_18

    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_des:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    goto/16 :goto_0

    :cond_18
    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_goods:B

    if-eq v0, v1, :cond_19

    iget-byte v0, p0, Lcom/t4game/VIP;->id:B

    iget-byte v1, p0, Lcom/t4game/VIP;->id_lingqu:B

    if-ne v0, v1, :cond_0

    :cond_19
    iget-byte v0, p0, Lcom/t4game/VIP;->id_vip_img:B

    iput-byte v0, p0, Lcom/t4game/VIP;->id:B

    goto/16 :goto_0

    :cond_1a
    new-array v0, v7, [Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VIP("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-byte v2, p0, Lcom/t4game/VIP;->curVip:B

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u7ea7"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5269\u4f59\u65f6\u95f4:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->surplusTime:I

    invoke-direct {p0, v2}, Lcom/t4game/VIP;->handleTime(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5f53\u524dVIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->curPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5386\u53f2VIP\u79ef\u5206:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/t4game/VIP;->totalPoint:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/VIP;->t_l:[Ljava/lang/String;

    goto/16 :goto_1
.end method
