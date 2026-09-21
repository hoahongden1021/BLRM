.class public Ljavax/microedition/lcdui/Font;
.super Ljava/lang/Object;


# static fields
.field public static final FACE_MONOSPACE:I = 0x20

.field public static final FACE_PROPORTIONAL:I = 0x40

.field public static final FACE_SYSTEM:I = 0x0

.field public static final FONT_INPUT_TEXT:I = 0x1

.field public static final FONT_STATIC_TEXT:I = 0x0

.field public static final SIZE_LARGE:I = 0x16

.field public static final SIZE_MEDIUM:I = 0x14

.field public static final SIZE_MICRO:I = 0xe

.field public static final SIZE_SMALL:I = 0x12

.field public static final STYLE_BOLD:I = 0x1

.field public static final STYLE_ITALIC:I = 0x2

.field public static final STYLE_PLAIN:I = 0x0

.field public static final STYLE_UNDERLINED:I = 0x4


# instance fields
.field private fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

.field private size:I

.field private typefacePaint:Landroid/graphics/Paint;


# direct methods
.method protected constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Ljavax/microedition/lcdui/Font;->size:I

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Paint;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;)V

    iput p2, p0, Ljavax/microedition/lcdui/Font;->size:I

    return-void
.end method

.method protected constructor <init>(Landroid/graphics/Typeface;I)V
    .locals 1

    invoke-static {p1}, Ljavax/microedition/lcdui/Font;->createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Paint;I)V

    return-void
.end method

.method private static createPaint(Landroid/graphics/Typeface;)Landroid/graphics/Paint;
    .locals 1

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    invoke-virtual {v0, p0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    return-object v0
.end method

.method public static getDefaultFont()Ljavax/microedition/lcdui/Font;
    .locals 3

    new-instance v0, Ljavax/microedition/lcdui/Font;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method public static getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 3

    new-instance v0, Ljavax/microedition/lcdui/Font;

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    const/16 v2, 0x14

    invoke-direct {v0, v1, v2}, Ljavax/microedition/lcdui/Font;-><init>(Landroid/graphics/Typeface;I)V

    return-object v0
.end method

.method public static getFont(III)Ljavax/microedition/lcdui/Font;
    .locals 1

    new-instance v0, Ljavax/microedition/lcdui/Font;

    invoke-direct {v0, p2}, Ljavax/microedition/lcdui/Font;-><init>(I)V

    invoke-static {v0, p0, p1, p2}, Ljavax/microedition/lcdui/Font;->getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method protected static getFont(Ljavax/microedition/lcdui/Font;III)Ljavax/microedition/lcdui/Font;
    .locals 4

    const/4 v3, 0x0

    sparse-switch p1, :sswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown face "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_0
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    :goto_0
    and-int/lit8 v1, p2, 0x1

    if-eqz v1, :cond_2

    or-int/lit8 v1, v3, 0x1

    :goto_1
    and-int/lit8 v2, p2, 0x2

    if-eqz v2, :cond_0

    or-int/lit8 v1, v1, 0x2

    :cond_0
    and-int/lit8 v2, p2, 0x4

    if-eqz v2, :cond_1

    or-int/lit8 v2, v3, 0x8

    :goto_2
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    int-to-float v0, p3

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Font;->setTypefacePaint(Landroid/graphics/Paint;)V

    return-object p0

    :sswitch_1
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    goto :goto_0

    :sswitch_2
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_1
    move v2, v3

    goto :goto_2

    :cond_2
    move v1, v3

    goto :goto_1

    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x20 -> :sswitch_0
        0x40 -> :sswitch_2
    .end sparse-switch
.end method


# virtual methods
.method public charWidth(C)I
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    new-array v0, v2, [C

    aput-char p1, v0, v1

    invoke-virtual {p0, v0, v1, v2}, Ljavax/microedition/lcdui/Font;->charWidth([CII)I

    move-result v0

    return v0
.end method

.method public charWidth([CII)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x2

    return v0
.end method

.method public getBaselinePosition()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->ascent()F

    move-result v0

    neg-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    return v0
.end method

.method public getFace()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x3

    return v0
.end method

.method public getScale()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Font;->size:I

    return v0
.end method

.method public getStyle()I
    .locals 3

    const/4 v0, 0x0

    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Typeface;->isBold()Z

    move-result v2

    if-eqz v2, :cond_0

    or-int/lit8 v0, v0, 0x1

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v1

    if-eqz v1, :cond_1

    or-int/lit8 v0, v0, 0x2

    :cond_1
    iget-object v1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v1

    if-eqz v1, :cond_2

    or-int/lit8 v0, v0, 0x4

    :cond_2
    return v0
.end method

.method public getTypefacePaint()Landroid/graphics/Paint;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public isBold()Z
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isBold()Z

    move-result v0

    return v0
.end method

.method public isItalic()Z
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Typeface;->isItalic()Z

    move-result v0

    return v0
.end method

.method public isPlain()Z
    .locals 1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Font;->getStyle()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isUnderlined()Z
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->isUnderlineText()Z

    move-result v0

    return v0
.end method

.method public setTypefacePaint(Landroid/graphics/Paint;)V
    .locals 1

    iput-object p1, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/Font;->fontMetrics:Landroid/graphics/Paint$FontMetricsInt;

    return-void
.end method

.method public stringWidth(Ljava/lang/String;)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public substringWidth(Ljava/lang/String;II)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Font;->typefacePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method
