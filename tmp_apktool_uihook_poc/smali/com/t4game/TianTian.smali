.class public Lcom/t4game/TianTian;
.super Ljava/lang/Object;


# static fields
.field public static final ANIMATIONSTAR:B = 0x2t

.field public static final DA_ZAO:B = 0x1t

.field public static final LEADSTAR:B = 0x3t

.field public static final OPENSCREENSTAR:B = 0x1t

.field public static final TALKSTAR:B = 0x0t

.field public static final VIP:B = 0x4t

.field public static fromTiantian:I = 0x0

.field public static next_task_id:I = 0x0

.field public static start:Z = false

.field public static final task_id_null:I = -0x1


# instance fields
.field private final DA_KONG:B

.field private DoNothingAboutKey:Z

.field private final FA_BAO_BAO:B

.field private final JIAO_YI:B

.field private final JING_JIE:B

.field private final NEI_DAN_LING_YE:B

.field public final QIANG_HUA:B

.field private final SHENG_JI:B

.field private final SHENQUANDAO:B

.field private final SHE_ZHI_AN_JIAN:B

.field private final TIAN_FU:B

.field private final TU_ZHI:B

.field private final XUN_JING:B

.field private final YIN_LU_SHI:B

.field private final ZHUANG_BEI:B

.field private final ZHUANG_BEI_FA_BAO:B

.field private final ZI_DING_YI_ZHAN_DOU:B

.field private final ZUO_QI:B

.field private actionDone:Z

.field private actionGridId:B

.field public actionType:B

