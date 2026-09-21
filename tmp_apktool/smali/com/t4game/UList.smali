.class public Lcom/t4game/UList;
.super Ljava/lang/Object;


# instance fields
.field public bColorFont:Z

.field public bFocus:Z

.field private color:[I

.field public h:I

.field public index:I

.field public rowH:I

.field public rowNum:I

.field public rowStrOffy:I

.field private rowTotalNum:I

.field public rowY:I

.field public str:[Ljava/lang/String;

.field public values:[Ljava/util/Vector;

.field public w:I

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>()V
    .locals 4

    const/16 v0, 0x64

    const/4 v3, 0x0

    const/4 v2, 0x1

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/t4game/UList;->x:I

    iput v1, p0, Lcom/t4game/UList;->y:I

    iput v0, p0, Lcom/t4game/UList;->w:I

    iput v0, p0, Lcom/t4game/UList;->h:I

    iput v2, p0, Lcom/t4game/UList;->rowNum:I

    iput v2, p0, Lcom/t4game/UList;->rowTotalNum:I

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iput v0, p0, Lcom/t4game/UList;->rowH:I

    iput v1, p0, Lcom/t4game/UList;->rowY:I

    iput v1, p0, Lcom/t4game/UList;->index:I

    iput v1, p0, Lcom/t4game/UList;->rowStrOffy:I

    iput-boolean v2, p0, Lcom/t4game/UList;->bFocus:Z

    iput-boolean v1, p0, Lcom/t4game/UList;->bColorFont:Z

    iput-object v3, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iput-object v3, p0, Lcom/t4game/UList;->color:[I

    iput-object v3, p0, Lcom/t4game/UList;->values:[Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method public autoLayout()V
    .locals 10

    const/4 v8, -0x1

    const-string v9, "</#>"

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/t4game/UList;->rowTotalNum:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "</#>"

    invoke-virtual {v1, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-le v1, v8, :cond_1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v2, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v4, v4, v0

    iget-object v5, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v5, v5, v0

    const-string v6, "<#"

    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v6, v6, v0

    const-string v7, "$>"

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    add-int/lit8 v6, v6, 0x2

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</#>"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/UList;->w:I

    if-le v1, v2, :cond_0

    iget v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v1, v1, v0

    const-string v2, "</"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gt v1, v8, :cond_0

    iget-object v1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/t4game/UList;->w:I

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v1, v2, v3}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/t4game/UList;->rowTotalNum:I

    array-length v1, v1

    const/4 v3, 0x1

    sub-int/2addr v1, v3

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/t4game/UList;->h:I

    iget v1, p0, Lcom/t4game/UList;->rowH:I

    div-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UList;->rowNum:I

    iget v0, p0, Lcom/t4game/UList;->rowNum:I

    iget v1, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UList;->h:I

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v0, v0

    iget v1, p0, Lcom/t4game/UList;->rowNum:I

    if-ge v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v0, v0

    iput v0, p0, Lcom/t4game/UList;->rowNum:I

    :cond_3
    iget v0, p0, Lcom/t4game/UList;->rowH:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    if-ge v0, v1, :cond_4

    sget v0, Lcom/t4game/Defaults;->sfh:I

    iput v0, p0, Lcom/t4game/UList;->rowH:I

    :cond_4
    iget v0, p0, Lcom/t4game/UList;->rowH:I

    sget v1, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/UList;->rowStrOffy:I

    return-void
.end method

.method public bFocus()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/UList;->bFocus:Z

    return v0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    iget-boolean v0, p0, Lcom/t4game/UList;->bFocus:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget v2, p0, Lcom/t4game/UList;->x:I

    iget v3, p0, Lcom/t4game/UList;->y:I

    iget v4, p0, Lcom/t4game/UList;->index:I

    iget v5, p0, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget v4, p0, Lcom/t4game/UList;->w:I

    iget v5, p0, Lcom/t4game/UList;->rowH:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    const/4 v0, 0x0

    move v4, v0

    :goto_0
    iget v0, p0, Lcom/t4game/UList;->rowNum:I

    if-ge v4, v0, :cond_2

    iget v0, p0, Lcom/t4game/UList;->rowY:I

    add-int v1, v4, v0

    iget-boolean v0, p0, Lcom/t4game/UList;->bColorFont:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v0, v0, v1

    iget v2, p0, Lcom/t4game/UList;->x:I

    iget v3, p0, Lcom/t4game/UList;->y:I

    iget v5, p0, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v3, v5

    iget v5, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v5, v4

    add-int/2addr v3, v5

    iget-object v5, p0, Lcom/t4game/UList;->color:[I

    aget v5, v5, v1

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->draw(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIII)V

    :goto_1
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v5, v0, v1

    iget v6, p0, Lcom/t4game/UList;->x:I

    iget v0, p0, Lcom/t4game/UList;->y:I

    iget v2, p0, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v0, v2

    iget v2, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v2, v4

    add-int v7, v0, v2

    const/16 v8, 0x14

    iget-object v0, p0, Lcom/t4game/UList;->color:[I

    aget v9, v0, v1

    iget-object v0, p0, Lcom/t4game/UList;->color:[I

    aget v10, v0, v1

    move-object v11, p1

    invoke-static/range {v5 .. v11}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method public drawWithUnderLine(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 13

    iget-boolean v0, p0, Lcom/t4game/UList;->bFocus:Z

    if-eqz v0, :cond_0

    const v0, 0x764e00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget v0, p0, Lcom/t4game/UList;->x:I

    iget v1, p0, Lcom/t4game/UList;->y:I

    iget v2, p0, Lcom/t4game/UList;->index:I

    iget v3, p0, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/UList;->w:I

    iget v3, p0, Lcom/t4game/UList;->rowH:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    :cond_0
    iget v0, p0, Lcom/t4game/UList;->rowY:I

    const/4 v1, 0x0

    move v4, v1

    move v12, v0

    :goto_0
    iget v0, p0, Lcom/t4game/UList;->rowNum:I

    if-ge v4, v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-le v12, v0, :cond_2

    :cond_1
    return-void

    :cond_2
    iget-boolean v0, p0, Lcom/t4game/UList;->bColorFont:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v0, v0, v12

    iget v2, p0, Lcom/t4game/UList;->x:I

    iget v1, p0, Lcom/t4game/UList;->y:I

    iget v3, p0, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v1, v3

    iget v3, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    iget-object v1, p0, Lcom/t4game/UList;->color:[I

    aget v5, v1, v12

    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/CF;->draw(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;IIII)V

    move v0, v4

    :goto_1
    add-int/lit8 v1, v12, 0x1

    add-int/lit8 v0, v0, 0x1

    move v4, v0

    move v12, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v0, v0, v12

    const-string v1, "</#>"

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_4

    new-instance v5, Lcom/t4game/TagString;

    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v0, v0, v12

    const v1, 0xffc700

    const/16 v2, 0xd2

    invoke-direct {v5, v0, v1, v2}, Lcom/t4game/TagString;-><init>(Ljava/lang/String;IS)V

    iget v6, p0, Lcom/t4game/UList;->x:I

    iget v0, p0, Lcom/t4game/UList;->y:I

    iget v1, p0, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v1, v4

    add-int v7, v0, v1

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v11, 0x0

    move-object v10, p1

    invoke-virtual/range {v5 .. v11}, Lcom/t4game/TagString;->paint(IIIILjavax/microedition/lcdui/Graphics;I)I

    invoke-virtual {v5}, Lcom/t4game/TagString;->getTotalLine()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    aget-object v5, v0, v12

    iget v6, p0, Lcom/t4game/UList;->x:I

    iget v0, p0, Lcom/t4game/UList;->y:I

    iget v1, p0, Lcom/t4game/UList;->rowStrOffy:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/UList;->rowH:I

    mul-int/2addr v1, v4

    add-int v7, v0, v1

    iget-object v0, p0, Lcom/t4game/UList;->color:[I

    aget v9, v0, v12

    move v8, p2

    move-object v10, p1

    invoke-static/range {v5 .. v10}, Lcom/t4game/Util;->drawStringCutLineWithUnderLine(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;)I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    add-int/2addr v0, v4

    goto :goto_1
.end method

.method public getCmd()I
    .locals 1

    iget v0, p0, Lcom/t4game/UList;->index:I

    return v0
.end method

.method public init([Ljava/lang/String;I)V
    .locals 2

    iput-object p1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    array-length v0, p1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/UList;->color:[I

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UList;->color:[I

    aput p2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/UList;->values:[Ljava/util/Vector;

    return-void
.end method

.method public init([Ljava/lang/String;[I)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iput-object p2, p0, Lcom/t4game/UList;->color:[I

    array-length v0, p1

    new-array v0, v0, [Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/UList;->values:[Ljava/util/Vector;

    return-void
.end method

.method public keyEvent(I)I
    .locals 5

    const/16 v4, -0x3e8

    const/4 v3, 0x0

    const/4 v2, 0x1

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v4

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lcom/t4game/UList;->index:I

    iget v1, p0, Lcom/t4game/UList;->rowY:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/UList;->rowY:I

    if-lez v0, :cond_1

    iget v0, p0, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/UList;->rowY:I

    :cond_1
    iget v0, p0, Lcom/t4game/UList;->index:I

    if-lez v0, :cond_2

    iget v0, p0, Lcom/t4game/UList;->index:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/UList;->index:I

    goto :goto_0

    :cond_2
    iput-boolean v3, p0, Lcom/t4game/UList;->bFocus:Z

    goto :goto_0

    :pswitch_2
    iget-boolean v0, p0, Lcom/t4game/UList;->bFocus:Z

    if-nez v0, :cond_3

    iput-boolean v2, p0, Lcom/t4game/UList;->bFocus:Z

    move v0, v4

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/t4game/UList;->index:I

    iget v1, p0, Lcom/t4game/UList;->rowY:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/UList;->rowNum:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/UList;->rowY:I

    iget v1, p0, Lcom/t4game/UList;->rowNum:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/UList;->rowY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/UList;->rowY:I

    :cond_4
    iget v0, p0, Lcom/t4game/UList;->index:I

    iget v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_5

    iget v0, p0, Lcom/t4game/UList;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/UList;->index:I

    goto :goto_0

    :cond_5
    iget v0, p0, Lcom/t4game/UList;->index:I

    iget v1, p0, Lcom/t4game/UList;->rowTotalNum:I

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_0

    iput v3, p0, Lcom/t4game/UList;->index:I

    iput v3, p0, Lcom/t4game/UList;->rowY:I

    goto :goto_0

    :pswitch_3
    move v0, p1

    goto :goto_1

    :pswitch_data_0
    .packed-switch -0x6
        :pswitch_3
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public released()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UList;->str:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UList;->color:[I

    return-void
.end method

.method public setColorFont(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/t4game/UList;->bColorFont:Z

    return-void
.end method

.method public setPos(IIIII)V
    .locals 0

    iput p1, p0, Lcom/t4game/UList;->x:I

    iput p2, p0, Lcom/t4game/UList;->y:I

    iput p3, p0, Lcom/t4game/UList;->w:I

    iput p4, p0, Lcom/t4game/UList;->h:I

    iput p5, p0, Lcom/t4game/UList;->rowH:I

    return-void
.end method
