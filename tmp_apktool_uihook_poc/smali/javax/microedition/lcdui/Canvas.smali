.class public abstract Ljavax/microedition/lcdui/Canvas;
.super Ljavax/microedition/lcdui/Displayable;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Canvas$CanvasView;
    }
.end annotation


# static fields
.field public static final DOWN:I = 0x14

.field public static final FIRE:I = 0x17

.field public static final GAME_A:I = 0x12

.field public static final GAME_B:I = 0x11

.field public static final GAME_C:I = 0x8

.field public static final GAME_D:I = 0xa

.field public static final KEY_NUM0:I = 0x7

.field public static final KEY_NUM1:I = 0x8

.field public static final KEY_NUM2:I = 0x9

.field public static final KEY_NUM3:I = 0xa

.field public static final KEY_NUM4:I = 0xb

.field public static final KEY_NUM5:I = 0xc

.field public static final KEY_NUM6:I = 0xd

.field public static final KEY_NUM7:I = 0xe

.field public static final KEY_NUM8:I = 0xf

.field public static final KEY_NUM9:I = 0x10

.field public static final KEY_POUND:I = 0x12

.field public static final KEY_STAR:I = 0x11

.field public static final LEFT:I = 0x15

.field public static final RIGHT:I = 0x16

.field public static final UP:I = 0x13


# instance fields
.field private canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

.field private controller:Lj2ab/android/lcdui/ControllerLayer;

.field private graphics:Ljavax/microedition/lcdui/Graphics;

.field private holder:Landroid/view/SurfaceHolder;

.field private rect:Landroid/graphics/Rect;

.field private useController:Z


# direct methods
.method protected constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljavax/microedition/lcdui/Displayable;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Ljavax/microedition/lcdui/Canvas;->useController:Z

    return-void
.end method

.method static synthetic access$002(Ljavax/microedition/lcdui/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Canvas;->rect:Landroid/graphics/Rect;

    return-object p1
.end method

.method static synthetic access$100(Ljavax/microedition/lcdui/Canvas;)Z
    .locals 1

    iget-boolean v0, p0, Ljavax/microedition/lcdui/Canvas;->useController:Z

    return v0
.end method

.method static synthetic access$200(Ljavax/microedition/lcdui/Canvas;)Lj2ab/android/lcdui/ControllerLayer;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->controller:Lj2ab/android/lcdui/ControllerLayer;

    return-object v0
.end method

.method static synthetic access$300(Ljavax/microedition/lcdui/Canvas;)Ljavax/microedition/lcdui/Canvas$CanvasView;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    return-object v0
.end method


# virtual methods
.method public disposeDisplayable()V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    const/4 v1, 0x0

    iput-object v1, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getGameAction(I)I
    .locals 0

    return p1
.end method

.method public getKeyCode(I)I
    .locals 0

    return p1
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    return-object v0
.end method

.method public hasPointerEvents()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Ljavax/microedition/lcdui/Canvas$CanvasView;-><init>(Ljavax/microedition/lcdui/Canvas;Landroid/content/Context;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setId(I)V

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setClickable(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setHapticFeedbackEnabled(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setKeepScreenOn(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setLongClickable(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v3}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setDrawingCacheEnabled(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setWillNotCacheDrawing(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setWillNotDraw(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusable(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusableInTouchMode(Z)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->requestFocus()Z

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    iget-boolean v0, p0, Ljavax/microedition/lcdui/Canvas;->useController:Z

    if-eqz v0, :cond_1

    new-instance v0, Lj2ab/android/lcdui/ControllerLayer;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getHeight()I

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;-><init>(Ljavax/microedition/lcdui/Canvas;II)V

    iput-object v0, p0, Ljavax/microedition/lcdui/Canvas;->controller:Lj2ab/android/lcdui/ControllerLayer;

    :cond_1
    return-void

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, v3}, Landroid/view/SurfaceHolder;->setType(I)V

    goto :goto_0
.end method

.method protected keyPressed(I)V
    .locals 0

    return-void
.end method

.method protected keyReleased(I)V
    .locals 0

    return-void
.end method

.method protected keyRepeated(I)V
    .locals 0

    return-void
.end method

.method public onCancel()Z
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x1

    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->commands:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getCancelCommond()Ljavax/microedition/lcdui/Command;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getCommandListener()Ljavax/microedition/lcdui/CommandListener;

    move-result-object v0

    invoke-interface {v0, v1, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f060002

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060003

    new-instance v2, Ljavax/microedition/lcdui/Canvas$2;

    invoke-direct {v2, p0}, Ljavax/microedition/lcdui/Canvas$2;-><init>(Ljavax/microedition/lcdui/Canvas;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f060004

    new-instance v2, Ljavax/microedition/lcdui/Canvas$1;

    invoke-direct {v2, p0}, Ljavax/microedition/lcdui/Canvas$1;-><init>(Ljavax/microedition/lcdui/Canvas;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move v0, v3

    goto :goto_0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    if-ne p1, v0, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Canvas;->keyRepeated(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    goto :goto_0
.end method

.method protected abstract paint(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method protected pointerDragged(II)V
    .locals 0

    return-void
.end method

.method protected pointerPressed(II)V
    .locals 0

    return-void
.end method

.method protected pointerReleased(II)V
    .locals 0

    return-void
.end method

.method public repaint()V
    .locals 4

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    if-eqz v0, :cond_3

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->rect:Landroid/graphics/Rect;

    invoke-interface {v1, v2}, Landroid/view/SurfaceHolder;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v1

    if-eqz v1, :cond_2

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    if-nez v2, :cond_4

    new-instance v2, Ljavax/microedition/lcdui/Graphics;

    const/4 v3, 0x0

    invoke-direct {v2, v1, v3}, Ljavax/microedition/lcdui/Graphics;-><init>(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;)V

    iput-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    :goto_0
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {p0, v2}, Ljavax/microedition/lcdui/Canvas;->paint(Ljavax/microedition/lcdui/Graphics;)V

    iget-boolean v2, p0, Ljavax/microedition/lcdui/Canvas;->useController:Z

    if-eqz v2, :cond_0

    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->controller:Lj2ab/android/lcdui/ControllerLayer;

    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    invoke-virtual {v2, v3}, Lj2ab/android/lcdui/ControllerLayer;->paint(Ljavax/microedition/lcdui/Graphics;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v1, :cond_1

    :try_start_2
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v2, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_1
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_2
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :cond_3
    return-void

    :cond_4
    :try_start_4
    iget-object v2, p0, Ljavax/microedition/lcdui/Canvas;->graphics:Ljavax/microedition/lcdui/Graphics;

    iput-object v1, v2, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v2

    if-eqz v1, :cond_5

    :try_start_5
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas;->holder:Landroid/view/SurfaceHolder;

    invoke-interface {v3, v1}, Landroid/view/SurfaceHolder;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    :cond_5
    throw v2

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    throw v2

    :catchall_2
    move-exception v1

    monitor-exit v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    throw v1
.end method

.method public repaint(IIII)V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas;->canvasView:Ljavax/microedition/lcdui/Canvas$CanvasView;

    add-int v1, p1, p3

    add-int v2, p2, p4

    invoke-virtual {v0, p1, p2, v1, v2}, Ljavax/microedition/lcdui/Canvas$CanvasView;->postInvalidate(IIII)V

    :cond_0
    return-void
.end method

.method public serviceRepaints()V
    .locals 0

    return-void
.end method

.method public setFullScreenMode(Z)V
    .locals 0

    return-void
.end method
