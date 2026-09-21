.class public Lcom/t4game/FormContr;
.super Ljavax/microedition/lcdui/Form;

# interfaces
.implements Ljavax/microedition/lcdui/CommandListener;
.implements Ljavax/microedition/lcdui/ItemStateListener;


# static fields
.field public static final AUCTION_CHOICE_TIME:[Ljava/lang/String;

.field public static final ENTER_GANG_SEARCH:B = 0x22t

.field public static final ENTER_SECURITY_PW:B = 0x21t

.field public static final SEND_CHOICE_TIME:[I

.field public static final TYPE_ADD_BLACKLIST:B = 0x6t

.field public static final TYPE_ADD_ENEMY:B = 0x1et

.field public static final TYPE_ADD_FRIEND:B = 0x5t

.field public static final TYPE_AUCTION:B = 0x9t

.field public static final TYPE_AUCTION_PRICE_GOLD_INPUT:B = 0xft

.field public static final TYPE_BROTHER_FIRSTNAME:B = 0x7t

.field public static final TYPE_BUG_GOODS_NUM:B = 0x13t

.field public static final TYPE_BUY_NUM:B = 0x20t

.field public static final TYPE_CHANAL:B = 0x1t

.field public static final TYPE_EMAIL:B = 0x8t

.field public static final TYPE_EXPLOIT:B = 0x1at

.field public static final TYPE_GANG_INVITE:B = 0xct

.field public static final TYPE_GANG_MESSAGE:B = 0xat

.field public static final TYPE_GANG_NEW_NAME:B = 0xdt

.field public static final TYPE_GANG_NEW_NICK_NAME:B = 0xet

.field public static final TYPE_GM:B = 0xbt

.field public static final TYPE_GRUP:B = 0x4t

.field public static final TYPE_GUEST_REGISTER:B = 0x10t

.field public static final TYPE_MODIFYROLE:B = 0x24t

.field public static final TYPE_PALYER_TRADE_MONEY:B = 0x1ct

.field public static final TYPE_PRIVATE:B = 0x2t

.field public static final TYPE_QIANGHUA_CAILIAO:B = 0x1ft

.field public static final TYPE_SAFETY_LOCK:B = 0x25t

.field public static final TYPE_SET_SECURITY_PW:B = 0x11t

.field public static final TYPE_SET_SIGNATURE:B = 0x1dt

.field public static final TYPE_SPLIT_ITEM:B = 0x12t

.field public static final TYPE_STRENGTHEN_NUM:B = 0x1bt

.field public static final TYPE_TEAM:B = 0x3t

.field public static final TYPE_WEIBO_BIND:B = 0x23t

.field public static maxNum:I


# instance fields
.field private final AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

.field private final AUCTION_BROWSE_USEFUL_STR:[Ljava/lang/String;

.field private CharAndNum:[Ljava/lang/String;

.field private DefaultState:Z

.field private cancelCmd:Ljavax/microedition/lcdui/Command;

.field private choiceDepth:I

.field private emailCmd:Ljavax/microedition/lcdui/Command;

.field private functionCmd0:Ljavax/microedition/lcdui/Command;

.field private functionCmd1:Ljavax/microedition/lcdui/Command;

.field private functionCmd2:Ljavax/microedition/lcdui/Command;

.field private functionCmd3:Ljavax/microedition/lcdui/Command;

.field private final gamescreen:Lcom/t4game/GameScreen;

.field private iBackTrackState:B

.field private inPTF1:Ljavax/microedition/lcdui/TextField;

.field private inPTF2:Ljavax/microedition/lcdui/TextField;

.field private inPTF3:Ljavax/microedition/lcdui/TextField;

.field private inPTF4:Ljavax/microedition/lcdui/TextField;

.field private inPTF5:Ljavax/microedition/lcdui/TextField;

.field private inPTF6:Ljavax/microedition/lcdui/TextField;

.field private inPTF7:Ljavax/microedition/lcdui/TextField;

.field private index:B

.field infoSend:Ljava/lang/String;

.field private okCmd:Ljavax/microedition/lcdui/Command;

.field private pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

.field private pickChoice2:Ljavax/microedition/lcdui/ChoiceGroup;

.field private pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

.field private pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

.field private pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

.field private pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

.field private typeN:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x3

    new-array v0, v3, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "12\u5c0f\u65f6"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "24\u5c0f\u65f6"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "48\u5c0f\u65f6"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/FormContr;->AUCTION_CHOICE_TIME:[Ljava/lang/String;

    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/FormContr;->SEND_CHOICE_TIME:[I

    return-void

    :array_0
    .array-data 4
        0xa8c0
        0x15180
        0x2a300
    .end array-data
.end method

.method public constructor <init>(IZLjava/lang/String;Lcom/t4game/GameScreen;I)V
    .locals 7

    const-string v0, "\u8f93\u5165"

    invoke-direct {p0, v0}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/FormContr;->typeN:I

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u793e\u4f1a\u5173\u7cfb\u5217\u8868"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0x30

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u88c5\u5907"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u836f\u54c1"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u6750\u6599"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u4efb\u52a1"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u5b9d\u7269"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u6b66\u5668"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u9632\u5177"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u9970\u54c1"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u836f\u6c34"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u836f\u5242"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const/16 v2, 0x8

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u94c1"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u6728"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u5f3a\u5316\u6750\u6599"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u6750\u6599\u5b9d\u77f3"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u7279\u6b8a\u6750\u6599"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5750\u9a91"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u5b9d\u77f3"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u9644\u9b54\u5377\u8f74"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u6280\u80fd\u7b26"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u65f6\u88c5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u56fe\u7eb8"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u6cd5\u5b9d\u5305"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u6cd5\u5b9d\u6280\u80fd\u77f3"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u5176\u4ed6"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5200"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u5251"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u65a7"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u6cd5\u5251"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u7fbd\u6247"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u6cd5\u6756"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e3d\u5b50"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u4e0a\u8863"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u88e4\u5b50"

    aput-object v4, v2, v3

    const/4 v3, 0x4

    const-string v4, "\u978b"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u62a4\u8155"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u8170\u5e26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u80a9\u8180"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u62ab\u98ce"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u6212\u6307"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u9970\u54c1"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u4e0d\u9650"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u5e03\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u76ae\u7532"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "\u91cd\u7532"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const/4 v2, 0x0

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const/4 v2, 0x0

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u5168\u90e8"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u662f"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_USEFUL_STR:[Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "a"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "b"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "c"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "d"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->CharAndNum:[Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u6cd5\u5b9d"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd0:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u8868\u60c5"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd1:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u88c5\u5907"

    const/4 v2, 0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd2:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd3:Ljavax/microedition/lcdui/Command;

    iput p1, p0, Lcom/t4game/FormContr;->typeN:I

    iput-object p4, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameScreen;->gamescreenDraw:Z

    iput-boolean p2, p0, Lcom/t4game/FormContr;->DefaultState:Z

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/t4game/FormContr;->iBackTrackState:B

    int-to-byte v0, p5

    iput-byte v0, p0, Lcom/t4game/FormContr;->index:B

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_11

    :cond_1
    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, ""

    const-string v2, "\u804a\u5929\u9891\u9053\u4e2d\u53ef\u4ee5\u79c0\u51fa\u4f60\u7684\u7269\u54c1\u3002\u53ea\u8981\u8f93\u5165\u201c/bag?!\u201d\u3002\uff1f\u8868\u793a\u5305\u88f9\u53f7\uff0c\uff01\u8868\u793a\u7269\u54c1\u4f4d\u7f6e\u4ee3\u53f7\uff0c\u4f8b\u5982\u201c/bag105\u201d\u5c31\u4ee3\u8868\u6b66\u5668\u5305\u4e2d\u5de6\u6570\u7b2c\u4e94\u4e2a\u7269\u54c1\uff0c\u5305\u88f9\u7f16\u53f7\u4e3a\uff1a1=\u6b66\u5668\uff0c2=\u836f\u54c1\uff0c3=\u6750\u6599\uff0c4=\u4efb\u52a1\uff0c5=\u5b9d\u7269\uff0c6=\u6cd5\u5b9d"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd2:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd1:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd0:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd3:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    :goto_1
    invoke-virtual {p0, p0}, Lcom/t4game/FormContr;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void

    :pswitch_1
    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u786e\u8ba4"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->tipContent:Ljava/lang/String;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u8bf7\u8f93\u5165\u60a8\u7684\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    if-nez v0, :cond_2

    const-string v0, "\u4fee\u6539\u91cd\u590d\u89d2\u8272\u540d\u79f0"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u5c0a\u656c\u7684\u73a9\u5bb6\u60a8\u597d\uff01\u7531\u4e8e\u60a8\u7684\u89d2\u8272\u5728\u5408\u670d\u540e\uff0c\u4e0e\u5176\u4ed6\u73a9\u5bb6\u7684\u540d\u79f0\u91cd\u590d\uff0c\u7cfb\u7edf\u5c06\u4e3a\u60a8\u63d0\u4f9b\u4e00\u6b21\u4fee\u6539\u540d\u79f0\u7684\u673a\u4f1a\uff0c\u672c\u673a\u4f1a\u53ea\u6709\u4e00\u6b21\uff0c\u540d\u79f0\u4fee\u6539\u6210\u529f\u540e\u5c06\u4e0d\u80fd\u518d\u6b21\u4fee\u6539"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u89d2\u8272\u540d\u79f0\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const-string v0, "\u4fee\u6539\u5e2e\u6d3e\u540d\u79f0"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u5c0a\u656c\u7684\u73a9\u5bb6\u60a8\u597d\uff01\u7531\u4e8e\u60a8\u7684\u5e2e\u6d3e\u5728\u5408\u670d\u540e\uff0c\u4e0e\u5176\u4ed6\u5e2e\u6d3e\u7684\u540d\u79f0\u91cd\u590d\uff0c\u7cfb\u7edf\u5c06\u4e3a\u60a8\u63d0\u4f9b\u4e00\u6b21\u4fee\u6539\u5e2e\u6d3e\u540d\u79f0\u7684\u673a\u4f1a\uff0c\u672c\u673a\u4f1a\u53ea\u6709\u4e00\u6b21\uff0c\u5e2e\u6d3e\u540d\u79f0\u4fee\u6539\u6210\u529f\u540e\u5c06\u4e0d\u80fd\u518d\u4fee\u6539"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u5e2e\u6d3e\u540d\u79f0\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_4

    const-string v0, "\u4fee\u6539\u5e2e\u6d3e\u7b80\u79f0"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u5c0a\u656c\u7684\u73a9\u5bb6\u60a8\u597d\uff01\u7531\u4e8e\u60a8\u7684\u5e2e\u6d3e\u5728\u5408\u670d\u540e\uff0c\u4e0e\u5176\u4ed6\u5e2e\u6d3e\u7684\u7b80\u79f0\u91cd\u590d\uff0c\u7cfb\u7edf\u5c06\u4e3a\u60a8\u63d0\u4f9b\u4e00\u6b21\u4fee\u6539\u5e2e\u6d3e\u7b80\u79f0\u7684\u673a\u4f1a\uff0c\u672c\u673a\u4f1a\u53ea\u6709\u4e00\u6b21\uff0c\u7b80\u79f0\u4fee\u6539\u6210\u529f\u540e\u5c06\u4e0d\u80fd\u518d\u6b21\u4fee\u6539"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u5e2e\u6d3e\u7b80\u79f0\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_6

    const-string v0, "\u627e\u56de\u5176\u5b83\u89d2\u8272"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->roleInfo:[Ljava/lang/String;

    if-eqz v0, :cond_5

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->roleInfo:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    :cond_5
    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u5c0a\u656c\u7684\u73a9\u5bb6\u60a8\u597d\uff01\u7531\u4e8e\u60a8\u7684\u89d2\u8272\u5728\u5408\u670d\u540e\u6570\u91cf\u5927\u4e8e\u56db\u4e2a\uff0c\u7cfb\u7edf\u5c06\u60a8\u7b49\u7ea7\u8f83\u4f4e\u7684\u89d2\u8272\u6682\u5b58\u5728\u5c0f\u4e2b\u8eab\u4e0a\uff0c\u8bf7\u60a8\u91cd\u65b0\u521b\u5efa\u4e00\u4e2a\u8d26\u53f7\uff0c\u7136\u540e\u518d\u4f7f\u7528\u5df2\u6709\u89d2\u8272\uff0c\u5230\u5c0f\u4e2b\u5904\u5c06\u8fd9\u4e9b\u6682\u5b58\u89d2\u8272\u9886\u53d6\u5230\u65b0\u7684\u8d26\u53f7\u4e2d\uff0c\u5728\u4e0b\u9762\u8f93\u5165\u60a8\u9886\u53d6\u7684\u5e10\u53f7\u4fe1\u606f\u3002"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u7528\u6237\u540d\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u5bc6\u7801\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u786e\u8ba4\u5bc6\u7801\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_6
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7

    const-string v0, "\u4fee\u6539\u91cd\u590d\u7ed3\u4e49\u79f0\u53f7"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u7531\u4e8e\u60a8\u7684\u7ed3\u4e49\u79f0\u53f7\u5728\u5408\u670d\u540e\uff0c\u4e0e\u5176\u4ed6\u73a9\u5bb6\u7684\u7ed3\u4e49\u79f0\u53f7\u51b2\u7a81\uff0c\u73b0\u63d0\u4f9b\u4e00\u6b21\u4fee\u6539\u673a\u4f1a,\u672c\u673a\u4f1a\u53ea\u6709\u4e00\u6b21\u3002"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u7ed3\u4e49\u79f0\u53f7\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const-string v0, "\u4fee\u6539\u91cd\u590d\u4e2a\u4eba\u79f0\u53f7"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u5c0a\u656c\u7684\u73a9\u5bb6\u60a8\u597d\uff01\u5982\u679c\u60a8\u7684\u7ed3\u4e49\u79f0\u53f7\u4e2d\u51fa\u73b0\u5176\u4ed6\u5b57\u7b26\uff0c\u8bf4\u660e\u5408\u670d\u540e\u6709\u91cd\u540d\u73b0\u8c61\u5b58\u5728\u3002\u8bf7\u4e0e\u5927\u4e8e\u534a\u6570\u7684\u7ed3\u4e49\u4eba\u5458\u7ec4\u961f\u540e\u7531\u961f\u957f\u4fee\u6539\u7ed3\u4e49\u79f0\u53f7\uff0c\u6240\u6709\u7ed3\u4e49\u4eba\u5458\u5747\u53ef\u4fee\u6539\u4e2a\u4eba\u79f0\u53f7\u3002"

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/TextField;

    const-string v2, "\u4e2a\u4eba\u79f0\u53f7\uff1a"

    const-string v3, ""

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_3
    sget-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x32

    if-le v0, v1, :cond_8

    sget-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/4 v1, 0x0

    const/16 v2, 0x32

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    :cond_8
    if-nez p5, :cond_9

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u53d1\u9001\u7ed9\uff1a"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, p3, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u4fe1\u606f:"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_9
    const/4 v0, 0x1

    if-ne p5, v0, :cond_a

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u961f\u4f0d\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_a
    const/4 v0, 0x2

    if-ne p5, v0, :cond_b

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5e2e\u6d3e\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_b
    const/4 v0, 0x3

    if-ne p5, v0, :cond_d

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u4e16\u754c\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->tempChat:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    :goto_2
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_c
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u4e16\u754c\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    goto :goto_2

    :cond_d
    const/4 v0, 0x4

    if-ne p5, v0, :cond_f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u56fd\u5bb6\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->tempChat:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    :goto_3
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_e
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u56fd\u5bb6\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    goto :goto_3

    :cond_f
    const/4 v0, 0x5

    if-ne p5, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u533a\u57df\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->tempChat:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    :goto_4
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_10
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u533a\u57df\u9891\u9053\uff1a"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    goto :goto_4

    :pswitch_4
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u53d1\u9001\u7ed9\uff1a"

    const/4 v2, 0x6

    const/16 v3, 0x400

    invoke-direct {v0, v1, p3, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u4fe1\u606f:"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    sget-object v2, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_5
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u7ec4\u961f\u5bf9\u8c61\u7684\u540d\u5b57:"

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_6
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u9080\u8bf7\u5bf9\u8c61\u7684\u540d\u5b57:"

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_7
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u8981\u6dfb\u52a0\u4e3a\u597d\u53cb\u7684\u73a9\u5bb6\u540d\u5b57:"

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_8
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u8981\u6dfb\u52a0\u5230\u9ed1\u540d\u5355\u7684\u73a9\u5bb6\u540d\u5b57:"

    const/4 v2, 0x0

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_9
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u8981\u6dfb\u52a0\u5230\u6069\u6028\u699c\u7684\u73a9\u5bb6\u540d\u5b57:"

    const/4 v2, 0x0

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_a
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u7ed3\u4e49\u540d\u5b57\u7684\u524d\u4e24\u4e2a\u5b57:"

    const/4 v2, 0x0

    const/4 v3, 0x2

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u7ed3\u4e49\u540d\u5b57\u7684\u540e\u4e00\u4e2a\u5b57:"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_b
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6807\u9898:"

    const/4 v2, 0x0

    const/16 v3, 0xa

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u63a5\u6536\u4eba:"

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->EMAIL_WRITE_name:Ljava/lang/String;

    const/16 v3, 0xc

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6b63\u6587:"

    const/4 v2, 0x0

    const/16 v3, 0x96

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    :pswitch_c
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u53d1\u9001\u7ed9\uff1a"

    const-string v2, "GM"

    const/16 v3, 0xc

    const/16 v4, 0x400

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8f93\u5165\u4fe1\u606f:"

    const/4 v2, 0x0

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_d
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5e2e\u6d3e\u7559\u8a00\uff1a(\u6700\u591a50\u4e2a\u5b57\u7b26)"

    const-string v2, ""

    const/16 v3, 0x32

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_e
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u89d2\u8272\u540d\u79f0\u8f93\u5165"

    const-string v2, ""

    const/16 v3, 0x14

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_f
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5e2e\u6d3e\u540d\u79f0\u8f93\u5165\uff1a"

    const-string v2, ""

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u8ba4"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_10
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5e2e\u6d3e\u4ee3\u53f7\u8f93\u5165\uff1a"

    const-string v2, ""

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u8ba4"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_11
    const-string v0, "\u6e38\u5ba2\u6ce8\u518c"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, "\u8bf4\u660e\uff1a"

    const-string v2, "\u8bf7\u8f93\u5165\u6ce8\u518c\u76f8\u5173\u4fe1\u606f\uff08\u8d26\u53f7\u548c\u5bc6\u7801\u5fc5\u987b\u75316-16\u4f4d\u7684\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\uff09"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Ljavax/microedition/lcdui/StringItem;

    const-string v2, ""

    const-string v3, "\u9ed8\u8ba4\u5c06\u4f7f\u7528\u60a8\u7684\u624b\u673a\u53f7\u7801\u4f5c\u4e3a\u8d26\u53f7\u548c\u5bc6\u7801\uff0c\u4e3a\u4e86\u60a8\u7684\u8d26\u53f7\u5b89\u5168\u5efa\u8bae\u53ca\u65f6\u66f4\u6362\u3002"

    invoke-direct {v1, v2, v3}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->gUsername:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8bf7\u8f93\u5165\u5bc6\u7801\uff1a"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->gPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8bf7\u786e\u8ba4\u5bc6\u7801\uff1a"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->gPassword:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8f93\u5165\u89d2\u8272\u540d\u79f0\uff1a"

    iget-object v4, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->gRoleName:Ljava/lang/String;

    const/4 v5, 0x6

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d:"

    const-string v4, ""

    const/16 v5, 0x10

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    new-instance v2, Ljavax/microedition/lcdui/TextField;

    const-string v3, "\u8bf7\u8f93\u5165\u8bc1\u4ef6\u53f7\uff1a"

    const-string v4, ""

    const/16 v5, 0x12

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v2, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "\u8eab\u4efd\u8bc1"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "\u519b\u5b98\u8bc1"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "\u62a4\u7167"

    aput-object v4, v2, v3

    new-instance v3, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v4, "\u9009\u62e9\u8bc1\u4ef6\u7c7b\u578b"

    const/4 v5, 0x4

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v2, v6}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v3, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    invoke-virtual {p0, v1}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_12
    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u8bbe\u7f6e"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\uff1a"

    sget-object v2, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u6e38\u620f\u5bc6\u7801\uff1a"

    const-string v2, ""

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u786e\u8ba4\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    const-string v0, "\u9ad8\u7ea7\u5bc6\u7801\u75316~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\uff0c\u662f\u7528\u6765\u89e3\u9664\u624b\u673a\u7ed1\u5b9a\u3001\u89e3\u9664\u90ae\u7bb1\u7ed1\u5b9a\u3001\u786e\u8ba4\u5220\u9664\u89d2\u8272\u3001\u786e\u8ba4\u4e70\u5356\u3001\u4ea4\u6613\u3001\u4e22\u5f03\u3001\u62cd\u5356\u7b49\u4f5c\u7528\u3002\u4e0d\u8981\u968f\u610f\u5c06\u81ea\u5df1\u7684\u9ad8\u7ea7\u5bc6\u7801\u544a\u8bc9\u5176\u4ed6\u73a9\u5bb6\u3002"

    new-instance v1, Ljavax/microedition/lcdui/StringItem;

    const-string v2, "\u8bf4\u660e:"

    invoke-direct {v1, v2, v0}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_13
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u8d2d\u4e70\u6570\u91cf\uff1a"

    const-string v2, ""

    const/4 v3, 0x3

    const/16 v4, 0x20

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_14
    const-string v0, "\u7ed1\u5b9a\u5fae\u535a"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5fae\u535a\u8d26\u53f7:"

    const-string v2, ""

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u5fae\u535a\u5bc6\u7801:"

    const-string v2, ""

    const/16 v3, 0x10

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    new-instance v0, Ljavax/microedition/lcdui/StringItem;

    const-string v1, ""

    const-string v2, "\u7528\u6237\u540d\u4e0d\u80fd\u4e3a\u4e2d\u6587\u6c49\u5b57\uff0c\u53ea\u80fd\u662f\u60a8\u767b\u5f55\u65b0\u6d6a\u5fae\u535a\u7684\u90ae\u7bb1\u540d\u3002\u5982\u679c\u60a8\u662f\u901a\u8fc7\u8bdb\u795e\u6ce8\u518c\u7684\u65b0\u6d6a\u5fae\u535a\uff0c\u7528\u6237\u540d\u4e3a\u60a8\u7684\u624b\u673a\u53f7\u7801\uff0c\u5bc6\u7801\u4e3a\u624b\u673a\u53f7\u7684\u540e\u516d\u4f4d\u3002"

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :pswitch_15
    const-string v0, "\u6309\u6761\u4ef6\u641c\u7d22"

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->setTitle(Ljava/lang/String;)V

    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "\u529b\u58eb"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "\u523a\u5ba2"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u5524\u96f7\u5e08"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u5929\u5e08"

    aput-object v2, v0, v1

    new-instance v1, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v2, "\u804c\u4e1a"

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v0, v4}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v1, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_0

    :cond_11
    iget-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_b
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_0
        :pswitch_11
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_9
        :pswitch_0
        :pswitch_13
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/t4game/GameScreen;I)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    iput v8, p0, Lcom/t4game/FormContr;->typeN:I

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u793e\u4f1a\u5173\u7cfb\u5217\u8868"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0x30

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u88c5\u5907"

    aput-object v2, v1, v7

    const-string v2, "\u836f\u54c1"

    aput-object v2, v1, v6

    const-string v2, "\u6750\u6599"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u4efb\u52a1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u5b9d\u7269"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u6b66\u5668"

    aput-object v2, v1, v7

    const-string v2, "\u9632\u5177"

    aput-object v2, v1, v6

    const-string v2, "\u9970\u54c1"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u836f\u6c34"

    aput-object v2, v1, v7

    const-string v2, "\u836f\u5242"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u5e03"

    aput-object v2, v1, v7

    const-string v2, "\u76ae"

    aput-object v2, v1, v6

    const-string v2, "\u94c1"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u6728"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u5f3a\u5316\u6750\u6599"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u6750\u6599\u5b9d\u77f3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u7279\u6b8a\u6750\u6599"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5750\u9a91"

    aput-object v3, v2, v7

    const-string v3, "\u5b9d\u77f3"

    aput-object v3, v2, v6

    const-string v3, "\u9644\u9b54\u5377\u8f74"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u6280\u80fd\u7b26"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u65f6\u88c5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u56fe\u7eb8"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u6cd5\u5b9d\u5305"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u6cd5\u5b9d\u6280\u80fd\u77f3"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u5176\u4ed6"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5200"

    aput-object v3, v2, v7

    const-string v3, "\u5251"

    aput-object v3, v2, v6

    const-string v3, "\u65a7"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u6cd5\u5251"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u7fbd\u6247"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u6cd5\u6756"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e3d\u5b50"

    aput-object v3, v2, v7

    const-string v3, "\u4e0a\u8863"

    aput-object v3, v2, v6

    const-string v3, "\u88e4\u5b50"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u978b"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u62a4\u8155"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u8170\u5e26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u80a9\u8180"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u62ab\u98ce"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u6212\u6307"

    aput-object v3, v2, v7

    const-string v3, "\u9970\u54c1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v5, v0, v1

    const/16 v1, 0xa

    aput-object v5, v0, v1

    const/16 v1, 0xb

    aput-object v5, v0, v1

    const/16 v1, 0xc

    aput-object v5, v0, v1

    const/16 v1, 0xd

    aput-object v5, v0, v1

    const/16 v1, 0xe

    aput-object v5, v0, v1

    const/16 v1, 0xf

    aput-object v5, v0, v1

    const/16 v1, 0x10

    aput-object v5, v0, v1

    const/16 v1, 0x11

    aput-object v5, v0, v1

    const/16 v1, 0x12

    aput-object v5, v0, v1

    const/16 v1, 0x13

    aput-object v5, v0, v1

    const/16 v1, 0x14

    aput-object v5, v0, v1

    const/16 v1, 0x15

    aput-object v5, v0, v1

    const/16 v1, 0x16

    aput-object v5, v0, v1

    const/16 v1, 0x17

    aput-object v5, v0, v1

    const/16 v1, 0x18

    aput-object v5, v0, v1

    const/16 v1, 0x19

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    aput-object v5, v0, v1

    const/16 v1, 0x1b

    aput-object v5, v0, v1

    const/16 v1, 0x1c

    aput-object v5, v0, v1

    const/16 v1, 0x1d

    aput-object v5, v0, v1

    const/16 v1, 0x1e

    aput-object v5, v0, v1

    const/16 v1, 0x1f

    aput-object v5, v0, v1

    const/16 v1, 0x20

    aput-object v5, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x28

    aput-object v5, v0, v1

    const/16 v1, 0x29

    aput-object v5, v0, v1

    const/16 v1, 0x2a

    aput-object v5, v0, v1

    const/16 v1, 0x2b

    aput-object v5, v0, v1

    const/16 v1, 0x2c

    aput-object v5, v0, v1

    const/16 v1, 0x2d

    aput-object v5, v0, v1

    const/16 v1, 0x2e

    aput-object v5, v0, v1

    const/16 v1, 0x2f

    aput-object v5, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u5168\u90e8"

    aput-object v1, v0, v8

    const-string v1, "\u662f"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_USEFUL_STR:[Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v8

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string v1, "c"

    aput-object v1, v0, v6

    const-string v1, "d"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->CharAndNum:[Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u6cd5\u5b9d"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd0:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u8868\u60c5"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd1:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u88c5\u5907"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd2:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    invoke-direct {v0, v1, v6, v8}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd3:Ljavax/microedition/lcdui/Command;

    iput-object p2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput p3, p0, Lcom/t4game/FormContr;->typeN:I

    invoke-direct {p0}, Lcom/t4game/FormContr;->init()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-boolean v8, v0, Lcom/t4game/GameScreen;->gamescreenDraw:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/t4game/GameScreen;II)V
    .locals 10

    const/4 v9, 0x3

    const/4 v8, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x2

    const/4 v5, 0x0

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    iput v8, p0, Lcom/t4game/FormContr;->typeN:I

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v8}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u8fd4\u56de"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u793e\u4f1a\u5173\u7cfb\u5217\u8868"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    const/16 v0, 0x30

    new-array v0, v0, [[Ljava/lang/String;

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u88c5\u5907"

    aput-object v2, v1, v7

    const-string v2, "\u836f\u54c1"

    aput-object v2, v1, v6

    const-string v2, "\u6750\u6599"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u4efb\u52a1"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u5b9d\u7269"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u6b66\u5668"

    aput-object v2, v1, v7

    const-string v2, "\u9632\u5177"

    aput-object v2, v1, v6

    const-string v2, "\u9970\u54c1"

    aput-object v2, v1, v9

    aput-object v1, v0, v7

    new-array v1, v9, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u836f\u6c34"

    aput-object v2, v1, v7

    const-string v2, "\u836f\u5242"

    aput-object v2, v1, v6

    aput-object v1, v0, v6

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e0d\u9650"

    aput-object v2, v1, v8

    const-string v2, "\u5e03"

    aput-object v2, v1, v7

    const-string v2, "\u76ae"

    aput-object v2, v1, v6

    const-string v2, "\u94c1"

    aput-object v2, v1, v9

    const/4 v2, 0x4

    const-string v3, "\u6728"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "\u5f3a\u5316\u6750\u6599"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u6750\u6599\u5b9d\u77f3"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u7279\u6b8a\u6750\u6599"

    aput-object v3, v1, v2

    aput-object v1, v0, v9

    const/4 v1, 0x4

    aput-object v5, v0, v1

    const/4 v1, 0x5

    const/16 v2, 0xa

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5750\u9a91"

    aput-object v3, v2, v7

    const-string v3, "\u5b9d\u77f3"

    aput-object v3, v2, v6

    const-string v3, "\u9644\u9b54\u5377\u8f74"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u6280\u80fd\u7b26"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u65f6\u88c5"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u56fe\u7eb8"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u6cd5\u5b9d\u5305"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u6cd5\u5b9d\u6280\u80fd\u77f3"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u5176\u4ed6"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x7

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5200"

    aput-object v3, v2, v7

    const-string v3, "\u5251"

    aput-object v3, v2, v6

    const-string v3, "\u65a7"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u6cd5\u5251"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u7fbd\u6247"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u6cd5\u6756"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e3d\u5b50"

    aput-object v3, v2, v7

    const-string v3, "\u4e0a\u8863"

    aput-object v3, v2, v6

    const-string v3, "\u88e4\u5b50"

    aput-object v3, v2, v9

    const/4 v3, 0x4

    const-string v4, "\u978b"

    aput-object v4, v2, v3

    const/4 v3, 0x5

    const-string v4, "\u62a4\u8155"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u8170\u5e26"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u80a9\u8180"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u62ab\u98ce"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u6212\u6307"

    aput-object v3, v2, v7

    const-string v3, "\u9970\u54c1"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x9

    aput-object v5, v0, v1

    const/16 v1, 0xa

    aput-object v5, v0, v1

    const/16 v1, 0xb

    aput-object v5, v0, v1

    const/16 v1, 0xc

    aput-object v5, v0, v1

    const/16 v1, 0xd

    aput-object v5, v0, v1

    const/16 v1, 0xe

    aput-object v5, v0, v1

    const/16 v1, 0xf

    aput-object v5, v0, v1

    const/16 v1, 0x10

    aput-object v5, v0, v1

    const/16 v1, 0x11

    aput-object v5, v0, v1

    const/16 v1, 0x12

    aput-object v5, v0, v1

    const/16 v1, 0x13

    aput-object v5, v0, v1

    const/16 v1, 0x14

    aput-object v5, v0, v1

    const/16 v1, 0x15

    aput-object v5, v0, v1

    const/16 v1, 0x16

    aput-object v5, v0, v1

    const/16 v1, 0x17

    aput-object v5, v0, v1

    const/16 v1, 0x18

    aput-object v5, v0, v1

    const/16 v1, 0x19

    aput-object v5, v0, v1

    const/16 v1, 0x1a

    aput-object v5, v0, v1

    const/16 v1, 0x1b

    aput-object v5, v0, v1

    const/16 v1, 0x1c

    aput-object v5, v0, v1

    const/16 v1, 0x1d

    aput-object v5, v0, v1

    const/16 v1, 0x1e

    aput-object v5, v0, v1

    const/16 v1, 0x1f

    aput-object v5, v0, v1

    const/16 v1, 0x20

    aput-object v5, v0, v1

    const/16 v1, 0x21

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u4e0d\u9650"

    aput-object v3, v2, v8

    const-string v3, "\u5e03\u7532"

    aput-object v3, v2, v7

    const-string v3, "\u76ae\u7532"

    aput-object v3, v2, v6

    const-string v3, "\u91cd\u7532"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x28

    aput-object v5, v0, v1

    const/16 v1, 0x29

    aput-object v5, v0, v1

    const/16 v1, 0x2a

    aput-object v5, v0, v1

    const/16 v1, 0x2b

    aput-object v5, v0, v1

    const/16 v1, 0x2c

    aput-object v5, v0, v1

    const/16 v1, 0x2d

    aput-object v5, v0, v1

    const/16 v1, 0x2e

    aput-object v5, v0, v1

    const/16 v1, 0x2f

    aput-object v5, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    new-array v0, v6, [Ljava/lang/String;

    const-string v1, "\u5168\u90e8"

    aput-object v1, v0, v8

    const-string v1, "\u662f"

    aput-object v1, v0, v7

    iput-object v0, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_USEFUL_STR:[Ljava/lang/String;

    const/16 v0, 0x24

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "a"

    aput-object v1, v0, v8

    const-string v1, "b"

    aput-object v1, v0, v7

    const-string v1, "c"

    aput-object v1, v0, v6

    const-string v1, "d"

    aput-object v1, v0, v9

    const/4 v1, 0x4

    const-string v2, "e"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "f"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "g"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "0"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "1"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string v2, "2"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "3"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "4"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "5"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string v2, "6"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "7"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "8"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "9"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/FormContr;->CharAndNum:[Ljava/lang/String;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u6cd5\u5b9d"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd0:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u8868\u60c5"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd1:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u9009\u62e9\u88c5\u5907"

    invoke-direct {v0, v1, v6, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd2:Ljavax/microedition/lcdui/Command;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u53d1\u9001"

    invoke-direct {v0, v1, v6, v8}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->functionCmd3:Ljavax/microedition/lcdui/Command;

    iput-object p2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput p3, p0, Lcom/t4game/FormContr;->typeN:I

    invoke-direct {p0}, Lcom/t4game/FormContr;->init()V

    sput p4, Lcom/t4game/FormContr;->maxNum:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-boolean v8, v0, Lcom/t4game/GameScreen;->gamescreenDraw:Z

    return-void
.end method

.method private clearChoiceItem(II)V
    .locals 3

    const/4 v2, 0x0

    add-int v0, p1, p2

    :goto_0
    if-le v0, p1, :cond_1

    invoke-virtual {p0}, Lcom/t4game/FormContr;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->delete(I)V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x5

    if-lt p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    if-lt p2, v0, :cond_2

    iput-object v2, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    :cond_2
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    if-lt p2, v0, :cond_3

    iput-object v2, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    :cond_3
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    if-lt p2, v0, :cond_4

    iput-object v2, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    :cond_4
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void
.end method

.method private init()V
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/16 v3, 0x20

    const-string v4, ""

    const/16 v0, 0x63

    iput-byte v0, p0, Lcom/t4game/FormContr;->iBackTrackState:B

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    sparse-switch v0, :sswitch_data_0

    :goto_0
    iget-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->addCommand(Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {p0, p0}, Lcom/t4game/FormContr;->setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V

    invoke-virtual {p0, p0}, Lcom/t4game/FormContr;->setCommandListener(Ljavax/microedition/lcdui/CommandListener;)V

    return-void

    :sswitch_0
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u540d\u5b57\uff1a"

    const-string v2, ""

    const/4 v2, 0x7

    invoke-direct {v0, v1, v4, v2, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6700\u4f4e\u7b49\u7ea7"

    const-string v2, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6700\u9ad8\u7b49\u7ea7"

    const-string v2, ""

    const/4 v2, 0x3

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "\u54c1\u8d28"

    sget-object v2, Lcom/t4game/CommonConstants;->QUALITYTYPE_NAMES:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "\u53ef\u7528"

    iget-object v2, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_USEFUL_STR:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Lcom/t4game/FormContr;->pickChoice2:Ljavax/microedition/lcdui/ChoiceGroup;

    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "\u5206\u7c7b"

    iget-object v2, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    aget-object v2, v2, v7

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice2:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :sswitch_1
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8d77\u62cd\u4ef7\uff08\u91d1\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v6, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8d77\u62cd\u4ef7\uff08\u94f6\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8d77\u62cd\u4ef7\uff08\u94dc\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u4e00\u53e3\u4ef7\uff08\u91d1\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v6, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u4e00\u53e3\u4ef7\uff08\u94f6\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u4e00\u53e3\u4ef7\uff08\u94dc\uff09"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6570\u91cf"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/ChoiceGroup;

    const-string v1, "\u65f6\u95f4"

    sget-object v2, Lcom/t4game/FormContr;->AUCTION_CHOICE_TIME:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v6, v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :sswitch_2
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8f93\u5165\u7b7e\u540d("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u5b57)\uff1a"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->mySelfSignature:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string v3, "\u60a8\u53ef\u6309\u5de6\u952e\u547c\u51fa\u64cd\u4f5c\u83dc\u5355\u6765\u66f4\u6362\u5fc3\u60c5\u548c\u7b7e\u540d"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    move-object v2, v4

    :goto_1
    iget-object v3, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v3, 0x1e

    invoke-direct {v0, v1, v2, v3, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_0
    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->mySelfSignature:Ljava/lang/String;

    goto :goto_1

    :sswitch_3
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u62c6\u5206\u6570\u91cf\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u8ba4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    goto/16 :goto_0

    :sswitch_4
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u91d1\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v6, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u94f6\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u94dc\uff1a"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u8ba4"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    goto/16 :goto_0

    :sswitch_5
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff1a"

    const-string v2, ""

    const/16 v2, 0x10

    invoke-direct {v0, v1, v4, v2, v7}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    new-instance v0, Ljavax/microedition/lcdui/Command;

    const-string v1, "\u786e\u5b9a"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2, v7}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :sswitch_6
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6570\u91cf\u8f93\u5165"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v6, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :sswitch_7
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6570\u91cf\u8f93\u5165"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :sswitch_8
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u529f\u52cb\u5151\u6362"

    const-string v2, ""

    const/4 v2, 0x5

    invoke-direct {v0, v1, v4, v2, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :sswitch_9
    new-instance v0, Ljavax/microedition/lcdui/TextField;

    const-string v1, "\u6750\u6599\u6570\u91cf"

    const-string v2, ""

    invoke-direct {v0, v1, v4, v5, v3}, Ljavax/microedition/lcdui/TextField;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    iput-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0xf -> :sswitch_1
        0x12 -> :sswitch_3
        0x13 -> :sswitch_6
        0x1a -> :sswitch_8
        0x1b -> :sswitch_9
        0x1c -> :sswitch_4
        0x1d -> :sswitch_2
        0x1f -> :sswitch_7
        0x21 -> :sswitch_5
    .end sparse-switch
.end method

.method private isCharAndNum(Ljava/lang/String;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    move v0, v5

    move v1, v6

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    move v3, v5

    :goto_1
    iget-object v4, p0, Lcom/t4game/FormContr;->CharAndNum:[Ljava/lang/String;

    array-length v4, v4

    if-ge v3, v4, :cond_3

    iget-object v4, p0, Lcom/t4game/FormContr;->CharAndNum:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    move v2, v6

    :goto_2
    if-nez v2, :cond_0

    move v1, v5

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    return v1

    :cond_3
    move v2, v5

    goto :goto_2
.end method

.method private isInputNull(Ljavax/microedition/lcdui/TextField;Ljava/lang/String;)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/t4game/Util;->empty(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0, p2, p1}, Lcom/t4game/FormContr;->showAlert(Ljava/lang/String;Ljavax/microedition/lcdui/TextField;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method private showAlert(Ljava/lang/String;Ljavax/microedition/lcdui/TextField;)V
    .locals 2

    if-eqz p2, :cond_0

    const-string v0, ""

    invoke-virtual {p2, v0}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0x7d0

    invoke-virtual {v0, p1, v1}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method public commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V
    .locals 13

    const-string v0, "\u8bf7\u8f93\u5165\uff01"

    iget-object v1, p0, Lcom/t4game/FormContr;->okCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v1, :cond_64

    iget v1, p0, Lcom/t4game/FormContr;->typeN:I

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v2, v2, Lcom/t4game/GameWorld;->actionType:B

    invoke-virtual {v1, v2, v0}, Lcom/t4game/GameWorld;->sendSafetyLockMessage(BLjava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->heFuType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v4

    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    :cond_2
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u60a8\u6ca1\u6709\u8f93\u5165\u4fe1\u606f\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->heFuType:B

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameWorld;->send_HeFuModfiy_ContentMessage(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    :goto_1
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u60a8\u6ca1\u6709\u8f93\u5165\u4fe1\u606f\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->heFuType:B

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const-string v3, ""

    const-string v4, ""

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameWorld;->send_HeFuModfiy_ContentMessage(BLjava/lang/String;Ljava/lang/String;Ljava/lang/String;B)Z

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5185\u5bb9!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    if-nez v0, :cond_9

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5bf9\u8c61\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-boolean v0, p0, Lcom/t4game/FormContr;->DefaultState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_a
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4f60\u4e0d\u5728\u961f\u4f0d\u4e2d\u4e0d\u80fd\u53d1\u9001\u961f\u4f0d\u6d88\u606f!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_b
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_c
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_d

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_d
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_2

    :cond_e
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5185\u5bb9!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_f
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5bf9\u8c61\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_10
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget v4, v4, Lcom/t4game/GameScreen;->sprite_id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_11

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_12
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_13

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e0d\u53ef\u4ee5\u5411\u81ea\u5df1\u53d1\u51fa\u7ec4\u961f\u9080\u8bf7"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_13
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e0d\u53ef\u4ee5\u52a0\u81ea\u5df1\u8fdb\u9ed1\u540d\u5355"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_14
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e0d\u53ef\u4ee5\u52a0\u81ea\u5df1\u8fdb\u597d\u53cb\u5217\u8868"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_15
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_16

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e0d\u80fd\u9080\u8bf7\u81ea\u5df1"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_16
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e0d\u53ef\u4ee5\u52a0\u81ea\u5df1\u8fdb\u6069\u6028\u699c"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_17
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_19

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->sendAddPlayerInTeamMessage1(Ljava/lang/String;)V

    :cond_18
    :goto_3
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/GameWorld;->alertQuestFlag:B

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_19
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendAddBlackListMessage1(ZLjava/lang/String;)V

    goto :goto_3

    :cond_1a
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->sendAddFriendMessage1(ZLjava/lang/String;)V

    goto :goto_3

    :cond_1b
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/Gang;->send_GANG_INVITE_Message1(Ljava/lang/String;)V

    goto :goto_3

    :cond_1c
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_18

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x2

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendMangeEnemyMessage(BILjava/lang/String;)Z

    goto :goto_3

    :pswitch_6
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-nez v0, :cond_1e

    :cond_1d
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1e
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->send_EMAIL_WRITE1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_7
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_1f
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/Gang;->message:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    invoke-virtual {v0}, Lcom/t4game/Gang;->send_GANG_UPDATE_BULLETIN_Message()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-nez v0, :cond_20

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_20
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    invoke-virtual {v1, v0}, Lcom/t4game/Gang;->send_GANG_INVITE_Message1(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_9
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-nez v0, :cond_21

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_21
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/Gang;->inputGangName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_a
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->size()I

    move-result v0

    if-nez v0, :cond_22

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\uff01"

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_22
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/Gang;->inputGangNickName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_b
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :try_start_0
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    :goto_4
    :try_start_1
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-ge v0, v1, :cond_24

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u7684\u6700\u5927\u7b49\u7ea7\u5c0f\u4e8e\u6700\u5c0f\u7b49\u7ea7\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u975e\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_23
    :try_start_2
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "-1"

    aput-object v2, v0, v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u975e\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_24
    :try_start_3
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    :goto_5
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->goodsType:[B

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice2:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    if-nez v0, :cond_28

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->isAuctionItemUseful:Z

    :goto_6
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->goodsType:[B

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/t4game/FormContr;->choiceDepth:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->goodsType:[B

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/t4game/FormContr;->choiceDepth:I

    const/4 v1, 0x2

    if-lt v0, v1, :cond_2a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->goodsType:[B

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    iget v0, p0, Lcom/t4game/FormContr;->choiceDepth:I

    const/4 v1, 0x3

    if-lt v0, v1, :cond_29

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->goodsType:[B

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    :goto_7
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendAuctionGoodsListMessage1()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_25
    :try_start_4
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_26

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u7684\u6700\u5927\u7b49\u7ea7\u975e\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_26
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    goto/16 :goto_5

    :cond_27
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "-1"

    aput-object v2, v0, v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_5

    :cond_28
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->isAuctionItemUseful:Z

    goto/16 :goto_6

    :cond_29
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_7

    :cond_2a
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    goto :goto_7

    :cond_2b
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, ""

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, ""

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionSearchInf:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, ""

    aput-object v2, v0, v1

    goto/16 :goto_7

    :pswitch_c
    :try_start_5
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2d

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_0

    :catch_2
    move-exception v0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u975e\u6cd5\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2c
    :try_start_6
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_8
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2f

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_2e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2d
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_8

    :cond_2e
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_9
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_31

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_30

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2f
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_9

    :cond_30
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_a
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_32

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_31
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_a

    :cond_32
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_b
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_34

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_33
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_b

    :cond_34
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_c
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_37

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_36

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_35
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_c

    :cond_36
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    :goto_d
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_39

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_38

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_37
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "0"

    aput-object v2, v0, v1

    goto :goto_d

    :cond_38
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x7

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF7:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :goto_e
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    mul-int/lit16 v0, v0, 0x2710

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v1, v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x2710

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    mul-int/lit8 v2, v2, 0x64

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    if-nez v1, :cond_3a

    if-nez v0, :cond_3a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u4ef7\u683c!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_39
    :try_start_7
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->str_AuctionPriceInf:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "0"

    aput-object v2, v0, v1
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_2

    goto :goto_e

    :cond_3a
    if-gt v1, v0, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e00\u53e3\u4ef7\u4e0d\u80fd\u5c0f\u4e8e\u7ade\u6807\u4ef7\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3b
    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p1

    check-cast p1, Lcom/t4game/UI_MoneyBox;

    int-to-long v2, v0

    iput-wide v2, p1, Lcom/t4game/UI_MoneyBox;->money:J

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->ui:Lcom/t4game/GameUi;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/t4game/GameUi;->getUI(B)Lcom/t4game/UI_Super;

    move-result-object p1

    check-cast p1, Lcom/t4game/UI_MoneyBox;

    int-to-long v0, v1

    iput-wide v0, p1, Lcom/t4game/UI_MoneyBox;->money:J

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_d
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3c

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3d

    :cond_3c
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u8d26\u53f7\u548c\u5bc6\u7801\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3d
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u89d2\u8272\u540d\u79f0\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3e
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u5bc6\u7801\u4e0d\u5339\u914d\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_3f
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_41

    :cond_40
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u975e\u6cd5\u5b57\u7b26\uff01\u8d26\u53f7\u548c\u5bc6\u7801\u53ea\u80fd\u662f\u82f1\u6587\u548c\u6570\u5b57"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_41
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_42

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_43

    :cond_42
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8d26\u53f7\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16\u4f4d\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_43
    const/4 v0, 0x1

    const-string v1, ""

    const-string v2, "0"

    const-string v3, ""

    iget-object v4, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v4}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_44

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v4, "\u8bf7\u8f93\u5165\u771f\u5b9e\u59d3\u540d\uff01"

    const/16 v5, 0x7d0

    invoke-virtual {v0, v4, v5}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    const/4 v0, 0x0

    move-object v11, v3

    move v3, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    :goto_f
    if-eqz v3, :cond_0

    const/4 v3, 0x7

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v5}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    sget-object v5, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    aput-object v2, v3, v4

    const/4 v2, 0x5

    aput-object v1, v3, v2

    const/4 v1, 0x6

    aput-object v0, v3, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v3}, Lcom/t4game/GameWorld;->sendGuestRegist([Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_44
    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF5:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF6:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    move-object v11, v3

    move v3, v0

    move-object v0, v11

    move-object v12, v1

    move-object v1, v2

    move-object v2, v12

    goto :goto_f

    :pswitch_e
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_45

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_46

    :cond_45
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u4e0d\u80fd\u4e3a\u7a7a"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_46
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_47

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/t4game/FormContr;->isCharAndNum(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_48

    :cond_47
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u975e\u6cd5\u5b57\u7b26\uff0c\u7528\u6237\u540d\u548c\u5bc6\u7801\u53ea\u80fd\u4e3a\u6570\u5b57\u548c\u82f1\u6587\u7ec4\u5408\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_48
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_49

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_49

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_49

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x6

    if-ge v0, v1, :cond_4a

    :cond_49
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u7528\u6237\u540d\u548c\u5bc6\u7801\u7684\u957f\u5ea6\u4e3a6\uff5e16"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4a
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4e24\u6b21\u8f93\u5165\u7684\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u5339\u914d"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4b
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF4:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u5bc6\u7801\u548c\u9ad8\u7ea7\u5bc6\u7801\u4e0d\u80fd\u76f8\u540c"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4c
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendInitSecurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_f
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->mySelfSignature:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4d

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_4d
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Lcom/t4game/GameWorld;->sendUpdateSelfHood(BLjava/lang/String;B)Z

    goto/16 :goto_0

    :pswitch_10
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u6570\u91cf\uff01\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4e
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4f

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_4f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_4f
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sget v2, Lcom/t4game/FormContr;->maxNum:I

    if-le v1, v2, :cond_50

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8bf7\u786e\u4fdd\u8f93\u5165\u503c\u5c0f\u4e8e"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget v2, Lcom/t4game/FormContr;->maxNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u3002"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_50
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->chatContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->showCanvas()V

    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1, v0}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_11
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_51

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-gez v3, :cond_82

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u786e\u4fdd\u91d1\u5e01\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_51
    const-string v0, "0"

    move-object v6, v0

    :goto_10
    const-string v0, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_52

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_81

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u786e\u4fdd\u91d1\u5e01\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_52
    const-string v0, "0"

    move-object v7, v0

    :goto_11
    const-string v0, ""

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_53

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_80

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u786e\u4fdd\u91d1\u5e01\u8f93\u5165\u503c\u5927\u4e8e0\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_53
    const-string v0, "0"

    move-object v8, v0

    :goto_12
    const-wide/16 v0, 0x0

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_54

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    const-wide/16 v2, 0x2710

    mul-long/2addr v0, v2

    :cond_54
    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_55

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x64

    mul-long/2addr v2, v4

    add-long/2addr v0, v2

    :cond_55
    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_56

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    add-long/2addr v0, v2

    :cond_56
    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v2

    const-wide/16 v4, 0x2710

    mul-long/2addr v2, v4

    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    const-wide/16 v9, 0x64

    mul-long/2addr v4, v9

    add-long/2addr v2, v4

    invoke-static {v8}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    add-long v3, v2, v4

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-wide v9, v2, Lcom/t4game/GUser;->money:J

    cmp-long v2, v3, v9

    if-lez v2, :cond_57

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4f60\u6ca1\u6709\u8fd9\u4e48\u591a\u94b1"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_57
    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->roleTrade:Lcom/t4game/RoleTradeObject;

    iput-wide v3, v2, Lcom/t4game/RoleTradeObject;->tradeGoodsMoney:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_58

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GameWorld;->sendTradeCheckMessage(BBJZ)Z

    :cond_58
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v6, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v1, 0x1

    aput-object v7, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->chatContentArray:[Ljava/lang/String;

    const/4 v1, 0x2

    aput-object v8, v0, v1

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->setTradeMoney()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_12
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_59

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u6570\u91cf\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_59
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5a

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8f93\u5165\u4e0d\u80fd\u5c0f\u4e8e0\uff0c\u8bf7\u91cd\u65b0\u8f93\u5165\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5a
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->chatContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->showCanvas()V

    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1, v0}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_13
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u6570\u91cf\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5b
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5c

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u7b54\u9898\u5269\u4f59\u6b21\u6570"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5c
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->chatContent:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->showCanvas()V

    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1, v0}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_14
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5d

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u8981\u5151\u6362\u7684\u529f\u52cb\u6570"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5d
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_5e

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_5e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u7b54\u9898\u5269\u4f59\u6b21\u6570"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5e
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->inputHonour:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_15
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u4f7f\u7528\u5b9d\u77f3\u6570"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_5f
    const-string v1, "^[-]{1}[0-9]*$"

    invoke-static {v1, v0}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_60

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_60

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u7b54\u9898\u5269\u4f59\u6b21\u6570"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_60
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->chatContent:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_16
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_61

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u6570\u91cf\uff01\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_61
    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v1, v0}, Lcom/t4game/GameScreen;->refreshView(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_17
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_62

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u9ad8\u7ea7\u5bc6\u7801\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_62
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_63

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u9ad8\u7ea7\u5bc6\u7801\u75314~16\u4f4d\u6570\u5b57\u6216\u5b57\u6bcd\u7ec4\u6210\u3002"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_63
    sget-object v1, Lcom/t4game/StartGame;->inputText:Lcom/t4game/Texter;

    invoke-virtual {v1, v0}, Lcom/t4game/Texter;->setText(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->curSecurityPW:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_18
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/FormContr;->pickChoice1:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/ChoiceGroup;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    sub-int v0, v1, v0

    iget-object v1, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->gang:Lcom/t4game/Gang;

    const/4 v2, 0x0

    int-to-byte v0, v0

    invoke-virtual {v1, v2, v0}, Lcom/t4game/Gang;->send_GANG_MEMBER_Message(BB)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :pswitch_19
    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-direct {p0, v1, v0}, Lcom/t4game/FormContr;->isInputNull(Ljavax/microedition/lcdui/TextField;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-direct {p0, v1, v0}, Lcom/t4game/FormContr;->isInputNull(Ljavax/microedition/lcdui/TextField;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameWorld;->send_WEIBO_BIND_MESSAGE(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_64
    iget-object v0, p0, Lcom/t4game/FormContr;->cancelCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_67

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    packed-switch v0, :pswitch_data_1

    :cond_65
    :goto_13
    :pswitch_1a
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_66

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    :cond_66
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    goto/16 :goto_0

    :pswitch_1b
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_13

    :pswitch_1c
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-boolean v0, p0, Lcom/t4game/FormContr;->DefaultState:Z

    if-eqz v0, :cond_65

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_13

    :pswitch_1d
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_13

    :pswitch_1e
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameScreen;->FromeEmail:Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_13

    :pswitch_1f
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto :goto_13

    :pswitch_20
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto :goto_13

    :cond_67
    iget-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_68

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->sendSocialsListMessage()Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_WRITE_title:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_WRITE_name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/t4game/GameScreen;->EMAIL_WRITE_content:Ljava/lang/String;

    goto/16 :goto_0

    :cond_68
    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd0:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_6c

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    :cond_69
    :goto_14
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    sput v0, Lcom/t4game/GameScreen;->fromType:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    sput v0, Lcom/t4game/GameScreen;->chatIndex:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->getFabaoPackFromPack:Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GameWorld;->getFabaoPackFromChat:Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v2, v2, Lcom/t4game/GUser;->intId:I

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GameWorld;->sendFaBaoPackMessage(BII)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setFaceEquip(I)V

    invoke-static {}, Lcom/t4game/SoftKeyboard;->getInstance()Lcom/t4game/SoftKeyboard;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/SoftKeyboard;->setVisible(Z)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_6a
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_69

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    if-nez v0, :cond_6b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_14

    :cond_6b
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v0, ""

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_14

    :cond_6c
    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd1:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_70

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    :cond_6d
    :goto_15
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    sput v0, Lcom/t4game/GameScreen;->fromType:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    sput v0, Lcom/t4game/GameScreen;->chatIndex:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setFaceEquip(I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_6e
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6d

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    if-nez v0, :cond_6f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_15

    :cond_6f
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v0, ""

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_15

    :cond_70
    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd2:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_74

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_72

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    :cond_71
    :goto_16
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/GameScreen;->fromChat:Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    sput v0, Lcom/t4game/GameScreen;->chatIndex:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->addString:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    sput v0, Lcom/t4game/GameScreen;->fromType:I

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setFaceEquip(I)V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->gotoEquipSelect()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_72
    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_71

    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    if-nez v0, :cond_73

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_16

    :cond_73
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v0, ""

    sput-object v0, Lcom/t4game/GameScreen;->toName:Ljava/lang/String;

    goto :goto_16

    :cond_74
    iget-object v0, p0, Lcom/t4game/FormContr;->functionCmd3:Ljavax/microedition/lcdui/Command;

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/t4game/FormContr;->typeN:I

    packed-switch v0, :pswitch_data_2

    goto/16 :goto_0

    :pswitch_21
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_75

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5185\u5bb9!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_75
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    if-nez v0, :cond_78

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_76

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5bf9\u8c61\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_76
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    :cond_77
    :goto_17
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    iget-boolean v0, p0, Lcom/t4game/FormContr;->DefaultState:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_78
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7a

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->size()I

    move-result v0

    if-lez v0, :cond_79

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_79
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u4f60\u4e0d\u5728\u961f\u4f0d\u4e2d\u4e0d\u80fd\u53d1\u9001\u961f\u4f0d\u6d88\u606f!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7a
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7b

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_7b
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7c

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_7c
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_7d

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x5

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto :goto_17

    :cond_7d
    iget-byte v0, p0, Lcom/t4game/FormContr;->index:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_77

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_17

    :pswitch_22
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7e

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5185\u5bb9!"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7e
    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    const-string v1, "\u8bf7\u8f93\u5165\u53d1\u9001\u5bf9\u8c61\uff01"

    const/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->showAlert(Ljava/lang/String;I)V

    goto/16 :goto_0

    :cond_7f
    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/t4game/FormContr;->infoSend:Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    iget v4, v4, Lcom/t4game/GameScreen;->sprite_id:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameWorld;->sendChatMessage(BLjava/lang/String;Ljava/lang/String;I)Z

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-static {}, Lcom/t4game/GameScreen;->clearSelectState()V

    iget-object v0, p0, Lcom/t4game/FormContr;->gamescreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->showCanvas()V

    goto/16 :goto_0

    :cond_80
    move-object v8, v2

    goto/16 :goto_12

    :cond_81
    move-object v7, v1

    goto/16 :goto_11

    :cond_82
    move-object v6, v0

    goto/16 :goto_10

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_5
        :pswitch_0
        :pswitch_6
        :pswitch_b
        :pswitch_7
        :pswitch_0
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_10
        :pswitch_12
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_14
        :pswitch_15
        :pswitch_11
        :pswitch_f
        :pswitch_5
        :pswitch_13
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1c
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1e
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1f
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1a
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_20
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1d
        :pswitch_1b
        :pswitch_1b
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_21
        :pswitch_22
    .end packed-switch
.end method

.method public itemStateChanged(Ljavax/microedition/lcdui/Item;)V
    .locals 8

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x4

    const-string v7, "\u4e0d\u9650"

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    const/4 v3, 0x3

    invoke-direct {p0, v2, v3}, Lcom/t4game/FormContr;->clearChoiceItem(II)V

    const/4 v2, 0x0

    iput v2, p0, Lcom/t4game/FormContr;->choiceDepth:I

    iget-object v2, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const-string v2, "\u4e0d\u9650"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {v2, v1, v5, v0, v6}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v2, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/FormContr;->pickChoice4:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-direct {p0, v2, v4}, Lcom/t4game/FormContr;->clearChoiceItem(II)V

    iput v3, p0, Lcom/t4game/FormContr;->choiceDepth:I

    iget-object v2, p0, Lcom/t4game/FormContr;->pickChoice3:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const-string v2, "\u4e0d\u9650"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    new-instance v2, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v3, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    aget-object v0, v3, v0

    invoke-direct {v2, v1, v5, v0, v6}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v2, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getSelectedIndex()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v1, v0}, Ljavax/microedition/lcdui/ChoiceGroup;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x7

    invoke-direct {p0, v2, v3}, Lcom/t4game/FormContr;->clearChoiceItem(II)V

    iput v4, p0, Lcom/t4game/FormContr;->choiceDepth:I

    const/16 v2, 0x21

    iget-object v3, p0, Lcom/t4game/FormContr;->pickChoice5:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/ChoiceGroup;->getLabel()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\u9632\u5177"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "\u4e0d\u9650"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    add-int v4, v2, v0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    new-instance v3, Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v4, p0, Lcom/t4game/FormContr;->AUCTION_BROWSE_CLASS_STR:[[Ljava/lang/String;

    add-int/2addr v0, v2

    aget-object v0, v4, v0

    invoke-direct {v3, v1, v5, v0, v6}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v3, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->append(Ljavax/microedition/lcdui/Item;)I

    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/FormContr;->pickChoice6:Ljavax/microedition/lcdui/ChoiceGroup;

    if-ne p1, v0, :cond_0

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/FormContr;->choiceDepth:I

    goto/16 :goto_0
.end method

.method public setBackTrackState(B)V
    .locals 2

    iput-byte p1, p0, Lcom/t4game/FormContr;->iBackTrackState:B

    iget-byte v0, p0, Lcom/t4game/FormContr;->iBackTrackState:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/FormContr;->emailCmd:Ljavax/microedition/lcdui/Command;

    invoke-virtual {p0, v0}, Lcom/t4game/FormContr;->removeCommand(Ljavax/microedition/lcdui/Command;)V

    :cond_0
    return-void
.end method

.method public setReceiveName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF1:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF2:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p2}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/t4game/FormContr;->inPTF3:Ljavax/microedition/lcdui/TextField;

    invoke-virtual {v0, p3}, Ljavax/microedition/lcdui/TextField;->setString(Ljava/lang/String;)V

    return-void
.end method
