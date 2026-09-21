.class public Lj2ab/android/lcdui/ControllerButton;
.super Ljava/lang/Object;


# static fields
.field public static final CONTROLLER_BUTTON_DOWN:I = 0x0

.field public static final CONTROLLER_BUTTON_UP:I = 0x1

.field public static final KEY_CLEAR:I = -0x8

.field public static final KEY_DN:I = -0x2

.field public static final KEY_LF:I = -0x3

.field public static final KEY_LSOFT:I = -0x15

.field public static final KEY_NUM0:I = 0x30

.field public static final KEY_NUM1:I = 0x31

.field public static final KEY_NUM2:I = 0x32

.field public static final KEY_NUM3:I = 0x33

.field public static final KEY_NUM4:I = 0x34

.field public static final KEY_NUM5:I = 0x35

.field public static final KEY_NUM6:I = 0x36

.field public static final KEY_NUM7:I = 0x37

.field public static final KEY_NUM8:I = 0x38

.field public static final KEY_NUM9:I = 0x39

.field public static final KEY_OK:I = -0x5

.field public static final KEY_POUND:I = 0x23

.field public static final KEY_RSOFT:I = -0x16

.field public static final KEY_RT:I = -0x4

.field public static final KEY_STAR:I = 0x2a

.field public static final KEY_UP:I = -0x1

.field private static final bigButtonSize:I = 0x32

.field private static final buttonPad:I = 0xa

.field private static final defaultButtonSize:I = 0x28

.field public static downPaint:Landroid/graphics/Paint; = null

