.class public Lcom/t4game/RoleQuest;
.super Ljava/lang/Object;


# instance fields
.field KeyName:[Ljava/lang/String;

.field KeyNameType:[B

.field allreadyFinishNum:[S

.field bDaily:B

.field finishConditionDanwei:[Ljava/lang/String;

.field finishConditionName:[Ljava/lang/String;

.field finishedTotalNum:[S

.field id:I

.field intro:Ljava/lang/String;

.field jieRenWuNpcId:I

.field jieRenWuNpcScenceId:I

.field level:S

.field mapId:S

.field name:Ljava/lang/String;

.field normalType:Z

.field npcId:[B

.field npcName:[Ljava/lang/String;

.field npcXY:[[S

.field shareFlag:Z

.field startTimeTick:I

.field state:B

.field submitNpcName:Ljava/lang/String;

.field titleColor:B

.field type:B

.field typeTime:Z

.field typeTimeTotalTick:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/4 v1, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v1, p0, Lcom/t4game/RoleQuest;->bDaily:B

    iput-boolean v1, p0, Lcom/t4game/RoleQuest;->normalType:Z

    iput-object v2, p0, Lcom/t4game/RoleQuest;->submitNpcName:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/RoleQuest;->npcId:[B

    iput v3, p0, Lcom/t4game/RoleQuest;->jieRenWuNpcId:I

    iput v3, p0, Lcom/t4game/RoleQuest;->jieRenWuNpcScenceId:I

    iput-object v2, p0, Lcom/t4game/RoleQuest;->npcName:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/RoleQuest;->KeyNameType:[B

    iput-object v2, p0, Lcom/t4game/RoleQuest;->KeyName:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[S

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/RoleQuest;->npcXY:[[S

    iput-byte v3, p0, Lcom/t4game/RoleQuest;->titleColor:B

    iput-object v2, p0, Lcom/t4game/RoleQuest;->finishConditionName:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/RoleQuest;->allreadyFinishNum:[S

    iput-object v2, p0, Lcom/t4game/RoleQuest;->finishedTotalNum:[S

    iput-object v2, p0, Lcom/t4game/RoleQuest;->finishConditionDanwei:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getLastTime(I)I
    .locals 3

    const/4 v0, -0x1

    iget-boolean v1, p0, Lcom/t4game/RoleQuest;->typeTime:Z

    if-eqz v1, :cond_0

    iget v0, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/t4game/RoleQuest;->typeTimeTotalTick:I

    iget v1, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    sub-int v1, p1, v1

    sub-int/2addr v0, v1

    :goto_0
    mul-int/lit8 v0, v0, 0x64

    :cond_0
    return v0

    :cond_1
    iget v0, p0, Lcom/t4game/RoleQuest;->typeTimeTotalTick:I

    iget v1, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    add-int/2addr v1, p1

    const v2, 0x7fffffff

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    goto :goto_0
.end method

.method public getTime(I)Ljava/lang/String;
    .locals 8

    const v4, 0x8ca0

    const/16 v5, 0xa

    const-string v7, "0"

    const-string v6, ":"

    const-string v0, ""

    iget-boolean v1, p0, Lcom/t4game/RoleQuest;->typeTime:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    if-lt p1, v1, :cond_1

    iget v1, p0, Lcom/t4game/RoleQuest;->typeTimeTotalTick:I

    iget v2, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    sub-int v2, p1, v2

    sub-int/2addr v1, v2

    :goto_0
    if-lt v1, v5, :cond_5

    div-int v2, v1, v4

    mul-int v3, v2, v4

    sub-int/2addr v1, v3

    div-int/lit16 v3, v1, 0x258

    mul-int/lit16 v4, v3, 0x258

    sub-int/2addr v1, v4

    div-int/lit8 v1, v1, 0xa

    if-lt v2, v5, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-le v3, v5, :cond_3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_2
    if-le v1, v5, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_3
    return-object v0

    :cond_1
    iget v1, p0, Lcom/t4game/RoleQuest;->typeTimeTotalTick:I

    iget v2, p0, Lcom/t4game/RoleQuest;->startTimeTick:I

    add-int/2addr v2, p1

    const v3, 0x7fffffff

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    goto :goto_0

    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "0"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_5
    const-string v0, "00:00:00"

    goto :goto_3
.end method

.method public initFinishCondition(B)V
    .locals 1

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishConditionName:[Ljava/lang/String;

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/RoleQuest;->allreadyFinishNum:[S

    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishedTotalNum:[S

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishConditionDanwei:[Ljava/lang/String;

    return-void
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleQuest;->npcId:[B

    iput-object v0, p0, Lcom/t4game/RoleQuest;->npcName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->name:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->intro:Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishConditionName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->allreadyFinishNum:[S

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishedTotalNum:[S

    iput-object v0, p0, Lcom/t4game/RoleQuest;->finishConditionDanwei:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->KeyName:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleQuest;->KeyNameType:[B

    return-void
.end method
