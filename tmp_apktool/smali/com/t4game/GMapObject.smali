.class public abstract Lcom/t4game/GMapObject;
.super Lcom/t4game/AbstractPoolObject;


# static fields
.field public static INIT_STATE_INITED:B

.field public static INIT_STATE_INITERROR:B

.field public static INIT_STATE_INITING0:B

.field public static INIT_STATE_INITING1:B

.field public static INIT_STATE_INITING2:B

.field public static INIT_STATE_INITING3:B


# instance fields
.field public boundX1:S

.field public boundX2:S

.field public boundY1:S

.field public boundY2:S

.field public gnext:Lcom/t4game/GMapObject;

.field public gpre:Lcom/t4game/GMapObject;

.field public gridX:S

.field public gridY:S

.field public initState:B

.field public layer:B

.field public mapX:S

.field public mapY:S

.field public mirrorH:Z

.field public mirrorV:Z

.field public next:Lcom/t4game/GMapObject;

.field public pre:Lcom/t4game/GMapObject;

.field public renderFrame:I

.field public scene:Lcom/t4game/GScene;

.field public store:B

.field public type:B

.field public visible:Z

.field public visibleReady:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITING0:B

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITING1:B

    const/4 v0, 0x2

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITING2:B

    const/4 v0, 0x3

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITING3:B

    const/4 v0, 0x4

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITED:B

    const/4 v0, 0x5

    sput-byte v0, Lcom/t4game/GMapObject;->INIT_STATE_INITERROR:B

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/t4game/AbstractPoolObject;-><init>()V

    iput-byte v0, p0, Lcom/t4game/GMapObject;->layer:B

    iput-byte v0, p0, Lcom/t4game/GMapObject;->store:B

    iput-boolean v0, p0, Lcom/t4game/GMapObject;->mirrorH:Z

    iput-boolean v0, p0, Lcom/t4game/GMapObject;->mirrorV:Z

    iput-object v1, p0, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iput-object v1, p0, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    iput-object v1, p0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v1, p0, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-boolean v0, p0, Lcom/t4game/GMapObject;->visible:Z

    iput-boolean v2, p0, Lcom/t4game/GMapObject;->visibleReady:Z

    iput-byte v0, p0, Lcom/t4game/GMapObject;->initState:B

    iput-boolean v2, p0, Lcom/t4game/GMapObject;->visibleReady:Z

    return-void
.end method


# virtual methods
.method public abstract draw(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract drawButtom(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract drawName(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public release()V
    .locals 2

    const/4 v1, 0x0

    iput-short v1, p0, Lcom/t4game/GMapObject;->mapY:S

    iput-short v1, p0, Lcom/t4game/GMapObject;->mapX:S

    iput-short v1, p0, Lcom/t4game/GMapObject;->gridY:S

    iput-short v1, p0, Lcom/t4game/GMapObject;->gridX:S

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GMapObject;->pre:Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GMapObject;->next:Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GMapObject;->gnext:Lcom/t4game/GMapObject;

    iput-object v0, p0, Lcom/t4game/GMapObject;->gpre:Lcom/t4game/GMapObject;

    iput-boolean v1, p0, Lcom/t4game/GMapObject;->visible:Z

    iput-byte v1, p0, Lcom/t4game/GMapObject;->initState:B

    return-void
.end method

.method public update()B
    .locals 1

    iget-object v0, p0, Lcom/t4game/GMapObject;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->renderFrame:I

    iput v0, p0, Lcom/t4game/GMapObject;->renderFrame:I

    const/4 v0, 0x1

    return v0
.end method
