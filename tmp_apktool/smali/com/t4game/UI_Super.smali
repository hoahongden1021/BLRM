.class public abstract Lcom/t4game/UI_Super;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_BACK:B = 0x1t

.field public static final ACTION_DOWN:B = 0x3t

.field public static final ACTION_OK:B = 0x0t

.field public static final ACTION_UP:B = 0x2t

.field public static tick:I


# instance fields
.field alignmentList:Ljava/util/Vector;

.field childList:Ljava/util/Vector;

.field dnFocusIndex:B

.field focus:Z

.field public focusH:S

.field public focusY:S

.field protected gravity:B

.field h:S

.field id:B

.field lfFocusIndex:B

.field px:S

.field py:S

.field rtFocusIndex:B

.field rx:S

.field ry:S

.field public type:B

.field ui:Lcom/t4game/UI_Super;

.field upFocusIndex:B

.field protected visible:Z

.field w:S

.field x:S

.field y:S


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/t4game/UI_Super;->tick:I

    return-void
.end method

.method public constructor <init>(Lcom/t4game/UI_Super;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/UI_Super;->visible:Z

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->gravity:B

    iput-object p1, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    return-void
.end method

.method private coordinateTransfer()V
    .locals 5

    iget-object v0, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_Super;->rx:S

    invoke-virtual {p0, v0}, Lcom/t4game/UI_Super;->setX(S)V

    iget-short v0, p0, Lcom/t4game/UI_Super;->ry:S

    invoke-virtual {p0, v0}, Lcom/t4game/UI_Super;->setY(S)V

    :goto_0
    invoke-virtual {p0}, Lcom/t4game/UI_Super;->isHasChild()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/UI_Super;

    iget-short v3, p0, Lcom/t4game/UI_Super;->x:S

    iget-short v4, v0, Lcom/t4game/UI_Super;->rx:S

    add-int/2addr v3, v4

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/t4game/UI_Super;->setX(S)V

    iget-short v3, p0, Lcom/t4game/UI_Super;->y:S

    iget-short v4, v0, Lcom/t4game/UI_Super;->ry:S

    add-int/2addr v3, v4

    int-to-short v3, v3

    invoke-virtual {v0, v3}, Lcom/t4game/UI_Super;->setY(S)V

    invoke-virtual {v0}, Lcom/t4game/UI_Super;->autoLayout()V

    add-int/lit8 v0, v2, 0x1

    int-to-byte v0, v0

    move v2, v0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v0, v0, Lcom/t4game/UI_Super;->x:S

    iget-short v1, p0, Lcom/t4game/UI_Super;->rx:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/t4game/UI_Super;->setX(S)V

    iget-object v0, p0, Lcom/t4game/UI_Super;->ui:Lcom/t4game/UI_Super;

    iget-short v0, v0, Lcom/t4game/UI_Super;->y:S

    iget-short v1, p0, Lcom/t4game/UI_Super;->ry:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    invoke-virtual {p0, v0}, Lcom/t4game/UI_Super;->setY(S)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private getAlignmentValue(Lcom/t4game/Alignment;)I
    .locals 2

    iget-short v0, p1, Lcom/t4game/Alignment;->value:S

    if-gez v0, :cond_0

    iget-byte v1, p1, Lcom/t4game/Alignment;->alignType:B

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    sget v1, Lcom/t4game/Defaults;->CANVAS_WW:I

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    goto :goto_0

    :pswitch_2
    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    mul-int/lit8 v1, v1, 0x64

    div-int v0, v1, v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public addChild(Lcom/t4game/UI_Super;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public autoLayout()V
    .locals 15

    const/4 v12, 0x0

    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v12

    :goto_1
    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_21

    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/Alignment;

    iget-object v2, v0, Lcom/t4game/Alignment;->referenceUI:Lcom/t4game/UI_Super;

    iget-boolean v2, v2, Lcom/t4game/UI_Super;->visible:Z

    if-nez v2, :cond_3

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_3
    iget-object v2, v0, Lcom/t4game/Alignment;->referenceUI:Lcom/t4game/UI_Super;

    iget-object v3, v0, Lcom/t4game/Alignment;->arrayUI:[Lcom/t4game/UI_Super;

    iget-byte v4, v0, Lcom/t4game/Alignment;->alignType:B

    invoke-direct {p0, v0}, Lcom/t4game/UI_Super;->getAlignmentValue(Lcom/t4game/Alignment;)I

    move-result v5

    iget-short v6, v2, Lcom/t4game/UI_Super;->rx:S

    iget-short v7, v2, Lcom/t4game/UI_Super;->ry:S

    iget-short v8, v2, Lcom/t4game/UI_Super;->w:S

    iget-short v9, v2, Lcom/t4game/UI_Super;->h:S

    const/16 v10, 0xb

    if-ne v4, v10, :cond_6

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMinLeft()I

    move-result v4

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMaxRight()I

    move-result v0

    div-int/lit8 v5, v8, 0x2

    add-int/2addr v5, v12

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    sub-int v0, v5, v0

    move v4, v12

    :goto_2
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_5

    :cond_4
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_5
    if-eq v5, v2, :cond_4

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_4

    iget-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    add-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    goto :goto_3

    :cond_6
    const/16 v10, 0xa

    if-ne v4, v10, :cond_9

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMinTop()I

    move-result v4

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMaxBottom()I

    move-result v0

    div-int/lit8 v5, v9, 0x2

    add-int/2addr v5, v12

    sub-int/2addr v0, v4

    div-int/lit8 v0, v0, 0x2

    add-int/2addr v0, v4

    sub-int v0, v5, v0

    move v4, v12

    :goto_4
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_8

    :cond_7
    :goto_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    :cond_8
    if-eq v5, v2, :cond_7

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_7

    iget-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    add-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    goto :goto_5

    :cond_9
    const/16 v10, 0xc

    if-ne v4, v10, :cond_c

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMinLeft()I

    move-result v0

    sub-int/2addr v0, v5

    move v4, v12

    :goto_6
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_b

    :cond_a
    :goto_7
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    :cond_b
    if-eq v5, v2, :cond_a

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_a

    iget-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    sub-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    goto :goto_7

    :cond_c
    const/16 v10, 0xe

    if-ne v4, v10, :cond_f

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMaxRight()I

    move-result v0

    iget-short v4, p0, Lcom/t4game/UI_Super;->w:S

    sub-int v0, v4, v0

    sub-int/2addr v0, v5

    move v4, v12

    :goto_8
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_e

    :cond_d
    :goto_9
    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_e
    if-eq v5, v2, :cond_d

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_d

    iget-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    add-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->rx:S

    goto :goto_9

    :cond_f
    const/16 v10, 0xd

    if-ne v4, v10, :cond_12

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMinTop()I

    move-result v0

    sub-int/2addr v0, v5

    move v4, v12

    :goto_a
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_11

    :cond_10
    :goto_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_a

    :cond_11
    if-eq v5, v2, :cond_10

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_10

    iget-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    sub-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    goto :goto_b

    :cond_12
    const/16 v10, 0xf

    if-ne v4, v10, :cond_15

    invoke-virtual {v0}, Lcom/t4game/Alignment;->calculateBorder()V

    invoke-virtual {v0}, Lcom/t4game/Alignment;->getMaxBottom()I

    move-result v0

    iget-short v4, p0, Lcom/t4game/UI_Super;->h:S

    sub-int v0, v4, v0

    sub-int/2addr v0, v5

    move v4, v12

    :goto_c
    array-length v5, v3

    if-ge v4, v5, :cond_2

    aget-object v5, v3, v4

    iget-boolean v6, v5, Lcom/t4game/UI_Super;->visible:Z

    if-nez v6, :cond_14

    :cond_13
    :goto_d
    add-int/lit8 v4, v4, 0x1

    goto :goto_c

    :cond_14
    if-eq v5, v2, :cond_13

    iget-byte v6, v5, Lcom/t4game/UI_Super;->gravity:B

    if-nez v6, :cond_13

    iget-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    add-int/2addr v6, v0

    int-to-short v6, v6

    iput-short v6, v5, Lcom/t4game/UI_Super;->ry:S

    goto :goto_d

    :cond_15
    move v0, v12

    move v13, v9

    move v9, v6

    move v6, v13

    move v14, v7

    move v7, v8

    move v8, v14

    :goto_e
    array-length v10, v3

    if-ge v0, v10, :cond_2

    aget-object v10, v3, v0

    iget-boolean v11, v10, Lcom/t4game/UI_Super;->visible:Z

    if-nez v11, :cond_17

    :cond_16
    :goto_f
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    :cond_17
    if-eq v10, v2, :cond_16

    if-nez v4, :cond_18

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_18

    iput-short v9, v10, Lcom/t4game/UI_Super;->rx:S

    :cond_18
    const/4 v11, 0x1

    if-ne v4, v11, :cond_19

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_19

    iget-short v11, v10, Lcom/t4game/UI_Super;->w:S

    sub-int v11, v7, v11

    add-int/2addr v11, v9

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->rx:S

    :cond_19
    const/4 v11, 0x2

    if-ne v4, v11, :cond_1a

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1a

    iget-short v11, v10, Lcom/t4game/UI_Super;->w:S

    sub-int v11, v7, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v9

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->rx:S

    :cond_1a
    const/4 v11, 0x4

    if-ne v4, v11, :cond_1b

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1b

    iput-short v8, v10, Lcom/t4game/UI_Super;->ry:S

    :cond_1b
    const/4 v11, 0x5

    if-ne v4, v11, :cond_1c

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1c

    iget-short v11, v10, Lcom/t4game/UI_Super;->h:S

    sub-int v11, v6, v11

    add-int/2addr v11, v8

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->ry:S

    :cond_1c
    const/4 v11, 0x6

    if-ne v4, v11, :cond_1d

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1d

    iget-short v11, v10, Lcom/t4game/UI_Super;->h:S

    sub-int v11, v6, v11

    div-int/lit8 v11, v11, 0x2

    add-int/2addr v11, v8

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->ry:S

    :cond_1d
    const/4 v11, 0x3

    if-ne v4, v11, :cond_1e

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1e

    add-int v11, v9, v7

    add-int/2addr v11, v5

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->rx:S

    add-int/2addr v7, v5

    add-int/2addr v7, v9

    int-to-short v7, v7

    iget-short v9, v10, Lcom/t4game/UI_Super;->w:S

    move v13, v9

    move v9, v7

    move v7, v13

    :cond_1e
    const/4 v11, 0x7

    if-ne v4, v11, :cond_1f

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_1f

    add-int v11, v8, v6

    add-int/2addr v11, v5

    int-to-short v11, v11

    iput-short v11, v10, Lcom/t4game/UI_Super;->ry:S

    add-int/2addr v6, v5

    add-int/2addr v6, v8

    int-to-short v6, v6

    iget-short v8, v10, Lcom/t4game/UI_Super;->h:S

    move v13, v8

    move v8, v6

    move v6, v13

    :cond_1f
    const/16 v11, 0x8

    if-ne v4, v11, :cond_20

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_20

    iput-short v7, v10, Lcom/t4game/UI_Super;->w:S

    :cond_20
    const/16 v11, 0x9

    if-ne v4, v11, :cond_16

    iget-byte v11, v10, Lcom/t4game/UI_Super;->gravity:B

    if-nez v11, :cond_16

    iput-short v6, v10, Lcom/t4game/UI_Super;->h:S

    goto/16 :goto_f

    :cond_21
    invoke-direct {p0}, Lcom/t4game/UI_Super;->coordinateTransfer()V

    goto/16 :goto_0
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

    invoke-virtual {p0}, Lcom/t4game/UI_Super;->clone()Lcom/t4game/UI_Super;

    move-result-object v0

    return-object v0
.end method

.method protected clone(Lcom/t4game/UI_Super;)V
    .locals 1

    if-eqz p1, :cond_0

    iget-byte v0, p0, Lcom/t4game/UI_Super;->id:B

    iput-byte v0, p1, Lcom/t4game/UI_Super;->id:B

    iget-short v0, p0, Lcom/t4game/UI_Super;->x:S

    iput-short v0, p1, Lcom/t4game/UI_Super;->x:S

    iget-short v0, p0, Lcom/t4game/UI_Super;->y:S

    iput-short v0, p1, Lcom/t4game/UI_Super;->y:S

    iget-short v0, p0, Lcom/t4game/UI_Super;->h:S

    iput-short v0, p1, Lcom/t4game/UI_Super;->h:S

    iget-short v0, p0, Lcom/t4game/UI_Super;->w:S

    iput-short v0, p1, Lcom/t4game/UI_Super;->w:S

    iget-boolean v0, p0, Lcom/t4game/UI_Super;->focus:Z

    iput-boolean v0, p1, Lcom/t4game/UI_Super;->focus:Z

    iget-byte v0, p0, Lcom/t4game/UI_Super;->upFocusIndex:B

    iput-byte v0, p1, Lcom/t4game/UI_Super;->upFocusIndex:B

    iget-byte v0, p0, Lcom/t4game/UI_Super;->dnFocusIndex:B

    iput-byte v0, p1, Lcom/t4game/UI_Super;->dnFocusIndex:B

    iget-byte v0, p0, Lcom/t4game/UI_Super;->lfFocusIndex:B

    iput-byte v0, p1, Lcom/t4game/UI_Super;->lfFocusIndex:B

    iget-byte v0, p0, Lcom/t4game/UI_Super;->rtFocusIndex:B

    iput-byte v0, p1, Lcom/t4game/UI_Super;->rtFocusIndex:B

    :cond_0
    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;S)V
    .locals 2

    sget v0, Lcom/t4game/UI_Super;->tick:I

    const v1, 0xffffff

    if-ge v0, v1, :cond_0

    sget v0, Lcom/t4game/UI_Super;->tick:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/UI_Super;->tick:I

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    sput v0, Lcom/t4game/UI_Super;->tick:I

    goto :goto_0
.end method

.method public init(Ljava/io/DataInputStream;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/UI_Super;->px:S

    iput-short v0, p0, Lcom/t4game/UI_Super;->py:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->id:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->px:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->x:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iget-short v1, p0, Lcom/t4game/UI_Super;->py:S

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->y:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->w:S

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->h:S

    iget-short v0, p0, Lcom/t4game/UI_Super;->w:S

    if-gez v0, :cond_0

    iget-short v0, p0, Lcom/t4game/UI_Super;->w:S

    int-to-long v0, v0

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    mul-int/lit8 v0, v0, 0x64

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    div-int/2addr v0, v1

    int-to-long v0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->w:S

    :cond_0
    iget-short v0, p0, Lcom/t4game/UI_Super;->h:S

    if-gez v0, :cond_1

    iget-short v0, p0, Lcom/t4game/UI_Super;->w:S

    int-to-long v0, v0

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    mul-int/lit8 v0, v0, 0x64

    iget-short v1, p0, Lcom/t4game/UI_Super;->w:S

    div-int/2addr v0, v1

    int-to-long v0, v0

    long-to-int v0, v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/UI_Super;->h:S

    :cond_1
    invoke-virtual {p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v0

    iput-boolean v0, p0, Lcom/t4game/UI_Super;->focus:Z

    iget-boolean v0, p0, Lcom/t4game/UI_Super;->focus:Z

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->upFocusIndex:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->dnFocusIndex:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->lfFocusIndex:B

    invoke-virtual {p1}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/UI_Super;->rtFocusIndex:B

    :cond_2
    return-void
.end method

.method public isHasChild()Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/UI_Super;->childList:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public abstract keyEvent(I)V
.end method

.method public abstract pointEvent(II)B
.end method

.method public abstract release()V
.end method

.method public setAlignment(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    :cond_0
    iget-object v0, p0, Lcom/t4game/UI_Super;->alignmentList:Ljava/util/Vector;

    new-instance v1, Lcom/t4game/Alignment;

    invoke-direct {v1, p1, p2, p3, p4}, Lcom/t4game/Alignment;-><init>(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public abstract setFocus(Z)V
.end method

.method public setX(S)V
    .locals 0

    iput-short p1, p0, Lcom/t4game/UI_Super;->x:S

    return-void
.end method

.method public setY(S)V
    .locals 0

    iput-short p1, p0, Lcom/t4game/UI_Super;->y:S

    return-void
.end method
