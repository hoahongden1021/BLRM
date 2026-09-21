.class public abstract Lcom/t4game/AbstractPoolObject;
.super Ljava/lang/Object;


# instance fields
.field public poolId:B

.field public poolNext:Lcom/t4game/AbstractPoolObject;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/AbstractPoolObject;->poolId:B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    return-void
.end method


# virtual methods
.method public abstract release()V
.end method
