.class public Lcom/t4game/Pack;
.super Ljava/lang/Object;


# static fields
.field public static NOMALATTACKID:S = 0x0s

.field public static final NULLSKILL:S = -0x64s


# instance fields
.field public FaBaoBlackNum:B

.field public FaBaoNum:B

.field public FabaoBlack:[Lcom/t4game/FaBao;

.field final actNum:B

.field public acttion:[B

.field public acttionIconId:[S

.field public acttionName:[Ljava/lang/String;

.field currrentDrugNum:B

.field currrentMaterialNum:B

.field currrentMiscNum:B

.field currrentOutfitNum:B

.field currrentQuestNum:B

.field currrentRoleMaterialNum:B

.field public drugBagBlock:[Lcom/t4game/RoleDrug;

.field public materialBagBlock:[Lcom/t4game/RoleMaterial;

.field maxDrugNum:B

.field maxMaterialNum:B

.field maxMiscNum:B

.field maxOutfitNum:B

.field maxQuestNum:B

.field public maxSkillNum:B

.field public miscBagBlock:[Lcom/t4game/RoleMisc;

.field public oneLineNum:B

.field public outFitBagBlock:[Lcom/t4game/RoleOutfit;

.field public questBagBlock:[Lcom/t4game/RoleQuestGood;

.field public skill:[S

.field public totalNumForDrug:Ljava/util/Hashtable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-short v0, Lcom/t4game/Pack;->NOMALATTACKID:S

    return-void
.end method

.method public constructor <init>()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x3

    const/16 v5, 0x15

    const/16 v4, 0x14

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x3c

    iput-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/t4game/Pack;->maxDrugNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    iput-byte v4, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    iput-byte v4, p0, Lcom/t4game/Pack;->maxQuestNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    iput-byte v4, p0, Lcom/t4game/Pack;->maxMiscNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    iput-byte v3, p0, Lcom/t4game/Pack;->currrentRoleMaterialNum:B

    iput-byte v5, p0, Lcom/t4game/Pack;->actNum:B

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u4efb\u52a1"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "\u5927\u5730\u56fe"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "npc\u5bfc\u822a"

    aput-object v2, v0, v1

    const-string v1, "\u5411\u4e0a\u79fb\u52a8"

    aput-object v1, v0, v6

    const/4 v1, 0x4

    const-string v2, "\u5411\u4e0b\u79fb\u52a8"

    aput-object v2, v0, v1

    const-string v1, "\u5411\u5de6\u79fb\u52a8"

    aput-object v1, v0, v7

    const/4 v1, 0x6

    const-string v2, "\u5411\u53f3\u79fb\u52a8"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u81ea\u52a8\u884c\u8d70"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u4eba\u7269\u5c5e\u6027"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u88c5\u5907"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u5b9d\u7269"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u6cd5\u5b9d"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "\u961f\u4f0d"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "\u90ae\u4ef6"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "\u961f\u53cb\u5207\u6362"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "\u6cbb\u7597\u5207\u6362"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string v2, "\u81ea\u52a8\u6302\u673a"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string v2, "\u81ea\u52a8\u4e0a\u5750\u9a91"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "\u751f\u547d\u836f\u5242"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string v2, "\u6cd5\u529b\u836f\u5242"

    aput-object v2, v0, v1

    const-string v1, "\u5316\u795e"

    aput-object v1, v0, v4

    iput-object v0, p0, Lcom/t4game/Pack;->acttionName:[Ljava/lang/String;

    sget-object v0, Lcom/t4game/CommonConstants;->IMAGE_FUNCTION_ICONLIST:[S

    iput-object v0, p0, Lcom/t4game/Pack;->acttionIconId:[S

    iget-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    new-array v0, v0, [Lcom/t4game/RoleOutfit;

    iput-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    iget-byte v0, p0, Lcom/t4game/Pack;->maxDrugNum:B

    new-array v0, v0, [Lcom/t4game/RoleDrug;

    iput-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/Pack;->totalNumForDrug:Ljava/util/Hashtable;

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    new-array v0, v0, [Lcom/t4game/RoleMaterial;

    iput-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    iget-byte v0, p0, Lcom/t4game/Pack;->maxQuestNum:B

    new-array v0, v0, [Lcom/t4game/RoleQuestGood;

    iput-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMiscNum:B

    new-array v0, v0, [Lcom/t4game/RoleMisc;

    iput-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    const/16 v0, 0x12

    iput-byte v0, p0, Lcom/t4game/Pack;->maxSkillNum:B

    iput-byte v7, p0, Lcom/t4game/Pack;->oneLineNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxSkillNum:B

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/Pack;->skill:[S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    iput-byte v3, p0, Lcom/t4game/Pack;->FaBaoNum:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/Pack;->FaBaoBlackNum:B

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagDrug()V

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagMaterial()V

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagQuest()V

    invoke-virtual {p0}, Lcom/t4game/Pack;->initSkill()V

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagMisc()V

    invoke-virtual {p0, v6}, Lcom/t4game/Pack;->initFabao(B)V

    new-array v0, v5, [B

    iput-object v0, p0, Lcom/t4game/Pack;->acttion:[B

    return-void
.end method

.method private newRoleGoods(Lcom/t4game/RoleGoods;Lcom/t4game/RoleGoods;)V
    .locals 1

    iget v0, p2, Lcom/t4game/RoleGoods;->id:I

    iput v0, p1, Lcom/t4game/RoleGoods;->id:I

    iget-short v0, p2, Lcom/t4game/RoleGoods;->iconId:S

    iput-short v0, p1, Lcom/t4game/RoleGoods;->iconId:S

    iget-byte v0, p2, Lcom/t4game/RoleGoods;->type:B

    iput-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    iget-byte v0, p2, Lcom/t4game/RoleGoods;->color:B

    iput-byte v0, p1, Lcom/t4game/RoleGoods;->color:B

    iget-short v0, p2, Lcom/t4game/RoleGoods;->limitUseLevel:S

    iput-short v0, p1, Lcom/t4game/RoleGoods;->limitUseLevel:S

    iget-boolean v0, p2, Lcom/t4game/RoleGoods;->binded:Z

    iput-boolean v0, p1, Lcom/t4game/RoleGoods;->binded:Z

    iget-object v0, p2, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iput-object v0, p1, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iget-short v0, p2, Lcom/t4game/RoleGoods;->num:S

    iput-short v0, p1, Lcom/t4game/RoleGoods;->num:S

    iget-boolean v0, p2, Lcom/t4game/RoleGoods;->jobCanUse:Z

    iput-boolean v0, p1, Lcom/t4game/RoleGoods;->jobCanUse:Z

    iget-boolean v0, p2, Lcom/t4game/RoleGoods;->miscCanUse:Z

    iput-boolean v0, p1, Lcom/t4game/RoleGoods;->miscCanUse:Z

    return-void
.end method


# virtual methods
.method public addBagBlockNum(BI)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    if-nez p1, :cond_2

    iget-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    new-array v0, v0, [Lcom/t4game/RoleOutfit;

    move v1, v3

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v1, v2, :cond_0

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    iget-object v2, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/4 v0, 0x1

    if-ne p1, v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/Pack;->maxDrugNum:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->maxDrugNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxDrugNum:B

    new-array v0, v0, [Lcom/t4game/RoleDrug;

    move v1, v3

    :goto_2
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_3

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    iget-object v1, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    goto :goto_1

    :cond_4
    const/4 v0, 0x2

    if-ne p1, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    new-array v0, v0, [Lcom/t4game/RoleMaterial;

    move v1, v3

    :goto_3
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    if-ge v1, v2, :cond_5

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    iget-object v1, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    iget-object v2, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    goto :goto_1

    :cond_6
    const/4 v0, 0x4

    if-ne p1, v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMiscNum:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->maxMiscNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxMiscNum:B

    new-array v0, v0, [Lcom/t4game/RoleMisc;

    move v1, v3

    :goto_4
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v1, v2, :cond_7

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_7
    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    goto :goto_1

    :cond_8
    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/Pack;->maxQuestNum:B

    add-int/2addr v0, p2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->maxQuestNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxQuestNum:B

    new-array v0, v0, [Lcom/t4game/RoleQuestGood;

    move v1, v3

    :goto_5
    iget-byte v2, p0, Lcom/t4game/Pack;->maxQuestNum:B

    if-ge v1, v2, :cond_9

    aput-object v4, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_9
    iget-object v1, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    goto/16 :goto_1
.end method

.method public addFabao(Lcom/t4game/FaBao;)V
    .locals 2

    const/4 v0, 0x1

    :goto_0
    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aput-object p1, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addGoods(Lcom/t4game/RoleGoods;B)V
    .locals 2

    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    if-nez v0, :cond_1

    check-cast p1, Lcom/t4game/RoleOutfit;

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aput-object p1, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/t4game/RoleDrug;

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aput-object p1, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/t4game/RoleMaterial;

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aput-object p1, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    check-cast p1, Lcom/t4game/RoleMisc;

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aput-object p1, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/t4game/RoleQuestGood;

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aput-object p1, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    goto :goto_0
.end method

.method public addSkill(S)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxSkillNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->skill:[S

    aget-short v1, v1, v0

    const/16 v2, -0x64

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/t4game/Pack;->skill:[S

    aput-short p1, v1, v0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public changeFabao(B)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aget-object v0, v0, p1

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    iget-object v2, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aget-object v2, v2, v3

    aput-object v2, v1, p1

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aput-object v0, v1, v3

    return-void
.end method

.method public clearFabao()V
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->FaBaoNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aget-object v1, v1, v0

    iput-boolean v2, v1, Lcom/t4game/FaBao;->onBody:Z

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public delGoodsFromPack(BB)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aput-object v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aput-object v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aput-object v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    goto :goto_0

    :cond_3
    if-nez p1, :cond_4

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aput-object v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v0, v0, p2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aput-object v2, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    goto :goto_0
.end method

.method public delRoleMaterialNum(BB)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p1

    iget-short v1, v0, Lcom/t4game/RoleMaterial;->num:S

    sub-int/2addr v1, p2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/RoleMaterial;->num:S

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/t4game/RoleMaterial;->num:S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    :cond_0
    return-void
.end method

.method public delRoleMiscNum(BB)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v0, p1

    iget-short v1, v0, Lcom/t4game/RoleMisc;->num:S

    sub-int/2addr v1, p2

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/RoleMisc;->num:S

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/t4game/RoleMisc;->num:S

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    const/4 v1, 0x0

    aput-object v1, v0, p1

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    :cond_0
    return-void
.end method

.method public delSkill(S)V
    .locals 3

    const/4 v0, 0x1

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxSkillNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->skill:[S

    aget-short v1, v1, v0

    if-ne v1, p1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pack;->skill:[S

    const/16 v2, -0x64

    aput-short v2, v1, v0

    :cond_0
    return-void

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public getDrugColorByDrugId(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p1, :cond_1

    sget-object v0, Lcom/t4game/CommonConstants;->QUALITYCOLOR:[I

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v1, v2, v1

    iget-byte v1, v1, Lcom/t4game/RoleDrug;->color:B

    aget v0, v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method public getDrugFillColorByDrugId(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/t4game/RoleDrug;->limitUseLevel:S

    div-int/lit8 v0, v0, 0x14

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method public getDrugIconIdByDrugId(I)S
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/t4game/RoleDrug;->iconId:S

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method public getDrugLimitUseLevelByDrugId(I)I
    .locals 3

    const/4 v0, -0x1

    const/4 v1, 0x0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, v1

    iget-short v0, v0, Lcom/t4game/RoleDrug;->limitUseLevel:S

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0
.end method

.method public getDrugOneBlockNum(I)I
    .locals 1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/t4game/RoleDrug;->num:S

    return v0
.end method

.method public getDrugTotalNum(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/t4game/RoleDrug;->num:S

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getGoodsById(BI)Lcom/t4game/RoleGoods;
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_2

    move v1, v2

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleOutfit;->id:I

    if-ne v2, p2, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, v1

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    move v1, v2

    :goto_2
    iget-byte v2, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleDrug;->id:I

    if-ne v2, p2, :cond_3

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_7

    move-object v1, v0

    move v0, v2

    :goto_3
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v2, v2, v0

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleMaterial;->id:I

    if-ne v2, p2, :cond_5

    iget-object v1, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v1, v1, v0

    :cond_5
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    :cond_6
    move-object v0, v1

    goto :goto_1

    :cond_7
    const/4 v1, 0x4

    if-ne p1, v1, :cond_a

    move-object v1, v0

    move v0, v2

    :goto_4
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v0, v2, :cond_9

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_8

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleMisc;->id:I

    if-ne v2, p2, :cond_8

    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v1, v1, v0

    :cond_8
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_4

    :cond_9
    move-object v0, v1

    goto :goto_1

    :cond_a
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    move v1, v2

    :goto_5
    iget-byte v2, p0, Lcom/t4game/Pack;->maxQuestNum:B

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v2, v2, v1

    if-eqz v2, :cond_b

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v2, v2, v1

    iget v2, v2, Lcom/t4game/RoleQuestGood;->id:I

    if-ne v2, p2, :cond_b

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v0, v0, v1

    goto :goto_1

    :cond_b
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_5
.end method

.method public getGoodsFromPack(BB)Lcom/t4game/RoleGoods;
    .locals 2

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_2
    const/4 v0, 0x2

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_3
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_4
    const/4 v0, 0x3

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    array-length v0, v0

    if-ge p2, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v0, v0, p2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method public getGoodsFromPackOfType(B)[Lcom/t4game/RoleGoods;
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getGoodsIcon(B)[S
    .locals 4

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-nez p1, :cond_1

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    if-lez v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    new-array v0, v0, [S

    move v1, v2

    :goto_0
    iget-byte v3, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/t4game/RoleOutfit;->iconId:S

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    if-lez v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    new-array v0, v0, [S

    move v1, v2

    :goto_1
    iget-byte v3, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v3, v3, v1

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/t4game/RoleDrug;->iconId:S

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    if-lez v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    new-array v0, v0, [S

    move v1, v2

    :goto_2
    iget-byte v3, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/t4game/RoleMaterial;->iconId:S

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    const/4 v1, 0x4

    if-ne p1, v1, :cond_7

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    if-lez v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    new-array v0, v0, [S

    move v1, v2

    :goto_3
    iget-byte v3, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/t4game/RoleMisc;->iconId:S

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    const/4 v1, 0x3

    if-ne p1, v1, :cond_9

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    if-lez v1, :cond_9

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    new-array v0, v0, [S

    move v1, v2

    :goto_4
    iget-byte v3, p0, Lcom/t4game/Pack;->maxQuestNum:B

    if-ge v1, v3, :cond_9

    iget-object v3, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v3, v3, v1

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v3, v3, v1

    iget-short v3, v3, Lcom/t4game/RoleQuestGood;->iconId:S

    aput-short v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    :cond_9
    return-object v0
.end method

.method public getMaterialTotalNum(I)I
    .locals 1

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p1

    iget-short v0, v0, Lcom/t4game/RoleMaterial;->num:S

    return v0
.end method

.method public getMiscNumById(I)S
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleMisc;->id:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/t4game/RoleMisc;->num:S

    add-int/2addr v1, v2

    int-to-short v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getMiscTotalNum(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleMisc;->id:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/t4game/RoleMisc;->num:S

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getNewRoleGoods(Lcom/t4game/RoleGoods;)Lcom/t4game/RoleGoods;
    .locals 3

    const/4 v2, 0x0

    if-nez p1, :cond_0

    move-object v0, v2

    :goto_0
    return-object v0

    :cond_0
    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/t4game/RoleDrug;

    invoke-direct {v0}, Lcom/t4game/RoleDrug;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/t4game/Pack;->newRoleGoods(Lcom/t4game/RoleGoods;Lcom/t4game/RoleGoods;)V

    goto :goto_0

    :cond_1
    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    new-instance v0, Lcom/t4game/RoleMaterial;

    invoke-direct {v0}, Lcom/t4game/RoleMaterial;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/t4game/Pack;->newRoleGoods(Lcom/t4game/RoleGoods;Lcom/t4game/RoleGoods;)V

    goto :goto_0

    :cond_2
    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    new-instance v0, Lcom/t4game/RoleMisc;

    invoke-direct {v0}, Lcom/t4game/RoleMisc;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/t4game/Pack;->newRoleGoods(Lcom/t4game/RoleGoods;Lcom/t4game/RoleGoods;)V

    goto :goto_0

    :cond_3
    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    if-nez v0, :cond_4

    check-cast p1, Lcom/t4game/RoleOutfit;

    invoke-virtual {p0, p1}, Lcom/t4game/Pack;->getNewRoleOutfit(Lcom/t4game/RoleOutfit;)Lcom/t4game/RoleOutfit;

    move-result-object v0

    goto :goto_0

    :cond_4
    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    new-instance v0, Lcom/t4game/RoleQuestGood;

    invoke-direct {v0}, Lcom/t4game/RoleQuestGood;-><init>()V

    invoke-direct {p0, v0, p1}, Lcom/t4game/Pack;->newRoleGoods(Lcom/t4game/RoleGoods;Lcom/t4game/RoleGoods;)V

    goto :goto_0

    :cond_5
    move-object v0, v2

    goto :goto_0
.end method

.method public getNewRoleOutfit(Lcom/t4game/RoleOutfit;)Lcom/t4game/RoleOutfit;
    .locals 2

    new-instance v0, Lcom/t4game/RoleOutfit;

    invoke-direct {v0}, Lcom/t4game/RoleOutfit;-><init>()V

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget v1, p1, Lcom/t4game/RoleOutfit;->id:I

    iput v1, v0, Lcom/t4game/RoleOutfit;->id:I

    iget-short v1, p1, Lcom/t4game/RoleOutfit;->iconId:S

    iput-short v1, v0, Lcom/t4game/RoleOutfit;->iconId:S

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->type:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->type:B

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->breakage:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->breakage:B

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->color:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->color:B

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->holeNum:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->holeNum:B

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->maxHoleNum:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->maxHoleNum:B

    iget-short v1, p1, Lcom/t4game/RoleOutfit;->imageId:S

    iput-short v1, v0, Lcom/t4game/RoleOutfit;->imageId:S

    iget-short v1, p1, Lcom/t4game/RoleOutfit;->limitUseLevel:S

    iput-short v1, v0, Lcom/t4game/RoleOutfit;->limitUseLevel:S

    iget-boolean v1, p1, Lcom/t4game/RoleOutfit;->binded:Z

    iput-boolean v1, v0, Lcom/t4game/RoleOutfit;->binded:Z

    iget-byte v1, p1, Lcom/t4game/RoleOutfit;->upGrade:B

    iput-byte v1, v0, Lcom/t4game/RoleOutfit;->upGrade:B

    iget-object v1, p1, Lcom/t4game/RoleOutfit;->name:Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/RoleOutfit;->name:Ljava/lang/String;

    iget-short v1, p1, Lcom/t4game/RoleOutfit;->num:S

    iput-short v1, v0, Lcom/t4game/RoleOutfit;->num:S

    iget-boolean v1, p1, Lcom/t4game/RoleOutfit;->jobCanUse:Z

    iput-boolean v1, v0, Lcom/t4game/RoleOutfit;->jobCanUse:Z

    iget-boolean v1, p1, Lcom/t4game/RoleOutfit;->miscCanUse:Z

    iput-boolean v1, v0, Lcom/t4game/RoleOutfit;->miscCanUse:Z

    goto :goto_0
.end method

.method public getQuestGoodsTotalNum(I)I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxQuestNum:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v2, v2, v0

    iget v2, v2, Lcom/t4game/RoleQuestGood;->id:I

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v2, v2, v0

    iget-short v2, v2, Lcom/t4game/RoleQuestGood;->num:S

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getSkillNum()B
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-byte v2, p0, Lcom/t4game/Pack;->maxSkillNum:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/Pack;->skill:[S

    aget-short v2, v2, v0

    const/16 v3, -0x64

    if-eq v2, v3, :cond_0

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getTotalDrugNum(I)S
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/t4game/Pack;->totalNumForDrug:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    if-eqz p0, :cond_0

    invoke-static {p0}, Ljava/lang/Short;->parseShort(Ljava/lang/String;)S

    move-result v0

    :cond_0
    return v0
.end method

.method public getTradeGoods()[Lcom/t4game/RoleGoods;
    .locals 6

    const/4 v5, 0x0

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    if-lez v1, :cond_9

    move v1, v5

    move v2, v5

    :goto_0
    iget-byte v3, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v1, v3, :cond_1

    iget-object v3, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v3, v3, v1

    if-eqz v3, :cond_0

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_1
    iget-byte v2, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    if-lez v2, :cond_8

    move v2, v5

    move v3, v5

    :goto_2
    iget-byte v4, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v2, v4, :cond_3

    iget-object v4, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v4, v4, v2

    if-eqz v4, :cond_2

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    goto :goto_2

    :cond_3
    move v2, v3

    :goto_3
    add-int/2addr v1, v2

    int-to-byte v1, v1

    if-lez v1, :cond_7

    new-array v0, v1, [Lcom/t4game/RoleGoods;

    move v1, v5

    move v2, v5

    :goto_4
    iget-byte v3, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v1, v3, :cond_5

    iget-object v3, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v3, v3, v1

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_4

    :cond_5
    move v1, v5

    :goto_5
    iget-byte v3, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v1, v3, :cond_7

    iget-object v3, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v3, v3, v1

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v3, v3, v1

    aput-object v3, v0, v2

    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    :cond_6
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_5

    :cond_7
    return-object v0

    :cond_8
    move v2, v5

    goto :goto_3

    :cond_9
    move v1, v5

    goto :goto_1
.end method

.method public initBagDrug()V
    .locals 3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initBagMaterial()V
    .locals 3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxMaterialNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initBagMisc()V
    .locals 3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initBagOutFit(B)V
    .locals 3

    const/4 v1, 0x0

    iput-byte p1, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    new-array v0, v0, [Lcom/t4game/RoleOutfit;

    iput-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    iput-byte v1, p0, Lcom/t4game/Pack;->currrentOutfitNum:B

    move v0, v1

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxOutfitNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initBagQuest()V
    .locals 3

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxQuestNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initFabao(B)V
    .locals 3

    iput-byte p1, p0, Lcom/t4game/Pack;->FaBaoNum:B

    iget-byte v0, p0, Lcom/t4game/Pack;->FaBaoNum:B

    new-array v0, v0, [Lcom/t4game/FaBao;

    iput-object v0, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->FaBaoNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    new-instance v2, Lcom/t4game/FaBao;

    invoke-direct {v2}, Lcom/t4game/FaBao;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public initSkill()V
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxSkillNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->skill:[S

    const/16 v2, -0x64

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagDrug()V

    iput-object v2, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagMaterial()V

    iput-object v2, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagQuest()V

    iput-object v2, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    iput-object v2, p0, Lcom/t4game/Pack;->skill:[S

    invoke-virtual {p0}, Lcom/t4game/Pack;->initBagMisc()V

    iput-object v2, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    const/4 v0, 0x0

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->FaBaoNum:B

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    return-void
.end method

.method public releaseFabao()V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->FabaoBlack:[Lcom/t4game/FaBao;

    const/4 v2, 0x0

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/t4game/FaBao;->faboIconH:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public resetGoods(Lcom/t4game/RoleGoods;B)V
    .locals 2

    iget-byte v0, p1, Lcom/t4game/RoleGoods;->type:B

    if-nez v0, :cond_1

    check-cast p1, Lcom/t4game/RoleOutfit;

    iget-object v0, p0, Lcom/t4game/Pack;->outFitBagBlock:[Lcom/t4game/RoleOutfit;

    aput-object p1, v0, p2

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    check-cast p1, Lcom/t4game/RoleDrug;

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aput-object p1, v0, p2

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    check-cast p1, Lcom/t4game/RoleMaterial;

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aput-object p1, v0, p2

    goto :goto_0

    :cond_3
    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    check-cast p1, Lcom/t4game/RoleMisc;

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aput-object p1, v0, p2

    goto :goto_0

    :cond_4
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    check-cast p1, Lcom/t4game/RoleQuestGood;

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aput-object p1, v0, p2

    goto :goto_0
.end method

.method public setCanOperate(BBZ)V
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/t4game/Pack;->getGoodsFromPack(BB)Lcom/t4game/RoleGoods;

    move-result-object v0

    if-eqz v0, :cond_0

    iput-boolean p3, v0, Lcom/t4game/RoleGoods;->canOperate:Z

    :cond_0
    return-void
.end method

.method public setRoleGoodsNum(BBB)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-ne p1, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v0, p2

    int-to-short v1, p3

    iput-short v1, v0, Lcom/t4game/RoleDrug;->num:S

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aput-object v3, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentDrugNum:B

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aget-object v0, v0, p2

    int-to-short v1, p3

    iput-short v1, v0, Lcom/t4game/RoleMaterial;->num:S

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->materialBagBlock:[Lcom/t4game/RoleMaterial;

    aput-object v3, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMaterialNum:B

    goto :goto_0

    :cond_2
    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v0, p2

    int-to-short v1, p3

    iput-short v1, v0, Lcom/t4game/RoleMisc;->num:S

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aput-object v3, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentMiscNum:B

    goto :goto_0

    :cond_3
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aget-object v0, v0, p2

    int-to-short v1, p3

    iput-short v1, v0, Lcom/t4game/RoleQuestGood;->num:S

    if-nez p3, :cond_0

    iget-object v0, p0, Lcom/t4game/Pack;->questBagBlock:[Lcom/t4game/RoleQuestGood;

    aput-object v3, v0, p2

    iget-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    sub-int/2addr v0, v2

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/Pack;->currrentQuestNum:B

    goto :goto_0
.end method

.method public setTotalDrugNum(IS)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/Pack;->totalNumForDrug:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/Pack;->totalNumForDrug:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public testDrugCanUseByID(IS)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxDrugNum:B

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/t4game/RoleDrug;->id:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->drugBagBlock:[Lcom/t4game/RoleDrug;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2}, Lcom/t4game/RoleDrug;->testCanUse(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public testMiscCanUseById(IS)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    iget-byte v1, p0, Lcom/t4game/Pack;->maxMiscNum:B

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/t4game/RoleMisc;->id:I

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Lcom/t4game/Pack;->miscBagBlock:[Lcom/t4game/RoleMisc;

    aget-object v0, v1, v0

    invoke-virtual {v0, p2}, Lcom/t4game/RoleMisc;->testCanUse(I)Z

    move-result v0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method
