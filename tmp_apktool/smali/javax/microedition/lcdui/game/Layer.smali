.class public abstract Ljavax/microedition/lcdui/game/Layer;
.super Ljava/lang/Object;


# instance fields
.field private height:I

.field private visible:Z

.field private width:I

.field private x:I

.field private y:I


# direct methods
.method constructor <init>(IIIIZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p3, p4}, Ljavax/microedition/lcdui/game/Layer;->setSize(II)V

    invoke-virtual {p0, p1, p2}, Ljavax/microedition/lcdui/game/Layer;->setPosition(II)V

    invoke-virtual {p0, p5}, Ljavax/microedition/lcdui/game/Layer;->setVisible(Z)V

    return-void
.end method


# virtual methods
.method public final getHeight()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    return v0
.end method

.method public final getWidth()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    return v0
.end method

.method public final getX()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    return v0
.end method

.method public final getY()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    return v0
.end method

.method public final isVisible()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    return v0
.end method

.method public move(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    add-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    iget v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    add-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public setPosition(II)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->x:I

    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->y:I

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method setSize(II)V
    .locals 1

    const/4 v0, 0x1

    if-lt p1, v0, :cond_0

    if-ge p2, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/game/Layer;->width:I

    iput p2, p0, Ljavax/microedition/lcdui/game/Layer;->height:I

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Ljavax/microedition/lcdui/game/Layer;->visible:Z

    return-void
.end method
