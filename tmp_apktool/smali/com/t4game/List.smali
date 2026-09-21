.class Lcom/t4game/List;
.super Ljava/lang/Object;


# instance fields
.field protected content:[Ljava/lang/String;

.field protected focus:I

.field protected focusH:I

.field protected h:S

.field protected index:I

.field newJob:Lcom/t4game/NewJob;

.field private final rowH:I

.field protected w:S

.field protected x:S

.field protected y:S


# direct methods
.method public constructor <init>(Lcom/t4game/NewJob;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/List;->rowH:I

    iput-object p1, p0, Lcom/t4game/List;->newJob:Lcom/t4game/NewJob;

    return-void
.end method


# virtual methods
.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 8

    const/16 v7, 0x14

    iget-object v0, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    move v6, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    array-length v0, v0

    if-ge v6, v0, :cond_2

    iget v0, p0, Lcom/t4game/List;->index:I

    if-eq v0, v6, :cond_0

    :goto_1
    iget-object v0, p0, Lcom/t4game/List;->newJob:Lcom/t4game/NewJob;

    iget-object v0, v0, Lcom/t4game/NewJob;->id:[I

    aget v0, v0, v6

    iget-object v1, p0, Lcom/t4game/List;->newJob:Lcom/t4game/NewJob;

    iget v1, v1, Lcom/t4game/NewJob;->currentId:I

    if-ne v0, v1, :cond_1

    const v0, 0x808080

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(\u5f53\u524d)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget-short v1, p0, Lcom/t4game/List;->x:S

    iget-short v2, p0, Lcom/t4game/List;->y:S

    iget v3, p0, Lcom/t4game/List;->rowH:I

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    :goto_2
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget-short v2, p0, Lcom/t4game/List;->x:S

    iget-short v3, p0, Lcom/t4game/List;->y:S

    iget v4, p0, Lcom/t4game/List;->rowH:I

    mul-int/2addr v4, v6

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/List;->w:S

    iget v5, p0, Lcom/t4game/List;->rowH:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_1

    :cond_1
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    aget-object v0, v0, v6

    iget-short v1, p0, Lcom/t4game/List;->x:S

    iget-short v2, p0, Lcom/t4game/List;->y:S

    iget v3, p0, Lcom/t4game/List;->rowH:I

    mul-int/2addr v3, v6

    add-int/2addr v2, v3

    invoke-virtual {p1, v0, v1, v2, v7}, Ljavax/microedition/lcdui/Graphics;->drawString(Ljava/lang/String;III)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method public init(SSSS[Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/List;->index:I

    iput-short p1, p0, Lcom/t4game/List;->x:S

    iput-short p2, p0, Lcom/t4game/List;->y:S

    iput-short p3, p0, Lcom/t4game/List;->w:S

    iput-short p4, p0, Lcom/t4game/List;->h:S

    iput-object p5, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    if-eqz p5, :cond_0

    array-length v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/List;->focusH:I

    :cond_0
    return-void
.end method

.method public keyEvent(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v0, v2

    :goto_1
    return v0

    :pswitch_1
    iget v0, p0, Lcom/t4game/List;->index:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/List;->index:I

    iget v0, p0, Lcom/t4game/List;->index:I

    if-gez v0, :cond_1

    iput v2, p0, Lcom/t4game/List;->index:I

    iget v0, p0, Lcom/t4game/List;->focus:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/List;->focus:I

    :cond_1
    iget v0, p0, Lcom/t4game/List;->focus:I

    if-gez v0, :cond_0

    move v0, v3

    goto :goto_1

    :pswitch_2
    iget v0, p0, Lcom/t4game/List;->index:I

    iget-object v1, p0, Lcom/t4game/List;->content:[Ljava/lang/String;

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    iget v0, p0, Lcom/t4game/List;->index:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/List;->index:I

    :cond_2
    iget v0, p0, Lcom/t4game/List;->focus:I

    iget v1, p0, Lcom/t4game/List;->focusH:I

    if-ge v0, v1, :cond_3

    iget v0, p0, Lcom/t4game/List;->focus:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/List;->focus:I

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/t4game/List;->focus:I

    iput v2, p0, Lcom/t4game/List;->index:I

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/t4game/List;->newJob:Lcom/t4game/NewJob;

    const/16 v1, 0x24e

    invoke-virtual {v0, v1, v2}, Lcom/t4game/NewJob;->sendMsg(IB)V

    goto :goto_0

    nop

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