.field private final animationStr:[[Ljava/lang/String;

.field private animationType:B

.field private backAnimation:Z

.field private bengziIndex:[I

.field box_h:I

.field box_w:I

.field box_x:I

.field box_y:I

.field private buYaoXiaoHaoWuPin:Z

.field private dialog:[Ljava/lang/String;

.field private dialogIndex:B

.field private disAppearForAMoment:Z

.field exit:Ljava/lang/String;

.field private functionId:I

.field gap:I

.field private gs:Lcom/t4game/GameScreen;

.field img_h:I

.field img_w:I

.field private key1:Z

.field private needBack:Z

.field private npcGuideType:B

.field private npcId:I

.field private openType:B

.field private questId:I

.field private scendId:S

.field private talkDone:Z

.field text_w:I

.field private tianImg:Ljavax/microedition/lcdui/Image;

.field tianImgData:Lcom/t4game/GImageData;

.field private timeCount:B

.field private top:I

.field private zidingyi:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/TianTian;->start:Z

    const/16 v0, 0x64

    sput v0, Lcom/t4game/TianTian;->fromTiantian:I

    const/4 v0, -0x1

    sput v0, Lcom/t4game/TianTian;->next_task_id:I

    return-void
.end method

.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 10

    const/4 v9, 0x4

    const/4 v8, 0x1

    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x50

    iput v0, p0, Lcom/t4game/TianTian;->img_w:I

    const/16 v0, 0x55

    iput v0, p0, Lcom/t4game/TianTian;->img_h:I

    const/16 v0, 0xf

    iput v0, p0, Lcom/t4game/TianTian;->gap:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v9

    aget v0, v0, v5

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v6

    aget v1, v1, v5

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v6

    aget v1, v1, v7

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    shl-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->box_w:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    const/4 v1, 0x5

    aget-object v0, v0, v1

    aget v0, v0, v8

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    const/4 v2, 0x5

    aget-object v1, v1, v2

    aget v1, v1, v6

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->box_y:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    iget v1, p0, Lcom/t4game/TianTian;->box_y:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->box_h:I

    sget-object v0, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v0, v0, v6

    aget v0, v0, v5

    sget-object v1, Lcom/t4game/SoftKeyboard;->rectData:[[I

    aget-object v1, v1, v6

    aget v1, v1, v7

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->box_x:I

    iget v0, p0, Lcom/t4game/TianTian;->box_w:I

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    mul-int/lit8 v1, v1, 0x3

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->img_w:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->text_w:I

    iput-byte v5, p0, Lcom/t4game/TianTian;->timeCount:B

    iput-byte v5, p0, Lcom/t4game/TianTian;->actionType:B

    iput v5, p0, Lcom/t4game/TianTian;->functionId:I

    iput-boolean v5, p0, Lcom/t4game/TianTian;->needBack:Z

    iput-byte v5, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iput-boolean v5, p0, Lcom/t4game/TianTian;->talkDone:Z

    iput-boolean v5, p0, Lcom/t4game/TianTian;->actionDone:Z

    iput-byte v5, p0, Lcom/t4game/TianTian;->actionGridId:B

    iput-byte v5, p0, Lcom/t4game/TianTian;->openType:B

    iput-byte v5, p0, Lcom/t4game/TianTian;->npcGuideType:B

    iput-short v5, p0, Lcom/t4game/TianTian;->scendId:S

    iput v5, p0, Lcom/t4game/TianTian;->npcId:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/TianTian;->questId:I

    iput-byte v5, p0, Lcom/t4game/TianTian;->TIAN_FU:B

    iput-byte v7, p0, Lcom/t4game/TianTian;->SHENG_JI:B

    iput-byte v6, p0, Lcom/t4game/TianTian;->QIANG_HUA:B

    iput-byte v9, p0, Lcom/t4game/TianTian;->JIAO_YI:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/TianTian;->ZHUANG_BEI:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/TianTian;->ZI_DING_YI_ZHAN_DOU:B

    const/4 v0, 0x7

    iput-byte v0, p0, Lcom/t4game/TianTian;->SHE_ZHI_AN_JIAN:B

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/t4game/TianTian;->TU_ZHI:B

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/t4game/TianTian;->DA_KONG:B

    const/16 v0, 0xb

    iput-byte v0, p0, Lcom/t4game/TianTian;->ZUO_QI:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/t4game/TianTian;->YIN_LU_SHI:B

    const/16 v0, 0xd

    iput-byte v0, p0, Lcom/t4game/TianTian;->NEI_DAN_LING_YE:B

    const/16 v0, 0xe

    iput-byte v0, p0, Lcom/t4game/TianTian;->FA_BAO_BAO:B

    const/16 v0, 0xf

    iput-byte v0, p0, Lcom/t4game/TianTian;->XUN_JING:B

    const/16 v0, 0x10

    iput-byte v0, p0, Lcom/t4game/TianTian;->ZHUANG_BEI_FA_BAO:B

    const/16 v0, 0x11

    iput-byte v0, p0, Lcom/t4game/TianTian;->SHENQUANDAO:B

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/t4game/TianTian;->JING_JIE:B

    iput-byte v5, p0, Lcom/t4game/TianTian;->animationType:B

    iput-boolean v5, p0, Lcom/t4game/TianTian;->buYaoXiaoHaoWuPin:Z

    const/16 v0, 0x13

    new-array v0, v0, [[Ljava/lang/String;

    new-array v1, v6, [Ljava/lang/String;

    const-string v2, "\u5c11\u4e3b\u60f3\u8981\u5b66\u547c\u98ce\u5524\u96e8\u7684\u6280\u80fd\u4e48\uff1f\u90a3\u5c31\u542c\u6211\u8bb2\u8bb2\u600e\u4e48\u52a0\u5929\u8d4b\u5427\u3002"

    aput-object v2, v1, v5

    const-string v2, "\u70b9\u51fb\u786e\u5b9a\u952e\u5c31\u53ef\u4ee5\u67e5\u770b\u81ea\u5df1\u7684\u5929\u8d4b\u6811\u54e6"

    aput-object v2, v1, v8

    const-string v2, "\u9009\u62e9\u5f53\u524d\u53ef\u4ee5\u5b66\u4e60\u7684\u5929\u8d4b\u6309\u4e2d\u952e\u5373\u53ef\u52a0\u70b9"

    aput-object v2, v1, v7

    aput-object v1, v0, v5

    const/4 v1, 0x7

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u5c11\u4e3b\u53ef\u4ee5\u5728\u6253\u9020\u5927\u53d4\u8fd9\u91cc\u6253\u9020\u8eab\u4e0a\u7684\u88c5\u5907\u548c\u9970\u54c1\u4e86\u54df~"

    aput-object v2, v1, v5

    const-string v2, "\u5728\u6253\u9020\u5927\u53d4\u8fd9\u91cc\u9009\u62e9\u88c5\u5907\u6253\u9020\u54e6"

    aput-object v2, v1, v8

    const-string v2, "\u8981\u9009\u62e9\u6253\u9020\u88c5\u5907\u7684\u7b49\u7ea7\u5440"

    aput-object v2, v1, v7

    const-string v2, "\u5c11\u4e3b\u53ef\u4ee5\u6839\u636e\u81ea\u5df1\u7684\u559c\u597d\u6765\u9009\u62e9\u6253\u9020\u4e0d\u540c\u7684\u88c5\u5907"

    aput-object v2, v1, v6

    const-string v2, "\u6309\u786e\u5b9a\u5c31\u53ef\u4ee5\u6253\u9020\u51fa\u88c5\u5907\u5566"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u65e0\u8bba\u662f\u7ed1\u5b9a\u8fd8\u662f\u975e\u7ed1\u5b9a\u7684\u6750\u6599\uff0c\u53ea\u8981\u80fd\u6253\u9020\u51fa\u88c5\u5907\u5c31\u662f\u597d\u6750\u6599"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u54c7\uff0c\u7ec8\u4e8e\u6253\u9020\u6210\u529f\u5566\uff0c\u5feb\u53bb\u88c5\u5907\u4e0a\u8bd5\u8bd5\u5427"

    aput-object v3, v1, v2

    aput-object v1, v0, v8

    const/16 v1, 0x8

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u544a\u8bc9\u5c11\u4e3b\u4f60\u4e00\u4e2a\u5c0f\u79d8\u5bc6\u54e6\uff0c\u4f60\u7684\u6b66\u5668\u662f\u53ef\u4ee5\u5347\u7ea7\u7684\u54e6\uff0c\u8bd5\u8bd5\u770b\u770b\u5427~~"

    aput-object v2, v1, v5

    const-string v2, "\u6309\u786e\u5b9a\u8fdb\u5165\u5305\u5305\u54e6"

    aput-object v2, v1, v8

    const-string v2, "\u4e00\u5b9a\u8981\u8fdb\u5165\u7269\u54c1\u80cc\u5305\u5450"

    aput-object v2, v1, v7

    const-string v2, "\u88c5\u5907\u6b66\u5668\u90fd\u53ef\u4ee5\u968f\u8eab\u5347\u7ea7\u54e6\uff0c\u6309\u5de6\u8f6f\u952e\u53ef\u4ee5\u5347\u7ea7\u5f53\u524d\u88c5\u5907"

    aput-object v2, v1, v6

    const-string v2, "\u9009\u62e9\u5347\u7ea7\u5c31\u53ef\u4ee5\u8ba9\u5f53\u524d\u7684\u88c5\u5907\u8fdb\u884c\u5347\u7ea7\u5566"

    aput-object v2, v1, v9

    const/4 v2, 0x5

    const-string v3, "\u6309\u786e\u8ba4\u952e\u5347\u7ea7\u88c5\u5907\uff0c\u63d0\u9ad8\u88c5\u5907\u7684\u7b49\u7ea7"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "\u6309\u786e\u8ba4\u952e\u53ef\u4ee5\u8fdb\u884c\u5347\u7ea7\uff0c\u8fd9\u6b21\u5347\u7ea7\u4e0d\u6d88\u8017\u5c11\u4e3b\u7684\u6750\u6599\u54e6"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "\u88c5\u5907\u5df2\u7ecf\u6210\u529f\u5347\u7ea7\u5566\uff0c\u88c5\u5907\u7b49\u7ea7\u8d8a\u63a5\u8fd1\u5c11\u4e3b\u7684\u7b49\u7ea7\uff0c\u5c31\u80fd\u53d1\u6325\u6700\u5927\u7684\u5b9e\u529b\u54e6"

    aput-object v3, v1, v2

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "\u5c11\u4e3b\u7684\u88c5\u5907\u53ef\u4ee5\u5f3a\u5316\u7684\u54e6\uff0c\u53ef\u4ee5\u5927\u5e45\u5ea6\u589e\u52a0\u4f60\u7684\u5b9e\u529b\u5462\uff0c\u5f3a\u5316\u4e00\u4e0b\u5427\u3002"

    aput-object v2, v1, v5

    const-string v2, "\u5728\u5f3a\u5316\u5927\u54e5\u8fd9\u91cc\u9009\u62e9\u88c5\u5907\u5f3a\u5316\u5440"

    aput-object v2, v1, v8

    const-string v2, "\u9009\u62e9\u9700\u8981\u5f3a\u5316\u7684\u88c5\u5907\uff0c\u6309\u786e\u8ba4\u952e\u5c31\u53ef\u4ee5\u8fdb\u884c\u5f3a\u5316\u4e86\u54e6"

    aput-object v2, v1, v7

    const-string v2, "\u88c5\u5907\u5f3a\u5316\u53ef\u4ee5\u5927\u5e45\u5ea6\u589e\u52a0\u5c11\u4e3b\u4f60\u7684\u5b9e\u529b\u54e6\uff0c\u5feb\u6309\u5de6\u8f6f\u952e\u8fdb\u884c\u5f3a\u5316\u5427"

    aput-object v2, v1, v6

    const-string v2, ""

    aput-object v2, v1, v9

    aput-object v1, v0, v6

    new-array v1, v5, [Ljava/lang/String;

    aput-object v1, v0, v9

    const/4 v1, 0x5

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u4f60\u83b7\u5f97\u4e86\u4e00\u4ef6\u88c5\u5907\u5440\uff0c\u88c5\u5907\u7684\u54c1\u8d28\u8d8a\u9ad8\uff0c\u9644\u52a0\u7684\u5c5e\u6027\u5c31\u8d8a\u597d\uff0c\u5c11\u4e3b\u5feb\u7a7f\u4e0a\u5427\u3002"

    aput-object v3, v2, v5

    const-string v3, "\u6309\u786e\u5b9a\u952e\u8fdb\u5165\u5305\u88f9\u54e6"

    aput-object v3, v2, v8

    const-string v3, "\u8fdb\u5165\u5305\u88f9\u627e\u5230\u521a\u83b7\u5f97\u7684\u88c5\u5907\u5440"

    aput-object v3, v2, v7

    const-string v3, "\u6309\u786e\u8ba4\u952e\u5bf9\u88c5\u5907\u8fdb\u884c\u64cd\u4f5c"

    aput-object v3, v2, v6

    const-string v3, "\u9009\u62e9\u88c5\u5907\u5c31\u53ef\u4ee5\u5c06\u88c5\u5907\u7a7f\u6234\u4e0a\u5566"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\u65b0\u5b66\u4e60\u7684\u6280\u80fd\u53ea\u6709\u5728\u8bbe\u7f6e\u5230\u81ea\u5b9a\u4e49\u6218\u6597\u5217\u8868\u4e2d\u624d\u4f1a\u751f\u6548\u5440\uff01\u5c11\u4e3b\u5feb\u6765\u8bbe\u7f6e\u5427~"

    aput-object v3, v2, v5

    const-string v3, "\u6309\u786e\u8ba4\u952e\u6253\u5f00\u81ea\u5df1\u7684\u5929\u8d4b\u83dc\u5355\u54e6"

    aput-object v3, v2, v8

    const-string v3, "\u5728\u8fd9\u91cc\u5c31\u53ef\u4ee5\u5c06\u5b66\u4e60\u7684\u5929\u8d4b\u8bbe\u7f6e\u5230\u81ea\u5b9a\u4e49\u6218\u6597\u4e2d\u6765\u5566"

    aput-object v3, v2, v7

    const-string v3, "\u70b9\u51fb\u5feb\u6377\u680f\u7684\u7b2c\u4e00\u4f4d\u5c31\u53ef\u4ee5\u628a\u6280\u80fd\u8bbe\u7f6e\u8fdb\u81ea\u5b9a\u4e49\u6218\u6597\u5566"

    aput-object v3, v2, v6

    const-string v3, "\u4ee5\u540e\u4f60\u6253\u602a\u53ea\u9700\u8981\u6309\u786e\u8ba4\u952e\u5c31\u53ef\u4ee5\u81ea\u52a8\u653b\u51fb\u602a\u7269\u5566"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u662f\u5426\u8fdb\u5165\u8bbe\u7f6e\u6309\u952e\u6f14\u793a\u52a8\u753b"

    aput-object v3, v2, v5

    const-string v3, "\u8fdb\u5165\u7cfb\u7edf\u8bbe\u7f6e"

    aput-object v3, v2, v8

    const-string v3, "\u8fdb\u5165\u8bbe\u7f6e\u6309\u952e"

    aput-object v3, v2, v7

    const-string v3, "\u70b9\u51fb\u5feb\u6377\u680f\u7684\u7b2c\u4e00\u4f4d\u5c31\u53ef\u4ee5\u628a\u6280\u80fd\u8bbe\u7f6e\u8fdb\u5feb\u6377\u680f\u5566~"

    aput-object v3, v2, v6

    const-string v3, "\u5c31\u662f\u8fd9\u6837\u8bbe\u7f6e\u5feb\u6377\u952e\u7684"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v5, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const/16 v2, 0xb

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u54c7~~\u5c11\u4e3b\u7684\u88c5\u5907\u4e0a\u51fa\u73b0\u4e86\u53ef\u4ee5\u6253\u5b54\u7684\u69fd\u54e6\uff0c\u4e0d\u8fc7\u9700\u8981\u6253\u5b54\u624d\u7ba1\u7528\u3002\u5c11\u4e3b\u5feb\u6253\u5b54\u5427\uff01"

    aput-object v3, v2, v5

    const-string v3, "\u6309\u5de6\u8f6f\u952e\u6216\u8005\u4e2d\u952e\u8fdb\u5165\u5305\u5305\u54e6"

    aput-object v3, v2, v8

    const-string v3, "\u8fdb\u5165\u5305\u88f9\u627e\u5230\u6709\u5b54\u7684\u6b66\u5668\u54e6"

    aput-object v3, v2, v7

    const-string v3, "\u6309\u786e\u8ba4\u952e\u8fdb\u884c\u64cd\u4f5c\u5440"

    aput-object v3, v2, v6

    const-string v3, "\u9009\u62e9\u9576\u5d4c\u5c31\u53ef\u4ee5\u5566"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u6253\u5f00\u64cd\u4f5c\u83dc\u5355\u5c31\u53ef\u770b\u5230\u6253\u5b54\u9009\u9879\uff0c\u73b0\u5728\u9009\u62e9\u4f18\u8d28\u6253\u5b54"

    aput-object v4, v2, v3

    const/4 v3, 0x6

    const-string v4, "\u4f18\u8d28\u6253\u5b54\u4e0d\u9700\u8981\u6d88\u8017\u6750\u6599\u54e6"

    aput-object v4, v2, v3

    const/4 v3, 0x7

    const-string v4, "\u9009\u62e9\u4e00\u4e2a\u989c\u8272\u7684\u5b54\uff0c\u6211\u4f1a\u6839\u636e\u5c11\u4e3b\u7684\u804c\u4e1a\u6253\u51fa\u5bf9\u5e94\u989c\u8272\u7684\u5b54\u54e6"

    aput-object v4, v2, v3

    const/16 v3, 0x8

    const-string v4, "\u5c11\u4e3b\uff0c\u4f60\u7684\u88c5\u5907\u6709\u5b54\u4e86\uff0c\u5feb\u9576\u5d4c\u5b9d\u77f3\u5427\u3002\u6211\u53ef\u4ee5\u628a\u6211\u73cd\u85cf\u591a\u5e74\u7684\u5b9d\u77f3\u5949\u732e\u7ed9\u5c11\u4e3b\u4f60\u5462\u3002"

    aput-object v4, v2, v3

    const/16 v3, 0x9

    const-string v4, "\u5c11\u4e3b\u8fd9\u6b21\u9576\u5d4c\u4e0d\u4f1a\u6d88\u8017\u5b9d\u77f3\u54e6"

    aput-object v4, v2, v3

    const/16 v3, 0xa

    const-string v4, ""

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v5, [Ljava/lang/String;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u4f60\u7684\u5750\u9a91\uff01\u5f88\u6f02\u4eae\u5462\uff0c\u9a91\u4e0a\u8fd8\u4f1a\u8d70\u5f97\u5feb\u54df\uff5e\u5feb\u6253\u5f00\u80cc\u5305\u5316\u5f62\u5427\uff01"

    aput-object v3, v2, v5

    const-string v3, "\u73b0\u5728\u53ef\u4ee5\u5bf9\u5750\u9a91\u8fdb\u884c\u64cd\u4f5c\u4e86"

    aput-object v3, v2, v8

    const-string v3, "\u9009\u62e9\u4f7f\u7528\u5c31\u53ef\u4ee5\u5316\u5f62\u5566"

    aput-object v3, v2, v7

    const-string v3, "\u5750\u9a91\u5316\u5f62\u4e4b\u540e\u5c31\u53ef\u4ee5\u9a91\u4e58\u4e86\u54df"

    aput-object v3, v2, v6

    const-string v3, "\u5e73\u65f6\u5feb\u6377\u680f\u7684\u7b2c5\u4f4d\u53ef\u4ee5\u968f\u65f6\u4e0a\u4e0b\u5750\u9a91\u54e6"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u8ddd\u79bb\u8f83\u8fdc\u7684\u4efb\u52a1\u53ef\u4ee5\u901a\u8fc7\u201c\u4efb\u52a1\u4f20\u9001\u201d\u5feb\u901f\u5230\u8fbe\u3002"

    aput-object v3, v2, v5

    const-string v3, "\u6253\u5f00\u83dc\u5355\uff0c\u9009\u62e9\u201c\u4efb\u52a1\u660e\u7ec6\u201d\u6253\u5f00\u4efb\u52a1\u83dc\u5355\u3002"

    aput-object v3, v2, v8

    const-string v3, "\u9009\u62e9\u9700\u8981\u4f20\u9001\u7684\u4efb\u52a1\u70b9\u51fb\u4e2d\u952e\u3002"

    aput-object v3, v2, v7

    const-string v3, "\u9009\u62e9\u201c\u4efb\u52a1\u4f20\u9001\u201d\u70b9\u51fb\u4e2d\u952e\u5c31\u53ef\u4ee5\u4e86\u3002"

    aput-object v3, v2, v6

    const-string v3, "\u4f7f\u7528\u4efb\u52a1\u4f20\u9001\u4f1a\u6d88\u8017\u201c\u5f15\u8def\u77f3\u201d\uff0c\u5f15\u8def\u77f3\u6ca1\u4e86\u53ef\u4ee5\u5230\u5b9d\u7269\u5546\u5e97\u8d2d\u4e70\u3002"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u4f60\u6709\u5185\u4e39\u548c\u7075\u6db2\u4e86\uff01\u4f7f\u7528\u540e\u53ea\u8981\u8131\u79bb\u6218\u6597\u5c31\u4f1a\u56de\u6ee1\u6c14\u8840\u7684\uff01\u563f\u563f\uff0c\u5feb\u70b9\u7528\u4e0a\u5427\uff01"

    aput-object v3, v2, v5

    const-string v3, "\u5c31\u5728\u8fd9\u91cc\u9762\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u70b9\u51fb\u4f7f\u7528\u5c31\u53ef\u4ee5\u4e86"

    aput-object v3, v2, v7

    const-string v3, "\u53ef\u4ee5\u5f88\u591a\u4e2a\u4e00\u8d77\u7528\u54e6\uff0c\u6548\u679c\u4f1a\u53e0\u52a0\u7684\uff01"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u4f60\u6709\u4e00\u4e2a\u6cd5\u5b9d\u4e86\uff0c\u5728\u6218\u6597\u65f6\u5b83\u53ef\u4ee5\u5e2e\u5f88\u591a\u5fd9\u5462\uff0c\u5feb\u70b9\u5e26\u4e0a\u770b\u770b\u5427\uff01"

    aput-object v3, v2, v5

    const-string v3, "\u6cd5\u5b9d\u5728\u8fd9\u91cc\u4e86\uff0c\u5feb\u770b\u770b\u662f\u4ec0\u4e48\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u70b9\u786e\u8ba4\u5c31\u53ef\u4ee5\u6253\u5f00\u5566\uff01"

    aput-object v3, v2, v7

    const-string v3, "\u770b\u4e0a\u53bb\u5f88\u4e0d\u9519\u54e6"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u8ddd\u79bb\u8f83\u8fd1\u7684\u4efb\u52a1\u53ef\u4ee5\u901a\u8fc7\u201c\u4efb\u52a1\u5bfb\u5f84\u201d\u5230\u8fbe\u3002 "

    aput-object v3, v2, v5

    const-string v3, "\u6253\u5f00\u83dc\u5355\uff0c\u9009\u62e9\u201c\u4efb\u52a1\u660e\u7ec6\u201d\u6253\u5f00\u4efb\u52a1\u83dc\u5355\u3002"

    aput-object v3, v2, v8

    const-string v3, "\u9009\u62e9\u9700\u8981\u5bfb\u5f84\u7684\u4efb\u52a1\u70b9\u51fb\u4e2d\u952e\u3002"

    aput-object v3, v2, v7

    const-string v3, "\u9009\u62e9\u201c\u4efb\u52a1\u5bfb\u5f84\u201d\u70b9\u51fb\u4e2d\u952e\u5c31\u53ef\u4ee5\u4e86"

    aput-object v3, v2, v6

    const-string v3, "\u5bfb\u5f84\u5df2\u7ecf\u5f00\u59cb\u4e86\uff0c\u9a6c\u4e0a\u5c31\u4f1a\u5230\u8fbe\u76ee\u7684\u5730\u4e86\u3002"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c \u6253\u5f00\u6cd5\u5b9d\u5305\u540e\u8fd8\u8981\u88c5\u5907\u4e0a\u624d\u80fd\u4f7f\u7528\u54df\uff5e"

    aput-object v3, v2, v5

    const-string v3, "\u9996\u5148\u8981\u6253\u5f00\u5305\u5305"

    aput-object v3, v2, v8

    const-string v3, "\u6253\u5f00\u6cd5\u5b9d\u754c\u9762\uff0c\u6cd5\u5b9d\u5c31\u5728\u91cc\u9762\uff01"

    aput-object v3, v2, v7

    const-string v3, "\u9009\u62e9\u4f7f\u7528\u5c31\u53ef\u4ee5\u88c5\u5907\u4e0a\u5566\uff01"

    aput-object v3, v2, v6

    const-string v3, "\u6cd5\u5b9d\u4ee5\u540e\u4f1a\u4e00\u76f4\u8ddf\u7740\u4f60\uff0c\u5e2e\u52a9\u4f60\u6218\u6597\u54e6~"

    aput-object v3, v2, v9

    const/4 v3, 0x5

    const-string v4, "\u592a\u597d\u4e86\uff0c\u5c11\u4e3b\u4ee5\u540e\u4f1a\u53d8\u5f97\u8d8a\u6765\u8d8a\u5389\u5bb3\u7684\uff01"

    aput-object v4, v2, v3

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v9, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u884c\u8d70\u6c5f\u6e56\u6ca1\u94b1\u662f\u4e0d\u884c\u7684\uff0c\u5728\u8fd9\u91cc\u8d62\u4e86\u53ef\u4ee5\u83b7\u5f97\u5143\u5b9d\u54e6\uff0c\u8fd8\u53ef\u4ee5\u62fe\u53d6\u79d8\u5b9d\uff0c\u79d8\u5b9d\u53ef\u4ee5\u63d0\u5347\u5c11\u4e3b\u7684\u5b9e\u529b\uff0c\u5e2e\u52a9\u5c11\u4e3b\u6a2a\u626b\u5929\u4e0b"

    aput-object v3, v2, v5

    const-string v3, "\u5de6\u952e\u6253\u5f00\u83dc\u5355\uff0c\u63098\u952e\u9009\u62e9\u201c\u80cc\u5305\u7269\u54c1\u201d\u6253\u5f00\u80cc\u5305\u83dc\u5355\u3002"

    aput-object v3, v2, v8

    const-string v3, "\u63095\u952e\u9009\u62e9\u201c\u795e\u62f3\u9053\u201d\u5c31\u8fdb\u5165\u795e\u62f3\u9053\u754c\u9762\u5566~"

    aput-object v3, v2, v7

    const-string v3, "\u6bcf\u5929\u6709\u4e09\u6b21\u514d\u8d39\u7684\u731c\u62f3\u6b21\u6570\uff0c\u4ee5\u540e\u6bcf\u6b21\u731c\u62f3\u8981\u6d88\u80172\u5143\u5b9d\uff0c\u8d62\u4e86\u4e0d\u4f46\u67093\u5143\u5b9d\uff0c\u8fd8\u53ef\u4ee5\u62fe\u53d6\u4e00\u6b21\u79d8\u5b9d\u54e6\u3002"

    aput-object v3, v2, v6

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const/4 v2, 0x5

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u5c11\u4e3b\uff0c\u70bc\u6c14\u7684\u57fa\u7840\u662f\u70bc\u4f53\uff01\u4f60\u7684\u52aa\u529b\u5df2\u7ecf\u5f00\u542f\u4e86\u6210\u4ed9\u7684\u7b2c\u4e00\u6b65\uff1a\u201c\u70bc\u4f53\u201d\uff0c\u6bcf\u6b21\u4fee\u70bc\u90fd\u80fd\u4f7f\u662f\u4f60\u7684\u5883\u754c\u63d0\u5347\u54e6\u3002\u603b\u6709\u4e00\u5929\u4f60\u4f1a\u6210\u4e3a\u4e00\u4ee3\u4ed9\u541b\u7684\uff01"

    aput-object v3, v2, v5

    const-string v3, "\u70b9\u51fb\u786e\u5b9a\u53ef\u4ee5\u770b\u5230\u5883\u754c\u9009\u9879\u5566\uff01"

    aput-object v3, v2, v8

    const-string v3, "\u70b9\u51fb\u786e\u5b9a\u5c31\u53ef\u4ee5\u770b\u5230\u5883\u754c\u754c\u9762\u4e86"

    aput-object v3, v2, v7

    const-string v3, "\u70b9\u51fb\u786e\u5b9a\u5c31\u53ef\u4ee5\u4fee\u70bc\u4e86"

    aput-object v3, v2, v6

    const-string v3, "\u6bcf\u6b21\u4fee\u70bc\u662f\u609f\u9053\u7684\u8fc7\u7a0b\uff0c\u609f\u9053\u9700\u8981\u65f6\u95f4\u7684\uff0c\u4fee\u70bc\u7ed3\u675f\u540e\uff0c\u5c11\u4e3b\u7684\u5f53\u524d\u5883\u754c\u4f1a\u63d0\u5347\uff0c\u5f53\u7136\u60a8\u4e5f\u53ef\u4ee5\u7acb\u523b\u63d0\u5347\u54e6\uff0c\u4e0d\u8fc7\u63d0\u5347\u65f6\u9700\u8981\u6d88\u8017\u5143\u5b9d\u7684\u3002"

    aput-object v3, v2, v9

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/t4game/TianTian;->animationStr:[[Ljava/lang/String;

    iget v0, p0, Lcom/t4game/TianTian;->box_y:I

    iput v0, p0, Lcom/t4game/TianTian;->top:I

    const-string v0, "\u786e\u5b9a\u9000\u51fa\u6f14\u793a\u52a8\u753b\u5417\uff1f"

    iput-object v0, p0, Lcom/t4game/TianTian;->exit:Ljava/lang/String;

    iput-boolean v5, p0, Lcom/t4game/TianTian;->backAnimation:Z

    iput-boolean v5, p0, Lcom/t4game/TianTian;->DoNothingAboutKey:Z

    iput-boolean v5, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    iput-boolean v5, p0, Lcom/t4game/TianTian;->zidingyi:Z

    iput-boolean v5, p0, Lcom/t4game/TianTian;->key1:Z

    iput-object p1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-direct {p0}, Lcom/t4game/TianTian;->getTianImg()V

    return-void
.end method

.method private bengzi()V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Lcom/t4game/TianTian;->initBengZi(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private disAppear()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    return-void
.end method

.method private doAfterTalk()V
    .locals 5

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    iget-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goMisc()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setLableAndGrid(I)V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goTianFu()V

    :cond_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goGaoMi()V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goSkillPage()V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goDailyLottery()V

    goto :goto_0

    :pswitch_3
    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->npcGuideType:B

    iget-short v2, p0, Lcom/t4game/TianTian;->scendId:S

    iget v3, p0, Lcom/t4game/TianTian;->npcId:I

    iget v4, p0, Lcom/t4game/TianTian;->questId:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/t4game/GameScreen;->goNpcGuide(BSII)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private doAnimation()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    :cond_0
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameScreen;->setState(BZ)V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_3

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xa

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GameScreen;->setState(BZ)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_4

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3, v3, v5}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goTianFu()V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_5

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v3, v1}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_5
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_6

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_6
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_7

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goPack()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameScreen;->goZhuangBei2(BI)V

    :cond_7
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_8

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_8
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_9

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_9
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto :goto_0

    :pswitch_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_a

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3, v3, v5}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_a
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_b

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    :cond_b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goZiDingYi()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    goto/16 :goto_0

    :pswitch_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_c

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x8

    invoke-virtual {v0, v3, v3, v1}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    const/16 v0, 0x64

    iput v0, p0, Lcom/t4game/TianTian;->top:I

    :cond_c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_d

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x78

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/TianTian;->top:I

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    :cond_d
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_5
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_e

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->choicedFunctionNPCId:I

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->sendGetNpcMissionListMessage(I)Z

    :cond_e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-eq v0, v4, :cond_f

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-eq v0, v5, :cond_f

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-eq v0, v6, :cond_f

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-eq v0, v7, :cond_f

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_f
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_10

    iput-boolean v3, p0, Lcom/t4game/TianTian;->buYaoXiaoHaoWuPin:Z

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_10
    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_6
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_11

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->choicedFunctionNPCId:I

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->sendGetNpcMissionListMessage(I)Z

    :cond_11
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_12

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_12
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_13

    iput-boolean v3, p0, Lcom/t4game/TianTian;->buYaoXiaoHaoWuPin:Z

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_13
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto/16 :goto_0

    :pswitch_7
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_14

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_14
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_15

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_15
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_16

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_16
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_17

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_17
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_18

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_18
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_19

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_19
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1a

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_1a
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/16 v1, 0x8

    if-ne v0, v1, :cond_1b

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_1b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/16 v1, 0x9

    if-ne v0, v1, :cond_1c

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_1c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/16 v1, 0xa

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->tiantianXiangQian()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0xc

    iput-byte v1, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto/16 :goto_0

    :pswitch_8
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_1d

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-virtual {v0, v3, v1, v2}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_1d
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_1e

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_1e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_1f

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_1f
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_20

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->ifexistgood()Z

    move-result v0

    if-eqz v0, :cond_23

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_20
    :goto_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_21

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_21
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_22

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    :cond_22
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iput-boolean v3, p0, Lcom/t4game/TianTian;->buYaoXiaoHaoWuPin:Z

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->disAppear()V

    goto/16 :goto_0

    :cond_23
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const-string v1, "\u8be5\u4f4d\u7f6e\u6ca1\u6709\u7269\u54c1"

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto :goto_1

    :pswitch_9
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_24

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goMisc()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setLableAndGrid(I)V

    :cond_24
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_25

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_25
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_26

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_26
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_a
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_27

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3, v3, v6}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_27
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_28

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    :cond_28
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_29

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goTaskTransmittal()V

    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    sget-byte v1, Lcom/t4game/GameScreen;->focusOfDialog:B

    if-ge v0, v1, :cond_29

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->doDownKey()V

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_2

    :cond_29
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_2a

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_2a
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_2b

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goMisc()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setLableAndGrid(I)V

    :cond_2b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_2c

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_2c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_2d

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_2d
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_2e

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goMisc()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setLableAndGrid(I)V

    :cond_2e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_2f

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_2f
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_30

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_30
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_d
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_31

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v3, v3, v6}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_31
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_32

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    :cond_32
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_33

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_33
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_34

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_34
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_35

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v3, v1}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_35
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_36

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    :cond_36
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_37

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setFabaoIndex(I)V

    :cond_37
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_38

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_38
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_39

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_39
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    goto/16 :goto_0

    :pswitch_f
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_3a

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v3, v1}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_3a
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_3b

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v6}, Lcom/t4game/GameScreen;->goMenu2lv(I)V

    :cond_3b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_3c

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    :cond_3c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_10
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_3d

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/4 v1, 0x7

    invoke-virtual {v0, v3, v3, v1}, Lcom/t4game/GameScreen;->goMenu(ZBI)V

    :cond_3d
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_3e

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0, v7}, Lcom/t4game/GameScreen;->doLeftSoft2(I)V

    :cond_3e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_3f

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doLeftSoft()V

    :cond_3f
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_40

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doLeftSoft()V

    :cond_40
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v7, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_8
        :pswitch_6
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method

.method private doneUp([Ljava/lang/String;I)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p2, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    if-ge v0, p2, :cond_2

    iget-object v1, p0, Lcom/t4game/TianTian;->bengziIndex:[I

    aget v1, v1, v0

    aget-object v2, p1, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-eq v1, v2, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method private drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 2

    const-string v0, "\u786e\u5b9a"

    const-string v1, "\u8fd4\u56de"

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    iget v0, p0, Lcom/t4game/TianTian;->box_x:I

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    add-int v7, v0, v1

    iget v0, p0, Lcom/t4game/TianTian;->box_y:I

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    add-int v8, v0, v1

    iget v0, p0, Lcom/t4game/TianTian;->text_w:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p2, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    const/16 v1, 0x55

    if-le v0, v1, :cond_0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int v1, v0, v1

    const/16 v2, 0x55

    if-ge v1, v2, :cond_0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    :cond_0
    iget v0, p0, Lcom/t4game/TianTian;->box_x:I

    iget v1, p0, Lcom/t4game/TianTian;->box_y:I

    iget v2, p0, Lcom/t4game/TianTian;->box_w:I

    iget v3, p0, Lcom/t4game/TianTian;->box_h:I

    const/4 v4, 0x0

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    array-length v0, v9

    if-ge v10, v0, :cond_2

    aget-object v0, v9, v10

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/TianTian;->bengziIndex:[I

    aget v2, v2, v10

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v10

    add-int v2, v8, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    const v5, 0xffffff

    move v1, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    invoke-direct {p0, v9, v10}, Lcom/t4game/TianTian;->doneUp([Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->bengziIndex:[I

    aget v0, v0, v10

    aget-object v1, v9, v10

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->bengziIndex:[I

    aget v1, v0, v10

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v10

    :cond_1
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/TianTian;->box_x:I

    iget v1, p0, Lcom/t4game/TianTian;->box_w:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->gap:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->img_w:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/TianTian;->box_y:I

    iget v2, p0, Lcom/t4game/TianTian;->box_h:I

    iget v3, p0, Lcom/t4game/TianTian;->img_h:I

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    invoke-direct {p0}, Lcom/t4game/TianTian;->ifNewTianImg()Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/t4game/TianTian;->tianImgData:Lcom/t4game/GImageData;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/t4game/TianTian;->tianImgData:Lcom/t4game/GImageData;

    iget-object v2, v2, Lcom/t4game/GImageData;->img:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v2, p0, Lcom/t4game/TianTian;->tianImg:Ljavax/microedition/lcdui/Image;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/t4game/TianTian;->tianImg:Ljavax/microedition/lcdui/Image;

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_1
.end method

.method private getHoleColor()I
    .locals 4

    const/4 v1, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->job:B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->job:B

    if-ne v0, v3, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->job:B

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->job:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    move v0, v3

    goto :goto_0

    :cond_3
    move v0, v2

    goto :goto_0
.end method

.method private getTianImg()V
    .locals 3

    invoke-direct {p0}, Lcom/t4game/TianTian;->ifNewTianImg()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/t4game/TianTian;->tianImg:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    :try_start_0
    const-string v0, "/tt.png"

    invoke-static {v0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/TianTian;->tianImg:Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :cond_1
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-short v1, v1, Lcom/t4game/GameWorld;->tianImgId:S

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/TianTian;->tianImgData:Lcom/t4game/GImageData;

    goto :goto_0
.end method

.method private ifNewTianImg()Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-short v0, v0, Lcom/t4game/GameWorld;->tianImgId:S

    const/16 v1, 0x1bff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initBengZi(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/t4game/TianTian;->text_w:I

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p1, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/TianTian;->bengziIndex:[I

    return-void
.end method

.method private keyTalk(I)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x3

    const/4 v3, -0x5

    const/4 v2, -0x6

    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_2

    if-eq p1, v3, :cond_0

    if-ne p1, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_4

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doKey1()V

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    if-eq p1, v3, :cond_3

    if-ne p1, v2, :cond_4

    :cond_3
    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doLeftSoft()V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_5

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v0, 0x8

    if-ne p1, v0, :cond_5

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doKey1()V

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    goto :goto_0

    :cond_5
    if-eq p1, v3, :cond_6

    if-ne p1, v2, :cond_7

    :cond_6
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-ne v0, v6, :cond_a

    invoke-direct {p0}, Lcom/t4game/TianTian;->doAnimation()V

    :cond_7
    :goto_1
    const/4 v0, -0x7

    if-ne p1, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-ne v0, v6, :cond_d

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v5

    if-ne v0, v1, :cond_8

    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    :cond_8
    :goto_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-ne v0, v6, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    if-ne v0, v5, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v4, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->getDialogIndex3()B

    move-result v0

    if-ne v0, v5, :cond_9

    const/4 v0, -0x3

    if-ne p1, v0, :cond_9

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doLeftKey()V

    :cond_9
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->getDialogIndex3()B

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doRightKey()V

    goto/16 :goto_0

    :cond_a
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v1, -0x1

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendVIPActivation(BB)Z

    goto :goto_1

    :cond_b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_c

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    :cond_c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_7

    invoke-direct {p0}, Lcom/t4game/TianTian;->doAfterTalk()V

    goto :goto_1

    :cond_d
    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    goto :goto_2
.end method

.method private lockKey()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/TianTian;->DoNothingAboutKey:Z

    return-void
.end method

.method private paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 19

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->box_x:I

    move v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v6, v0

    add-int/2addr v5, v6

    sget v6, Lcom/t4game/Defaults;->CANVAS_W:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v7, v0

    add-int/2addr v7, v5

    shl-int/lit8 v7, v7, 0x1

    sub-int/2addr v6, v7

    sget-object v7, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p2

    move v1, v6

    move-object v2, v7

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v16

    const/16 v17, 0x1e

    move-object/from16 v0, v16

    array-length v0, v0

    move v6, v0

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v7, v0

    mul-int/lit8 v7, v7, 0x3

    add-int/2addr v6, v7

    add-int v8, v6, v17

    sget v6, Lcom/t4game/Defaults;->CANVAS_HH:I

    shr-int/lit8 v7, v8, 0x1

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->box_w:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v9, v0

    shl-int/lit8 v9, v9, 0x1

    sub-int/2addr v7, v9

    const/4 v9, 0x0

    move-object/from16 v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v9, 0x0

    move/from16 v18, v9

    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move v9, v0

    move/from16 v0, v18

    move v1, v9

    if-ge v0, v1, :cond_0

    aget-object v9, v16, v18

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v10, v0

    add-int/2addr v10, v5

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v11, v0

    add-int/2addr v11, v6

    sget v12, Lcom/t4game/Defaults;->sfh:I

    mul-int v12, v12, v18

    add-int/2addr v11, v12

    sget v12, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v13, -0x1

    const v14, 0xffffff

    move-object/from16 v15, p1

    invoke-static/range {v9 .. v15}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v9, v18, 0x1

    move/from16 v18, v9

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p4, :cond_2

    const/16 v12, 0x64

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v9, v0

    add-int/2addr v9, v5

    add-int/2addr v9, v12

    add-int/2addr v5, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v7, v0

    sub-int/2addr v5, v7

    sub-int v13, v5, v12

    add-int v5, v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v6, v0

    sub-int/2addr v5, v6

    sub-int v14, v5, v17

    shr-int/lit8 v5, v12, 0x1

    add-int/lit8 v6, v9, 0x32

    shr-int/lit8 v5, v12, 0x1

    add-int/lit8 v15, v13, 0x32

    sget v5, Lcom/t4game/Defaults;->sfh:I

    sub-int v5, v17, v5

    shr-int/lit8 v5, v5, 0x1

    add-int v7, v14, v5

    move v0, v9

    move v1, v14

    move v2, v12

    move/from16 v3, v17

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v9, 0x300506

    const v10, 0xffd100

    move-object/from16 v5, p3

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    move v0, v13

    move v1, v14

    move v2, v12

    move/from16 v3, v17

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v9, 0x300506

    const v10, 0xffd100

    move-object/from16 v5, p4

    move v6, v15

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez p3, :cond_3

    if-eqz p4, :cond_1

    :cond_3
    const/16 v5, 0x78

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->box_x:I

    move v7, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->box_w:I

    move v9, v0

    sub-int/2addr v9, v5

    shr-int/lit8 v9, v9, 0x1

    add-int/2addr v9, v7

    add-int/2addr v6, v8

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TianTian;->gap:I

    move v7, v0

    sub-int/2addr v6, v7

    sub-int v8, v6, v17

    shr-int/lit8 v6, v5, 0x1

    add-int/lit8 v6, v9, 0x3c

    sget v7, Lcom/t4game/Defaults;->sfh:I

    sub-int v7, v17, v7

    shr-int/lit8 v7, v7, 0x1

    add-int/2addr v7, v8

    move v0, v9

    move v1, v8

    move v2, v5

    move/from16 v3, v17

    move-object/from16 v4, p1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/t4game/DraftingUtil;->paintCommandBack(IIIILjavax/microedition/lcdui/Graphics;)V

    if-nez p4, :cond_4

    move-object/from16 v5, p3

    :goto_2
    sget v8, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const v9, 0x300506

    const v10, 0xffd100

    move-object/from16 v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_4
    move-object/from16 v5, p4

    goto :goto_2
.end method

.method private pointerTalk()V
    .locals 0

    return-void
.end method


# virtual methods
.method public appearAgain()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    return-void
.end method

.method public buYaoXiaoHaoWuPin()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/TianTian;->buYaoXiaoHaoWuPin:Z

    return v0
.end method

.method public close()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/TianTian;->talkDone:Z

    iput-boolean v0, p0, Lcom/t4game/TianTian;->actionDone:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/TianTian;->start:Z

    sget v0, Lcom/t4game/TianTian;->next_task_id:I

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v0, v0, Lcom/t4game/GameWorld;->choicedFunctionNPCId:I

    sget v1, Lcom/t4game/TianTian;->next_task_id:I

    invoke-virtual {p0, v0, v1}, Lcom/t4game/TianTian;->touchOffNextTaskDetail(II)V

    const/4 v0, -0x1

    sput v0, Lcom/t4game/TianTian;->next_task_id:I

    :cond_0
    return-void
.end method

.method public doSth()Z
    .locals 2

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-string v4, "\u786e\u5b9a"

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/TianTian;->backAnimation:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/TianTian;->exit:Ljava/lang/String;

    const-string v1, "\u786e\u5b9a"

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    :cond_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    if-ne v0, v2, :cond_5

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    const-string v1, "\u786e\u5b9a"

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_6

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-nez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    const-string v1, "\u786e\u5b9a"

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_6
    :goto_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    goto :goto_0

    :cond_7
    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-eq v0, v2, :cond_a

    :cond_9
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_b

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v2, :cond_b

    :cond_a
    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    goto :goto_1

    :cond_b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    if-ge v0, v1, :cond_c

    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    const-string v1, "\u786e\u5b9a"

    invoke-direct {p0, p1, v0, v4, v3}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_c
    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->dialogIndex:B

    aget-object v0, v0, v1

    invoke-direct {p0, p1, v0}, Lcom/t4game/TianTian;->drawTian(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getActionType()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    return v0
.end method

.method public getAnimationType()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    return v0
.end method

.method public ifStart()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->tiantianCanAppear()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->timeCount:B

    const/4 v1, 0x5

    if-ge v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/TianTian;->timeCount:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->timeCount:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0}, Lcom/t4game/GameWorld;->stopUserMove()V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/TianTian;->start:Z

    goto :goto_0
.end method

.method public indicateDone()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/TianTian;->actionDone:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/TianTian;->talkDone:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public keyEvent(I)V
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/TianTian;->DoNothingAboutKey:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/TianTian;->backAnimation:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x5

    if-eq p1, v0, :cond_2

    const/4 v0, -0x6

    if-ne p1, v0, :cond_3

    :cond_2
    invoke-virtual {p0}, Lcom/t4game/TianTian;->close()V

    :cond_3
    const/4 v0, -0x7

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/TianTian;->backAnimation:Z

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, p1}, Lcom/t4game/TianTian;->keyTalk(I)V

    goto :goto_0

    :pswitch_1
    invoke-direct {p0, p1}, Lcom/t4game/TianTian;->keyTalk(I)V

    goto :goto_0

    :pswitch_2
    invoke-direct {p0, p1}, Lcom/t4game/TianTian;->keyTalk(I)V

    goto :goto_0

    :pswitch_3
    invoke-direct {p0, p1}, Lcom/t4game/TianTian;->keyTalk(I)V

    goto :goto_0

    :pswitch_4
    invoke-direct {p0, p1}, Lcom/t4game/TianTian;->keyTalk(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public keyLock()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/TianTian;->DoNothingAboutKey:Z

    return v0
.end method

.method public pointerEvent()V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {p0}, Lcom/t4game/TianTian;->pointerTalk()V

    goto :goto_0

    :pswitch_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/16 v1, 0xb

    if-ne v0, v1, :cond_1

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_1

    iget-boolean v0, p0, Lcom/t4game/TianTian;->key1:Z

    if-nez v0, :cond_1

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    iget-object v2, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    invoke-static {v0, v1, v2}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doKey1()V

    iput-boolean v3, p0, Lcom/t4game/TianTian;->key1:Z

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    :cond_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/t4game/TianTian;->key1:Z

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/PointerUtil;->s_iPointerReleasedX:I

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    iget-object v2, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->tiantianPointerRect:[I

    invoke-static {v0, v1, v2}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doKey1()V

    iput-boolean v3, p0, Lcom/t4game/TianTian;->key1:Z

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    invoke-direct {p0}, Lcom/t4game/TianTian;->bengzi()V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public processCommand(Lcom/t4game/IoBuffer;)V
    .locals 5

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/TianTian;->functionId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/TianTian;->needBack:Z

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    if-eqz v0, :cond_0

    move v1, v4

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->openType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->actionGridId:B

    :cond_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->npcGuideType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/TianTian;->scendId:S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/TianTian;->npcId:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/TianTian;->questId:I

    :cond_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/TianTian;->actionGridId:B

    iget-object v0, p0, Lcom/t4game/TianTian;->animationStr:[[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/TianTian;->animationType:B

    aget-object v0, v0, v1

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    move v0, v4

    :goto_1
    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/TianTian;->animationStr:[[Ljava/lang/String;

    iget-byte v3, p0, Lcom/t4game/TianTian;->animationType:B

    aget-object v2, v2, v3

    aget-object v2, v2, v0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/TianTian;->dialog:[Ljava/lang/String;

    aget-object v0, v0, v4

    invoke-direct {p0, v0}, Lcom/t4game/TianTian;->initBengZi(Ljava/lang/String;)V

    iput-byte v4, p0, Lcom/t4game/TianTian;->dialogIndex:B

    iput-boolean v4, p0, Lcom/t4game/TianTian;->talkDone:Z

    iput-boolean v4, p0, Lcom/t4game/TianTian;->actionDone:Z

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    return-void
.end method

.method public releaseKeyLock()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/TianTian;->DoNothingAboutKey:Z

    return-void
.end method

.method public releaseTianTian()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/TianTian;->ifNewTianImg()Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/t4game/TianTian;->tianImgData:Lcom/t4game/GImageData;

    :goto_0
    return-void

    :cond_0
    iput-object v1, p0, Lcom/t4game/TianTian;->tianImg:Ljavax/microedition/lcdui/Image;

    goto :goto_0
.end method

.method public selectWhichInNpcFunction(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->npcFunctionList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->npcFunctionList:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    sget-byte v2, Lcom/t4game/GameScreen;->focusOfDialog:B

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/NpcQuest;

    iget-object v0, v0, Lcom/t4game/NpcQuest;->name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    sget-byte v0, Lcom/t4game/GameScreen;->focusOfDialog:B

    if-ge v0, v1, :cond_0

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->npcFunctionList:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    sget-byte v2, Lcom/t4game/GameScreen;->focusOfDialog:B

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/NpcQuest;

    iget-object v0, v0, Lcom/t4game/NpcQuest;->name:Ljava/lang/String;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public start()Z
    .locals 1

    sget-boolean v0, Lcom/t4game/TianTian;->start:Z

    return v0
.end method

.method public tick()V
    .locals 7

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x3

    const/4 v2, 0x2

    sget-boolean v0, Lcom/t4game/TianTian;->start:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/t4game/TianTian;->ifStart()V

    :cond_0
    :goto_0
    :pswitch_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->actionType:B

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_3

    move v0, v4

    :goto_1
    if-ge v0, v2, :cond_2

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->doRightKey()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    if-ne v0, v5, :cond_4

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_4

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0x11

    if-ne v0, v1, :cond_4

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    const-string v0, "\u88c5\u5907\u6253\u9020"

    invoke-virtual {p0, v0}, Lcom/t4game/TianTian;->selectWhichInNpcFunction(Ljava/lang/String;)V

    :cond_4
    :goto_2
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v3, :cond_6

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v5, :cond_5

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->State:B

    const/16 v1, 0x11

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    const-string v0, "\u88c5\u5907\u5f3a\u5316"

    invoke-virtual {p0, v0}, Lcom/t4game/TianTian;->selectWhichInNpcFunction(Ljava/lang/String;)V

    :cond_5
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->State:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, 0x35

    if-ne v0, v1, :cond_6

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goWuQi()V

    :cond_6
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_10

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_7

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->State:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    if-ne v0, v3, :cond_7

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-byte v0, p0, Lcom/t4game/TianTian;->actionGridId:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goWuQi()V

    :cond_7
    :goto_3
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_b

    move v0, v4

    :goto_4
    if-ge v0, v5, :cond_a

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->doDownKey()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_8
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_4

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-short v0, v0, Lcom/t4game/GameScreen;->focusOfList:S

    if-eq v0, v2, :cond_4

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    goto/16 :goto_2

    :cond_9
    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, p0, Lcom/t4game/TianTian;->actionGridId:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameScreen;->goZhuangBei2(BI)V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->releaseKeyLock()V

    goto :goto_3

    :cond_a
    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_b
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_c

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    const/16 v1, 0xc

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doActOk()V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_c
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_e

    move v0, v4

    :goto_5
    invoke-direct {p0}, Lcom/t4game/TianTian;->getHoleColor()I

    move-result v1

    if-ge v0, v1, :cond_d

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->doDownKey()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    :cond_d
    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_e
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/16 v1, 0x9

    if-ne v0, v1, :cond_10

    move v0, v4

    :goto_6
    if-ge v0, v2, :cond_f

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v1}, Lcom/t4game/GameScreen;->doDownKey()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    :cond_f
    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_10
    iget-byte v0, p0, Lcom/t4game/TianTian;->animationType:B

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    if-ne v0, v2, :cond_0

    iget-boolean v0, p0, Lcom/t4game/TianTian;->disAppearForAMoment:Z

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v2, :cond_11

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iput-byte v4, v0, Lcom/t4game/UI_Menu;->index:B

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_11
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v3, :cond_12

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->State:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_12

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v1, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    if-ne v0, v3, :cond_12

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->goWuQi()V

    :cond_12
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_13

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_13
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    if-ne v0, v6, :cond_14

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_14
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_15

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-short v0, v0, Lcom/t4game/GameScreen;->focusOfList:S

    if-eq v0, v2, :cond_15

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    invoke-direct {p0}, Lcom/t4game/TianTian;->lockKey()V

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->doDownKey()V

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    :cond_15
    iget-byte v0, p0, Lcom/t4game/TianTian;->dialogIndex:B

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->viewStateOfDialog:B

    if-ne v0, v6, :cond_0

    invoke-virtual {p0}, Lcom/t4game/TianTian;->appearAgain()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public touchOffNextTaskDetail(II)V
    .locals 1

    if-lez p1, :cond_0

    if-lez p2, :cond_0

    iget-object v0, p0, Lcom/t4game/TianTian;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p1, p2}, Lcom/t4game/GameWorld;->sendGetNpcMissionDesMessage(II)Z

    const/4 v0, -0x1

    sput v0, Lcom/t4game/TianTian;->next_task_id:I

    :cond_0
    return-void
.end method
