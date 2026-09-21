.class Lcom/t4game/OneRow_EMAIL_RECEIVE;
.super Ljava/lang/Object;


# static fields
.field static color_friend:I

.field static color_strange:I

.field static color_system:I

.field static email_img_lock:Ljavax/microedition/lcdui/Image;

.field static email_img_readed:Ljavax/microedition/lcdui/Image;

.field static email_img_readno:Ljavax/microedition/lcdui/Image;

.field static email_img_time:Ljavax/microedition/lcdui/Image;


# instance fields
.field bg_color:I

.field color_text:I

.field id:I

.field isLock:Z

.field isReaded:Z

.field lock:Ljavax/microedition/lcdui/Image;

.field read:Ljavax/microedition/lcdui/Image;

.field text:Ljava/lang/String;

.field text_color:I

.field time:Ljava/lang/String;

.field wS:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    const/16 v4, 0x9

    const/16 v3, 0x8

    const/4 v1, 0x0

    const-string v0, "/ui/email_icon.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    move v2, v1

    move v5, v1

    invoke-static/range {v0 .. v5}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    sput-object v2, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_readed:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    move v6, v3

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-static/range {v5 .. v10}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    sput-object v2, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_readno:Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x10

    move-object v5, v0

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-static/range {v5 .. v10}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    sput-object v2, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_lock:Ljavax/microedition/lcdui/Image;

    const/16 v6, 0x18

    move-object v5, v0

    move v7, v1

    move v8, v3

    move v9, v4

    move v10, v1

    invoke-static/range {v5 .. v10}, Ljavax/microedition/lcdui/Image;->createImage(Ljavax/microedition/lcdui/Image;IIIII)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    sput-object v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_time:Ljavax/microedition/lcdui/Image;

    const v0, 0xffff00

    sput v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_system:I

    const/4 v0, -0x1

    sput v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_strange:I

    const v0, 0xffffff

    sput v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_friend:I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x764e00

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->bg_color:I

    const/16 v0, 0x168

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->wS:I

    iput v1, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->id:I

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text_color:I

    const-string v0, "[\u7cfb] \u65e0\u4fe1\u606f"

    iput-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text:Ljava/lang/String;

    const-string v0, "00/00"

    iput-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->time:Ljava/lang/String;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->isLock:Z

    iput-boolean v1, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->isReaded:Z

    iput v1, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    return-void
.end method

.method private paintrow(Ljavax/microedition/lcdui/Graphics;II)V
    .locals 8

    const/4 v7, 0x7

    const/4 v6, 0x4

    const/4 v4, -0x1

    const/4 v3, 0x0

    iget-boolean v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->isReaded:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_readed:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->read:Ljavax/microedition/lcdui/Image;

    :goto_0
    iget-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->read:Ljavax/microedition/lcdui/Image;

    add-int/lit16 v1, p2, 0x168

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x7

    or-int/lit8 v2, v6, 0x10

    invoke-virtual {p1, v0, v1, p3, v2}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-boolean v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->isLock:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_lock:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->lock:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->lock:Ljavax/microedition/lcdui/Image;

    add-int/lit16 v1, p2, 0x168

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x3

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0xb

    add-int/lit8 v2, p3, 0x5

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v0, v1, v2, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_0
    iget v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text_color:I

    if-ne v0, v6, :cond_2

    sget v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_system:I

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    :goto_1
    const/16 v0, 0x9e

    const/16 v1, 0x17

    invoke-virtual {p1, p2, p3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v7, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text:Ljava/lang/String;

    invoke-virtual {v1, v3, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, p2, 0x32

    add-int/lit8 v1, v1, 0x3

    iget v5, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    move v2, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v3, v3, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->time:Ljava/lang/String;

    add-int/lit16 v1, p2, 0x168

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x5

    sub-int/2addr v1, v2

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    iget v5, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    move v2, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_1
    sget-object v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->email_img_readno:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->read:Ljavax/microedition/lcdui/Image;

    goto/16 :goto_0

    :cond_2
    iget v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text_color:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    sget v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_strange:I

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    goto :goto_1

    :cond_3
    sget v0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_friend:I

    iput v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->text:Ljava/lang/String;

    add-int/lit8 v1, p2, 0x32

    iget v5, p0, Lcom/t4game/OneRow_EMAIL_RECEIVE;->color_text:I

    move v2, p3

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2
.end method


# virtual methods
.method paint(Ljavax/microedition/lcdui/Graphics;IIZ)V
    .locals 6

    if-eqz p4, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x9

    add-int/lit8 v2, p2, 0x2d

    const/16 v4, 0x118

    sget v5, Lcom/t4game/Defaults;->sfh:I

    move v3, p3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/t4game/OneRow_EMAIL_RECEIVE;->paintrow(Ljavax/microedition/lcdui/Graphics;II)V

    return-void
.end method
