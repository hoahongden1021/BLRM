.class Lcom/t4game/ListItem;
.super Ljava/lang/Object;


# instance fields
.field private Center:Z

.field public Color:[I

.field DefaultColor:I

.field DetailKey:[Ljava/lang/String;

.field private FirstInit:Z

.field NameDetail:[Ljava/lang/String;

.field private NameLen:I

.field Str:Ljava/util/Vector;

.field Str_xy:Ljava/util/Vector;

.field StringV:Ljava/util/Vector;

.field public icon:Ljavax/microedition/lcdui/Image;

.field keyColor:[I

.field public name:[Ljava/lang/String;

.field private tick:I

.field xyV:Ljava/util/Vector;


# direct methods
.method constructor <init>()V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ListItem;->Color:[I

    iput-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/ListItem;->DefaultColor:I

    iput-object v1, p0, Lcom/t4game/ListItem;->keyColor:[I

    iput-boolean v2, p0, Lcom/t4game/ListItem;->Center:Z

    iput v2, p0, Lcom/t4game/ListItem;->tick:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/ListItem;->FirstInit:Z

    return-void
.end method


# virtual methods
.method public Init(Ljavax/microedition/lcdui/Image;[I[Ljava/lang/String;Ljava/lang/String;[II[Ljava/lang/String;Z)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    iput-object p1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iput-object p2, p0, Lcom/t4game/ListItem;->Color:[I

    iput-object p3, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    if-eqz p4, :cond_2

    const-string v0, "$#"

    invoke-static {p4, v0}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    :goto_0
    iput p6, p0, Lcom/t4game/ListItem;->DefaultColor:I

    iput-object p5, p0, Lcom/t4game/ListItem;->keyColor:[I

    iput-object p7, p0, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iput-boolean p8, p0, Lcom/t4game/ListItem;->Center:Z

    iget-object v0, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    if-nez v0, :cond_3

    iput-object v1, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/ListItem;->Color:[I

    :cond_0
    iget-object v0, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_1

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/ListItem;->Str_xy:Ljava/util/Vector;

    :cond_1
    return-void

    :cond_2
    iput-object v1, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    goto :goto_0

    :cond_3
    iput v2, p0, Lcom/t4game/ListItem;->NameLen:I

    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-eqz v1, :cond_4

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    iget-object v2, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/t4game/ListItem;->NameLen:I

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;SSSSIIZ)V
    .locals 5

    const/16 v3, 0x14

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-gt p6, v3, :cond_2

    iput v4, p0, Lcom/t4game/ListItem;->tick:I

    :goto_0
    if-nez p8, :cond_0

    iput v4, p0, Lcom/t4game/ListItem;->tick:I

    :cond_0
    iget-object v0, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/ListItem;->Color:[I

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_7

    if-eqz p8, :cond_6

    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int v1, p4, v1

    if-le v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    sub-int v1, p5, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, p2, v1, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int v1, p4, v1

    sub-int/2addr v1, v2

    invoke-virtual {p1, v0, p3, v1, p5}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v1, p4

    iget-object v2, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/t4game/ListItem;->tick:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/ListItem;->tick:I

    goto :goto_0

    :cond_3
    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v1, p4

    iget-object v2, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    if-lt v0, v3, :cond_4

    iput v4, p0, Lcom/t4game/ListItem;->tick:I

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/t4game/ListItem;->tick:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    add-int/2addr v0, p2

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v1, p4

    iget-object v2, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    add-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_5
    iget-boolean v0, p0, Lcom/t4game/ListItem;->Center:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    sub-int v0, p4, v0

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    add-int v2, p2, v0

    iget-object v3, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    sub-int v3, p5, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p3

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int v1, p4, v1

    sub-int/2addr v1, v2

    if-gt v0, v1, :cond_10

    iget-boolean v0, p0, Lcom/t4game/ListItem;->Center:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    sub-int v0, p4, v0

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v0, v1

    sub-int/2addr v0, v2

    shr-int/lit8 v0, v0, 0x1

    :goto_3
    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    add-int v2, p2, v0

    iget-object v3, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    sub-int v3, p5, v3

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, p3

    add-int/2addr v3, v4

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    add-int/2addr v1, p2

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_7
    if-eqz p8, :cond_b

    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    if-le v0, p4, :cond_a

    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v1, p4

    if-gt v0, v1, :cond_8

    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_8
    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    iget v1, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v1, p4

    sub-int/2addr v0, v1

    if-lt v0, v3, :cond_9

    iput v4, p0, Lcom/t4game/ListItem;->tick:I

    iget v0, p0, Lcom/t4game/ListItem;->tick:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_9
    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int/2addr v0, p4

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_a
    iget-boolean v0, p0, Lcom/t4game/ListItem;->Center:Z

    if-eqz v0, :cond_f

    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int v0, p4, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_4
    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_b
    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    if-gt v0, p4, :cond_e

    iget-boolean v0, p0, Lcom/t4game/ListItem;->Center:Z

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/t4game/ListItem;->NameLen:I

    sub-int v0, p4, v0

    shr-int/lit8 v0, v0, 0x1

    :goto_5
    add-int/2addr v0, p2

    iget-object v1, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iget-object v2, p0, Lcom/t4game/ListItem;->Color:[I

    invoke-static {v0, p3, v1, v2, p1}, Lcom/t4game/DraftingUtil;->paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_c
    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/t4game/ListItem;->Center:Z

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    sub-int v1, p4, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p2

    iget-object v2, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    sub-int v2, p5, v2

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v2, p3

    add-int/2addr v2, v4

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_d
    iget-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    sub-int v1, p5, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/2addr v1, p3

    add-int/2addr v1, v4

    invoke-virtual {p1, v0, p2, v1, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_e
    move v0, v4

    goto :goto_5

    :cond_f
    move v0, v4

    goto :goto_4

    :cond_10
    move v0, v4

    goto/16 :goto_3

    :cond_11
    move v0, v4

    goto/16 :goto_2
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/ListItem;->name:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/ListItem;->Color:[I

    iput-object v0, p0, Lcom/t4game/ListItem;->icon:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/ListItem;->Str_xy:Ljava/util/Vector;

    iput-object v0, p0, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/ListItem;->keyColor:[I

    return-void
.end method

.method public setKeyString([Ljava/util/Vector;)V
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_0

    array-length v0, p1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    aget-object v0, p1, v2

    iput-object v0, p0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    const/4 v0, 0x1

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    const/4 v0, 0x2

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    const/4 v0, 0x3

    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/t4game/ListItem;->Str_xy:Ljava/util/Vector;

    iget-boolean v0, p0, Lcom/t4game/ListItem;->FirstInit:Z

    if-eqz v0, :cond_0

    iput-boolean v2, p0, Lcom/t4game/ListItem;->FirstInit:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/ListItem;->keyColor:[I

    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/t4game/ListItem;->keyColor:[I

    move v1, v2

    :goto_0
    aget-object v0, p1, v3

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/ListItem;->keyColor:[I

    aget-object v0, p1, v3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    aput v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    return-void
.end method
