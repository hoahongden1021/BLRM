.class public Lcom/t4game/RoleSkillEffectData;
.super Ljava/lang/Object;


# static fields
.field public static final SKILL_ACTIONSE_TYPE_ATTACK:B = 0x1t

.field public static final SKILL_ACTIONSE_TYPE_BEATTACK:B = 0x2t

.field public static final SKILL_ACTIONSE_TYPE_BUFF:B = 0x4t

.field public static final SKILL_ACTIONSE_TYPE_CAST:B = 0x0t

.field public static final SKILL_ACTIONSE_TYPE_NUM:B = 0x5t

.field public static final SKILL_ACTIONSE_TYPE_TARGET:B = 0x3t


# instance fields
.field public skillActionId:[B

.field public skillActionObjectDataId:[S

.field public skillActionSpecialEffectDataId:[S


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionId:[B

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionObjectDataId:[S

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionSpecialEffectDataId:[S

    return-void
.end method


# virtual methods
.method public initSkillAction(B)V
    .locals 1

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionId:[B

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionObjectDataId:[S

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/RoleSkillEffectData;->skillActionSpecialEffectDataId:[S

    return-void
.end method

.method public toString(I)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "skillActionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleSkillEffectData;->skillActionId:[B

    aget-byte v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",skillActionObjectDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleSkillEffectData;->skillActionObjectDataId:[S

    aget-short v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",skillActionSpecialEffectDataId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/RoleSkillEffectData;->skillActionSpecialEffectDataId:[S

    aget-short v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
