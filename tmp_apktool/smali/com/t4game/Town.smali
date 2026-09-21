.class Lcom/t4game/Town;
.super Ljava/lang/Object;


# instance fields
.field public bSelect:Z

.field protected down:B

.field protected fightState:B

.field protected gangID:I

.field protected gangName:Ljava/lang/String;

.field protected gangState:B

.field protected grade:B

.field protected id:B

.field protected left:B

.field protected name:Ljava/lang/String;

.field protected offx:S

.field protected offy:S

.field protected right:B

.field protected state:B

.field protected up:B


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v2, p0, Lcom/t4game/Town;->id:B

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u4ed9\u5e9c"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-byte v1, p0, Lcom/t4game/Town;->id:B

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/Town;->name:Ljava/lang/String;

    iput-byte v2, p0, Lcom/t4game/Town;->gangState:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/Town;->state:B

    iput-byte v2, p0, Lcom/t4game/Town;->fightState:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/Town;->gangID:I

    const-string v0, "N"

    iput-object v0, p0, Lcom/t4game/Town;->gangName:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/t4game/Town;->bSelect:Z

    iput-byte v2, p0, Lcom/t4game/Town;->grade:B

    return-void
.end method