.field public static final idList:[I

.field private static final listPad:I = 0x6

.field private static final screenHeight:I = 0x1e0

.field private static final screenWidth:I = 0x140

.field private static final smallButtonSize:I = 0x1e

.field public static textPaint:Landroid/graphics/Paint;

.field public static upPaint:Landroid/graphics/Paint;


# instance fields
.field public bound:Landroid/graphics/Rect;

.field private canvas:Landroid/graphics/Canvas;

.field private id:I

.field private parent:Lj2ab/android/lcdui/ControllerLayer;

.field private state:I

.field private text:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lj2ab/android/lcdui/ControllerButton;->idList:[I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lj2ab/android/lcdui/ControllerButton;->downPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lj2ab/android/lcdui/ControllerButton;->upPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    sput-object v0, Lj2ab/android/lcdui/ControllerButton;->textPaint:Landroid/graphics/Paint;

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->downPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->downPaint:Landroid/graphics/Paint;

    const v1, -0xffff01

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->upPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->upPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->textPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->textPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    sget-object v0, Lj2ab/android/lcdui/ControllerButton;->textPaint:Landroid/graphics/Paint;

    const v1, -0x777778

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x2
        -0x3
        -0x4
        -0x8
        -0x5
        -0x15
        -0x16
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x23
        0x2a
    .end array-data
.end method

.method constructor <init>(Lj2ab/android/lcdui/ControllerLayer;I)V
    .locals 4

    const/16 v3, 0xf0

    const/16 v2, 0x34

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    iput-object p1, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    invoke-virtual {v0}, Lj2ab/android/lcdui/ControllerLayer;->getDrawCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->canvas:Landroid/graphics/Canvas;

    const/4 v0, 0x1

    iput v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    invoke-static {p2}, Lj2ab/android/lcdui/ControllerButton;->transformRect(I)Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    sparse-switch p2, :sswitch_data_0

    :goto_0
    :sswitch_0
    sparse-switch p2, :sswitch_data_1

    :goto_1
    return-void

    :sswitch_1
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_2
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    const/16 v1, 0x122

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_3
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    const/16 v1, 0xa

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_4
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    const/16 v1, 0x154

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_5
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, v3, v1}, Landroid/graphics/Rect;->offset(II)V

    goto :goto_0

    :sswitch_6
    const-string v0, "1"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_7
    const-string v0, "2"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_8
    const-string v0, "3"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_9
    const-string v0, "4"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_a
    const-string v0, "5"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_b
    const-string v0, "6"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_c
    const-string v0, "7"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_d
    const-string v0, "8"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_e
    const-string v0, "9"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_f
    const-string v0, "*"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_10
    const-string v0, "0"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_11
    const-string v0, "#"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_12
    const-string v0, "U"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_13
    const-string v0, "D"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_14
    const-string v0, "L"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_15
    const-string v0, "R"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_16
    const-string v0, "C"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_17
    const-string v0, "OK"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto :goto_1

    :sswitch_18
    const-string v0, "LS"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "RS"

    iput-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    goto/16 :goto_1

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_5
        -0x15 -> :sswitch_0
        -0x8 -> :sswitch_4
        -0x5 -> :sswitch_4
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_3
        -0x2 -> :sswitch_3
        -0x1 -> :sswitch_3
        0x23 -> :sswitch_2
        0x2a -> :sswitch_2
        0x30 -> :sswitch_2
        0x31 -> :sswitch_1
        0x32 -> :sswitch_1
        0x33 -> :sswitch_1
        0x34 -> :sswitch_1
        0x35 -> :sswitch_1
        0x36 -> :sswitch_1
        0x37 -> :sswitch_2
        0x38 -> :sswitch_2
        0x39 -> :sswitch_2
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x16 -> :sswitch_19
        -0x15 -> :sswitch_18
        -0x8 -> :sswitch_16
        -0x5 -> :sswitch_17
        -0x4 -> :sswitch_15
        -0x3 -> :sswitch_14
        -0x2 -> :sswitch_13
        -0x1 -> :sswitch_12
        0x23 -> :sswitch_11
        0x2a -> :sswitch_f
        0x30 -> :sswitch_10
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_a
        0x36 -> :sswitch_b
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_e
    .end sparse-switch
.end method

.method private static getBigRect(II)Landroid/graphics/Rect;
    .locals 1

    const/16 v0, 0x32

    invoke-static {p0, p1, v0, v0}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getListRect(III)Landroid/graphics/Rect;
    .locals 2

    const/4 v0, 0x0

    sub-int v1, p1, p0

    mul-int/lit8 v1, v1, 0x2e

    invoke-static {v0, v1, p2, p2}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private static getRect(IIII)Landroid/graphics/Rect;
    .locals 3

    new-instance v0, Landroid/graphics/Rect;

    add-int v1, p0, p2

    add-int v2, p1, p3

    invoke-direct {v0, p0, p1, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static transformRect(I)Landroid/graphics/Rect;
    .locals 6

    const/16 v5, 0x3c

    const/16 v4, 0x50

    const/4 v3, 0x0

    const/16 v2, 0x1e

    const/4 v1, 0x6

    sparse-switch p0, :sswitch_data_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :sswitch_0
    invoke-static {v5, v3}, Lj2ab/android/lcdui/ControllerButton;->getBigRect(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_1
    const/16 v0, 0x78

    invoke-static {v5, v0}, Lj2ab/android/lcdui/ControllerButton;->getBigRect(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_2
    invoke-static {v3, v5}, Lj2ab/android/lcdui/ControllerButton;->getBigRect(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_3
    const/16 v0, 0x78

    invoke-static {v0, v5}, Lj2ab/android/lcdui/ControllerButton;->getBigRect(II)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_4
    const/16 v0, 0x28

    invoke-static {v3, v3, v4, v0}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_5
    const/16 v0, 0x28

    invoke-static {v3, v3, v4, v0}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_6
    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_7
    const/4 v0, 0x2

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_8
    const/4 v0, 0x3

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_9
    const/4 v0, 0x4

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_a
    const/4 v0, 0x5

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_b
    invoke-static {v1, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_c
    invoke-static {v1, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_d
    const/4 v0, 0x5

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_e
    const/4 v0, 0x4

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_f
    const/4 v0, 0x3

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_10
    const/4 v0, 0x2

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_11
    const/4 v0, 0x1

    invoke-static {v0, v1, v2}, Lj2ab/android/lcdui/ControllerButton;->getListRect(III)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_12
    const/16 v0, 0x28

    invoke-static {v3, v3, v4, v0}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :sswitch_13
    const/16 v0, 0x32

    invoke-static {v3, v0, v4, v4}, Lj2ab/android/lcdui/ControllerButton;->getRect(IIII)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x16 -> :sswitch_5
        -0x15 -> :sswitch_4
        -0x8 -> :sswitch_12
        -0x5 -> :sswitch_13
        -0x4 -> :sswitch_3
        -0x3 -> :sswitch_2
        -0x2 -> :sswitch_1
        -0x1 -> :sswitch_0
        0x23 -> :sswitch_11
        0x2a -> :sswitch_f
        0x30 -> :sswitch_10
        0x31 -> :sswitch_6
        0x32 -> :sswitch_7
        0x33 -> :sswitch_8
        0x34 -> :sswitch_9
        0x35 -> :sswitch_a
        0x36 -> :sswitch_b
        0x37 -> :sswitch_c
        0x38 -> :sswitch_d
        0x39 -> :sswitch_e
    .end sparse-switch
.end method


# virtual methods
.method public draw()V
    .locals 5

    iget v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerButton;->text:Ljava/lang/String;

    iget-object v2, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v2

    int-to-float v2, v2

    iget-object v3, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    add-int/lit8 v3, v3, 0x5

    int-to-float v3, v3

    sget-object v4, Lj2ab/android/lcdui/ControllerButton;->textPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void

    :pswitch_0
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    sget-object v2, Lj2ab/android/lcdui/ControllerButton;->downPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->canvas:Landroid/graphics/Canvas;

    iget-object v1, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    sget-object v2, Lj2ab/android/lcdui/ControllerButton;->upPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public injectTouch(III)Z
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x1

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->bound:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    packed-switch p3, :pswitch_data_0

    :cond_0
    :goto_0
    return v5

    :pswitch_0
    iget v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    if-ne v0, v4, :cond_0

    iput v5, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    iget v1, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    new-instance v2, Landroid/view/KeyEvent;

    iget v3, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    invoke-direct {v2, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;->sendKeyEvent(ILandroid/view/KeyEvent;)V

    invoke-virtual {p0}, Lj2ab/android/lcdui/ControllerButton;->draw()V

    goto :goto_0

    :pswitch_1
    iget v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    if-nez v0, :cond_0

    iput v4, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    iget v1, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    new-instance v2, Landroid/view/KeyEvent;

    iget v3, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;->sendKeyEvent(ILandroid/view/KeyEvent;)V

    invoke-virtual {p0}, Lj2ab/android/lcdui/ControllerButton;->draw()V

    goto :goto_0

    :pswitch_2
    iget v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    if-ne v0, v4, :cond_0

    iput v5, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    iget v1, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    new-instance v2, Landroid/view/KeyEvent;

    iget v3, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    invoke-direct {v2, v5, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;->sendKeyEvent(ILandroid/view/KeyEvent;)V

    invoke-virtual {p0}, Lj2ab/android/lcdui/ControllerButton;->draw()V

    goto :goto_0

    :cond_1
    iget v0, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    if-nez v0, :cond_0

    iput v4, p0, Lj2ab/android/lcdui/ControllerButton;->state:I

    iget-object v0, p0, Lj2ab/android/lcdui/ControllerButton;->parent:Lj2ab/android/lcdui/ControllerLayer;

    iget v1, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    new-instance v2, Landroid/view/KeyEvent;

    iget v3, p0, Lj2ab/android/lcdui/ControllerButton;->id:I

    invoke-direct {v2, v4, v3}, Landroid/view/KeyEvent;-><init>(II)V

    invoke-virtual {v0, v1, v2}, Lj2ab/android/lcdui/ControllerLayer;->sendKeyEvent(ILandroid/view/KeyEvent;)V

    invoke-virtual {p0}, Lj2ab/android/lcdui/ControllerButton;->draw()V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
