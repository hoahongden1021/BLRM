.class public Lcom/t4game/UI_List;
.super Lcom/t4game/UI_Super;


# instance fields
.field private BG_Color:I

.field private Column:B

.field private Column_W:[S

.field Container:Ljava/util/Vector;

.field private Focus_BG_Color:I

.field public Focus_ServerList_Color:I

.field private HaveTitle:Z

.field private HaveVectorOfOther:B

.field private OtherH:S

.field public Row_H:S

.field private ShowRowNum:B

.field Sub_Id:S

.field private Sub_Line:B

.field Sub_Y:S

.field private Title:[Ljava/lang/String;

.field private Title_BG_Color:I

.field private Title_Color:I

.field Title_H:S

.field public bScroll:Z

.field private drawExpandBox:Z

.field private isFocus:Z

.field private item:[Lcom/t4game/ListItem;

.field private listItem_:Lcom/t4game/ListItem;

.field private temp_Column_W:S

.field private ui:Lcom/t4game/GameUi;


# direct methods
.method public constructor <init>(Lcom/t4game/GameUi;)V
    .locals 2

    const/4 v1, -0x1

    const/4 v0, 0x0

    invoke-direct {p0, p1}, Lcom/t4game/UI_Super;-><init>(Lcom/t4game/UI_Super;)V

    iput-boolean v0, p0, Lcom/t4game/UI_List;->bScroll:Z

    iput-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    iput-byte v0, p0, Lcom/t4game/UI_List;->Sub_Line:B

    iput-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iput v1, p0, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    iput-boolean v0, p0, Lcom/t4game/UI_List;->drawExpandBox:Z

    iput-object p1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    const/16 v0, 0x8

    iput-byte v0, p0, Lcom/t4game/UI_List;->type:B

    return-void
.end method

.method private ReturnFocus()V
    .locals 3

    const/4 v2, -0x1

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_List;->upFocusIndex:B

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->setFocus(BI)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_List;->dnFocusIndex:B

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    const/4 v2, -0x2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_List;->lfFocusIndex:B

    if-eq v0, v2, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    const/4 v2, -0x3

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_List;->rtFocusIndex:B

    if-eq v0, v2, :cond_5

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    const/4 v2, -0x4

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/t4game/UI_List;->setFocus(Z)V

    goto :goto_0
.end method

.method private calcSub_Y()V
    .locals 2

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    return-void
.end method

.method private drawExpandBox(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 12

    const/4 v11, -0x1

    const/4 v10, 0x1

    const/4 v9, 0x0

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ne v0, p2, :cond_2

    iget-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    if-eqz v0, :cond_2

    iput-boolean v10, p0, Lcom/t4game/UI_List;->drawExpandBox:Z

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v7, v0, v1

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v9

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v1, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v10

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->Sub_Line:B

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x8

    iget-short v2, p0, Lcom/t4game/UI_List;->x:S

    iget-short v3, p0, Lcom/t4game/UI_List;->Sub_Y:S

    add-int/lit8 v4, p2, 0x1

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_List;->w:S

    const/4 v5, 0x5

    sub-int/2addr v4, v5

    iget-byte v5, p0, Lcom/t4game/UI_List;->Sub_Line:B

    iget-short v6, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x4

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    move v8, v9

    :goto_0
    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_0

    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/t4game/ListItem;->Str_xy:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    check-cast v1, [S

    aget-short v1, v1, v9

    iget-object v2, v7, Lcom/t4game/ListItem;->Str_xy:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, v10

    iget v5, v7, Lcom/t4game/ListItem;->DefaultColor:I

    move v3, v9

    move v4, v11

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_0
    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_1

    move v8, v9

    :goto_1
    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v8, v0, :cond_1

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v1, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [S

    check-cast v1, [S

    aget-short v1, v1, v9

    iget-object v2, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v2, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [S

    check-cast v2, [S

    aget-short v2, v2, v10

    iget-object v3, v7, Lcom/t4game/ListItem;->keyColor:[I

    aget v5, v3, v8

    move v3, v9

    move v4, v11

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const v0, 0xffff00

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    iget-object v0, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v1, v0, v9

    iget-object v0, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v0, v0, v10

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v2, v0

    iget-object v0, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v3, v0, v9

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/2addr v3, v0

    iget-object v0, v7, Lcom/t4game/ListItem;->xyV:Ljava/util/Vector;

    invoke-virtual {v0, v8}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aget-short v0, v0, v10

    iget-short v4, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v4

    invoke-virtual {p1, v1, v2, v3, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto/16 :goto_1

    :cond_1
    move v8, v10

    :goto_2
    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v0, v0

    if-ge v8, v0, :cond_3

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    add-int/lit8 v1, v1, 0x5

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Y:S

    add-int/lit8 v3, p2, 0x1

    iget-short v4, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/UI_List;->Sub_Line:B

    iget-object v4, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v4, v4

    sub-int/2addr v3, v4

    add-int/lit8 v3, v3, 0x1

    iget-short v4, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x2

    sub-int v3, v8, v10

    iget-short v4, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    iget v5, v7, Lcom/t4game/ListItem;->DefaultColor:I

    move v3, v9

    move v4, v11

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_2

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_3

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ne v0, p2, :cond_3

    iget-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    if-nez v0, :cond_3

    iput-boolean v9, p0, Lcom/t4game/UI_List;->drawExpandBox:Z

    :cond_3
    return-void
.end method

.method private drawScrollBar(Ljavax/microedition/lcdui/Graphics;IIIIII)V
    .locals 6

    const/4 v5, 0x1

    iget-short v0, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, p7

    iget-short v1, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v0, v1

    if-lt p5, v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sub-int v0, p5, v5

    div-int/2addr v0, p7

    sput p2, Lcom/t4game/PointerUtil;->scrollBorderX:I

    sput p3, Lcom/t4game/PointerUtil;->scrollBorderY:I

    sput p4, Lcom/t4game/PointerUtil;->scrollBorderWidth:I

    sput p5, Lcom/t4game/PointerUtil;->scrollBorderHeight:I

    sput v0, Lcom/t4game/PointerUtil;->scrollBarHeight:I

    const v1, 0x7a654a

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    invoke-virtual {p1, p2, p3, p4, p5}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const v1, 0xf9df00

    invoke-virtual {p1, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v1, -0x1

    if-ne p6, v1, :cond_2

    const/4 v1, 0x0

    :goto_1
    sub-int v2, p7, v5

    if-ge v1, v2, :cond_1

    add-int/lit8 v2, p3, 0x1

    mul-int v3, v1, v0

    add-int/2addr v2, v3

    sput v2, Lcom/t4game/PointerUtil;->scrollBarY:I

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    sub-int v3, p4, v5

    invoke-virtual {p1, v2, v1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    :cond_1
    add-int/lit8 v2, p3, 0x1

    sub-int v3, p5, v5

    rem-int/2addr v3, p7

    add-int/2addr v2, v3

    mul-int v3, v1, v0

    add-int/2addr v2, v3

    sput v2, Lcom/t4game/PointerUtil;->scrollBarY:I

    add-int/lit8 v2, p2, 0x1

    add-int/lit8 v3, p3, 0x1

    sub-int v4, p5, v5

    rem-int/2addr v4, p7

    add-int/2addr v3, v4

    mul-int/2addr v1, v0

    add-int/2addr v1, v3

    sub-int v3, p4, v5

    invoke-virtual {p1, v2, v1, v3, v0}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    goto :goto_0

    :cond_2
    move v1, p6

    goto :goto_1
.end method

.method private drawTitle(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 11

    iget-boolean v0, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    const/4 v0, 0x0

    move v10, v0

    :goto_0
    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v10, v0, :cond_2

    if-lez v10, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    const/4 v2, 0x1

    sub-int v2, v10, v2

    aget-short v1, v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x15

    iget-short v2, p0, Lcom/t4game/UI_List;->x:S

    iget-short v3, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v4, v4, v10

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget-short v5, p0, Lcom/t4game/UI_List;->Title_H:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :goto_1
    sget-boolean v0, Lcom/t4game/Defaults;->CNL_YUENAN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    aget-object v1, v0, v10

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    iget-short v2, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v2, v0

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v0, p2

    iget-short v3, p0, Lcom/t4game/UI_List;->Title_H:S

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v0, v0, v10

    const/4 v4, 0x1

    sub-int v4, v0, v4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    const/4 v6, 0x2

    const/4 v7, -0x1

    iget v8, p0, Lcom/t4game/UI_List;->Title_Color:I

    const/4 v9, 0x1

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintStringInScrollTypeInMiddle(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    :goto_2
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0x15

    iget-short v2, p0, Lcom/t4game/UI_List;->x:S

    iget-short v3, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v3, p2

    iget-object v4, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v4, v4, v10

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    iget-short v5, p0, Lcom/t4game/UI_List;->Title_H:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    aget-object v0, v0, v10

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    iget-short v2, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v2, v2, v10

    sget-object v3, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v4, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    aget-object v4, v4, v10

    invoke-virtual {v3, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v3

    sub-int/2addr v2, v3

    shr-int/lit8 v2, v2, 0x1

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v2, p2

    iget-short v3, p0, Lcom/t4game/UI_List;->Title_H:S

    sget v4, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v3, v4

    shr-int/lit8 v3, v3, 0x1

    add-int/2addr v2, v3

    const/4 v3, 0x2

    sub-int/2addr v2, v3

    const/16 v3, 0x14

    const/4 v4, -0x1

    iget v5, p0, Lcom/t4game/UI_List;->Title_Color:I

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_2

    :cond_2
    return-void
.end method

.method private getShowHeight()I
    .locals 2

    iget-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->h:S

    if-le v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    :cond_0
    return v0
.end method

.method private setDetailXY()V
    .locals 8

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v7, v0, v1

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    add-int/lit8 v0, v0, 0x5

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    const/16 v3, 0xf

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v4, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    const/4 v5, 0x0

    aget-object v4, v4, v5

    iget-object v5, v7, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iget-object v6, v7, Lcom/t4game/ListItem;->keyColor:[I

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->InitHighColor(IIIILjava/lang/String;[Ljava/lang/String;[I)[Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/t4game/ListItem;->setKeyString([Ljava/util/Vector;)V

    :cond_0
    return-void
.end method

.method private setHaveVectorOfOther(B)V
    .locals 1

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    return-void
.end method


# virtual methods
.method public DeletChoice(S)V
    .locals 11

    const/16 v10, 0xf

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElementAt(I)V

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    invoke-direct {p0}, Lcom/t4game/UI_List;->ReturnFocus()V

    goto :goto_0

    :cond_2
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-lez v0, :cond_3

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    sub-int/2addr v0, v9

    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v7, v0, v1

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    add-int/lit8 v0, v0, 0x5

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    sub-int/2addr v2, v10

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v4, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, v7, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iget-object v6, v7, Lcom/t4game/ListItem;->keyColor:[I

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->InitHighColor(IIIILjava/lang/String;[Ljava/lang/String;[I)[Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/t4game/ListItem;->setKeyString([Ljava/util/Vector;)V

    :cond_4
    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    sub-int/2addr v1, v10

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v1, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    sub-int/2addr v0, v9

    int-to-byte v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto/16 :goto_0

    :cond_5
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto/16 :goto_0
.end method

.method public GetCommand()S
    .locals 1

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    return v0
.end method

.method public InsertChoice([Lcom/t4game/ListItem;S)V
    .locals 4

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-gt p2, v0, :cond_0

    move v0, v2

    :goto_1
    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/t4game/UI_List;->setHaveVectorOfOther(B)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    iput-short p2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->insertElementAt(Ljava/lang/Object;I)V

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v2

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :goto_2
    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v2, v3

    if-ge v1, v2, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto/16 :goto_0

    :cond_4
    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v2

    sub-int v0, v1, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto/16 :goto_0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public NextPage()Z
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-byte v1, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    if-le v0, v1, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public addChoice([Lcom/t4game/ListItem;)V
    .locals 2

    if-eqz p1, :cond_0

    array-length v0, p1

    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x0

    :goto_1
    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v0, v1, :cond_3

    aget-object v1, p1, v0

    if-eqz v1, :cond_2

    aget-object v1, p1, v0

    iget-object v1, v1, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v1, :cond_2

    invoke-direct {p0, v0}, Lcom/t4game/UI_List;->setHaveVectorOfOther(B)V

    :cond_2
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-nez v0, :cond_4

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    :cond_4
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public clearAction()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_0
    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    invoke-direct {p0}, Lcom/t4game/UI_List;->ReturnFocus()V

    return-void
.end method

.method public clone()Lcom/t4game/UI_Super;
    .locals 2

    new-instance v0, Lcom/t4game/UI_List;

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    invoke-direct {v0, v1}, Lcom/t4game/UI_List;-><init>(Lcom/t4game/GameUi;)V

    invoke-super {p0, v0}, Lcom/t4game/UI_Super;->clone(Lcom/t4game/UI_Super;)V

    iget v1, p0, Lcom/t4game/UI_List;->BG_Color:I

    iput v1, v0, Lcom/t4game/UI_List;->BG_Color:I

    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    iput-byte v1, v0, Lcom/t4game/UI_List;->Column:B

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    iput-object v1, v0, Lcom/t4game/UI_List;->Column_W:[S

    iget-boolean v1, p0, Lcom/t4game/UI_List;->drawExpandBox:Z

    iput-boolean v1, v0, Lcom/t4game/UI_List;->drawExpandBox:Z

    iget v1, p0, Lcom/t4game/UI_List;->Focus_BG_Color:I

    iput v1, v0, Lcom/t4game/UI_List;->Focus_BG_Color:I

    iget v1, p0, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    iput v1, v0, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    iget-boolean v1, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    iput-boolean v1, v0, Lcom/t4game/UI_List;->HaveTitle:Z

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    iput-byte v1, v0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    iget-boolean v1, p0, Lcom/t4game/UI_List;->isFocus:Z

    iput-boolean v1, v0, Lcom/t4game/UI_List;->isFocus:Z

    iget-short v1, p0, Lcom/t4game/UI_List;->OtherH:S

    iput-short v1, v0, Lcom/t4game/UI_List;->OtherH:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    iput-short v1, v0, Lcom/t4game/UI_List;->Row_H:S

    iget-byte v1, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iput-byte v1, v0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iput-short v1, v0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-byte v1, p0, Lcom/t4game/UI_List;->Sub_Line:B

    iput-byte v1, v0, Lcom/t4game/UI_List;->Sub_Line:B

    iget-short v1, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    iput-short v1, v0, Lcom/t4game/UI_List;->temp_Column_W:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    iput-object v1, v0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    iget v1, p0, Lcom/t4game/UI_List;->Title_BG_Color:I

    iput v1, v0, Lcom/t4game/UI_List;->Title_BG_Color:I

    iget v1, p0, Lcom/t4game/UI_List;->Title_BG_Color:I

    iput v1, v0, Lcom/t4game/UI_List;->Title_Color:I

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    iput-short v1, v0, Lcom/t4game/UI_List;->Title_H:S

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/t4game/UI_List;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method public doListAction(Z)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sput v4, Lcom/t4game/GameUi;->tick:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-lez v0, :cond_3

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_2

    move v1, v4

    :goto_0
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v2, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, v0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/t4game/UI_List;->setDetailXY()V

    :cond_3
    :goto_1
    return-void

    :cond_4
    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sput v4, Lcom/t4game/GameUi;->tick:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_3

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :goto_2
    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_5

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v1, v1, 0x1

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_5
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_7

    move v1, v4

    :goto_3
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v2, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v2, :cond_6

    iget-object v2, v0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, v0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_3

    invoke-direct {p0}, Lcom/t4game/UI_List;->setDetailXY()V

    goto/16 :goto_1

    :cond_8
    move v0, v4

    goto :goto_2
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 11

    iget v0, p0, Lcom/t4game/UI_List;->BG_Color:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    :cond_0
    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/UI_List;->OtherH:S

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_1

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_List;->Sub_Line:B

    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/t4game/UI_List;->drawTitle(Ljavax/microedition/lcdui/Graphics;S)V

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    if-eqz v0, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    const/4 v1, -0x1

    if-eq v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_7

    iget v0, p0, Lcom/t4game/UI_List;->Focus_ServerList_Color:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_1
    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v0

    const/16 v1, 0xa

    iget-short v2, p0, Lcom/t4game/UI_List;->x:S

    iget-short v3, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v4, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_List;->w:S

    const/4 v5, 0x5

    sub-int/2addr v4, v5

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/UIPainter;->drawPanel(BIIII)V

    :cond_4
    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuY:I

    iget-short v0, p0, Lcom/t4game/UI_List;->w:S

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Row_H:S

    sput v0, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    const/16 v3, 0xe

    sub-int/2addr v2, v3

    invoke-direct {p0}, Lcom/t4game/UI_List;->getShowHeight()I

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    const/4 v0, 0x0

    move v9, v0

    :goto_2
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v9, v0, :cond_c

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    const/4 v0, 0x0

    move v10, v0

    :goto_3
    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v10, v0, :cond_a

    if-lez v10, :cond_5

    iget-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    const/4 v2, 0x1

    sub-int v2, v10, v2

    aget-short v1, v1, v2

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    :cond_5
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v9}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    aget-object v0, v0, v10

    iput-object v0, p0, Lcom/t4game/UI_List;->listItem_:Lcom/t4game/ListItem;

    iget-object v0, p0, Lcom/t4game/UI_List;->listItem_:Lcom/t4game/ListItem;

    if-eqz v0, :cond_6

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    iget-short v1, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v2, v2, v10

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    iget-short v4, p0, Lcom/t4game/UI_List;->Title_H:S

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-boolean v0, p0, Lcom/t4game/UI_List;->bScroll:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/t4game/UI_List;->listItem_:Lcom/t4game/ListItem;

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    iget-short v2, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v1, v2

    int-to-short v2, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v1, v3

    int-to-short v3, v1

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v4, v1, v10

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sget v6, Lcom/t4game/GameUi;->tick:I

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v1, p2

    iget-short v7, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v7

    iget-short v7, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v8, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v7, v8

    add-int/2addr v7, v1

    const/4 v8, 0x1

    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->draw(Ljavax/microedition/lcdui/Graphics;SSSSIIZ)V

    :goto_4
    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v1, p2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    const/4 v3, 0x5

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    iget-short v4, p0, Lcom/t4game/UI_List;->Title_H:S

    sub-int/2addr v3, v4

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :cond_6
    add-int/lit8 v0, v10, 0x1

    move v10, v0

    goto/16 :goto_3

    :cond_7
    iget v0, p0, Lcom/t4game/UI_List;->Focus_BG_Color:I

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto/16 :goto_1

    :cond_8
    iget-object v0, p0, Lcom/t4game/UI_List;->listItem_:Lcom/t4game/ListItem;

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    iget-short v2, p0, Lcom/t4game/UI_List;->temp_Column_W:S

    add-int/2addr v1, v2

    int-to-short v2, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v3, v9

    add-int/2addr v1, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v1, v3

    int-to-short v3, v1

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    aget-short v4, v1, v10

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sget v6, Lcom/t4game/GameUi;->tick:I

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v1, p2

    iget-short v7, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v7

    iget-short v7, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v8, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v7, v8

    add-int/2addr v7, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ne v1, v9, :cond_9

    iget-boolean v1, p0, Lcom/t4game/UI_List;->isFocus:Z

    if-eqz v1, :cond_9

    const/4 v1, 0x1

    move v8, v1

    :goto_5
    move-object v1, p1

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/ListItem;->draw(Ljavax/microedition/lcdui/Graphics;SSSSIIZ)V

    goto :goto_4

    :cond_9
    const/4 v1, 0x0

    move v8, v1

    goto :goto_5

    :cond_a
    invoke-direct {p0, p1, v9}, Lcom/t4game/UI_List;->drawExpandBox(Ljavax/microedition/lcdui/Graphics;I)V

    iget-byte v0, p0, Lcom/t4game/UI_List;->Sub_Line:B

    if-eqz v0, :cond_b

    iget-byte v0, p0, Lcom/t4game/UI_List;->Sub_Line:B

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->OtherH:S

    :cond_b
    add-int/lit8 v0, v9, 0x1

    move v9, v0

    goto/16 :goto_2

    :cond_c
    if-lez p2, :cond_d

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v0, v0, Lcom/t4game/GameUi;->x:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->w:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->h:S

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    :goto_6
    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    div-int v1, v0, v1

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v3, p0, Lcom/t4game/UI_List;->x:S

    iget-short v4, p0, Lcom/t4game/UI_List;->w:S

    add-int/2addr v3, v4

    const/16 v4, 0xe

    sub-int/2addr v3, v4

    iget-short v4, p0, Lcom/t4game/UI_List;->y:S

    sub-int/2addr v4, p2

    iget-short v5, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v4, v5

    iget-short v5, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v5, v1

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->paintScrossFlag(IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_d
    const/4 v0, 0x0

    const/4 v1, 0x0

    sget v2, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v3, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_6
.end method

.method public getColumn()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    return v0
.end method

.method public getItem(I)[Lcom/t4game/ListItem;
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-nez v0, :cond_0

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    if-ltz p1, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lt p1, v0, :cond_2

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/t4game/ListItem;

    check-cast p0, [Lcom/t4game/ListItem;

    move-object v0, p0

    goto :goto_0
.end method

.method public getRowNum()B
    .locals 1

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    int-to-byte v0, v0

    goto :goto_0
.end method

.method public getSubId()S
    .locals 1

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    return v0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v1, -0x1

    const/4 v4, 0x0

    invoke-direct {p0, v1}, Lcom/t4game/UI_List;->setHaveVectorOfOther(B)V

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->init(Ljava/io/DataInputStream;)V

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Row_H:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/t4game/Data;->color:[I

    aget v0, v1, v0

    iput v0, p0, Lcom/t4game/UI_List;->BG_Color:I

    :goto_0
    sget-object v0, Lcom/t4game/Data;->color:[I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    aget v0, v0, v1

    iput v0, p0, Lcom/t4game/UI_List;->Focus_BG_Color:I

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Title_H:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/UI_List;->Column_W:[S

    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    new-array v0, v0, [Lcom/t4game/ListItem;

    iput-object v0, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    move v0, v4

    :goto_1
    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/UI_List;->Column_W:[S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v2

    aput-short v2, v1, v0

    iget-object v1, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    new-instance v2, Lcom/t4game/ListItem;

    invoke-direct {v2}, Lcom/t4game/ListItem;-><init>()V

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_0
    iput v1, p0, Lcom/t4game/UI_List;->BG_Color:I

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/UI_List;->Column_W:[S

    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-short v2, v0, v1

    const/16 v3, 0xe

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    invoke-direct {p0}, Lcom/t4game/UI_List;->calcSub_Y()V

    iput-short v4, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Title_H:S

    if-lez v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->Row_H:S

    :goto_2
    int-to-byte v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Title_H:S

    iget-boolean v0, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    if-eqz v0, :cond_3

    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    sub-int/2addr v0, v1

    :goto_3
    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    if-eqz v1, :cond_4

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    :goto_4
    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->h:S

    return-void

    :cond_2
    move v0, v4

    goto :goto_2

    :cond_3
    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    goto :goto_3

    :cond_4
    move v1, v4

    goto :goto_4
.end method

.method public isFoucs()Z
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    return v0
.end method

.method public keyEvent(I)V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/t4game/UI_List;->focus:Z

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, -0x1

    if-ne p1, v0, :cond_6

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sput v4, Lcom/t4game/GameUi;->tick:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-lez v0, :cond_5

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-nez v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_2
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_4

    move v1, v4

    :goto_1
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v2, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, v0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/UI_List;->setDetailXY()V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto :goto_0

    :cond_6
    const/4 v0, -0x2

    if-ne p1, v0, :cond_b

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sput v4, Lcom/t4game/GameUi;->tick:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_a

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v4

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v3

    int-to-short v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :goto_2
    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_7

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v1, v1, 0x1

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_7
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_9

    move v1, v4

    :goto_3
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_9

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v2, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v2, :cond_8

    iget-object v2, v0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, v0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_8
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_9
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_0

    invoke-direct {p0}, Lcom/t4game/UI_List;->setDetailXY()V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto/16 :goto_0

    :cond_b
    const/4 v0, -0x3

    if-ne p1, v0, :cond_c

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto/16 :goto_0

    :cond_c
    const/4 v0, -0x4

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GameUi;->setFocus(BI)V

    goto/16 :goto_0

    :cond_d
    move v0, v4

    goto/16 :goto_2
.end method

.method public pointEvent(II)B
    .locals 8

    const/4 v7, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x1

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    const/16 v1, 0x24

    sub-int/2addr v0, v1

    if-lt p2, v0, :cond_1

    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    aput v1, v0, v7

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    aput v1, v0, v5

    const/4 v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_List;->x:S

    iget-short v3, p0, Lcom/t4game/UI_List;->w:S

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    sub-int/2addr v2, v5

    aput v2, v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->x:S

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuX:I

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->OtherH:S

    add-int/2addr v1, v2

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuY:I

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuWidth:I

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v2, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    mul-int/2addr v1, v2

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuHeight:I

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    sput v1, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    invoke-static {p1, p2, v0}, Lcom/t4game/PointerUtil;->isPointerInArea(II[I)Z

    move-result v0

    if-eqz v0, :cond_a

    iput-boolean v5, p0, Lcom/t4game/UI_List;->isFocus:Z

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-byte v1, p0, Lcom/t4game/UI_List;->id:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameUi;->setFocus(B)V

    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_b

    iget-boolean v0, p0, Lcom/t4game/UI_List;->drawExpandBox:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v1

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v7

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    const/16 v2, 0xf

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v0, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v0, v0

    add-int/2addr v0, v1

    sub-int/2addr v0, v5

    int-to-short v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x4

    int-to-short v0, v0

    :goto_1
    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sget v2, Lcom/t4game/PointerUtil;->s_iMenuY:I

    sget v3, Lcom/t4game/PointerUtil;->s_iMenuSpace:I

    iget-short v4, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    sub-int/2addr v1, v0

    sput v1, Lcom/t4game/PointerUtil;->s_iPointerReleasedY:I

    :cond_2
    invoke-static {v5}, Lcom/t4game/PointerUtil;->getMenuIndex(Z)B

    move-result v1

    if-eq v1, v6, :cond_a

    iget-object v2, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    :cond_3
    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/2addr v1, v0

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_6

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    iget-object v2, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v1, v2, :cond_4

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    sub-int v0, v1, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x1

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_4
    :goto_2
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_9

    move v1, v7

    :goto_3
    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v2, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v0, v0, v2

    iget-object v2, v0, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v2, :cond_5

    iget-object v2, v0, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, v0, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    :cond_5
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    sub-int/2addr v1, v5

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-lez v0, :cond_7

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_7
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto :goto_2

    :cond_8
    invoke-direct {p0}, Lcom/t4game/UI_List;->setDetailXY()V

    :cond_9
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    int-to-byte v0, v0

    goto/16 :goto_0

    :cond_a
    move v0, v6

    goto/16 :goto_0

    :cond_b
    move v0, v7

    goto/16 :goto_1
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/UI_List;->Column_W:[S

    iput-object v2, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/t4game/ListItem;->release()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iput-object v2, p0, Lcom/t4game/UI_List;->item:[Lcom/t4game/ListItem;

    return-void
.end method

.method public setColumn_W([SS)V
    .locals 4

    const/4 v1, 0x0

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    array-length v0, p1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->Column:B

    move v0, v1

    :goto_1
    iget-byte v2, p0, Lcom/t4game/UI_List;->Column:B

    if-ge v0, v2, :cond_2

    aget-short v2, p1, v0

    add-int/2addr v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_2
    if-ne v1, p2, :cond_0

    iput-short p2, p0, Lcom/t4game/UI_List;->w:S

    iput-object p1, p0, Lcom/t4game/UI_List;->Column_W:[S

    iget-object v0, p0, Lcom/t4game/UI_List;->Column_W:[S

    iget-byte v1, p0, Lcom/t4game/UI_List;->Column:B

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-short v2, v0, v1

    const/16 v3, 0xe

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v1

    goto :goto_0
.end method

.method public setFocus(Z)V
    .locals 10

    const/16 v9, 0xf

    const/4 v8, 0x0

    iput-boolean p1, p0, Lcom/t4game/UI_List;->isFocus:Z

    iget-boolean v0, p0, Lcom/t4game/UI_List;->isFocus:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    sput v8, Lcom/t4game/GameUi;->tick:I

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iput-short v8, p0, Lcom/t4game/UI_List;->Sub_Id:S

    :cond_0
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v7, v0, v1

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    add-int/lit8 v0, v0, 0x5

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    sub-int/2addr v2, v9

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v4, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, v7, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iget-object v6, v7, Lcom/t4game/ListItem;->keyColor:[I

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->InitHighColor(IIIILjava/lang/String;[Ljava/lang/String;[I)[Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/t4game/ListItem;->setKeyString([Ljava/util/Vector;)V

    :cond_1
    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v0, v0, v8

    iget-short v1, p0, Lcom/t4game/UI_List;->w:S

    sub-int/2addr v1, v9

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    iget-object v1, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    array-length v1, v1

    add-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    int-to-byte v0, v0

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v2, v0

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x4

    iget-short v2, p0, Lcom/t4game/UI_List;->y:S

    iget-object v3, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v3, v3, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v2, v3

    iget-short v3, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v2, v3

    if-le v1, v2, :cond_2

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    add-int/2addr v0, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v2

    sub-int v0, v1, v0

    const/4 v1, 0x4

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-byte v0, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    if-ltz v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Id:S

    if-ltz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Id:S

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/t4game/ListItem;

    check-cast v0, [Lcom/t4game/ListItem;

    iget-byte v1, p0, Lcom/t4game/UI_List;->HaveVectorOfOther:B

    aget-object v7, v0, v1

    iget-object v0, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, v7, Lcom/t4game/ListItem;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, v7, Lcom/t4game/ListItem;->Str:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_4

    iget-short v0, p0, Lcom/t4game/UI_List;->x:S

    add-int/lit8 v0, v0, 0x5

    iget-short v1, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v2, p0, Lcom/t4game/UI_List;->Sub_Id:S

    add-int/lit8 v2, v2, 0x1

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v2, v3

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x2

    iget-short v2, p0, Lcom/t4game/UI_List;->w:S

    sub-int/2addr v2, v9

    iget-short v3, p0, Lcom/t4game/UI_List;->Row_H:S

    iget-object v4, v7, Lcom/t4game/ListItem;->NameDetail:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, v7, Lcom/t4game/ListItem;->DetailKey:[Ljava/lang/String;

    iget-object v6, v7, Lcom/t4game/ListItem;->keyColor:[I

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->InitHighColor(IIIILjava/lang/String;[Ljava/lang/String;[I)[Ljava/util/Vector;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/t4game/ListItem;->setKeyString([Ljava/util/Vector;)V

    :cond_4
    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v1, v2

    if-ge v0, v1, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->h:S

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/UI_List;->Container:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    iget-short v2, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    iget-short v1, p0, Lcom/t4game/UI_List;->y:S

    iget-object v2, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v2, v2, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v1, v2

    iget-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v1, v2

    if-le v0, v1, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto/16 :goto_0
.end method

.method public setTitle([Ljava/lang/String;II)V
    .locals 3

    const/4 v2, 0x0

    iget-short v0, p0, Lcom/t4game/UI_List;->Title_H:S

    const/16 v1, 0x14

    if-ge v0, v1, :cond_0

    iput-boolean v2, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    iput-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    :goto_0
    return-void

    :cond_0
    iput-object p1, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    iput p2, p0, Lcom/t4game/UI_List;->Title_BG_Color:I

    iput p3, p0, Lcom/t4game/UI_List;->Title_Color:I

    iget-object v0, p0, Lcom/t4game/UI_List;->Title:[Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    :goto_1
    iget-boolean v0, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    if-eqz v0, :cond_2

    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    sub-int/2addr v0, v1

    :goto_2
    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    div-int/2addr v0, v1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-byte v0, p0, Lcom/t4game/UI_List;->ShowRowNum:B

    iget-short v1, p0, Lcom/t4game/UI_List;->Row_H:S

    mul-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    if-eqz v1, :cond_3

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    :goto_3
    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->h:S

    goto :goto_0

    :cond_1
    iput-short v2, p0, Lcom/t4game/UI_List;->Title_H:S

    iput-boolean v2, p0, Lcom/t4game/UI_List;->HaveTitle:Z

    iget-short v0, p0, Lcom/t4game/UI_List;->y:S

    iget-object v1, p0, Lcom/t4game/UI_List;->ui:Lcom/t4game/GameUi;

    iget-short v1, v1, Lcom/t4game/GameUi;->focusY:S

    sub-int/2addr v0, v1

    iget-short v1, p0, Lcom/t4game/UI_List;->Title_H:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_List;->Sub_Y:S

    goto :goto_1

    :cond_2
    iget-short v0, p0, Lcom/t4game/UI_List;->h:S

    goto :goto_2

    :cond_3
    move v1, v2

    goto :goto_3
.end method

.method public setY(S)V
    .locals 0

    invoke-super {p0, p1}, Lcom/t4game/UI_Super;->setY(S)V

    invoke-direct {p0}, Lcom/t4game/UI_List;->calcSub_Y()V

    return-void
.end method
