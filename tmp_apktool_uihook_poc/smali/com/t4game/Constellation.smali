.class public Lcom/t4game/Constellation;
.super Ljava/lang/Object;


# static fields
.field private static final ATTR_AWARD_CON:[[Ljava/lang/String;

.field private static final CONSTELLATION_NAME:[[Ljava/lang/String;

.field private static final CONSTELLATION_TYPE:[Ljava/lang/String;

.field private static final CONSTELLATION_TYPE_DRAGON:B = 0x0t

.field private static final CONSTELLATION_TYPE_ROSEFINCH:B = 0x2t

.field private static final CONSTELLATION_TYPE_TIGER:B = 0x1t

.field private static final CONSTELLATION_TYPE_TORTOISE:B = 0x3t

.field private static final CONS_PAGE_NUM:B = 0x7t

.field private static final CONS_TYPE_NUM:B = 0x4t

.field private static final DOWN:B = 0x3t

.field private static final LEFT:B = 0x0t

.field private static final NEIGHBOR:[[B

.field private static final NORMAL_CLICK_NUM:B = 0xat

.field private static final OPEN_COLOR:I = -0x1

.field private static final OPEN_NUM_FIVE:B = 0x5t

.field private static final OPEN_NUM_NULL:B = 0x0t

.field private static final OPEN_NUM_SEVEN:B = 0x7t

.field private static final OPEN_NUM_THREE:B = 0x3t

.field private static final POINT_STUDY_CONFIRM_OK:B = 0x1t

.field private static final POINT_STUDY_LACK_MONEY:B = 0x5t

.field private static final POINT_STUDY_NEED_CONFIRM:B = 0x0t

.field private static final POINT_STUDY_NEXT_PAGE:B = 0x4t

.field private static final POINT_STUDY_NEXT_POINT:B = 0x3t

.field private static final POINT_STUDY_STILL:B = 0x2t

.field private static final RIGHT:B = 0x2t

.field private static final SPECIAL_CLICK_NUM:B = 0x14t

.field private static final STAR_ATTR_COLOR_BLUE:I = 0x70dd

.field private static final STAR_ATTR_COLOR_GREEN:I = 0xff00

.field private static final STAR_ATTR_COLOR_GREY:I = 0x808080

.field private static final STAR_ATTR_COLOR_PRUPLE:I = 0xfe05aa

.field private static final STAR_POINTE_STATE_LIGHTED:B = 0x2t

.field private static final STAR_POINTE_STATE_LIGHTING:B = 0x1t

.field private static final STAR_POINTE_STATE_ORIGINAL:B = 0x0t

.field private static final STAR_POINT_NMU:B = 0x7t

.field private static final STAR_POINT_NMU_MAX:B = 0xat

.field private static final TIP_NOT_OPEN:Ljava/lang/String; = "\u62b1\u6b49\uff0c\u6b64\u661f\u56fe\u672a\u6ee1\u8db3\u5f00\u542f\u6761\u4ef6\uff0c\u6682\u65f6\u65e0\u6cd5\u5f00\u542f"

.field private static final UP:B = 0x1t

.field private static final starPointPos:[[[I


# instance fields
.field private attrInfo:[[Ljava/lang/String;

.field private attrOfStarPoint:[[Ljava/lang/String;

.field private attrSize:B

.field private awardProp:[[Ljava/lang/String;

.field private bgImage:Ljavax/microedition/lcdui/Image;

.field private clickNum:B

.field private colorFlag:B

.field private consOpenNum:B

.field private consPosition:[[I

.field private constellationImage:[[Ljavax/microedition/lcdui/Image;

.field private currentIndex:B

.field private currentPage:B

.field private currentStarNum:B

.field private gs:Lcom/t4game/GameScreen;

.field private imageH:I

.field private imageHH:I

.field private imageW:I

.field private imageWW:I

.field private imageX:I

.field private imageY:I

.field private infoColor:[[I

.field private isMySelf:Z

.field private jobType:B

.field private juanZhouImage:Ljavax/microedition/lcdui/Image;

.field private linesOfChengHaoSuit:B

.field private nextAttrOfStarPoint:[Ljava/lang/String;

.field private nextAttrSize:B

.field private preDialogId:B

.field public prePreState:B

.field private preState:B

.field private rollY:I

.field private selectImage:Ljavax/microedition/lcdui/Image;

.field private selectPos:[[I

.field private starImage:[Ljavax/microedition/lcdui/Image;

.field private starMapLevel:[B

.field private starOpenNum:B

.field private starPointImage:[Ljavax/microedition/lcdui/Image;

.field private starPointIndex:B

.field private starPointState:[B

.field private starSkyImage:Ljavax/microedition/lcdui/Image;

.field state:B

.field private viewStateOfDialog:B

.field private viewStateOfDialogL2:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x2

    new-array v0, v8, [Ljava/lang/String;

    const-string v1, "\u9752\u9f99"

    aput-object v1, v0, v5

    const-string v1, "\u767d\u864e"

    aput-object v1, v0, v6

    const-string v1, "\u6731\u96c0"

    aput-object v1, v0, v4

    const-string v1, "\u7384\u6b66"

    aput-object v1, v0, v7

    sput-object v0, Lcom/t4game/Constellation;->CONSTELLATION_TYPE:[Ljava/lang/String;

    new-array v0, v8, [[B

    new-array v1, v8, [B

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v8, [B

    fill-array-data v1, :array_1

    aput-object v1, v0, v6

    new-array v1, v8, [B

    fill-array-data v1, :array_2

    aput-object v1, v0, v4

    new-array v1, v8, [B

    fill-array-data v1, :array_3

    aput-object v1, v0, v7

    sput-object v0, Lcom/t4game/Constellation;->NEIGHBOR:[[B

    const/4 v0, 0x6

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u751f\u547d\u503c\u63d0\u53473%"

    aput-object v2, v1, v5

    const-string v2, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u751f\u547d\u503c\u63d0\u53475%"

    aput-object v2, v1, v6

    const-string v2, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u751f\u547d\u503c\u63d0\u53477%"

    aput-object v2, v1, v4

    aput-object v1, v0, v5

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u653b\u63d0\u53473%"

    aput-object v2, v1, v5

    const-string v2, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u653b\u63d0\u53475%"

    aput-object v2, v1, v6

    const-string v2, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u653b\u63d0\u53477%"

    aput-object v2, v1, v4

    aput-object v1, v0, v6

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u4f53\u529b\u63d0\u53473%"

    aput-object v2, v1, v5

    const-string v2, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u4f53\u529b\u63d0\u53475%"

    aput-object v2, v1, v6

    const-string v2, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u4f53\u529b\u63d0\u53477%"

    aput-object v2, v1, v4

    aput-object v1, v0, v4

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u7406\u66b4\u51fb\u4f24\u5bb3\u63d0\u53473%"

    aput-object v2, v1, v5

    const-string v2, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u7406\u66b4\u51fb\u4f24\u5bb3\u63d0\u53475%"

    aput-object v2, v1, v6

    const-string v2, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u7269\u7406\u66b4\u51fb\u4f24\u5bb3\u63d0\u53477%"

    aput-object v2, v1, v4

    aput-object v1, v0, v7

    new-array v1, v7, [Ljava/lang/String;

    const-string v2, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u653b\u63d0\u53473%"

    aput-object v2, v1, v5

    const-string v2, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u653b\u63d0\u53475%"

    aput-object v2, v1, v6

    const-string v2, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u653b\u63d0\u53477%"

    aput-object v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v2, v7, [Ljava/lang/String;

    const-string v3, "\u5f00\u542f3\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u672f\u66b4\u51fb\u4f24\u5bb3\u63d0\u53473%"

    aput-object v3, v2, v5

    const-string v3, "\u5f00\u542f5\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u672f\u66b4\u51fb\u4f24\u5bb3\u63d0\u53475%"

    aput-object v3, v2, v6

    const-string v3, "\u5f00\u542f7\u5f20\u661f\u56fe\u5956\u52b1 \u6cd5\u672f\u66b4\u51fb\u4f24\u5bb3\u63d0\u53477%"

    aput-object v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/Constellation;->ATTR_AWARD_CON:[[Ljava/lang/String;

    new-array v0, v8, [[Ljava/lang/String;

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u89d2\u6728\u86df"

    aput-object v2, v1, v5

    const-string v2, "\u4ea2\u91d1\u9f99"

    aput-object v2, v1, v6

    const-string v2, "\u6c10\u571f\u8c89"

    aput-object v2, v1, v4

    const-string v2, "\u623f\u65e5\u5154"

    aput-object v2, v1, v7

    const-string v2, "\u5fc3\u6708\u72d0"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5c3e\u706b\u864e"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u7b95\u6c34\u8c79"

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u594e\u6728\u72fc"

    aput-object v2, v1, v5

    const-string v2, "\u5a04\u91d1\u72d7"

    aput-object v2, v1, v6

    const-string v2, "\u80c3\u571f\u96c9"

    aput-object v2, v1, v4

    const-string v2, "\u6634\u65e5\u9e21"

    aput-object v2, v1, v7

    const-string v2, "\u6bd5\u6708\u4e4c"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u89dc\u706b\u7334"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u53c2\u6c34\u733f"

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u4e95\u6728\u72b4"

    aput-object v2, v1, v5

    const-string v2, "\u9b3c\u91d1\u7f8a"

    aput-object v2, v1, v6

    const-string v2, "\u67f3\u571f\u7350"

    aput-object v2, v1, v4

    const-string v2, "\u661f\u65e5\u9a6c"

    aput-object v2, v1, v7

    const-string v2, "\u5f20\u6708\u9e7f"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u7ffc\u706b\u86c7"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u8f78\u6c34\u8693"

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u6597\u6728\u736c"

    aput-object v2, v1, v5

    const-string v2, "\u725b\u91d1\u725b"

    aput-object v2, v1, v6

    const-string v2, "\u5973\u571f\u8760"

    aput-object v2, v1, v4

    const-string v2, "\u865a\u65e5\u9f20"

    aput-object v2, v1, v7

    const-string v2, "\u5371\u6708\u71d5"

    aput-object v2, v1, v8

    const/4 v2, 0x5

    const-string v3, "\u5ba4\u706b\u732a"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u58c1\u6c34\u8c90"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/t4game/Constellation;->CONSTELLATION_NAME:[[Ljava/lang/String;

    new-array v0, v8, [[[I

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_4

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_5

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_6

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_7

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_8

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_9

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_a

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_b

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_c

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_d

    aput-object v3, v1, v2

    aput-object v1, v0, v5

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_e

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_f

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_10

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_11

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_12

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_13

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_14

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_15

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_16

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_17

    aput-object v3, v1, v2

    aput-object v1, v0, v6

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_18

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_19

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_1a

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_1b

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_1c

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_1d

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_1e

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_1f

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_20

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_21

    aput-object v3, v1, v2

    aput-object v1, v0, v4

    const/16 v1, 0xa

    new-array v1, v1, [[I

    new-array v2, v4, [I

    fill-array-data v2, :array_22

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_23

    aput-object v2, v1, v6

    new-array v2, v4, [I

    fill-array-data v2, :array_24

    aput-object v2, v1, v4

    new-array v2, v4, [I

    fill-array-data v2, :array_25

    aput-object v2, v1, v7

    new-array v2, v4, [I

    fill-array-data v2, :array_26

    aput-object v2, v1, v8

    const/4 v2, 0x5

    new-array v3, v4, [I

    fill-array-data v3, :array_27

    aput-object v3, v1, v2

    const/4 v2, 0x6

    new-array v3, v4, [I

    fill-array-data v3, :array_28

    aput-object v3, v1, v2

    const/4 v2, 0x7

    new-array v3, v4, [I

    fill-array-data v3, :array_29

    aput-object v3, v1, v2

    const/16 v2, 0x8

    new-array v3, v4, [I

    fill-array-data v3, :array_2a

    aput-object v3, v1, v2

    const/16 v2, 0x9

    new-array v3, v4, [I

    fill-array-data v3, :array_2b

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    sput-object v0, Lcom/t4game/Constellation;->starPointPos:[[[I

    return-void

    :array_0
    .array-data 1
        0x1t
        0x3t
        -0x1t
        0x2t
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        0x3t
        0x0t
        0x2t
    .end array-data

    :array_2
    .array-data 1
        0x1t
        0x3t
        0x0t
        -0x1t
    .end array-data

    :array_3
    .array-data 1
        0x1t
        -0x1t
        0x0t
        0x2t
    .end array-data

    :array_4
    .array-data 4
        0x25
        0x34
    .end array-data

    :array_5
    .array-data 4
        0x35
        0x5a
    .end array-data

    :array_6
    .array-data 4
        0x50
        0x46
    .end array-data

    :array_7
    .array-data 4
        0x67
        0x2a
    .end array-data

    :array_8
    .array-data 4
        0x7e
        0x45
    .end array-data

    :array_9
    .array-data 4
        0x77
        0x66
    .end array-data

    :array_a
    .array-data 4
        0x9b
        0x6b
    .end array-data

    :array_b
    .array-data 4
        0xb2
        0x4e
    .end array-data

    :array_c
    .array-data 4
        0xa3
        0x2d
    .end array-data

    :array_d
    .array-data 4
        0xbe
        0x24
    .end array-data

    :array_e
    .array-data 4
        0x22
        0x29
    .end array-data

    :array_f
    .array-data 4
        0x17
        0x47
    .end array-data

    :array_10
    .array-data 4
        0x3b
        0x57
    .end array-data

    :array_11
    .array-data 4
        0x56
        0x41
    .end array-data

    :array_12
    .array-data 4
        0x6f
        0x28
    .end array-data

    :array_13
    .array-data 4
        0x8f
        0x26
    .end array-data

    :array_14
    .array-data 4
        0x9a
        0x48
    .end array-data

    :array_15
    .array-data 4
        0x8d
        0x62
    .end array-data

    :array_16
    .array-data 4
        0xad
        0x6e
    .end array-data

    :array_17
    .array-data 4
        0xbe
        0x52
    .end array-data

    :array_18
    .array-data 4
        0x14
        0x50
    .end array-data

    :array_19
    .array-data 4
        0x22
        0x38
    .end array-data

    :array_1a
    .array-data 4
        0x40
        0x2d
    .end array-data

    :array_1b
    .array-data 4
        0x64
        0x48
    .end array-data

    :array_1c
    .array-data 4
        0x71
        0x62
    .end array-data

    :array_1d
    .array-data 4
        0x91
        0x56
    .end array-data

    :array_1e
    .array-data 4
        0x99
        0x35
    .end array-data

    :array_1f
    .array-data 4
        0xb3
        0x29
    .end array-data

    :array_20
    .array-data 4
        0xbf
        0x49
    .end array-data

    :array_21
    .array-data 4
        0xb6
        0x68
    .end array-data

    :array_22
    .array-data 4
        0x32
        0x68
    .end array-data

    :array_23
    .array-data 4
        0x1f
        0x4c
    .end array-data

    :array_24
    .array-data 4
        0x33
        0x2e
    .end array-data

    :array_25
    .array-data 4
        0x55
        0x2e
    .end array-data

    :array_26
    .array-data 4
        0x63
        0x4f
    .end array-data

    :array_27
    .array-data 4
        0x78
        0x67
    .end array-data

    :array_28
    .array-data 4
        0x96
        0x4c
    .end array-data

    :array_29
    .array-data 4
        0xa1
        0x6d
    .end array-data

    :array_2a
    .array-data 4
        0xbd
        0x53
    .end array-data

    :array_2b
    .array-data 4
        0xb0
        0x30
    .end array-data
.end method

.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 8

    const/4 v7, -0x1

    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x3

    const/4 v3, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    filled-new-array {v3, v5}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/Constellation;->selectPos:[[I

    filled-new-array {v3, v5}, [I

    move-result-object v0

    const-class v1, Ljavax/microedition/lcdui/Image;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    new-array v0, v3, [[I

    new-array v1, v4, [I

    fill-array-data v1, :array_0

    aput-object v1, v0, v6

    const/4 v1, 0x1

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    new-array v1, v4, [I

    fill-array-data v1, :array_2

    aput-object v1, v0, v5

    new-array v1, v4, [I

    fill-array-data v1, :array_3

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/t4game/Constellation;->infoColor:[[I

    new-array v0, v3, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    const/16 v0, 0xa

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iput-byte v6, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/16 v0, 0xa

    iput-byte v0, p0, Lcom/t4game/Constellation;->currentStarNum:B

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/Constellation;->isMySelf:Z

    iput-byte v7, p0, Lcom/t4game/Constellation;->prePreState:B

    iput-byte v6, p0, Lcom/t4game/Constellation;->linesOfChengHaoSuit:B

    const/16 v0, 0xf

    iput v0, p0, Lcom/t4game/Constellation;->rollY:I

    iput-byte v7, p0, Lcom/t4game/Constellation;->state:B

    iput-object p1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    return-void

    nop

    :array_0
    .array-data 4
        0x808080
        0x808080
        0x808080
    .end array-data

    :array_1
    .array-data 4
        0x808080
        0x808080
        0x808080
    .end array-data

    :array_2
    .array-data 4
        0x808080
        0x808080
        0x808080
    .end array-data

    :array_3
    .array-data 4
        0x808080
        0x808080
        0x808080
    .end array-data
.end method

.method private back2preState()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/Constellation;->preState:B

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    iget-byte v0, p0, Lcom/t4game/Constellation;->preDialogId:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/Constellation;->preDialogId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    :cond_0
    iget-boolean v0, p0, Lcom/t4game/Constellation;->isMySelf:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x14

    iput-byte v1, v0, Lcom/t4game/GameScreen;->PreState:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0xa

    iput-byte v1, v0, Lcom/t4game/GameWorld;->gameScreenPreState:B

    :cond_1
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/Constellation;->viewStateOfDialog:B

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    return-void
.end method

.method private drawBg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V
    .locals 6

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    const/4 v4, 0x1

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p2

    move v2, p4

    move v3, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move v2, p3

    move v3, p6

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p2

    move v2, p4

    move v3, p6

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V

    return-void
.end method

.method private drawChengHaoSuitAttrdrawChengHaoSuitAttr(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v0, v0, 0xc8

    sub-int/2addr v0, p2

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->linesOfChengHaoSuit:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->linesOfChengHaoSuit:B

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit16 v3, v3, 0xc8

    invoke-virtual {p4, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_0
    iget v0, p0, Lcom/t4game/Constellation;->rollY:I

    add-int v2, p2, v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v0, p3

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int v7, p2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f53\u524d\u661f\u56fe  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentPage:B

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Constellation;->rollY:I

    add-int v2, v7, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v7, v0

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v1, 0x7

    if-lt v0, v1, :cond_4

    const-string v0, "/20"

    :goto_0
    invoke-direct {p0}, Lcom/t4game/Constellation;->getClickNum()B

    move-result v8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u661f\u70b9\u8fdb\u5ea6  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/t4game/Constellation;->rollY:I

    add-int v2, v7, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v7, v0

    invoke-direct {p0}, Lcom/t4game/Constellation;->getStarPointAttrColor()I

    move-result v0

    iget-byte v1, p0, Lcom/t4game/Constellation;->clickNum:B

    if-lez v1, :cond_1

    const/4 v0, -0x1

    :cond_1
    iget-object v1, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    if-eqz v1, :cond_10

    const/4 v1, 0x0

    :goto_1
    iget-object v2, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v2, v2, v3

    array-length v2, v2

    if-ge v1, v2, :cond_f

    if-nez v1, :cond_7

    iget-object v2, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v2, v2, v3

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v3, v3, v4

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v6, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v5, v5, v6

    aget-object v5, v5, v1

    aput-object v5, v2, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x6

    if-le v4, v5, :cond_5

    const/16 v4, 0x14

    if-ne v8, v4, :cond_5

    :cond_2
    :goto_2
    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v7

    iget v5, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v4, v5

    invoke-static {p1, v4, v2, v3, p4}, Lcom/t4game/Util;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    const-string v0, "/10"

    goto :goto_0

    :cond_5
    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x7

    if-ge v4, v5, :cond_6

    const/16 v4, 0xa

    if-eq v8, v4, :cond_2

    :cond_6
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff08"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/t4game/Defaults;->StringFightAtrrbuiteColor:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_2

    :cond_7
    const/4 v2, 0x1

    if-ne v1, v2, :cond_b

    iget-object v2, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v2, v2, v3

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v3, v3, v4

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v6, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v5, v5, v6

    aget-object v5, v5, v1

    aput-object v5, v2, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x6

    if-le v4, v5, :cond_9

    const/16 v4, 0x14

    if-ne v8, v4, :cond_9

    :cond_8
    :goto_4
    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v7

    iget v5, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v4, v5

    invoke-static {p1, v4, v2, v3, p4}, Lcom/t4game/Util;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_9
    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x7

    if-ge v4, v5, :cond_a

    const/16 v4, 0xa

    if-eq v8, v4, :cond_8

    :cond_a
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff08"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/t4game/Defaults;->StringFightAtrrbuiteColor:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_4

    :cond_b
    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    iget-object v2, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v2, v2, v3

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/String;

    iget-object v3, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v3, v3, v4

    array-length v3, v3

    new-array v3, v3, [I

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v6, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v5, v5, v6

    aget-object v5, v5, v1

    aput-object v5, v2, v4

    const/4 v4, 0x0

    aput v0, v3, v4

    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x6

    if-le v4, v5, :cond_d

    const/16 v4, 0x14

    if-ne v8, v4, :cond_d

    :cond_c
    :goto_5
    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v1

    add-int/2addr v4, v7

    iget v5, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v4, v5

    invoke-static {p1, v4, v2, v3, p4}, Lcom/t4game/Util;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_3

    :cond_d
    iget-byte v4, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v5, 0x7

    if-ge v4, v5, :cond_e

    const/16 v4, 0xa

    if-eq v8, v4, :cond_c

    :cond_e
    const/4 v4, 0x1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "\uff08"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    aget-object v6, v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\uff09"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/t4game/Defaults;->StringFightAtrrbuiteColor:[I

    const/4 v6, 0x1

    aget v5, v5, v6

    aput v5, v3, v4

    goto :goto_5

    :cond_f
    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v1, 0x6

    if-gt v0, v1, :cond_10

    iget-object v0, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    if-lt v0, v1, :cond_10

    iget-object v0, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v0, v0, v1

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v0, v0, v1

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_11

    :cond_10
    :goto_6
    return-void

    :cond_11
    const-string v0, "\u70b9\u4eae\u8be5\u661f\u5c06\u83b7\u5f97\u4ee5\u4e0b\u5956\u52b1\uff1a"

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x3

    add-int/2addr v1, v7

    iget v2, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v2, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    move v8, v0

    :goto_7
    iget-object v0, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v0, v0, v1

    array-length v0, v0

    if-ge v8, v0, :cond_13

    invoke-direct {p0}, Lcom/t4game/Constellation;->getStarPointAttrColor()I

    move-result v0

    const v1, 0x808080

    if-ne v0, v1, :cond_12

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v1, v1, v2

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u672a\u83b7\u5f97)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v8, 0x4

    mul-int/2addr v1, v2

    add-int/2addr v1, v7

    iget v2, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v2, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0x808080

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_8
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_7

    :cond_12
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v1, v1, v2

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u5df2\u83b7\u5f97)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v2, v8, 0x4

    mul-int/2addr v1, v2

    add-int/2addr v1, v7

    iget v2, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v2, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v1, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_8

    :cond_13
    iget-object v0, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v0, v0, 0x3

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starPointIndex:B

    aget-object v1, v1, v2

    array-length v1, v1

    add-int/2addr v0, v1

    iget-byte v1, p0, Lcom/t4game/Constellation;->linesOfChengHaoSuit:B

    if-le v0, v1, :cond_15

    sget v1, Lcom/t4game/Defaults;->sfh:I

    iget-byte v2, p0, Lcom/t4game/Constellation;->linesOfChengHaoSuit:B

    sub-int/2addr v0, v2

    add-int/lit8 v0, v0, 0x1

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/Constellation;->rollY:I

    add-int/2addr v0, v1

    if-nez v0, :cond_14

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/Constellation;->rollY:I

    goto/16 :goto_6

    :cond_14
    iget v0, p0, Lcom/t4game/Constellation;->rollY:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/Constellation;->rollY:I

    goto/16 :goto_6

    :cond_15
    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/Constellation;->rollY:I

    goto/16 :goto_6
.end method

.method private drawOfDialogCons(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/4 v3, 0x4

    const/16 v4, 0x168

    const/4 v13, 0x1

    const/4 v12, 0x0

    const-string v1, "\u4e8c\u5341\u516b\u661f\u5bbf\u56fe"

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int/2addr v0, v4

    shr-int/lit8 v2, v0, 0x1

    const/16 v5, 0x104

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v8, v0, 0x3

    iget-object v0, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int v9, v0, v8

    sget v10, Lcom/t4game/Defaults;->lableTop:I

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    iget-object v1, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    const/16 v1, 0xa

    sub-int v11, v0, v1

    iget-object v7, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v5 .. v11}, Lcom/t4game/Constellation;->drawBg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V

    move v0, v12

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->consPosition:[[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-byte v1, p0, Lcom/t4game/Constellation;->consOpenNum:B

    sub-int/2addr v1, v13

    if-gt v0, v1, :cond_0

    move v1, v13

    :goto_1
    int-to-byte v1, v1

    iget-object v2, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v2, v2, v0

    aget v2, v2, v12

    iget-object v5, p0, Lcom/t4game/Constellation;->selectPos:[[I

    iget-byte v6, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v5, v5, v6

    aget v5, v5, v12

    iget-object v6, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v6, v6, v0

    aget-object v1, v6, v1

    iget-object v6, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v6, v6, v0

    aget v6, v6, v13

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v6, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v1, p0, Lcom/t4game/Constellation;->selectImage:Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->selectPos:[[I

    iget-byte v6, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v2, v2, v6

    aget v2, v2, v13

    sget v6, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v5, v2, v6}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v1, v12

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    add-int/2addr v0, v11

    sget v1, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v1, 0x2

    add-int/lit16 v2, v1, 0x168

    sub-int/2addr v2, v3

    const v3, 0x7a654a

    invoke-virtual {p1, v3}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p1, v1, v0, v2, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-object v1, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, v9

    sget v2, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {p1, v1, v2, v1, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-byte v3, p0, Lcom/t4game/Constellation;->consOpenNum:B

    if-ge v2, v3, :cond_2

    invoke-direct {p0, p1, v0, v1}, Lcom/t4game/Constellation;->drawOpenInfo(Ljavax/microedition/lcdui/Graphics;II)V

    :goto_2
    return-void

    :cond_2
    add-int/lit8 v2, v0, 0x5

    add-int/lit8 v1, v8, 0x14

    const-string v0, "\u62b1\u6b49\uff0c\u6b64\u661f\u56fe\u672a\u6ee1\u8db3\u5f00\u542f\u6761\u4ef6\uff0c\u6682\u65f6\u65e0\u6cd5\u5f00\u542f"

    sub-int v3, v4, v8

    const/4 v5, -0x1

    move v4, v12

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B

    goto :goto_2
.end method

.method private drawOfDialogStarPoint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 20

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v6, Lcom/t4game/Constellation;->CONSTELLATION_TYPE:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentIndex:B

    move v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/t4game/Constellation;->CONSTELLATION_NAME:[[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentIndex:B

    move v7, v0

    aget-object v6, v6, v7

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentPage:B

    move v7, v0

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    const/16 v7, 0x168

    sub-int/2addr v5, v7

    shr-int/lit8 v7, v5, 0x1

    const/4 v8, 0x4

    const/16 v9, 0x168

    const/16 v10, 0x104

    move-object/from16 v5, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintDialog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIII)V

    sget v5, Lcom/t4game/Defaults;->CANVAS_W:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    sub-int/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    mul-int/lit8 v7, v7, 0x2

    sub-int/2addr v5, v7

    shr-int/lit8 v10, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    add-int/2addr v5, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v7

    add-int v11, v5, v7

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v12, v5, 0x5

    sget v5, Lcom/t4game/Defaults;->lableTop:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    sub-int v13, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    add-int/2addr v5, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    sget v8, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v5

    move v3, v12

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    move-object v9, v0

    move-object/from16 v7, p0

    move-object/from16 v8, p1

    invoke-direct/range {v7 .. v13}, Lcom/t4game/Constellation;->drawBg(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIII)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentPage:B

    move v7, v0

    const/4 v8, 0x6

    if-ge v7, v8, :cond_1

    const/4 v7, 0x7

    move v11, v7

    :goto_0
    const/16 v7, 0xd2

    sget v8, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v8, v8, 0x1e

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentPage:B

    move v14, v0

    const/4 v15, 0x7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget v9, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v16, v9, 0x3

    sget v9, Lcom/t4game/Defaults;->sfh:I

    sub-int v17, v8, v9

    sget v8, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v7, v8

    add-int/lit8 v18, v7, 0xa

    const/16 v19, 0x1

    move-object/from16 v13, p1

    invoke-static/range {v13 .. v19}, Lcom/t4game/DraftingUtil;->paintPageNumberAndTriangle(Ljavax/microedition/lcdui/Graphics;IIIIIZ)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    sget v8, Lcom/t4game/Defaults;->lableTop:I

    add-int/2addr v7, v8

    add-int/lit8 v7, v7, 0x3

    sget v8, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v9, 0x168

    move-object/from16 v0, p0

    move v1, v5

    move v2, v7

    move-object v3, v6

    move-object/from16 v4, p1

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/t4game/Constellation;->drawChengHaoSuitAttrdrawChengHaoSuitAttr(IILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    move-object v6, v0

    sget v13, Lcom/t4game/Defaults;->TOP_LEFT:I

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v5

    move v3, v12

    move v4, v13

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    const v5, 0x7a654a

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int v5, v8, v9

    move-object/from16 v0, p1

    move v1, v8

    move v2, v7

    move v3, v5

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    const/16 v12, 0x14

    add-int/lit8 v13, v10, 0x0

    const/4 v5, 0x0

    move v14, v5

    :goto_1
    if-ge v14, v11, :cond_3

    const/4 v5, 0x7

    if-ne v11, v5, :cond_2

    sget-object v5, Lcom/t4game/Constellation;->starPointPos:[[[I

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentIndex:B

    move v6, v0

    aget-object v5, v5, v6

    aget-object v5, v5, v14

    const/4 v6, 0x0

    aget v5, v5, v6

    add-int/2addr v5, v12

    :goto_2
    add-int v6, v5, v13

    sget-object v5, Lcom/t4game/Constellation;->starPointPos:[[[I

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentIndex:B

    move v7, v0

    aget-object v5, v5, v7

    aget-object v5, v5, v14

    const/4 v7, 0x1

    aget v7, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    aget-object v5, v5, v14

    const/16 v8, 0x14

    move-object/from16 v0, p1

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->starPointIndex:B

    move v5, v0

    if-ne v14, v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    const/4 v8, 0x0

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    add-int/lit8 v8, v5, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    move-object v5, v0

    const/4 v9, 0x1

    sub-int/2addr v6, v9

    const/4 v9, 0x1

    sub-int/2addr v7, v9

    move v9, v8

    move-object/from16 v10, p1

    invoke-virtual/range {v5 .. v10}, Lcom/t4game/GameScreen;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    :cond_0
    add-int/lit8 v5, v14, 0x1

    move v14, v5

    goto :goto_1

    :cond_1
    const/16 v7, 0xa

    move v11, v7

    goto/16 :goto_0

    :cond_2
    sget-object v5, Lcom/t4game/Constellation;->starPointPos:[[[I

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/Constellation;->currentIndex:B

    move v6, v0

    aget-object v5, v5, v6

    aget-object v5, v5, v14

    const/4 v6, 0x0

    aget v5, v5, v6

    goto :goto_2

    :cond_3
    return-void
.end method

.method private drawOpenInfo(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/t4game/Constellation;->CONSTELLATION_TYPE:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u4e03\u661f\u5bbf"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v2, v1, 0x2

    add-int/lit8 v1, p3, 0x4

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int v7, v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u661f\u56fe\u8fdb\u5ea6  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v3, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-byte v2, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "/7"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const/4 v5, -0x1

    move v2, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v7, v0

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sub-int/2addr v0, v1

    const/16 v2, 0x8

    sub-int v3, v0, v2

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v8, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v2

    aget-object v0, v0, v8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    sget v4, Lcom/t4game/Defaults;->sfh:I

    const/4 v5, -0x1

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    add-int/lit8 v7, p2, 0x3

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v1, v0, 0x14

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int v3, v0, v1

    const/4 v0, 0x0

    move v8, v0

    :goto_1
    sget-object v0, Lcom/t4game/Constellation;->ATTR_AWARD_CON:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v2

    array-length v0, v0

    if-ge v8, v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/Constellation;->jobType:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    const/4 v2, 0x3

    if-ne v0, v2, :cond_3

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    add-int/lit8 v0, v0, 0x3

    :goto_2
    int-to-byte v0, v0

    sget-object v2, Lcom/t4game/Constellation;->ATTR_AWARD_CON:[[Ljava/lang/String;

    aget-object v0, v2, v0

    aget-object v0, v0, v8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-object v5, p0, Lcom/t4game/Constellation;->infoColor:[[I

    iget-byte v6, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v5, v5, v6

    aget v5, v5, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_3
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_1

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    add-int/lit8 v0, v0, 0x2

    goto :goto_2

    :cond_3
    sget-object v0, Lcom/t4game/Constellation;->ATTR_AWARD_CON:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v2

    aget-object v0, v0, v8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-object v5, p0, Lcom/t4game/Constellation;->infoColor:[[I

    iget-byte v6, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v5, v5, v6

    aget v5, v5, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_4
    sget-object v0, Lcom/t4game/Constellation;->ATTR_AWARD_CON:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v2

    aget-object v0, v0, v8

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    add-int/2addr v2, v7

    sget v4, Lcom/t4game/Defaults;->sfh:I

    iget-object v5, p0, Lcom/t4game/Constellation;->infoColor:[[I

    iget-byte v6, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v5, v5, v6

    aget v5, v5, v8

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrollString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_3

    :cond_5
    return-void
.end method

.method private getClickNum()B
    .locals 3

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    const/4 v1, 0x6

    if-gt v0, v1, :cond_0

    const/16 v0, 0xa

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x14

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    goto :goto_0
.end method

.method private getStarPointAttrColor()I
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x6

    const/16 v5, 0xa

    const/4 v4, 0x1

    const/4 v3, -0x1

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-byte v1, v1, v2

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-byte v1, v1, v2

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-byte v0, v0, v1

    if-ne v0, v7, :cond_2

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-ne v0, v5, :cond_2

    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    if-gt v0, v6, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    const v0, 0xfe05aa

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-gt v0, v7, :cond_3

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v4

    if-ne v0, v1, :cond_3

    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    if-ge v0, v5, :cond_3

    const v0, 0x808080

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    if-gt v0, v6, :cond_4

    move v0, v3

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v0, v7

    if-lez v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    if-le v0, v6, :cond_5

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v4

    if-ge v0, v1, :cond_5

    const v0, 0xfe05aa

    goto :goto_0

    :cond_5
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    if-nez v0, :cond_6

    const v0, 0x808080

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    if-ge v0, v5, :cond_7

    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    if-lez v0, :cond_7

    move v0, v3

    goto :goto_0

    :cond_7
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    if-lt v0, v5, :cond_8

    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    const/16 v1, 0x10

    if-ge v0, v1, :cond_8

    const v0, 0xff00

    goto :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    const/16 v1, 0x10

    if-lt v0, v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    const/16 v1, 0x14

    if-ge v0, v1, :cond_9

    const/16 v0, 0x70dd

    goto/16 :goto_0

    :cond_9
    iget-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    const/16 v1, 0x14

    if-ne v0, v1, :cond_a

    const v0, 0xfe05aa

    goto/16 :goto_0

    :cond_a
    move v0, v3

    goto/16 :goto_0
.end method

.method private getStarPointState(B)B
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const/4 v0, 0x2

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method private initDialogConstellation()V
    .locals 0

    invoke-direct {p0}, Lcom/t4game/Constellation;->initImgeAndPosition()V

    invoke-direct {p0}, Lcom/t4game/Constellation;->setInfoColors()V

    return-void
.end method

.method private initDialogStarPoint()V
    .locals 6

    const/4 v1, 0x4

    const/4 v5, 0x1

    const/4 v4, 0x0

    const-string v0, "/constellation/starSky.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/constellation/juanzhou.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    iget-byte v0, p0, Lcom/t4game/Constellation;->state:B

    if-eq v0, v1, :cond_0

    new-array v0, v1, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/constellation/starPoint"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Constellation;->state:B

    :cond_1
    invoke-direct {p0}, Lcom/t4game/Constellation;->setStarPointImages()V

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-le v0, v5, :cond_2

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v0, v5

    :goto_1
    int-to-byte v0, v0

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setStarPointIndex(B)V

    return-void

    :cond_2
    move v0, v4

    goto :goto_1
.end method

.method private initImgeAndPosition()V
    .locals 12

    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-string v4, ".png"

    const-string v0, "/constellation/bg.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    const-string v0, "/constellation/select.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Constellation;->selectImage:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v8

    iget-object v1, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v8

    const-string v2, "/constellation/cons1.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v9

    aput-object v2, v0, v8

    move v0, v9

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/constellation/cons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v1, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "/constellation/cons"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    mul-int/lit8 v3, v0, 0x2

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ".png"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v1, v9

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v8

    aget-object v0, v0, v8

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v9

    aget-object v1, v1, v8

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v10

    aget-object v2, v2, v8

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v11

    aget-object v3, v3, v8

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    iget-object v4, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v4, v4, v8

    aget-object v4, v4, v8

    invoke-virtual {v4}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    iget-object v5, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v5, v5, v9

    aget-object v5, v5, v8

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    iget-object v6, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v6, v6, v10

    aget-object v6, v6, v8

    invoke-virtual {v6}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    iget-object v7, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v7, v7, v11

    aget-object v7, v7, v8

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    add-int/2addr v0, v1

    add-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/Constellation;->imageW:I

    add-int v0, v6, v7

    iput v0, p0, Lcom/t4game/Constellation;->imageH:I

    iget v0, p0, Lcom/t4game/Constellation;->imageW:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Constellation;->imageWW:I

    iget v0, p0, Lcom/t4game/Constellation;->imageH:I

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Constellation;->imageHH:I

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit8 v0, v0, 0x16

    iput v0, p0, Lcom/t4game/Constellation;->imageX:I

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v8

    iget v7, p0, Lcom/t4game/Constellation;->imageX:I

    add-int/2addr v1, v7

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xa

    aput v1, v0, v8

    sget v0, Lcom/t4game/Defaults;->lableTop:I

    add-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/t4game/Constellation;->imageY:I

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v8

    iget v1, p0, Lcom/t4game/Constellation;->imageY:I

    iget v7, p0, Lcom/t4game/Constellation;->imageHH:I

    add-int/2addr v1, v7

    shr-int/lit8 v4, v4, 0x1

    sub-int/2addr v1, v4

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v9

    iget v1, p0, Lcom/t4game/Constellation;->imageX:I

    aput v1, v0, v8

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v9

    iget v1, p0, Lcom/t4game/Constellation;->imageY:I

    iget v4, p0, Lcom/t4game/Constellation;->imageHH:I

    add-int/2addr v1, v4

    shr-int/lit8 v4, v5, 0x1

    sub-int/2addr v1, v4

    add-int/lit8 v1, v1, 0xc

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v10

    iget v1, p0, Lcom/t4game/Constellation;->imageX:I

    iget v4, p0, Lcom/t4game/Constellation;->imageWW:I

    add-int/2addr v1, v4

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    aput v1, v0, v8

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v10

    iget v1, p0, Lcom/t4game/Constellation;->imageY:I

    iget v2, p0, Lcom/t4game/Constellation;->imageH:I

    add-int/2addr v1, v2

    sub-int/2addr v1, v6

    add-int/lit8 v1, v1, 0x5

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v11

    iget v1, p0, Lcom/t4game/Constellation;->imageX:I

    iget v2, p0, Lcom/t4game/Constellation;->imageWW:I

    add-int/2addr v1, v2

    shr-int/lit8 v2, v3, 0x1

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x5

    aput v1, v0, v8

    iget-object v0, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v0, v0, v11

    iget v1, p0, Lcom/t4game/Constellation;->imageY:I

    aput v1, v0, v9

    iget-object v0, p0, Lcom/t4game/Constellation;->selectImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/Constellation;->selectImage:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    shr-int/lit8 v0, v0, 0x1

    const/16 v2, 0xa

    iget-object v3, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v4, v4, v8

    aget v4, v4, v8

    add-int/2addr v4, v2

    aput v4, v3, v8

    iget-object v3, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v3, v3, v8

    iget-object v4, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v4, v4, v9

    aget v4, v4, v9

    aput v4, v3, v9

    iget-object v3, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v4, v4, v9

    aget v4, v4, v8

    add-int/2addr v4, v0

    aput v4, v3, v8

    iget-object v3, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v3, v3, v9

    iget-object v4, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v4, v4, v9

    aget v4, v4, v9

    aput v4, v3, v9

    iget-object v3, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v3, v3, v10

    iget-object v4, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v4, v4, v10

    aget v4, v4, v8

    add-int/2addr v2, v4

    aput v2, v3, v8

    iget-object v2, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v2, v2, v10

    iget-object v3, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v3, v3, v10

    aget v3, v3, v9

    add-int/2addr v1, v3

    aput v1, v2, v9

    iget-object v1, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v1, v1, v11

    iget-object v2, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v2, v2, v11

    aget v2, v2, v8

    add-int/2addr v0, v2

    aput v0, v1, v8

    iget-object v0, p0, Lcom/t4game/Constellation;->selectPos:[[I

    aget-object v0, v0, v11

    iget-object v1, p0, Lcom/t4game/Constellation;->consPosition:[[I

    aget-object v1, v1, v11

    aget v1, v1, v9

    aput v1, v0, v9

    return-void
.end method

.method private pressedOfConstellation(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    sget-object v0, Lcom/t4game/Constellation;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v1

    aget-byte v0, v0, v3

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setCurrentIndex(B)V

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/t4game/Constellation;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setCurrentIndex(B)V

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/t4game/Constellation;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v1

    aget-byte v0, v0, v2

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setCurrentIndex(B)V

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/t4game/Constellation;->NEIGHBOR:[[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-object v0, v0, v1

    const/4 v1, 0x2

    aget-byte v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setCurrentIndex(B)V

    goto :goto_0

    :pswitch_4
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->consOpenNum:B

    sub-int/2addr v1, v3

    if-gt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/Constellation;->isMySelf:Z

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    invoke-direct {p0, v0}, Lcom/t4game/Constellation;->setConIndex(B)V

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONSMAP_VIEW_MSG(BB)V

    goto :goto_0

    :pswitch_5
    iget-boolean v0, p0, Lcom/t4game/Constellation;->isMySelf:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameScreen;->setState(BZ)V

    :goto_1
    invoke-direct {p0}, Lcom/t4game/Constellation;->release()V

    goto :goto_0

    :cond_1
    invoke-direct {p0}, Lcom/t4game/Constellation;->back2preState()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private pressedOfDialogStarPicture(I)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    sub-int/2addr v0, v3

    if-ltz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentPage:B

    sub-int/2addr v1, v3

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONSMAP_VIEW_MSG(BB)V

    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v2, p0, Lcom/t4game/Constellation;->currentIndex:B

    aget-byte v1, v1, v2

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentPage:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    invoke-virtual {p0, v0, v1}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONSMAP_VIEW_MSG(BB)V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    goto :goto_0

    :pswitch_3
    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentStarNum:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    goto :goto_0

    :pswitch_4
    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :goto_1
    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lcom/t4game/Constellation;->clickNum:B

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v4}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONSMAP_STUDY_MSG(B)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x14

    goto :goto_1

    :pswitch_5
    iput v4, p0, Lcom/t4game/Constellation;->viewStateOfDialogL2:I

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget v0, v0, Lcom/t4game/GUser;->intId:I

    invoke-virtual {p0, v0, v3}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONS_VIEW_MSG(IZ)V

    invoke-direct {p0}, Lcom/t4game/Constellation;->releaseStarPoint()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch -0x7
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private release()V
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Constellation;->bgImage:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/Constellation;->selectImage:Ljavax/microedition/lcdui/Image;

    move v1, v5

    :goto_0
    iget-object v2, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v1

    iget-object v3, p0, Lcom/t4game/Constellation;->constellationImage:[[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v1

    const/4 v4, 0x1

    aput-object v0, v3, v4

    aput-object v0, v2, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-byte v1, p0, Lcom/t4game/Constellation;->prePreState:B

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iput-object v0, v1, Lcom/t4game/GameScreen;->cons:Lcom/t4game/Constellation;

    :cond_1
    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    return-void
.end method

.method private releaseStarPoint()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/Constellation;->starSkyImage:Ljavax/microedition/lcdui/Image;

    iput-object v2, p0, Lcom/t4game/Constellation;->juanZhouImage:Ljavax/microedition/lcdui/Image;

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Constellation;->state:B

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private setConIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Constellation;->currentIndex:B

    return-void
.end method

.method private setCurrentIndex(B)V
    .locals 1

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    iput-byte p1, p0, Lcom/t4game/Constellation;->currentIndex:B

    :cond_0
    return-void
.end method

.method private setInfoColors()V
    .locals 7

    const/4 v6, 0x7

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    aget-byte v1, v1, v0

    if-ne v1, v6, :cond_0

    iget-byte v1, p0, Lcom/t4game/Constellation;->consOpenNum:B

    add-int/lit8 v2, v0, 0x1

    if-lt v1, v2, :cond_0

    move v1, v3

    :goto_1
    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    aget-byte v1, v1, v0

    if-ne v1, v6, :cond_2

    iget-byte v1, p0, Lcom/t4game/Constellation;->colorFlag:B

    if-ne v1, v5, :cond_2

    iget-object v1, p0, Lcom/t4game/Constellation;->infoColor:[[I

    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    array-length v2, v2

    sub-int/2addr v2, v5

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v2, v2, v3

    array-length v2, v2

    sub-int/2addr v2, v5

    aput v4, v1, v2

    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x5

    if-le v1, v2, :cond_3

    move v1, v3

    :goto_3
    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v2, v2, v0

    aput v4, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_3
    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    aget-byte v1, v1, v0

    const/4 v2, 0x3

    if-le v1, v2, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->infoColor:[[I

    aget-object v1, v1, v0

    aput v4, v1, v3

    goto :goto_2

    :cond_4
    return-void
.end method

.method private setNormalStarPointImage()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    move v0, v4

    :goto_0
    iget-object v1, p0, Lcom/t4game/Constellation;->starPointState:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Constellation;->starPointState:[B

    iget-byte v2, p0, Lcom/t4game/Constellation;->clickNum:B

    invoke-direct {p0, v2}, Lcom/t4game/Constellation;->getStarPointState(B)B

    move-result v2

    aput-byte v2, v1, v0

    :goto_1
    iget-object v1, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/Constellation;->starPointState:[B

    aget-byte v3, v3, v0

    aget-object v2, v2, v3

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->starPointState:[B

    const/4 v2, 0x2

    aput-byte v2, v1, v0

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/t4game/Constellation;->starPointState:[B

    aput-byte v4, v1, v0

    goto :goto_1

    :cond_2
    return-void
.end method

.method private setStarPointImages()V
    .locals 8

    const/4 v7, 0x6

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x7

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    if-ge v0, v7, :cond_1

    new-array v0, v3, [B

    iput-object v0, p0, Lcom/t4game/Constellation;->starPointState:[B

    invoke-direct {p0}, Lcom/t4game/Constellation;->setNormalStarPointImage()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, 0xa

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/Constellation;->starPointState:[B

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-gt v0, v3, :cond_2

    invoke-direct {p0}, Lcom/t4game/Constellation;->setNormalStarPointImage()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/t4game/Constellation;->setNormalStarPointImage()V

    move v0, v3

    :goto_1
    const/16 v1, 0xa

    if-ge v0, v1, :cond_0

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v3

    if-lez v1, :cond_4

    if-le v0, v7, :cond_4

    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v6

    aput-object v2, v1, v0

    :cond_3
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-gt v1, v0, :cond_5

    const/16 v1, 0x9

    if-gt v0, v1, :cond_5

    iget-object v1, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v4

    aput-object v2, v1, v0

    goto :goto_2

    :cond_5
    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_3

    iget-byte v1, p0, Lcom/t4game/Constellation;->clickNum:B

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v4

    aput-object v2, v1, v0

    goto :goto_2

    :cond_6
    iget-object v1, p0, Lcom/t4game/Constellation;->starPointImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/Constellation;->starImage:[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v6

    aput-object v2, v1, v0

    goto :goto_2
.end method

.method private setStarPointIndex(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    return-void
.end method


# virtual methods
.method public drawDialogConstelllation(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget v0, p0, Lcom/t4game/Constellation;->viewStateOfDialogL2:I

    if-nez v0, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/Constellation;->drawOfDialogCons(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/Constellation;->viewStateOfDialogL2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/Constellation;->drawOfDialogStarPoint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public pressedAlertOk()V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    const/16 v0, 0xa

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    iget-byte v1, p0, Lcom/t4game/Constellation;->clickNum:B

    if-ge v1, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/Constellation;->sendMessageCONSTELLATIONSMAP_STUDY_MSG(B)V

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0x14

    goto :goto_0
.end method

.method public pressedOfDialogConstellation(I)V
    .locals 2

    iget v0, p0, Lcom/t4game/Constellation;->viewStateOfDialogL2:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/Constellation;->pressedOfDialogStarPicture(I)V

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/t4game/Constellation;->pressedOfConstellation(I)V

    goto :goto_0
.end method

.method public processLoadingBack(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-byte v0, p0, Lcom/t4game/Constellation;->consOpenNum:B

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x1e

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    invoke-direct {p0}, Lcom/t4game/Constellation;->initDialogConstellation()V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/Constellation;->initDialogStarPoint()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/t4game/Constellation;->viewStateOfDialogL2:I

    goto :goto_0

    :pswitch_2
    invoke-direct {p0}, Lcom/t4game/Constellation;->setStarPointImages()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x25d
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public processMessageCONSTELLATIONSMAP_STUDY_MSG()V
    .locals 8

    const/4 v7, 0x2

    const/16 v5, 0x132

    const/4 v4, 0x1

    const/4 v3, 0x3

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->state:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v2, 0x25f

    invoke-virtual {v1, v0, v2}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x25f

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void

    :cond_1
    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    if-eqz v1, :cond_0

    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    if-ne v1, v7, :cond_2

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    move v0, v6

    :goto_1
    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    if-ne v1, v3, :cond_12

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->starPointIndex:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    if-le v0, v3, :cond_b

    move v0, v6

    :goto_2
    if-ge v0, v3, :cond_3

    iget-object v1, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v7

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_3
    move v0, v6

    :goto_3
    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_4
    move v0, v6

    :goto_4
    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_5

    iget-object v1, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_5
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_7

    :cond_6
    new-array v1, v0, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    :cond_7
    move v1, v6

    :goto_5
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v3, v3

    if-eq v3, v2, :cond_9

    :cond_8
    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    aput-object v4, v3, v1

    :cond_9
    move v3, v6

    :goto_6
    if-ge v3, v2, :cond_a

    iget-object v4, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_6

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_b
    move v0, v6

    :goto_7
    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    if-ge v0, v1, :cond_c

    iget-object v1, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/Constellation;->starOpenNum:B

    sub-int/2addr v2, v4

    aget-object v1, v1, v2

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_7

    :cond_c
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_e

    :cond_d
    new-array v1, v0, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    :cond_e
    move v1, v6

    :goto_8
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_f

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v3, v3

    if-eq v3, v2, :cond_10

    :cond_f
    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    aput-object v4, v3, v1

    :cond_10
    move v3, v6

    :goto_9
    if-ge v3, v2, :cond_11

    iget-object v4, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_11
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    :cond_12
    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    const/4 v2, 0x4

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0, v5}, Lcom/t4game/GameWorld;->addFrontAlertMessage(Ljava/lang/String;I)V

    iput-byte v6, p0, Lcom/t4game/Constellation;->starPointIndex:B

    goto/16 :goto_0

    :cond_13
    iget-byte v1, p0, Lcom/t4game/Constellation;->state:B

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processMessageCONSTELLATIONSMAP_VIEW_MSG()V
    .locals 7

    const/4 v6, 0x0

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v0, v1

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->currentPage:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->clickNum:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-lez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    if-lez v0, :cond_8

    const/16 v0, 0xa

    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    filled-new-array {v0, v1}, [I

    move-result-object v0

    const-class v1, Ljava/lang/String;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    move v0, v6

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Constellation;->starOpenNum:B

    if-ge v0, v1, :cond_1

    move v1, v6

    :goto_1
    iget-byte v2, p0, Lcom/t4game/Constellation;->attrSize:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Constellation;->attrOfStarPoint:[[Ljava/lang/String;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v3, v3, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v3, v3, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v3}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Constellation;->attrSize:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    move v0, v6

    :goto_2
    iget-byte v1, p0, Lcom/t4game/Constellation;->attrSize:B

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/Constellation;->nextAttrOfStarPoint:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_4

    :cond_3
    new-array v1, v0, [[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    :cond_4
    move v1, v6

    :goto_3
    if-ge v1, v0, :cond_8

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v3, v3, v1

    array-length v3, v3

    if-eq v3, v2, :cond_6

    :cond_5
    iget-object v3, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    new-array v4, v2, [Ljava/lang/String;

    aput-object v4, v3, v1

    :cond_6
    move v3, v6

    :goto_4
    if-ge v3, v2, :cond_7

    iget-object v4, p0, Lcom/t4game/Constellation;->awardProp:[[Ljava/lang/String;

    aget-object v4, v4, v1

    iget-object v5, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v5, v5, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v5}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x25e

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public processMessageCONSTELLATIONS_VIEW_MSG()V
    .locals 6

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->consOpenNum:B

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->jobType:B

    iget-byte v0, p0, Lcom/t4game/Constellation;->consOpenNum:B

    if-lez v0, :cond_3

    move v0, v5

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Constellation;->consOpenNum:B

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Constellation;->starMapLevel:[B

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    iget-object v2, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    new-array v3, v1, [Ljava/lang/String;

    aput-object v3, v2, v0

    move v2, v5

    :goto_1
    if-ge v2, v1, :cond_0

    iget-object v3, p0, Lcom/t4game/Constellation;->attrInfo:[[Ljava/lang/String;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v4, v4, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v4, v4, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v4}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/Constellation;->consOpenNum:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/Constellation;->colorFlag:B

    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/16 v1, 0x25d

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void

    :cond_3
    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public sendMessageCONSTELLATIONSMAP_STUDY_MSG(B)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Constellation;->currentIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/Constellation;->starPointIndex:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25f

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public sendMessageCONSTELLATIONSMAP_VIEW_MSG(BB)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p2}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25e

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public sendMessageCONSTELLATIONS_VIEW_MSG(IZ)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0, p1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iput-boolean p2, p0, Lcom/t4game/Constellation;->isMySelf:Z

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x25d

    iget-object v2, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    iget-object v0, p0, Lcom/t4game/Constellation;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, 0x0

    iput v1, v0, Lcom/t4game/GameWorld;->loadTypeMessageCommand:I

    return-void
.end method

.method public setPreState(BBB)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Constellation;->preState:B

    iput-byte p2, p0, Lcom/t4game/Constellation;->preDialogId:B

    iput-byte p3, p0, Lcom/t4game/Constellation;->viewStateOfDialog:B

    return-void
.end method

.method public setPreState(BBBB)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/Constellation;->preState:B

    iput-byte p2, p0, Lcom/t4game/Constellation;->preDialogId:B

    iput-byte p3, p0, Lcom/t4game/Constellation;->viewStateOfDialog:B

    iput-byte p4, p0, Lcom/t4game/Constellation;->prePreState:B

    return-void
.end method
