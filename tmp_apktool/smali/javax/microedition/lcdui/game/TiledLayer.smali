.class public Ljavax/microedition/lcdui/game/TiledLayer;
.super Ljavax/microedition/lcdui/game/Layer;


# instance fields
.field animatedTiles:[I

.field private final cols:I

.field img:Ljavax/microedition/lcdui/Image;

.field numAnimatedTiles:I

.field private numStaticTiles:I

.field private final rows:I

.field private tileHeight:I

.field private tileWidth:I

.field private tiles:[[I


# direct methods
.method public constructor <init>(IILjavax/microedition/lcdui/Image;II)V
    .locals 6

    const/4 v1, 0x0

    mul-int v3, p1, p4

    mul-int v4, p2, p5

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    if-nez p3, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    if-lez p1, :cond_1

    if-lez p2, :cond_1

    if-lez p5, :cond_1

    if-gtz p4, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p4

    if-nez v0, :cond_3

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p5

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iput-object p3, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    iput p1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    iput p2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    iput p4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    iput p5, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p4

    invoke-virtual {p3}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v2

    div-int/2addr v2, p5

    mul-int/2addr v0, v2

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    filled-new-array {p2, p1}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    iput v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    return-void
.end method


# virtual methods
.method public createAnimatedTile(I)I
    .locals 5

    monitor-enter p0

    if-ltz p1, :cond_0

    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    array-length v1, v1

    if-ne v0, v1, :cond_2

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v0, v0, 0x6

    new-array v0, v0, [I

    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    const/4 v2, 0x0

    const/4 v3, 0x0

    iget v4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    invoke-static {v1, v2, v0, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    aput p1, v0, v1

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    neg-int v0, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public fillCells(IIIII)V
    .locals 5

    monitor-enter p0

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    if-ltz p1, :cond_2

    add-int v0, p1, p3

    :try_start_1
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    if-gt v0, v1, :cond_2

    add-int v0, p2, p4

    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    if-le v0, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    neg-int v0, p5

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-ge v0, v1, :cond_4

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p5, v0, :cond_5

    :cond_4
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_5
    add-int v0, p2, p4

    add-int v1, p1, p3

    move v2, p2

    :goto_0
    if-ge v2, v0, :cond_7

    move v3, p1

    :goto_1
    if-ge v3, v1, :cond_6

    iget-object v4, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v4, v4, v2

    aput p5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_7
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public getAnimatedTile(I)I
    .locals 2

    monitor-enter p0

    neg-int v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    aget v0, v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return v0
.end method

.method public getCell(II)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aget v0, v0, p1

    return v0
.end method

.method public final getCellHeight()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    return v0
.end method

.method public final getCellWidth()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    return v0
.end method

.method public final getColumns()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    return v0
.end method

.method public final getRows()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    return v0
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 20

    monitor-enter p0

    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->isVisible()Z

    move-result v3

    if-nez v3, :cond_0

    monitor-exit p0

    :goto_0
    return-void

    :cond_0
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result v13

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result v3

    const/4 v14, 0x0

    const/4 v4, 0x0

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getColumns()I

    move-result v15

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getRows()I

    move-result v16

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v8

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    const/16 v12, 0x14

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    div-int v17, v5, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    move-object v5, v0

    invoke-virtual {v5}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    div-int/2addr v5, v8

    move/from16 v18, v4

    move v11, v3

    :goto_1
    move/from16 v0, v18

    move/from16 v1, v16

    if-ge v0, v1, :cond_4

    move/from16 v19, v14

    move v10, v13

    :goto_2
    move/from16 v0, v19

    move v1, v15

    if-ge v0, v1, :cond_3

    move-object/from16 v0, p0

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v3

    if-gez v3, :cond_1

    move-object/from16 v0, p0

    move v1, v3

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I

    move-result v3

    :cond_1
    if-nez v3, :cond_2

    :goto_3
    add-int/lit8 v3, v19, 0x1

    add-int v4, v10, v7

    move/from16 v19, v3

    move v10, v4

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, -0x1

    rem-int v4, v3, v17

    mul-int v5, v7, v4

    div-int v3, v3, v17

    mul-int v6, v3, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    move-object v4, v0

    const/4 v9, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v3 .. v12}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_3

    :catchall_0
    move-exception v3

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    :cond_3
    add-int/lit8 v3, v18, 0x1

    add-int v4, v11, v8

    move/from16 v18, v3

    move v11, v4

    goto :goto_1

    :cond_4
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method public setAnimatedTile(II)V
    .locals 2

    monitor-enter p0

    neg-int v0, p1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ltz v0, :cond_0

    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-lt v0, v1, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    if-ltz p2, :cond_2

    :try_start_1
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p2, v1, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    aput p2, v1, v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setCell(III)V
    .locals 2

    monitor-enter p0

    neg-int v0, p3

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :try_start_0
    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    if-ge v0, v1, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-le p3, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    :try_start_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tiles:[[I

    aget-object v0, v0, p2

    aput p3, v0, p1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method public setStaticTileSet(Ljavax/microedition/lcdui/Image;II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    if-lez p3, :cond_1

    if-gtz p2, :cond_2

    :cond_1
    :try_start_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_3

    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_4

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_4
    iget-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v1

    div-int/2addr v0, v1

    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v2

    div-int/2addr v1, v2

    mul-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->cols:I

    mul-int/2addr v1, p2

    iget v2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->rows:I

    mul-int/2addr v2, p3

    invoke-virtual {p0, v1, v2}, Ljavax/microedition/lcdui/game/TiledLayer;->setSize(II)V

    iget-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    iput-object v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    iput p2, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileWidth:I

    iput p3, p0, Ljavax/microedition/lcdui/game/TiledLayer;->tileHeight:I

    iget v1, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    if-lt v0, v1, :cond_5

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    monitor-exit p0

    :goto_0
    return-void

    :cond_5
    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numStaticTiles:I

    const/4 v0, 0x5

    new-array v0, v0, [I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->animatedTiles:[I

    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/TiledLayer;->numAnimatedTiles:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getColumns()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/TiledLayer;->getRows()I

    move-result v4

    const/4 v5, 0x0

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljavax/microedition/lcdui/game/TiledLayer;->fillCells(IIIII)V

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method
