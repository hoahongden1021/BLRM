.class Ljavax/microedition/lcdui/Canvas$CanvasView;
.super Landroid/view/SurfaceView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavax/microedition/lcdui/Canvas;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CanvasView"
.end annotation


# instance fields
.field private graphics:Ljavax/microedition/lcdui/Graphics;

.field final synthetic this$0:Ljavax/microedition/lcdui/Canvas;


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Canvas;Landroid/content/Context;)V
    .locals 4

    const/4 v3, 0x0

    iput-object p1, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-direct {p0, p2}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->setFocusable(Z)V

    sget v0, Lj2ab/android/app/J2ABMIDletActivity;->displayWidth:I

    sget v1, Lj2ab/android/app/J2ABMIDletActivity;->displayHeight:I

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2, v3, v3, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-static {p1, v2}, Ljavax/microedition/lcdui/Canvas;->access$002(Ljavax/microedition/lcdui/Canvas;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    return-void
.end method

.method private getMeKeyCode(I)I
    .locals 1

    sparse-switch p1, :sswitch_data_0

    const/16 v0, -0x3e8

    :goto_0
    return v0

    :sswitch_0
    const/4 v0, -0x1

    goto :goto_0

    :sswitch_1
    const/4 v0, -0x2

    goto :goto_0

    :sswitch_2
    const/4 v0, -0x3

    goto :goto_0

    :sswitch_3
    const/4 v0, -0x4

    goto :goto_0

    :sswitch_4
    const/4 v0, -0x5

    goto :goto_0

    :sswitch_5
    const/4 v0, -0x6

    goto :goto_0

    :sswitch_6
    const/4 v0, -0x7

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_0
        0x14 -> :sswitch_1
        0x15 -> :sswitch_2
        0x16 -> :sswitch_3
        0x17 -> :sswitch_4
        0x2c -> :sswitch_6
        0x2d -> :sswitch_5
    .end sparse-switch
.end method


# virtual methods
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getMeKeyCode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas;->keyPressed(I)V

    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getMeKeyCode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas;->keyRepeated(I)V

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getMeKeyCode(I)I

    move-result v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Canvas;->keyReleased(I)V

    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :goto_0
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-static {v3}, Ljavax/microedition/lcdui/Canvas;->access$100(Ljavax/microedition/lcdui/Canvas;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-static {v3}, Ljavax/microedition/lcdui/Canvas;->access$200(Ljavax/microedition/lcdui/Canvas;)Lj2ab/android/lcdui/ControllerLayer;

    move-result-object v3

    invoke-virtual {v3, v0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;->injectTouchEvent(III)V

    :cond_0
    const-wide/16 v0, 0x32

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    const/4 v0, 0x1

    return v0

    :pswitch_0
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v3, v0, v1}, Ljavax/microedition/lcdui/Canvas;->pointerPressed(II)V

    goto :goto_0

    :pswitch_1
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v3, v0, v1}, Ljavax/microedition/lcdui/Canvas;->pointerReleased(II)V

    goto :goto_0

    :pswitch_2
    iget-object v3, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v3, v0, v1}, Ljavax/microedition/lcdui/Canvas;->pointerDragged(II)V

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Canvas;->showNotify()V

    :goto_0
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->onWindowFocusChanged(Z)V

    return-void

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$CanvasView;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Canvas;->hideNotify()V

    goto :goto_0
.end method
