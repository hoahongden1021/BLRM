.class public Lcom/t4game/GOuterSprite;
.super Lcom/t4game/AbstractPoolObject;


# instance fields
.field public Flag:[B

.field public gridX:S

.field public gridY:S

.field public iconList:[B

.field public id:Ljava/lang/String;

.field public relationState:B

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/AbstractPoolObject;-><init>()V

    iput-object v1, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/GOuterSprite;->relationState:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/GOuterSprite;->type:B

    iput-object v1, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/t4game/GOuterSprite;->poolId:B

    return-void
.end method


# virtual methods
.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    iput-object v0, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    return-void
.end method

.method public setFlag([B)V
    .locals 3

    const/4 v2, 0x0

    iput-object p1, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    iget-object v0, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    aget-byte v0, v0, v2

    const/4 v1, 0x4

    if-gt v0, v1, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    iget-object v0, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    iget-object v1, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    aget-byte v1, v1, v2

    aput-byte v1, v0, v2

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GOuterSprite;->Flag:[B

    iput-object v0, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/t4game/GOuterSprite;->iconList:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method
