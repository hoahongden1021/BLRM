.class public Lcom/t4game/Buf;
.super Ljava/lang/Object;


# instance fields
.field public bufSpecialEffect:Lcom/t4game/GSEObject;

.field canRemove:Z

.field public iconId:S

.field public id:I

.field name:Ljava/lang/String;

.field num:B

.field time:Ljava/lang/String;

.field type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Buf;->type:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/Buf;->num:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Buf;->canRemove:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/Buf;->bufSpecialEffect:Lcom/t4game/GSEObject;

    return-void
.end method
