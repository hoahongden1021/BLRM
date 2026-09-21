.class public Lcom/t4game/RoleGoods;
.super Ljava/lang/Object;


# instance fields
.field public binded:Z

.field public canOperate:Z

.field public color:B

.field public grade:S

.field public iconId:S

.field public id:I

.field public isGoodsPay:Z

.field public jobCanUse:Z

.field public limitTime:Z

.field public limitUseLevel:S

.field public miscCanUse:Z

.field public name:Ljava/lang/String;

.field public num:S

.field public selected:B

.field public subType0:B

.field public type:B

.field public upGrade:B


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->isGoodsPay:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iput-short v1, p0, Lcom/t4game/RoleGoods;->limitUseLevel:S

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->binded:Z

    iput-boolean v2, p0, Lcom/t4game/RoleGoods;->jobCanUse:Z

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->miscCanUse:Z

    iput-byte v1, p0, Lcom/t4game/RoleGoods;->upGrade:B

    iput-boolean v2, p0, Lcom/t4game/RoleGoods;->canOperate:Z

    iput-byte v1, p0, Lcom/t4game/RoleGoods;->selected:B

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->limitTime:Z

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iget-short v1, p0, Lcom/t4game/RoleGoods;->limitUseLevel:S

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/RoleGoods;->limitUseLevel:S

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    iget-byte v1, p0, Lcom/t4game/RoleGoods;->upGrade:B

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/RoleGoods;->upGrade:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    return-object v0
.end method

.method public getUpGradeName()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleGoods;->name:Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/RoleGoods;->upGrade:B

    if-lez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/RoleGoods;->upGrade:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public select()Z
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    iget-byte v0, p0, Lcom/t4game/RoleGoods;->selected:B

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    iput-byte v0, p0, Lcom/t4game/RoleGoods;->selected:B

    iget-byte v0, p0, Lcom/t4game/RoleGoods;->selected:B

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_1
    return v0

    :cond_0
    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public setCanUse(B)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x1

    and-int/lit8 v0, p1, 0x1

    if-ne v0, v1, :cond_2

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->jobCanUse:Z

    :cond_0
    :goto_0
    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x1

    if-ne v0, v1, :cond_3

    iput-boolean v1, p0, Lcom/t4game/RoleGoods;->miscCanUse:Z

    :cond_1
    :goto_1
    return-void

    :cond_2
    if-nez v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/RoleGoods;->jobCanUse:Z

    goto :goto_0

    :cond_3
    if-nez v0, :cond_1

    iput-boolean v2, p0, Lcom/t4game/RoleGoods;->miscCanUse:Z

    goto :goto_1
.end method

.method public testCanUse(I)Z
    .locals 2

    const/4 v0, 0x0

    iget-short v1, p0, Lcom/t4game/RoleGoods;->limitUseLevel:S

    if-lt p1, v1, :cond_0

    iget-boolean v1, p0, Lcom/t4game/RoleGoods;->jobCanUse:Z

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method
