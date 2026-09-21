.class public Lcom/t4game/LogicalMapping;
.super Ljava/lang/Object;


# static fields
.field public static action_defaults:B = 0x0t

.field public static action_keep_focus:B = 0x0t

.field public static action_type:B = 0x0t

.field public static hotspot_index:[Z = null

.field public static final hotspot_index_0:B = 0x0t

.field public static final hotspot_index_1:B = 0x1t

.field public static final hotspot_index_2:B = 0x2t

.field public static final hotspot_index_3:B = 0x3t

.field public static final hotspot_index_4:B = 0x4t

.field public static final hotspot_index_5:B = 0x5t

.field public static final hotspot_index_none:I = -0x1

.field public static hotspot_info:[[I = null

.field public static final hotspot_info_end_line:B = 0x3t

.field public static final hotspot_info_focused_col:B = 0x1t

.field public static final hotspot_info_focused_row:B = 0x0t

.field public static final hotspot_info_index_quantity:B = 0x6t

.field public static final hotspot_info_num_per_screen:B = 0x5t

.field public static final hotspot_info_number_of_clicks:B = 0x7t

.field public static final hotspot_info_row_total:B = 0x4t

.field public static final hotspot_info_starting_row:B = 0x2t

.field public static hotspot_position:[[I = null

.field public static final hotspot_position_h:B = 0x3t

.field public static final hotspot_position_sub_box_h:B = 0x5t

.field public static final hotspot_position_sub_box_w:B = 0x4t

.field public static final hotspot_position_w:B = 0x2t

.field public static final hotspot_position_x:B = 0x0t

.field public static final hotspot_position_y:B = 0x1t

.field public static final hotspot_quantity:B = 0x6t

.field public static hotspot_set_index_once:Z = false

.field public static final hotspot_type_confirmed:B = 0x2t

.field public static final hotspot_type_defaults:B = 0x0t

.field public static final hotspot_type_focused:B = 0x1t


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x6

    new-array v0, v2, [Z

    sput-object v0, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    const/16 v0, 0x8

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    filled-new-array {v2, v2}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    sput-boolean v3, Lcom/t4game/LogicalMapping;->hotspot_set_index_once:Z

    const/4 v0, -0x1

    sput-byte v0, Lcom/t4game/LogicalMapping;->action_type:B

    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/LogicalMapping;->action_defaults:B

    sput-byte v3, Lcom/t4game/LogicalMapping;->action_keep_focus:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearHotspot()V
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static clearHotspot(I)V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v2, v0, p0

    move v0, v2

    :goto_0
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    array-length v1, v1

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_1
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    array-length v1, v1

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aput v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static getHotspotIndex()B
    .locals 2

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aget-boolean v1, v1, v0

    if-eqz v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getHotspotIndex(II)B
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    move v6, v7

    :goto_0
    const/4 v0, 0x6

    if-ge v6, v0, :cond_2

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, v6

    aget v0, v0, v7

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    aget v2, v1, v8

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    const/4 v3, 0x2

    aget v4, v1, v3

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    const/4 v3, 0x3

    aget v5, v1, v3

    move v1, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v6, v8}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static getHotspotIndex(IIB)B
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, -0x1

    move v6, v8

    :goto_0
    const/4 v0, 0x6

    if-ge v6, v0, :cond_2

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, v6

    aget v0, v0, v8

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    aget v2, v1, v9

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    const/4 v3, 0x2

    aget v4, v1, v3

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, v6

    const/4 v3, 0x3

    aget v5, v1, v3

    move v1, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    if-gez v0, :cond_0

    invoke-static {v6, v9}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    :cond_0
    move v0, v6

    :goto_1
    return v0

    :cond_1
    add-int/lit8 v0, v6, 0x1

    int-to-byte v0, v0

    move v6, v0

    goto :goto_0

    :cond_2
    sget-byte v0, Lcom/t4game/LogicalMapping;->action_defaults:B

    if-ne p2, v0, :cond_3

    move v0, v7

    goto :goto_1

    :cond_3
    sget-byte v0, Lcom/t4game/LogicalMapping;->action_keep_focus:B

    if-ne p2, v0, :cond_4

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    goto :goto_1

    :cond_4
    move v0, v7

    goto :goto_1
.end method

.method public static getHotspotInfoColTotal(I)I
    .locals 4

    const/4 v3, -0x1

    if-gez p0, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x2

    aget v0, v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x4

    aget v1, v1, v2

    div-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public static getHotspotInfoCurrentCol(I)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getHotspotInfoCurrentRow(I)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getHotspotInfoEndLine(I)I
    .locals 3

    const/4 v2, -0x1

    if-gez p0, :cond_1

    move v0, v2

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x3

    aget v0, v0, v1

    if-gt v0, v2, :cond_0

    move v0, v2

    goto :goto_0
.end method

.method public static getHotspotInfoIndexQuantity(I)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x6

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getHotspotInfoIndexQuantityByCalculating(I)I
    .locals 7

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x5

    const/4 v3, 0x4

    const/4 v0, 0x0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    if-lez v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v5

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    div-int/2addr v0, v1

    :cond_0
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v4

    if-lez v1, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v6

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v4

    if-lt v1, v2, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v6

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v4

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public static getHotspotInfoNumPerScreen(I)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x5

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getHotspotInfoRowTotal(I)I
    .locals 5

    const/4 v4, -0x1

    if-gez p0, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x6

    aget v0, v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x2

    aget v1, v1, v2

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x4

    aget v2, v2, v3

    div-int/2addr v1, v2

    int-to-byte v1, v1

    invoke-static {v0, v1}, Lcom/t4game/Util;->getLineNumInt(IB)I

    move-result v0

    if-gt v0, v4, :cond_0

    move v0, v4

    goto :goto_0
.end method

.method public static getHotspotInfoStartingRow(I)I
    .locals 2

    if-gez p0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x2

    aget v0, v0, v1

    goto :goto_0
.end method

.method public static getIndexInAScreen(I)I
    .locals 5

    const/4 v4, 0x4

    const/4 v1, 0x0

    const/4 v3, -0x1

    if-gez p0, :cond_1

    move v0, v3

    :cond_0
    :goto_0
    return v0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-gtz v0, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x2

    aget v1, v1, v2

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v4

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-gt v0, v3, :cond_0

    move v0, v3

    goto :goto_0
.end method

.method public static getIndexInAScreen(II)I
    .locals 2

    const/4 v1, -0x1

    if-gez p0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lcom/t4game/LogicalMapping;->keyEvent(II)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v0

    goto :goto_0

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public static getIndexInAScreen(III)I
    .locals 8

    const/4 v7, 0x4

    const/4 v3, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    if-gez p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-lt p1, v0, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v5

    if-lt p2, v0, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v6

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v5

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-le p2, v0, :cond_2

    :cond_1
    invoke-static {p0, v4}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    move v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sub-int v0, p1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v7

    div-int/2addr v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    sub-int v1, p2, v1

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x5

    aget v2, v2, v3

    div-int/2addr v1, v2

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, p0

    aget v2, v2, v4

    if-ne v2, v1, :cond_4

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, p0

    aget v2, v2, v5

    if-ne v2, v0, :cond_4

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x7

    aget v2, v2, v3

    if-lez v2, :cond_3

    invoke-static {p0, v6}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    :cond_3
    :goto_1
    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v6

    sget-object v3, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v3, v3, p0

    aget v3, v3, v7

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    goto :goto_0

    :cond_4
    invoke-static {p0, v5}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    goto :goto_1
.end method

.method public static getIndexInAll(I)I
    .locals 6

    const/4 v5, 0x4

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-gez p0, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getIndexInAScreen(I)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    if-gtz v1, :cond_3

    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v3

    sget-object v3, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v3, v3, p0

    aget v3, v3, v5

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    move v0, v4

    goto :goto_0
.end method

.method public static getIndexInAll(II)I
    .locals 6

    const/4 v3, 0x2

    const/4 v5, -0x1

    if-gez p0, :cond_1

    move v0, v5

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1}, Lcom/t4game/LogicalMapping;->getIndexInAScreen(II)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v3

    sget-object v3, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v3, v3, p0

    const/4 v4, 0x4

    aget v3, v3, v4

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x6

    aget v1, v1, v2

    if-lt v0, v1, :cond_0

    move v0, v5

    goto :goto_0
.end method

.method public static getIndexInAll(III)I
    .locals 7

    const/4 v3, 0x2

    const/4 v6, 0x6

    const/4 v5, -0x1

    if-gez p0, :cond_1

    move v0, v5

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/t4game/LogicalMapping;->getIndexInAScreen(III)I

    move-result v0

    if-gez v0, :cond_2

    move v0, v5

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aget v2, v2, v3

    sget-object v3, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v3, v3, p0

    const/4 v4, 0x4

    aget v3, v3, v4

    div-int/2addr v2, v3

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    if-gez v0, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v6

    if-lt v0, v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v6

    if-lt v0, v1, :cond_4

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v6

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    goto :goto_0

    :cond_4
    move v0, v5

    goto :goto_0
.end method

.method public static initHotspot()V
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v3, v1, v0

    move v1, v3

    :goto_1
    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_0

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_2
    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, v0

    array-length v2, v2

    if-ge v1, v2, :cond_1

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, v0

    aput v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/LogicalMapping;->hotspot_set_index_once:Z

    return-void
.end method

.method public static isConfirm(I)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-gez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x7

    aget v0, v0, v1

    if-le v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isFocused(I)Z
    .locals 3

    const/4 v2, 0x0

    if-gez p0, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x7

    aget v0, v0, v1

    if-lez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_0
.end method

.method public static isPointerInHotspot(III)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-lt p1, v0, :cond_0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x2

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-gt p1, v0, :cond_0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-lt p2, v0, :cond_0

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x3

    aget v1, v1, v2

    add-int/2addr v0, v1

    if-gt p2, v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    goto :goto_0
.end method

.method public static keyEvent(II)Z
    .locals 6

    const/4 v1, 0x7

    const/4 v5, 0x5

    const/4 v2, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    if-gez p0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_4

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-lez v0, :cond_2

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v4

    sub-int/2addr v1, v3

    aput v1, v0, v4

    :cond_1
    :goto_1
    invoke-static {p0, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    move v0, v3

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-nez v0, :cond_3

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v2

    if-lez v0, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v2

    sub-int/2addr v1, v3

    aput v1, v0, v2

    goto :goto_1

    :cond_3
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v4, v0, v4

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v4, v0, v2

    goto :goto_1

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_8

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_6

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x3

    aget v1, v1, v2

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_5

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v4

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v4

    :cond_5
    :goto_2
    invoke-static {p0, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    move v0, v3

    goto :goto_0

    :cond_6
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    sub-int/2addr v1, v3

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v2

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    add-int/2addr v0, v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoRowTotal(I)I

    move-result v1

    if-ge v0, v1, :cond_5

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v2

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v2

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v4, v0, v4

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v4, v0, v2

    goto :goto_2

    :cond_8
    const/4 v0, -0x3

    if-ne p1, v0, :cond_a

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    if-lez v0, :cond_9

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v3

    sub-int/2addr v1, v3

    aput v1, v0, v3

    :cond_9
    invoke-static {p0, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    move v0, v3

    goto/16 :goto_0

    :cond_a
    const/4 v0, -0x4

    if-ne p1, v0, :cond_c

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoColTotal(I)I

    move-result v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sub-int v2, v0, v3

    if-ge v1, v2, :cond_b

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v1, v0, v3

    add-int/lit8 v1, v1, 0x1

    aput v1, v0, v3

    :goto_3
    invoke-static {p0, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    move v0, v3

    goto/16 :goto_0

    :cond_b
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    sub-int/2addr v0, v3

    aput v0, v1, v3

    goto :goto_3

    :cond_c
    const/4 v0, -0x6

    if-eq p1, v0, :cond_d

    const/4 v0, -0x5

    if-ne p1, v0, :cond_f

    :cond_d
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v1

    if-ltz v0, :cond_e

    invoke-static {p0, v2}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    :goto_4
    move v0, v3

    goto/16 :goto_0

    :cond_e
    invoke-static {p0, v4}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    goto :goto_4

    :cond_f
    const/4 v0, -0x7

    if-ne p1, v0, :cond_11

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v1

    if-le v0, v3, :cond_10

    invoke-static {p0, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    :goto_5
    move v0, v3

    goto/16 :goto_0

    :cond_10
    invoke-static {p0, v4}, Lcom/t4game/LogicalMapping;->setHotspotInfoNumberOfClicks(II)V

    goto :goto_5

    :cond_11
    move v0, v4

    goto/16 :goto_0
.end method

.method public static pointerEvent(II)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {}, Lcom/t4game/LogicalMapping;->getHotspotIndex()B

    move-result v0

    invoke-static {p0, p1}, Lcom/t4game/LogicalMapping;->getHotspotIndex(II)B

    move-result v1

    const/4 v2, -0x1

    if-le v1, v2, :cond_2

    invoke-static {v1}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v2

    invoke-static {v1, p0, p1}, Lcom/t4game/LogicalMapping;->setFocusedRowAndCol(III)V

    invoke-static {v1}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v3

    if-ne v2, v3, :cond_1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x2

    invoke-static {v1, v0}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, v0}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x7

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1
.end method

.method public static pointerEvent(IIB)V
    .locals 4

    const/4 v3, 0x0

    invoke-static {p0, p1, p2}, Lcom/t4game/LogicalMapping;->getHotspotIndex(IIB)B

    move-result v0

    const/4 v1, -0x1

    if-le v0, v1, :cond_2

    invoke-static {v0, p0, p1}, Lcom/t4game/LogicalMapping;->isPointerInHotspot(III)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-static {v0}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v1

    invoke-static {v0, p0, p1}, Lcom/t4game/LogicalMapping;->setFocusedRowAndCol(III)V

    invoke-static {v0}, Lcom/t4game/LogicalMapping;->getIndexInAll(I)I

    move-result v2

    if-ne v1, v2, :cond_1

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    goto :goto_0

    :cond_2
    move v0, v3

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, v0

    const/4 v2, 0x7

    aput v3, v1, v2

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1
.end method

.method public static setFocusedRowAndCol(III)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x1

    const/4 v3, 0x0

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    sub-int v0, p2, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x5

    aget v1, v1, v2

    div-int/2addr v0, v1

    if-ge v0, v4, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v3, v0, v3

    :goto_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    aget v0, v0, v3

    sub-int v0, p1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x4

    aget v1, v1, v2

    div-int/2addr v0, v1

    if-ge v0, v4, :cond_3

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v3, v0, v4

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aput v0, v1, v3

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v5

    sub-int/2addr v1, v4

    aput v1, v0, v3

    goto :goto_1

    :cond_3
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aput v0, v1, v4

    goto :goto_0
.end method

.method public static setHotspotIndex(BI)V
    .locals 5

    const/4 v4, 0x7

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    if-ne v0, p0, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    const/4 v2, 0x1

    aput-boolean v2, v1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, v0

    aput p1, v1, v4

    :goto_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_index:[Z

    aput-boolean v3, v1, v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, v0

    aput v3, v1, v4

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static setHotspotIndexOnlyOnce(B)V
    .locals 1

    sget-boolean v0, Lcom/t4game/LogicalMapping;->hotspot_set_index_once:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/t4game/LogicalMapping;->setHotspotIndex(BI)V

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/LogicalMapping;->hotspot_set_index_once:Z

    :cond_0
    return-void
.end method

.method public static setHotspotInfo(II)V
    .locals 2

    if-ltz p0, :cond_0

    if-gez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x5

    aput p1, v0, v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoRowTotal(I)V

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoEndLine(I)V

    goto :goto_0
.end method

.method public static setHotspotInfo(III)V
    .locals 2

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-gez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x5

    aput p1, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x6

    aput p2, v0, v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoRowTotal(I)V

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoEndLine(I)V

    goto :goto_0
.end method

.method public static setHotspotInfo(IIII)V
    .locals 2

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-gez p3, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x2

    aput p3, v0, v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoRowTotal(I)V

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoEndLine(I)V

    goto :goto_0
.end method

.method public static setHotspotInfo(IIIII)V
    .locals 2

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x0

    aput p1, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x1

    aput p2, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x2

    aput p3, v0, v1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    const/4 v1, 0x5

    aput p4, v0, v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoRowTotal(I)V

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->setHotspotInfoEndLine(I)V

    goto :goto_0
.end method

.method public static setHotspotInfoEndLine(I)V
    .locals 6

    const/4 v5, 0x5

    const/4 v4, 0x3

    const/4 v3, 0x2

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoRowTotal(I)I

    move-result v0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, p0

    aget v2, v2, v5

    add-int/2addr v1, v2

    if-le v1, v0, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aput v0, v1, v4

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v2, v2, p0

    aget v2, v2, v5

    add-int/2addr v1, v2

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static setHotspotInfoInDefault(I)V
    .locals 7

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v0

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentCol(I)I

    move-result v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result v2

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoNumPerScreen(I)I

    move-result v3

    sget-object v4, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v4, v4, p0

    const/4 v5, 0x6

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoIndexQuantityByCalculating(I)I

    move-result v6

    aput v6, v4, v5

    invoke-static {p0, v0, v1, v2, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfo(IIIII)V

    return-void
.end method

.method public static setHotspotInfoNumberOfClicks(II)V
    .locals 4

    const/4 v3, 0x7

    const/4 v2, 0x0

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    move v0, v2

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, v0

    aput v2, v1, v3

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_1

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput p1, v0, v3

    goto :goto_0
.end method

.method public static setHotspotInfoOnlyWithQuantity(II)V
    .locals 6

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentRow(I)I

    move-result v0

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoCurrentCol(I)I

    move-result v1

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoStartingRow(I)I

    move-result v2

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoRowTotal(I)I

    move-result v3

    sget-object v4, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v4, v4, p0

    const/4 v5, 0x6

    aput p1, v4, v5

    invoke-static {p0, v0, v1, v2, v3}, Lcom/t4game/LogicalMapping;->setHotspotInfo(IIIII)V

    return-void
.end method

.method public static setHotspotInfoRowTotal(I)V
    .locals 3

    if-gez p0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoRowTotal(I)I

    move-result v0

    if-lez v0, :cond_0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    const/4 v2, 0x4

    aput v0, v1, v2

    goto :goto_0
.end method

.method public static setHotspotPosition(IIIIIII)V
    .locals 5

    const/4 v4, 0x1

    if-ltz p0, :cond_0

    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    if-ltz p3, :cond_0

    if-ltz p4, :cond_0

    if-ltz p5, :cond_0

    if-gez p6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    if-nez p5, :cond_3

    move v0, v4

    :goto_1
    if-nez p6, :cond_2

    move v1, v4

    :goto_2
    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x0

    aput p1, v2, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    aput p2, v2, v4

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x2

    aput p3, v2, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x3

    aput p4, v2, v3

    sget-object v2, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v2, v2, p0

    const/4 v3, 0x4

    aput v0, v2, v3

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_position:[[I

    aget-object v0, v0, p0

    const/4 v2, 0x5

    aput v1, v0, v2

    goto :goto_0

    :cond_2
    move v1, p6

    goto :goto_2

    :cond_3
    move v0, p5

    goto :goto_1
.end method

.method public static specifyFocusedRowAndColByNum(III)V
    .locals 5

    const/4 v4, 0x3

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-gez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    if-ge p1, v2, :cond_1

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v3, v0, v3

    :goto_1
    if-ge p2, v2, :cond_3

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput v3, v0, v2

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aget v0, v0, v4

    if-ge p1, v0, :cond_2

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput p1, v0, v3

    goto :goto_1

    :cond_2
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    sget-object v1, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v1, v1, p0

    aget v1, v1, v4

    sub-int/2addr v1, v2

    aput v1, v0, v3

    goto :goto_1

    :cond_3
    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoColTotal(I)I

    move-result v0

    if-ge p2, v0, :cond_4

    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    aput p2, v0, v2

    goto :goto_0

    :cond_4
    sget-object v0, Lcom/t4game/LogicalMapping;->hotspot_info:[[I

    aget-object v0, v0, p0

    invoke-static {p0}, Lcom/t4game/LogicalMapping;->getHotspotInfoColTotal(I)I

    move-result v1

    sub-int/2addr v1, v2

    aput v1, v0, v2

    goto :goto_0
.end method
