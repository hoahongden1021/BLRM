.class public Lj2ab/android/lcdui/ControllerLayer;
.super Ljava/lang/Object;


# static fields
.field private static layerPaint:Landroid/graphics/Paint;


# instance fields
.field private bound:Landroid/graphics/Rect;

.field private buttonList:[Lj2ab/android/lcdui/ControllerButton;

.field private drawBuffer:Landroid/graphics/Bitmap;

.field private drawCanvas:Landroid/graphics/Canvas;

.field private inDown:Z

.field private parent:Ljavax/microedition/lcdui/Canvas;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lj2ab/android/lcdui/ControllerLayer;->layerPaint:Landroid/graphics/Paint;

    sget-object v0, Lj2ab/android/lcdui/ControllerLayer;->layerPaint:Landroid/graphics/Paint;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Canvas;II)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->idList:[I

    array-length v0, v0

    new-array v0, v0, [Lj2ab/android/lcdui/ControllerButton;

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    iput-object p1, p0, Lj2ab/android/lcdui/ControllerLayer;->parent:Ljavax/microedition/lcdui/Canvas;

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->drawBuffer:Landroid/graphics/Bitmap;

    new-instance v0, Landroid/graphics/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->drawBuffer:Landroid/graphics/Bitmap;

    invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->drawCanvas:Landroid/graphics/Canvas;

    invoke-direct {p0}, Lj2ab/android/lcdui/ControllerLayer;->initButton()V

    invoke-direct {p0}, Lj2ab/android/lcdui/ControllerLayer;->paintToBuffer()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lj2ab/android/lcdui/ControllerLayer;->inDown:Z

    return-void
.end method

.method private initButton()V
    .locals 5

    const/16 v4, 0x32

    const/4 v0, 0x0

    :goto_0
    sget-object v1, Lj2ab/android/lcdui/ControllerButton;->idList:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    new-instance v2, Lj2ab/android/lcdui/ControllerButton;

    sget-object v3, Lj2ab/android/lcdui/ControllerButton;->idList:[I

    aget v3, v3, v0

    invoke-direct {v2, p0, v3}, Lj2ab/android/lcdui/ControllerButton;-><init>(Lj2ab/android/lcdui/ControllerLayer;I)V

    aput-object v2, v1, v0

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    if-nez v1, :cond_0

    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    aget-object v2, v2, v0

    iget-object v2, v2, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    iget-object v2, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    aget-object v2, v2, v0

    iget-object v2, v2, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->top:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v4

    iput v1, v0, Landroid/graphics/Rect;->left:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->right:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->right:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    iget v1, v0, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 v1, v1, 0x32

    iput v1, v0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method private paintToBuffer()V
    .locals 2

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lj2ab/android/lcdui/ControllerButton;->draw()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getDrawCanvas()Landroid/graphics/Canvas;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->drawCanvas:Landroid/graphics/Canvas;

    return-object v0
.end method

.method public injectTouchEvent(III)V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p3, :cond_1

    iget-boolean v0, p0, Lj2ab/android/lcdui/ControllerLayer;->inDown:Z

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    if-nez p3, :cond_2

    iput-boolean v2, p0, Lj2ab/android/lcdui/ControllerLayer;->inDown:Z

    :cond_2
    if-ne p3, v2, :cond_3

    iput-boolean v1, p0, Lj2ab/android/lcdui/ControllerLayer;->inDown:Z

    :cond_3
    move v0, v1

    :goto_0
    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->buttonList:[Lj2ab/android/lcdui/ControllerButton;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2, p3}, Lj2ab/android/lcdui/ControllerButton;->injectTouch(III)Z

    move-result v1

    if-nez v1, :cond_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p1, Ljavax/microedition/lcdui/Graphics;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->drawBuffer:Landroid/graphics/Bitmap;

    sget-object v2, Lj2ab/android/lcdui/ControllerLayer;->layerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v3, v3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method public sendKeyEvent(ILandroid/view/KeyEvent;)V
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerLayer;->parent:Ljavax/microedition/lcdui/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerLayer;->parent:Ljavax/microedition/lcdui/Canvas;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Canvas;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, p1, p2}, Ljavax/microedition/lcdui/Canvas;->onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    return-void
.end method
