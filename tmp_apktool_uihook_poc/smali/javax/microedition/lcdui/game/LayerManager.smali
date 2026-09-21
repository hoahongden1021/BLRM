.class public Ljavax/microedition/lcdui/game/LayerManager;
.super Ljava/lang/Object;


# instance fields
.field private layers:Ljava/util/Vector;

.field private viewH:I

.field private viewW:I

.field private viewX:I

.field private viewY:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    const v0, 0x7fffffff

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    iput v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    return-void
.end method


# virtual methods
.method public append(Ljavax/microedition/lcdui/game/Layer;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getLayerAt(I)Ljavax/microedition/lcdui/game/Layer;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/lcdui/game/Layer;

    return-object p0
.end method

.method public getSize()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method

.method public insert(Ljavax/microedition/lcdui/game/Layer;I)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 8

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v3

    iget v4, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    sub-int v4, p2, v4

    iget v5, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    sub-int v5, p3, v5

    invoke-virtual {p1, v4, v5}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    iget v4, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    iget v5, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    iget v6, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    iget v7, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    invoke-virtual {p1, v4, v5, v6, v7}, Ljavax/microedition/lcdui/Graphics;->clipRect(IIII)V

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/LayerManager;->getSize()I

    move-result v4

    :cond_1
    :goto_0
    add-int/lit8 v4, v4, -0x1

    if-ltz v4, :cond_2

    invoke-virtual {p0, v4}, Ljavax/microedition/lcdui/game/LayerManager;->getLayerAt(I)Ljavax/microedition/lcdui/game/Layer;

    move-result-object v5

    invoke-virtual {v5}, Ljavax/microedition/lcdui/game/Layer;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {v5, p1}, Ljavax/microedition/lcdui/game/Layer;->paint(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    neg-int v4, p2

    iget v5, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    add-int/2addr v4, v5

    neg-int v5, p3

    iget v6, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    add-int/2addr v5, v6

    invoke-virtual {p1, v4, v5}, Ljavax/microedition/lcdui/Graphics;->translate(II)V

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public remove(Ljavax/microedition/lcdui/game/Layer;)V
    .locals 1

    monitor-enter p0

    if-nez p1, :cond_0

    :try_start_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/LayerManager;->layers:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setViewWindow(IIII)V
    .locals 1

    monitor-enter p0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iput p1, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewX:I

    iput p2, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewY:I

    iput p3, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewW:I

    iput p4, p0, Ljavax/microedition/lcdui/game/LayerManager;->viewH:I

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method
