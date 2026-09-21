.class public Lcom/t4game/UI_ChoiceBox;
.super Lcom/t4game/UI_Super;


# instance fields
.field final BOX_W:B

.field BackGroundColor:[B

.field ChoiceId:[Ljava/lang/String;

.field ChoiceImage:[B

.field ChoiceNum:[B

.field ChoiceTxt:[Ljava/lang/String;

.field ChoiceType:B

.field private Index:B

.field private StopTime:B

.field Sub_Id:B

.field Sub_Y:S

.field private Tick:B

.field private final Time:B

.field private TotalNum:B

.field TxtColor:[B

.field private command:[B

.field isFocus:Z

.field public shorwFocuseBack:Z

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/16 v1, 0x14

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->BOX_W:B

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iput-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Time:B

    iput-object p1, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    const/16 v0, 0x9

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->type:B

    return-void
.end method

.method private calcMaxW([Ljava/lang/String;[B)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    aget-object v2, p1, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    int-to-short v2, v2

    add-int/lit8 v2, v2, 0x1e

    int-to-short v2, v2

    if-eqz p2, :cond_0

    sget-object v3, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v0

    if-eqz v3, :cond_0

    sget-object v3, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    add-int/2addr v2, v3

    int-to-short v2, v2

    :cond_0
    if-ge v1, v2, :cond_1

    move v1, v2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    iput-short v1, p0, Lcom/t4game/UI_ChoiceBox;->w:S

    return-void
.end method

.method private drawChoiceBox(Ljavax/microedition/lcdui/Graphics;SSBBBB)V
    .locals 6

    const/4 v0, -0x1

    if-nez p4, :cond_1

    if-eq p5, v0, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x1

    add-int/lit8 v3, p3, 0x3

    move v2, p2

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_0
    return-void

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x0

    add-int/lit8 v3, p3, 0x3

    move v2, p2

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0

    :cond_1
    if-eq p5, v0, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x3

    add-int/lit8 v3, p3, 0x3

    move v2, p2

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x2

    add-int/lit8 v3, p3, 0x3

    move v2, p2

    move v4, p6

    move v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0
.end method


# virtual methods
.method public GetCommand()[B
    .locals 7

    const/4 v4, 0x0

    const/4 v6, -0x1

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    if-nez v0, :cond_1

    move-object v0, v4

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    if-nez v0, :cond_3

    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    array-length v1, v1

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v1, v1, v0

    if-eq v1, v6, :cond_2

    const/4 v1, 0x1

    new-array v1, v1, [B

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v0, v2, v0

    aput-byte v0, v1, v3

    move-object v0, v1

    goto :goto_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    goto :goto_0

    :cond_4
    move v0, v3

    move v1, v3

    :goto_2
    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    array-length v2, v2

    if-ge v0, v2, :cond_6

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v2, v2, v0

    if-eq v2, v6, :cond_5

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    :cond_5
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_2

    :cond_6
    if-nez v1, :cond_7

    move-object v0, v4

    goto :goto_0

    :cond_7
    new-array v0, v1, [B

    move v2, v3

    :goto_3
    if-ge v2, v1, :cond_0

    move v4, v3

    :goto_4
    iget-object v5, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    array-length v5, v5

    if-ge v3, v5, :cond_9

    iget-object v5, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v5, v5, v3

    if-eq v5, v6, :cond_8

    iget-object v4, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v4, v4, v3

    aput-byte v4, v0, v2

    aget-byte v4, v0, v2

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    :cond_8
    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_4

    :cond_9
    add-int/lit8 v2, v2, 0x1

    int-to-byte v2, v2

    move v3, v4

    goto :goto_3
.end method

.method public clearAction()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-short v0, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    return-void
.end method

.method protected clone()Lcom/t4game/UI_Super;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/t4game/UI_ChoiceBox;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 9

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    if-nez v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    if-gtz v0, :cond_1

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    :cond_1
    :goto_1
    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v0, p2

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuY:I

    iget-short v0, p0, Lcom/t4game/UI_Super;->w:S

    add-int/lit8 v0, v0, 0x14

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v1, v1

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    const/4 v0, 0x0

    move v8, v0

    :goto_2
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_12

    iget-short v2, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v0, p2

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v8

    add-int/2addr v0, v1

    int-to-short v3, v0

    iget-byte v4, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aget-byte v5, v0, v8

    const/16 v6, 0x14

    sget v0, Lcom/t4game/Defaults;->sfh:I

    int-to-byte v7, v0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v7}, Lcom/t4game/UI_ChoiceBox;->drawChoiceBox(Ljavax/microedition/lcdui/Graphics;SSBBBB)V

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    if-eqz v0, :cond_a

    sget-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v1, v1, v8

    aget-object v0, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v0, v0, 0x14

    sget-object v1, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v2, v2, v8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v4, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v4, v4, v8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-boolean v0, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    if-eqz v0, :cond_4

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v0, v8, :cond_4

    iget-boolean v0, p0, Lcom/t4game/UI_ChoiceBox;->shorwFocuseBack:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget-short v2, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v3, p2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_Super;->w:S

    iget-short v5, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_2
    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_3
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v2, 0x19

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v3, v3, v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_9

    const/4 v0, 0x0

    :goto_4
    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    sget-object v3, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v4, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v4, v4, v8

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_5

    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    goto/16 :goto_1

    :cond_4
    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_3

    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    if-eqz v1, :cond_8

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v8, :cond_8

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x19

    sget-object v2, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v3, v3, v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-lt v0, v1, :cond_6

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    if-gtz v0, :cond_7

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    :cond_6
    :goto_5
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v3, v3, v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_6
    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :goto_7
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_2

    :cond_7
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x19

    sget-object v1, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v2, v2, v8

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    goto :goto_5

    :cond_8
    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    sget-object v2, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v3, v3, v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_6

    :cond_9
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    sget-object v2, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    aget-byte v3, v3, v8

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_6

    :cond_a
    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v0, v0, 0x14

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-boolean v0, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    if-eqz v0, :cond_c

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v0, v8, :cond_c

    iget-boolean v0, p0, Lcom/t4game/UI_ChoiceBox;->shorwFocuseBack:Z

    if-eqz v0, :cond_b

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget-short v2, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v3, p2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v8

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_Super;->w:S

    iget-short v5, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_b
    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    const/4 v2, 0x1

    aget-byte v1, v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_8
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    invoke-static {v0}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v2, 0x19

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_11

    const/4 v0, 0x0

    :goto_9
    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    const/16 v3, 0x19

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_d

    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    :cond_c
    sget-object v0, Lcom/t4game/Data;->color:[I

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    const/4 v2, 0x0

    aget-byte v1, v1, v2

    aget v0, v0, v1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_8

    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v2, v2, v8

    const/4 v3, 0x0

    const/4 v4, 0x2

    sub-int/2addr v0, v4

    invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-boolean v1, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    if-eqz v1, :cond_10

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v8, :cond_10

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-static {v1}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    sub-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x19

    if-lt v0, v1, :cond_e

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    if-gtz v0, :cond_f

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    :cond_e
    :goto_a
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_b
    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_Super;->w:S

    iget-short v3, p0, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto/16 :goto_7

    :cond_f
    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v1, v1, v8

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x19

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    goto :goto_a

    :cond_10
    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_b

    :cond_11
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_Super;->x:S

    add-int/lit8 v1, v1, 0x14

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sub-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v3, v8

    add-int/2addr v2, v3

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_b

    :cond_12
    if-lez p2, :cond_13

    iget-object v0, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v0, v0, Lcom/t4game/UI_Super;->x:S

    iget-object v1, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v1, v1, Lcom/t4game/UI_Super;->y:S

    iget-object v2, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v2, v2, Lcom/t4game/UI_Super;->w:S

    iget-object v3, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v3, v3, Lcom/t4game/UI_Super;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :goto_c
    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->h:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v0, v0

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-short v3, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v4, p0, Lcom/t4game/UI_Super;->w:S

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_Super;->y:S

    sub-int/2addr v4, p2

    iget-short v5, p0, Lcom/t4game/UI_ChoiceBox;->h:S

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_13
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_c
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x0

    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    :try_start_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    const/4 v0, 0x2

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->BackGroundColor:[B

    move v0, v3

    :goto_0
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->BackGroundColor:[B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    move v1, v3

    :goto_1
    if-ge v1, v0, :cond_1

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :catch_0
    move-exception v0

    :cond_1
    iget-short v0, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->w:S

    const/16 v1, 0xe

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->w:S

    return-void
.end method

.method public keyEvent(I)V
    .locals 5

    const/16 v1, 0x14

    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-ne p1, v3, :cond_4

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    iput-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-lez v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v2, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v2, v2, Lcom/t4game/UI_Super;->focusY:S

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v1, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v1, v1, Lcom/t4game/UI_Super;->focusY:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    goto :goto_0

    :cond_3
    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    iput-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_5

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v1, v1

    if-lt v0, v1, :cond_6

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v0, v0

    sub-int/2addr v0, v4

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_6
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    add-int/lit8 v0, v0, 0x1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v2, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v2, v2, Lcom/t4game/UI_Super;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_Super;->h:S

    add-int/2addr v1, v2

    if-le v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v1, v1

    if-ne v0, v1, :cond_7

    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    iget-short v2, p0, Lcom/t4game/UI_Super;->h:S

    sget v3, Lcom/t4game/Defaults;->sfh:I

    rem-int/2addr v2, v3

    sub-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    goto/16 :goto_0

    :cond_7
    iget-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    goto/16 :goto_0

    :cond_8
    const/4 v0, -0x3

    if-ne p1, v0, :cond_9

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto/16 :goto_0

    :cond_9
    const/4 v0, -0x4

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x5

    if-eq p1, v0, :cond_b

    const/4 v0, -0x6

    if-ne p1, v0, :cond_0

    :cond_b
    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    iput-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    if-nez v0, :cond_d

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v0, :cond_c

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_c
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aput-byte v3, v1, v0

    goto :goto_2

    :cond_d
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aget-byte v0, v0, v1

    if-eq v0, v3, :cond_f

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v3, v0, v1

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-lez v0, :cond_10

    move v0, v2

    :goto_3
    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-ge v0, v1, :cond_10

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aget-byte v1, v1, v0

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v2, :cond_e

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aput-byte v3, v1, v0

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    if-le v1, v0, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aget-byte v1, v1, v0

    if-ne v1, v3, :cond_0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    goto/16 :goto_0

    :cond_e
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_3

    :cond_f
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v0, v1

    :cond_10
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-lez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-gt v0, v1, :cond_12

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v1, v4

    aget-byte v0, v0, v1

    if-eq v0, v3, :cond_11

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v2, v4

    aget-byte v1, v1, v2

    aput-byte v3, v0, v1

    :cond_11
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v1, v4

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v0, v1

    goto/16 :goto_0

    :cond_12
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v3, v0, v1

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    goto/16 :goto_0
.end method

.method public pointEvent(II)B
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, -0x1

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-short v1, p0, Lcom/t4game/UI_ChoiceBox;->x:S

    aput v1, v0, v6

    iget-short v1, p0, Lcom/t4game/UI_ChoiceBox;->y:S

    iget-object v2, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    aput v1, v0, v5

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->x:S

    iget-short v3, p0, Lcom/t4game/UI_ChoiceBox;->w:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-short v2, p0, Lcom/t4game/UI_ChoiceBox;->y:S

    iget-short v3, p0, Lcom/t4game/UI_ChoiceBox;->h:S

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    aput v2, v0, v1

    invoke-static {p1, p2, v0}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iput-boolean v5, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    invoke-static {v5}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v0

    if-eq v0, v4, :cond_0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    :cond_0
    iput-byte v6, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    if-nez v0, :cond_2

    move v0, v6

    :goto_0
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    array-length v1, v1

    if-ge v0, v1, :cond_8

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v0, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aput-byte v4, v1, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aget-byte v0, v0, v1

    if-eq v0, v4, :cond_5

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v4, v0, v1

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-lez v0, :cond_6

    move v0, v6

    :goto_2
    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-ge v0, v1, :cond_6

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aget-byte v1, v1, v0

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aput-byte v4, v1, v0

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    if-le v1, v0, :cond_3

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    aget-byte v1, v1, v0

    if-ne v1, v4, :cond_3

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    :cond_3
    move v0, v4

    :goto_3
    return v0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v0, v1

    :cond_6
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-lez v0, :cond_8

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    if-gt v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v1, v5

    aget-byte v0, v0, v1

    if-eq v0, v4, :cond_7

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v2, v5

    aget-byte v1, v1, v2

    aput-byte v4, v0, v1

    :cond_7
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    sub-int/2addr v1, v5

    iget-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v2, v0, v1

    :cond_8
    :goto_4
    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    goto :goto_3

    :cond_9
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    aput-byte v4, v0, v1

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Index:B

    goto :goto_4

    :cond_a
    move v0, v4

    goto :goto_3
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->TxtColor:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->BackGroundColor:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    return-void
.end method

.method public setChoice([Ljava/lang/String;[B)I
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-nez p1, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    iput-object p1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    iput-byte v3, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    array-length v0, p1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    move v0, v3

    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_2

    iget-byte v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceType:B

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    aput-byte v3, v1, v0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceNum:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceTxt:[Ljava/lang/String;

    array-length v0, v0

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ChoiceImage:[B

    array-length v1, v1

    if-eq v0, v1, :cond_3

    move v0, v4

    goto :goto_0

    :cond_3
    move v0, v3

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 3

    const/4 v2, 0x0

    iput-boolean p1, p0, Lcom/t4game/UI_ChoiceBox;->isFocus:Z

    if-eqz p1, :cond_0

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Tick:B

    const/16 v0, 0x14

    iput-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->StopTime:B

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->id:B

    if-nez v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iput-byte v2, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Id:B

    :cond_0
    return-void
.end method

.method public setSub_Y()V
    .locals 2

    iget-short v0, p0, Lcom/t4game/UI_Super;->y:S

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_ChoiceBox;->Sub_Y:S

    return-void
.end method

.method public setTotalNum(B)V
    .locals 3

    if-gtz p1, :cond_1

    :cond_0
    return-void

    :cond_1
    iput-byte p1, p0, Lcom/t4game/UI_ChoiceBox;->TotalNum:B

    new-array v0, p1, [B

    iput-object v0, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_ChoiceBox;->command:[B

    const/4 v2, -0x1

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public setY(S)V
    .locals 0

    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->setY(S)V

    invoke-virtual {p0}, Lcom/t4game/UI_ChoiceBox;->setSub_Y()V

    return-void
.end method
