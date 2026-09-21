Tru Than / 诛神OL Android 1.17 - Local Server v0.26
====================================================

TRANG THAI DA CHOT
------------------
- Starter scene 轩辕奇境: OK.
- Spawn player: (180,230): OK, nam tren vung co the di chuyen.
- Client movement cmd133: OK.
- Player speed: 40: OK. Gia tri nay phu hop default GSprite trong classes.dex.
- NPC/quai server population: CHUA coi la xong; phai reverse tiep, khong hardcode doan.

MUC TIEU v0.26
--------------
1. Giu nguyen movement da on dinh cua v0.25.
2. Them che do asset-probe tach biet de tim objectDataId dung cho NPC/quai starter.
3. Probe chi duoc phep gui object ID THUC SU ton tai trong APK va kiem tra cac IMG ref.
4. Khong gan nhan 彩云仙子 / 火狐妖 vao mot object ID neu chua co bang chung.
5. Log packet client chua biet ro hon de bat cmd talk/attack sau khi co entity selectable.
6. Cap nhat ROLE[x/y] tu cmd133, chuan bi cho world-state/AOI sau nay.

CHAY BINH THUONG
----------------
    truthan_v026_adb_reverse.bat
    py truthan_local_server_v026.py

Mac dinh khong spawn NPC/quai probe. Map + movement se giong v0.25.

PROBE NPC VISUAL
----------------
DEX ForceGuide xac nhan ten tutorial:
    彩云仙子
    火狐妖
va huong dan player di sang TRAI de gap 彩云仙子.

Nhung client APK khong cho ta bang spawn server goc. v0.26 vi vay co che do
probe rieng, KHONG coi cac candidate la du lieu goc:

    set TRUTHAN_NPC_ASSET_PROBE=1
    py truthan_local_server_v026.py

Server se gui 3 APK-backed object candidate:
    OBJ1014  -> IMG 7197
    OBJ1015  -> IMG 7198
    OBJ1016  -> IMG 7199

Chung duoc dat ben trai spawn va co ten OBJxxxx de co the nhin screenshot ma
biet chinh xac object nao dang render. Khong candidate nao duoc goi la 彩云仙子
trong mode nay.

Neu sau nay xac dinh duoc objectDataId chinh xac, test exact-name tutorial bang:
    set TRUTHAN_CAIYUN_OBJ=<objectId>
    py truthan_local_server_v026.py

Khi do chi mot entity ten chinh xac 彩云仙子 duoc gui. Bam/select/talk entity do
va gui log moi; packet client phat sinh se giup reverse cmd talk/function/quest.

PROBE MONSTER VISUAL
--------------------
    set TRUTHAN_MOB_ASSET_PROBE=1
    py truthan_local_server_v026.py

v0.26 probe hai monster-like assets co that trong APK:
    OBJ1155 -> IMG 1207
    OBJ2077 -> IMG 3277

Day van chi la probe. De test mot object da duoc xac minh voi exact name 火狐妖:
    set TRUTHAN_HUOHUYAO_OBJ=<objectId>

LUU Y
-----
TRUTHAN_EXPERIMENTAL_SPAWN=1 van duoc giu de tuong thich va bat ca hai probe,
nhung nen dung hai bien NPC_ASSET_PROBE / MOB_ASSET_PROBE rieng de de doc log.

Server hien van la single-user reverse scaffold. ROLE van global. Protocol phan
da reverse se duoc tach Session/Character/World/AOI/DB khi gameplay flow duoc
khoi phuc du.
