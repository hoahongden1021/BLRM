.class public Lcom/t4game/RoleQuickUse;
.super Lcom/t4game/QuickAction;


# static fields
.field public static final SKILL_CHANGE_POSITION_TYPE0:B = 0x0t

.field public static final SKILL_CHANGE_POSITION_TYPE1:B = 0x1t

.field public static final SKILL_CHANGE_POSITION_TYPE2:B = 0x2t

.field public static final SKILL_CHANGE_POSITION_TYPE3:B = 0x3t


# instance fields
.field public QUICK_SKILL_ACTIVE:B

.field public QUICK_SKILL_BOOLEAN_COMMCD:B

.field public QUICK_SKILL_CD:I

.field public QUICK_SKILL_CDFINAL:I

.field public QUICK_SKILL_CDTIME:I

.field public QUICK_SKILL_GRUPCDID:B

.field public QUICK_SKILL_GRUPCD_INDEX:I

.field public QUICK_SKILL_IsBuff:Z

.field public QUICK_SKILL_LEADCD:I

.field public QUICK_SKILL_LEADTIME:I

.field public QUICK_SKILL_MiscSkill_ID:S

.field public QUICK_SKILL_Move:B

.field public QUICK_SKILL_RestCD:B

.field public QUICK_SKILL_RestCD_List:[S

.field public QUICK_SKILL_RestCD_Type:B

.field public QUICK_SKILL_affectLimit:B

.field public QUICK_SKILL_affectRadius:S

.field public QUICK_SKILL_cannotUseWhenAttack:B

.field public QUICK_SKILL_castRadius:S

.field public QUICK_SKILL_consumeHP:S

.field public QUICK_SKILL_consumeMP:S

.field public QUICK_SKILL_eff_hitOrSafe:B

.field public QUICK_SKILL_self_type:B

.field public QUICK_SKILL_targetLimit:B

.field public Skill_Limit_state:B

.field public Skill_Move_Dis:S

.field public WuQiXianZhiList:[B

.field public jobXianZhiList:[B

.field skillEffect:Lcom/t4game/RoleSkillEffectData;

.field public skill_Move_Action_Type:B

.field public skill_Move_Type:B


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v3, 0xa

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/QuickAction;-><init>()V

    iput v3, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_CD:I

    const/4 v0, 0x3

    iput v0, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_CDFINAL:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_LEADCD:I

    const/4 v0, 0x5

    iput v0, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_LEADTIME:I

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_eff_hitOrSafe:B

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_cannotUseWhenAttack:B

    iput-boolean v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_IsBuff:Z

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_BOOLEAN_COMMCD:B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_GRUPCDID:B

    iput v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_GRUPCD_INDEX:I

    iput v3, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_CDTIME:I

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_ACTIVE:B

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_castRadius:S

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_consumeMP:S

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_consumeHP:S

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_targetLimit:B

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_affectLimit:B

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_affectRadius:S

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_self_type:B

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_MiscSkill_ID:S

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_Move:B

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_RestCD:B

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_RestCD_Type:B

    iput-object v2, p0, Lcom/t4game/RoleQuickUse;->QUICK_SKILL_RestCD_List:[S

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->Skill_Limit_state:B

    iput-short v1, p0, Lcom/t4game/RoleQuickUse;->Skill_Move_Dis:S

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->skill_Move_Type:B

    iput-byte v1, p0, Lcom/t4game/RoleQuickUse;->skill_Move_Action_Type:B

    iput-object v2, p0, Lcom/t4game/RoleQuickUse;->skillEffect:Lcom/t4game/RoleSkillEffectData;

    iput-object v2, p0, Lcom/t4game/RoleQuickUse;->WuQiXianZhiList:[B

    iput-object v2, p0, Lcom/t4game/RoleQuickUse;->jobXianZhiList:[B

    return-void
.end method


# virtual methods
.method public setJobXianZhi([B)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/RoleQuickUse;->jobXianZhiList:[B

    return-void
.end method

.method public setMoveOrLimit(B)V
    .locals 1

    shr-int/lit8 v0, p1, 0x4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleQuickUse;->skill_Move_Type:B

    and-int/lit8 v0, p1, 0xf

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/RoleQuickUse;->skill_Move_Action_Type:B

    return-void
.end method

.method public setWuQiXianZhi([B)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/RoleQuickUse;->WuQiXianZhiList:[B

    return-void
.end method

.method public testJobXianZhi(B)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/RoleQuickUse;->jobXianZhiList:[B

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/RoleQuickUse;->jobXianZhiList:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleQuickUse;->jobXianZhiList:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method

.method public testWuQiXianZhi(B)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/RoleQuickUse;->WuQiXianZhiList:[B

    if-nez v0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/RoleQuickUse;->WuQiXianZhiList:[B

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/RoleQuickUse;->WuQiXianZhiList:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    move v0, v2

    goto :goto_0
.end method
