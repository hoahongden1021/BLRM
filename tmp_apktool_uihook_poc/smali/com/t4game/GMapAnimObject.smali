.class public Lcom/t4game/GMapAnimObject;
.super Lcom/t4game/GMapObject;


# instance fields
.field public nowFrame:S

.field public persistFrame:S


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x1

    invoke-direct {p0}, Lcom/t4game/GMapObject;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/GMapAnimObject;->nowFrame:S

    iput-short v1, p0, Lcom/t4game/GMapAnimObject;->persistFrame:S

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/GMapAnimObject;->type:B

    iput-byte v1, p0, Lcom/t4game/GMapAnimObject;->layer:B

    iput-byte v1, p0, Lcom/t4game/GMapAnimObject;->store:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/GMapAnimObject;->poolId:B

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public drawButtom(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method public drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method
