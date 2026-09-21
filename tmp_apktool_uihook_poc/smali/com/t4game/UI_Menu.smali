.class public Lcom/t4game/UI_Menu;
.super Ljava/lang/Object;


# static fields
.field private static final MIN_WIDTH:I

.field private static final ROW_H:I


# instance fields
.field color:[B

.field private command:B

.field disableItemIndex:[B

.field h:I

.field index:B

.field isConfirmed:Z

.field leng:B

.field lineOfOneScreen:B

.field private menuIndexId:[B

.field menuString:[Ljava/lang/String;

.field menuTitle:[Ljava/lang/String;

.field private offsetY:I

.field selectBackColor:B

.field selectStringColor:B

.field private startIndex:B

.field stringColorBack:B

.field stringColorFront:B

.field titleLeng:B

.field type:B

.field w:I

.field x:I

.field y:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget v0, Lcom/t4game/Defaults;->sfh:I

    sput v0, Lcom/t4game/UI_Menu;->ROW_H:I

    sget v0, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/lit8 v0, v0, 0x3

    sput v0, Lcom/t4game/UI_Menu;->MIN_WIDTH:I

    return-void
.end method

.method public constructor <init>(IIII[Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/UI_Menu;->color:[B

    iput-byte v2, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->type:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectBackColor:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectStringColor:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorFront:B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    iput-boolean v2, p0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    iput p1, p0, Lcom/t4game/UI_Menu;->x:I

    iput p2, p0, Lcom/t4game/UI_Menu;->y:I

    iput p3, p0, Lcom/t4game/UI_Menu;->w:I

    iput p4, p0, Lcom/t4game/UI_Menu;->h:I

    invoke-direct {p0, p5}, Lcom/t4game/UI_Menu;->initContent([Ljava/lang/String;)V

    const/16 v0, 0xa

    sub-int v0, p4, v0

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->lineOfOneScreen:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearConfirmInMenu()V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 3

    const/4 v2, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/UI_Menu;->color:[B

    iput-byte v2, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->type:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectBackColor:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectStringColor:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorFront:B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    iput-boolean v2, p0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    invoke-direct {p0, p1}, Lcom/t4game/UI_Menu;->initContent([Ljava/lang/String;)V

    sget v0, Lcom/t4game/UI_Menu;->MIN_WIDTH:I

    move v1, v0

    move v0, v2

    :goto_0
    iget-byte v2, p0, Lcom/t4game/UI_Menu;->leng:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    sget v0, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->w:I

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    if-le v0, v1, :cond_2

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    :goto_1
    iput v0, p0, Lcom/t4game/UI_Menu;->h:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget v1, p0, Lcom/t4game/UI_Menu;->w:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->x:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    iget v1, p0, Lcom/t4game/UI_Menu;->h:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->y:I

    iget v0, p0, Lcom/t4game/UI_Menu;->h:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->lineOfOneScreen:B

    invoke-static {}, Lcom/t4game/PointerUtil;->clearConfirmInMenu()V

    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_1
.end method

.method public constructor <init>([Ljava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object p2, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[B[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p3}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    const/16 v4, 0x46

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/UI_Menu;->color:[B

    iput-byte v3, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->type:B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectBackColor:B

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->selectStringColor:B

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->stringColorFront:B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    iput-object v1, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    iput-boolean v3, p0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    iput-object p2, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/t4game/UI_Menu;->initContent([Ljava/lang/String;)V

    sget v0, Lcom/t4game/UI_Menu;->MIN_WIDTH:I

    move v1, v0

    move v0, v3

    :goto_0
    iget-byte v2, p0, Lcom/t4game/UI_Menu;->leng:B

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_0

    move v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    array-length v2, p2

    if-ge v0, v2, :cond_3

    aget-object v2, p2, v0

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    if-le v2, v1, :cond_2

    move v1, v2

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    sget v0, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->w:I

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    array-length v1, p2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v1, v4

    if-le v0, v1, :cond_4

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v4

    :goto_2
    iput v0, p0, Lcom/t4game/UI_Menu;->h:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget v1, p0, Lcom/t4game/UI_Menu;->w:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->x:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    iget v1, p0, Lcom/t4game/UI_Menu;->h:I

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->y:I

    iget v0, p0, Lcom/t4game/UI_Menu;->h:I

    const/16 v1, 0xa

    sub-int/2addr v0, v1

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->lineOfOneScreen:B

    return-void

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    array-length v1, p2

    add-int/2addr v0, v1

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0xa

    goto :goto_2
.end method

.method private getRturnCommand(B)B
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    :cond_0
    invoke-direct {p0, p1}, Lcom/t4game/UI_Menu;->testDisable(B)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    move v0, p1

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/t4game/UI_Menu;->testDisable(B)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    aget-byte v0, v0, p1

    goto :goto_0
.end method

.method private initContent([Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    array-length v0, v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    :cond_0
    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_4

    const/16 v1, 0x8

    if-gt v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v3, v0, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/16 v1, 0x9

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "#."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_2
    const/16 v1, 0xa

    if-ne v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "*."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget-object v3, p1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    aget-object v2, p1, v0

    aput-object v2, v1, v0

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->leng:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    const-string v2, "0.\u8fd4\u56de"

    aput-object v2, v0, v1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/UI_Menu;->color:[B

    return-void
.end method

.method private testDisable(B)Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    if-eqz v0, :cond_1

    move v0, v2

    :goto_0
    iget-object v1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    aget-byte v1, v1, v0

    if-ne p1, v1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method


# virtual methods
.method public clearCommand()V
    .locals 1

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 13

    const/4 v9, 0x0

    const/16 v12, 0xa

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->type:B

    if-nez v0, :cond_1

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/4 v1, 0x6

    iget v2, p0, Lcom/t4game/UI_Menu;->x:I

    iget v3, p0, Lcom/t4game/UI_Menu;->y:I

    iget v4, p0, Lcom/t4game/UI_Menu;->w:I

    iget v5, p0, Lcom/t4game/UI_Menu;->h:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_0
    :goto_0
    move v7, v9

    :goto_1
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    if-ge v7, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuTitle:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget v1, p0, Lcom/t4game/UI_Menu;->x:I

    add-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/t4game/UI_Menu;->y:I

    add-int/lit8 v2, v2, 0x5

    sget v3, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v3, v7

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    sget-object v4, Lcom/t4game/Data;->color:[I

    iget-byte v5, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    aget v4, v4, v5

    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_Menu;->selectStringColor:B

    aget v5, v5, v6

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_1

    :cond_1
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    iget v2, p0, Lcom/t4game/UI_Menu;->x:I

    iget v3, p0, Lcom/t4game/UI_Menu;->y:I

    iget v4, p0, Lcom/t4game/UI_Menu;->w:I

    iget v5, p0, Lcom/t4game/UI_Menu;->h:I

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/UI_Menu;->offsetY:I

    iget v0, p0, Lcom/t4game/UI_Menu;->y:I

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    sget v2, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v1, v2

    add-int v7, v0, v1

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->lineOfOneScreen:B

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    sub-int/2addr v0, v1

    int-to-byte v8, v0

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    if-le v0, v8, :cond_5

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    add-int/lit8 v0, v0, 0x1

    if-le v0, v8, :cond_4

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v0, v8

    int-to-byte v0, v0

    add-int v1, v0, v8

    int-to-byte v1, v1

    move v9, v1

    move v10, v0

    :goto_2
    iput-byte v10, p0, Lcom/t4game/UI_Menu;->startIndex:B

    move v11, v10

    :goto_3
    if-ge v11, v9, :cond_b

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    if-ne v0, v11, :cond_8

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->selectBackColor:B

    if-ltz v0, :cond_3

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->selectBackColor:B

    sget-object v1, Lcom/t4game/Data;->color:[I

    array-length v1, v1

    if-ge v0, v1, :cond_3

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    iget v1, p0, Lcom/t4game/UI_Menu;->x:I

    add-int/lit8 v2, v1, 0x5

    add-int/lit8 v1, v7, 0x5

    sub-int v3, v11, v10

    sget v4, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v3, v4

    add-int/2addr v3, v1

    iget v1, p0, Lcom/t4game/UI_Menu;->w:I

    sub-int v4, v1, v12

    sget v5, Lcom/t4game/UI_Menu;->ROW_H:I

    move v1, v12

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_3
    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    aget-object v0, v0, v11

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v2, v7, 0x5

    sub-int v3, v11, v10

    sget v4, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/Data;->color:[I

    iget-byte v5, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    aget v4, v4, v5

    iget-object v5, p0, Lcom/t4game/UI_Menu;->color:[B

    if-nez v5, :cond_7

    invoke-direct {p0, v11}, Lcom/t4game/UI_Menu;->testDisable(B)Z

    move-result v5

    if-eqz v5, :cond_6

    sget-object v5, Lcom/t4game/Data;->color:[I

    aget v5, v5, v12

    :goto_4
    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_5
    add-int/lit8 v0, v11, 0x1

    int-to-byte v0, v0

    move v11, v0

    goto :goto_3

    :cond_4
    move v10, v9

    move v9, v8

    goto :goto_2

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    move v10, v9

    move v9, v0

    goto :goto_2

    :cond_6
    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_Menu;->selectStringColor:B

    aget v5, v5, v6

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/t4game/CommonConstants;->QUALITYCOLOR:[I

    iget-object v6, p0, Lcom/t4game/UI_Menu;->color:[B

    aget-byte v6, v6, v11

    aget v5, v5, v6

    goto :goto_4

    :cond_8
    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    aget-object v0, v0, v11

    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    add-int/lit8 v2, v7, 0x5

    sub-int v3, v11, v10

    sget v4, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    sget-object v4, Lcom/t4game/Data;->color:[I

    iget-byte v5, p0, Lcom/t4game/UI_Menu;->stringColorBack:B

    aget v4, v4, v5

    iget-object v5, p0, Lcom/t4game/UI_Menu;->color:[B

    if-nez v5, :cond_a

    invoke-direct {p0, v11}, Lcom/t4game/UI_Menu;->testDisable(B)Z

    move-result v5

    if-eqz v5, :cond_9

    sget-object v5, Lcom/t4game/Data;->color:[I

    aget v5, v5, v12

    :goto_6
    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_5

    :cond_9
    sget-object v5, Lcom/t4game/Data;->color:[I

    iget-byte v6, p0, Lcom/t4game/UI_Menu;->stringColorFront:B

    aget v5, v5, v6

    goto :goto_6

    :cond_a
    sget-object v5, Lcom/t4game/CommonConstants;->QUALITYCOLOR:[I

    iget-object v6, p0, Lcom/t4game/UI_Menu;->color:[B

    aget-byte v6, v6, v11

    aget v5, v5, v6

    goto :goto_6

    :cond_b
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    if-le v0, v8, :cond_c

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    iget-byte v2, p0, Lcom/t4game/UI_Menu;->index:B

    iget v1, p0, Lcom/t4game/UI_Menu;->x:I

    iget v3, p0, Lcom/t4game/UI_Menu;->w:I

    add-int/2addr v1, v3

    const/16 v3, 0xe

    sub-int/2addr v1, v3

    const/4 v3, 0x3

    sub-int v3, v1, v3

    iget v1, p0, Lcom/t4game/UI_Menu;->h:I

    iget-byte v4, p0, Lcom/t4game/UI_Menu;->titleLeng:B

    sget v5, Lcom/t4game/UI_Menu;->ROW_H:I

    mul-int/2addr v4, v5

    sub-int/2addr v1, v4

    const/4 v4, 0x2

    sub-int v5, v1, v4

    move v1, v8

    move v4, v7

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    :cond_c
    return-void
.end method

.method public getCommand()B
    .locals 2

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    const/4 v1, -0x1

    iput-byte v1, p0, Lcom/t4game/UI_Menu;->command:B

    return v0
.end method

.method public getMenuIndexId()[B
    .locals 1

    iget-object v0, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    return-object v0
.end method

.method public keyEvent(I)V
    .locals 8

    const/4 v7, -0x7

    const/16 v6, 0x31

    const/4 v5, -0x2

    const/4 v4, -0x5

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    if-lt p1, v6, :cond_1

    const/16 v1, 0x39

    if-gt p1, v1, :cond_1

    sub-int v1, p1, v6

    sub-int v2, v0, v3

    if-gt v1, v2, :cond_c

    sub-int v1, p1, v6

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    move v1, v4

    :goto_0
    const/4 v2, -0x1

    if-ne v1, v2, :cond_5

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    if-nez v1, :cond_4

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    :cond_0
    :goto_1
    return-void

    :cond_1
    const/16 v1, 0x23

    if-ne p1, v1, :cond_2

    const/16 v1, 0x9

    sub-int v2, v0, v3

    if-gt v1, v2, :cond_c

    const/16 v1, 0x9

    iput-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    move v1, v4

    goto :goto_0

    :cond_2
    const/16 v1, 0x2a

    if-ne p1, v1, :cond_3

    const/16 v1, 0xa

    sub-int v2, v0, v3

    if-gt v1, v2, :cond_c

    const/16 v1, 0xa

    iput-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    move v1, v4

    goto :goto_0

    :cond_3
    const/16 v1, 0x30

    if-ne p1, v1, :cond_c

    move v1, v7

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_1

    :cond_5
    if-ne v1, v5, :cond_7

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    if-ne v1, v0, :cond_6

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_1

    :cond_6
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    goto :goto_1

    :cond_7
    if-eq v1, v4, :cond_8

    const/4 v2, -0x6

    if-ne v1, v2, :cond_b

    :cond_8
    iget-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    if-gt v1, v0, :cond_a

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    if-ne v1, v0, :cond_9

    iput-byte v5, p0, Lcom/t4game/UI_Menu;->command:B

    goto :goto_1

    :cond_9
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    invoke-direct {p0, v0}, Lcom/t4game/UI_Menu;->getRturnCommand(B)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    goto :goto_1

    :cond_a
    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    goto :goto_1

    :cond_b
    if-ne v1, v7, :cond_0

    iput-byte v5, p0, Lcom/t4game/UI_Menu;->command:B

    goto :goto_1

    :cond_c
    move v1, p1

    goto :goto_0
.end method

.method public pointerEvent()V
    .locals 4

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/UI_Menu;->leng:B

    sub-int/2addr v0, v3

    int-to-byte v0, v0

    iget v1, p0, Lcom/t4game/UI_Menu;->x:I

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget v1, p0, Lcom/t4game/UI_Menu;->y:I

    add-int/lit8 v1, v1, 0x5

    iget v2, p0, Lcom/t4game/UI_Menu;->offsetY:I

    add-int/2addr v1, v2

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuY:I

    iget v1, p0, Lcom/t4game/UI_Menu;->w:I

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    sget v1, Lcom/t4game/UI_Menu;->ROW_H:I

    iget-object v2, p0, Lcom/t4game/UI_Menu;->menuString:[Ljava/lang/String;

    array-length v2, v2

    mul-int/2addr v1, v2

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    invoke-static {v3}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    iget-byte v2, p0, Lcom/t4game/UI_Menu;->startIndex:B

    add-int/2addr v2, v1

    int-to-byte v2, v2

    iput-byte v2, p0, Lcom/t4game/UI_Menu;->index:B

    :cond_0
    if-ltz v1, :cond_2

    invoke-static {}, Lcom/t4game/PointerUtil;->isPointerConfirmInMenu()Z

    move-result v1

    if-eqz v1, :cond_2

    iput-boolean v3, p0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    iget-byte v1, p0, Lcom/t4game/UI_Menu;->index:B

    if-ne v1, v0, :cond_1

    const/4 v0, -0x2

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/UI_Menu;->index:B

    invoke-direct {p0, v0}, Lcom/t4game/UI_Menu;->getRturnCommand(B)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Menu;->command:B

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/UI_Menu;->isConfirmed:Z

    goto :goto_0
.end method

.method public setColor([B)V
    .locals 4

    const/4 v3, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/UI_Menu;->color:[B

    move v0, v3

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_Menu;->color:[B

    aget-byte v2, p1, v0

    aput-byte v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_Menu;->color:[B

    array-length v1, p1

    aput-byte v3, v0, v1

    return-void
.end method

.method public setDisableItemIndex([B)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/UI_Menu;->disableItemIndex:[B

    return-void
.end method

.method public setMenuIndexId([B)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/UI_Menu;->menuIndexId:[B

    return-void
.end method
