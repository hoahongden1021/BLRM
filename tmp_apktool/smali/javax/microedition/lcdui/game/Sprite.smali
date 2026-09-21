.class public Ljavax/microedition/lcdui/game/Sprite;
.super Ljavax/microedition/lcdui/game/Layer;


# static fields
.field public static final TRANS_MIRROR:I = 0x2

.field public static final TRANS_MIRROR_ROT180:I = 0x1

.field public static final TRANS_MIRROR_ROT270:I = 0x4

.field public static final TRANS_MIRROR_ROT90:I = 0x7

.field public static final TRANS_NONE:I = 0x0

.field public static final TRANS_ROT180:I = 0x3

.field public static final TRANS_ROT270:I = 0x6

.field public static final TRANS_ROT90:I = 0x5


# instance fields
.field private collHeight:I

.field private collWidth:I

.field private collX:I

.field private collY:I

.field private cols:I

.field private frame:I

.field private img:Ljavax/microedition/lcdui/Image;

.field private refX:I

.field private refY:I

.field private rgbData:[I

.field private rgbDataAux:[I

.field private rows:I

.field private sequence:[I

.field private transform:I


# direct methods
.method public constructor <init>(Ljavax/microedition/lcdui/Image;)V
    .locals 2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Ljavax/microedition/lcdui/game/Sprite;-><init>(Ljavax/microedition/lcdui/Image;II)V

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/Image;II)V
    .locals 6

    const/4 v1, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move v2, v1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    rem-int/2addr v0, p2

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    rem-int/2addr v0, p3

    if-eqz v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    div-int/2addr v0, p2

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    div-int/2addr v0, p3

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iput v1, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    iput p3, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    return-void
.end method

.method public constructor <init>(Ljavax/microedition/lcdui/game/Sprite;)V
    .locals 6

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v5

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/game/Layer;-><init>(IIIIZ)V

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    iget-object v0, p1, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iput-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    iget-object v0, p1, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    iget v0, p1, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    return-void
.end method

.method private declared-synchronized collidesWith(Ljava/lang/Object;II)Z
    .locals 21

    monitor-enter p0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    move v10, v3

    move/from16 v11, p3

    move/from16 v12, p2

    move v3, v9

    move v9, v4

    move-object/from16 v4, p0

    move/from16 v19, v6

    move v6, v7

    move/from16 v7, v19

    move/from16 v20, v5

    move v5, v8

    move/from16 v8, v20

    :goto_0
    if-eqz v3, :cond_5

    :try_start_0
    iget v13, v4, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iget v14, v4, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iget v15, v4, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    move-object v0, v4

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    move/from16 v16, v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v15, :cond_0

    if-nez v16, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    move-object v0, v4

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    move/from16 v17, v0

    packed-switch v17, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_1

    :pswitch_0
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    add-int v13, v13, v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    add-int v14, v14, v17

    move/from16 v19, v16

    move/from16 v16, v13

    move/from16 v13, v19

    move/from16 v20, v14

    move v14, v15

    move/from16 v15, v20

    :goto_2
    move-object/from16 v0, p1

    move-object v1, v4

    if-eq v0, v1, :cond_4

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/Sprite;

    move v7, v0

    if-eqz v7, :cond_2

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 p2, v0

    move-object/from16 v4, p2

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    goto :goto_0

    :pswitch_1
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    add-int v13, v13, v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v18

    sub-int v14, v18, v14

    const/16 v18, 0x1

    sub-int v14, v14, v18

    add-int v14, v14, v17

    sub-int v14, v14, v16

    move/from16 v19, v16

    move/from16 v16, v13

    move/from16 v13, v19

    move/from16 v20, v14

    move v14, v15

    move/from16 v15, v20

    goto :goto_2

    :pswitch_2
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v18

    sub-int v13, v18, v13

    const/16 v18, 0x1

    sub-int v13, v13, v18

    add-int v13, v13, v17

    sub-int/2addr v13, v15

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    add-int v14, v14, v17

    move/from16 v19, v16

    move/from16 v16, v13

    move/from16 v13, v19

    move/from16 v20, v14

    move v14, v15

    move/from16 v15, v20

    goto :goto_2

    :pswitch_3
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v18

    sub-int v13, v18, v13

    const/16 v18, 0x1

    sub-int v13, v13, v18

    add-int v13, v13, v17

    sub-int/2addr v13, v15

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v18

    sub-int v14, v18, v14

    const/16 v18, 0x1

    sub-int v14, v14, v18

    add-int v14, v14, v17

    sub-int v14, v14, v16

    move/from16 v19, v16

    move/from16 v16, v13

    move/from16 v13, v19

    move/from16 v20, v14

    move v14, v15

    move/from16 v15, v20

    goto/16 :goto_2

    :pswitch_4
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    add-int v14, v14, v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    add-int v13, v13, v17

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, v19

    move/from16 v20, v16

    move/from16 v16, v14

    move/from16 v14, v20

    goto/16 :goto_2

    :pswitch_5
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v18

    sub-int v14, v18, v14

    const/16 v18, 0x1

    sub-int v14, v14, v18

    add-int v14, v14, v17

    sub-int v14, v14, v16

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    add-int v13, v13, v17

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, v19

    move/from16 v20, v16

    move/from16 v16, v14

    move/from16 v14, v20

    goto/16 :goto_2

    :pswitch_6
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v18

    sub-int v14, v18, v14

    const/16 v18, 0x1

    sub-int v14, v14, v18

    add-int v14, v14, v17

    sub-int v14, v14, v16

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v18

    sub-int v13, v18, v13

    const/16 v18, 0x1

    sub-int v13, v13, v18

    add-int v13, v13, v17

    sub-int/2addr v13, v15

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, v19

    move/from16 v20, v16

    move/from16 v16, v14

    move/from16 v14, v20

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v17

    add-int v14, v14, v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v17

    invoke-virtual {v4}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v18

    sub-int v13, v18, v13

    const/16 v18, 0x1

    sub-int v13, v13, v18

    add-int v13, v13, v17

    sub-int/2addr v13, v15

    move/from16 v19, v15

    move v15, v13

    move/from16 v13, v19

    move/from16 v20, v16

    move/from16 v16, v14

    move/from16 v14, v20

    goto/16 :goto_2

    :cond_2
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move v3, v0

    if-eqz v3, :cond_3

    const/4 v3, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getWidth()I

    move-result v7

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getHeight()I

    move-result v8

    move v9, v15

    move/from16 v10, v16

    move v11, v6

    move v12, v5

    move v5, v8

    move v6, v7

    move v7, v13

    move v8, v14

    goto/16 :goto_0

    :cond_3
    const/4 v3, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v6

    move v7, v13

    move v8, v14

    move v9, v15

    move/from16 v10, v16

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_0

    :cond_4
    const/4 v3, 0x0

    move v5, v13

    move v6, v14

    move v11, v15

    move/from16 v12, v16

    goto/16 :goto_0

    :cond_5
    if-le v10, v12, :cond_6

    add-int v3, v12, v6

    if-lt v10, v3, :cond_6

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_6
    if-ge v10, v12, :cond_7

    add-int v3, v10, v8

    if-gt v3, v12, :cond_7

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_7
    if-le v9, v11, :cond_8

    add-int v3, v11, v5

    if-lt v9, v3, :cond_8

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_8
    if-ge v9, v11, :cond_9

    add-int v3, v9, v7

    if-gt v3, v11, :cond_9

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move v3, v0

    if-eqz v3, :cond_14

    check-cast p1, Ljavax/microedition/lcdui/game/TiledLayer;

    if-le v12, v10, :cond_c

    add-int v3, v12, v6

    add-int v4, v10, v8

    if-ge v3, v4, :cond_b

    add-int v3, v12, v6

    :goto_3
    sub-int/2addr v3, v12

    move v4, v12

    :goto_4
    if-le v11, v9, :cond_f

    add-int v6, v11, v5

    add-int v8, v9, v7

    if-ge v6, v8, :cond_e

    add-int/2addr v5, v11

    :goto_5
    sub-int/2addr v5, v11

    move v6, v11

    :goto_6
    move-object/from16 v0, p1

    iget-object v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v8

    sub-int v9, v4, v12

    div-int/2addr v9, v7

    sub-int v10, v6, v11

    div-int/2addr v10, v8

    sub-int/2addr v4, v12

    add-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    div-int/2addr v3, v7

    sub-int v4, v6, v11

    add-int/2addr v4, v5

    const/4 v5, 0x1

    sub-int/2addr v4, v5

    div-int/2addr v4, v8

    move v5, v10

    :goto_7
    if-gt v5, v4, :cond_13

    move v6, v9

    :goto_8
    if-gt v6, v3, :cond_12

    move-object/from16 v0, p1

    move v1, v6

    move v2, v5

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v7

    if-gez v7, :cond_a

    move-object/from16 v0, p1

    move v1, v7

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v7

    :cond_a
    if-eqz v7, :cond_11

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_b
    add-int v3, v10, v8

    goto :goto_3

    :cond_c
    add-int v3, v10, v8

    add-int v4, v12, v6

    if-ge v3, v4, :cond_d

    add-int v3, v10, v8

    :goto_9
    sub-int/2addr v3, v10

    move v4, v10

    goto :goto_4

    :cond_d
    add-int v3, v12, v6

    goto :goto_9

    :cond_e
    add-int v5, v9, v7

    goto :goto_5

    :cond_f
    add-int v6, v9, v7

    add-int v8, v11, v5

    if-ge v6, v8, :cond_10

    add-int v5, v9, v7

    :goto_a
    sub-int/2addr v5, v9

    move v6, v9

    goto :goto_6

    :cond_10
    add-int/2addr v5, v11

    goto :goto_a

    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_12
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_13
    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_14
    const/4 v3, 0x1

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch
.end method

.method private declared-synchronized collidesWithPixelLevel(Ljava/lang/Object;II)Z
    .locals 42

    monitor-enter p0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move v10, v3

    move/from16 v19, p3

    move/from16 v20, p2

    move v3, v9

    move-object/from16 v9, p0

    move/from16 v40, v4

    move v4, v8

    move/from16 v8, v40

    move/from16 v41, v5

    move v5, v7

    move/from16 v7, v41

    :goto_0
    if-eqz v10, :cond_9

    :try_start_0
    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v12

    if-ge v11, v12, :cond_0

    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iget v12, v9, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v11, v12

    if-lez v11, :cond_0

    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v12

    if-ge v11, v12, :cond_0

    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iget v12, v9, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    add-int/2addr v11, v12

    if-gtz v11, :cond_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    monitor-exit p0

    return v3

    :cond_1
    :try_start_1
    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    if-ltz v11, :cond_2

    iget v11, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    :goto_2
    iget v12, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    if-ltz v12, :cond_3

    iget v12, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    :goto_3
    iget v13, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iget v14, v9, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v13, v14

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v14

    if-ge v13, v14, :cond_4

    iget v13, v9, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iget v14, v9, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    add-int/2addr v13, v14

    sub-int/2addr v13, v11

    :goto_4
    iget v14, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iget v15, v9, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    add-int/2addr v14, v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v15

    if-ge v14, v15, :cond_5

    iget v14, v9, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iget v15, v9, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    add-int/2addr v14, v15

    sub-int/2addr v14, v12

    :goto_5
    iget v15, v9, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v15, :pswitch_data_0

    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    const/4 v11, 0x0

    goto :goto_2

    :cond_3
    const/4 v12, 0x0

    goto :goto_3

    :cond_4
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v13

    sub-int/2addr v13, v11

    goto :goto_4

    :cond_5
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v14

    sub-int/2addr v14, v12

    goto :goto_5

    :pswitch_0
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    add-int/2addr v11, v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    add-int/2addr v12, v15

    move/from16 v40, v14

    move v14, v11

    move/from16 v11, v40

    move/from16 v41, v12

    move v12, v13

    move/from16 v13, v41

    :goto_6
    move-object/from16 v0, p1

    move-object v1, v9

    if-eq v0, v1, :cond_8

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/Sprite;

    move v5, v0

    if-eqz v5, :cond_6

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 p2, v0

    move v5, v11

    move v6, v12

    move v7, v13

    move v8, v14

    move-object/from16 v9, p2

    move/from16 v11, v19

    move/from16 v12, v20

    :goto_7
    move/from16 v19, v11

    move/from16 v20, v12

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    add-int/2addr v11, v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v16

    sub-int v12, v16, v12

    const/16 v16, 0x1

    sub-int v12, v12, v16

    add-int/2addr v12, v15

    sub-int/2addr v12, v14

    move/from16 v40, v14

    move v14, v11

    move/from16 v11, v40

    move/from16 v41, v12

    move v12, v13

    move/from16 v13, v41

    goto :goto_6

    :pswitch_2
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v16

    sub-int v11, v16, v11

    const/16 v16, 0x1

    sub-int v11, v11, v16

    add-int/2addr v11, v15

    sub-int/2addr v11, v13

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    add-int/2addr v12, v15

    move/from16 v40, v14

    move v14, v11

    move/from16 v11, v40

    move/from16 v41, v12

    move v12, v13

    move/from16 v13, v41

    goto :goto_6

    :pswitch_3
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v16

    sub-int v11, v16, v11

    const/16 v16, 0x1

    sub-int v11, v11, v16

    add-int/2addr v11, v15

    sub-int/2addr v11, v13

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v16

    sub-int v12, v16, v12

    const/16 v16, 0x1

    sub-int v12, v12, v16

    add-int/2addr v12, v15

    sub-int/2addr v12, v14

    move/from16 v40, v14

    move v14, v11

    move/from16 v11, v40

    move/from16 v41, v12

    move v12, v13

    move/from16 v13, v41

    goto/16 :goto_6

    :pswitch_4
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    add-int/2addr v12, v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    add-int/2addr v11, v15

    move/from16 v40, v13

    move v13, v11

    move/from16 v11, v40

    move/from16 v41, v14

    move v14, v12

    move/from16 v12, v41

    goto/16 :goto_6

    :pswitch_5
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v16

    sub-int v12, v16, v12

    add-int/2addr v12, v15

    sub-int/2addr v12, v14

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    add-int/2addr v11, v15

    move/from16 v40, v13

    move v13, v11

    move/from16 v11, v40

    move/from16 v41, v14

    move v14, v12

    move/from16 v12, v41

    goto/16 :goto_6

    :pswitch_6
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v16

    sub-int v12, v16, v12

    add-int/2addr v12, v15

    sub-int/2addr v12, v14

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v16

    sub-int v11, v16, v11

    add-int/2addr v11, v15

    sub-int/2addr v11, v13

    move/from16 v40, v13

    move v13, v11

    move/from16 v11, v40

    move/from16 v41, v14

    move v14, v12

    move/from16 v12, v41

    goto/16 :goto_6

    :pswitch_7
    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v15

    add-int/2addr v12, v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v15

    invoke-virtual {v9}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v16

    sub-int v11, v16, v11

    add-int/2addr v11, v15

    sub-int/2addr v11, v13

    move/from16 v40, v13

    move v13, v11

    move/from16 v11, v40

    move/from16 v41, v14

    move v14, v12

    move/from16 v12, v41

    goto/16 :goto_6

    :cond_6
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move v3, v0

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getX()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getY()I

    move-result v5

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getWidth()I

    move-result v6

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getHeight()I

    move-result v7

    move v8, v14

    move v10, v3

    move v3, v7

    move v7, v13

    move/from16 v40, v12

    move v12, v4

    move v4, v6

    move/from16 v6, v40

    move/from16 v41, v5

    move v5, v11

    move/from16 v11, v41

    goto/16 :goto_7

    :cond_7
    const/4 v3, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object/from16 p2, v0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    move v6, v12

    move v7, v13

    move v8, v14

    move v10, v3

    move v3, v5

    move/from16 v12, v20

    move v5, v11

    move/from16 v11, v19

    goto/16 :goto_7

    :cond_8
    const/4 v3, 0x0

    move v4, v12

    move v10, v3

    move v3, v11

    move v12, v14

    move v11, v13

    goto/16 :goto_7

    :cond_9
    move v0, v8

    move/from16 v1, v20

    if-le v0, v1, :cond_a

    add-int v9, v20, v4

    if-lt v8, v9, :cond_a

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_a
    move v0, v8

    move/from16 v1, v20

    if-ge v0, v1, :cond_b

    add-int v9, v8, v6

    move v0, v9

    move/from16 v1, v20

    if-gt v0, v1, :cond_b

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_b
    move v0, v7

    move/from16 v1, v19

    if-le v0, v1, :cond_c

    add-int v9, v19, v3

    if-lt v7, v9, :cond_c

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_c
    move v0, v7

    move/from16 v1, v19

    if-ge v0, v1, :cond_d

    add-int v9, v7, v5

    move v0, v9

    move/from16 v1, v19

    if-gt v0, v1, :cond_d

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_d
    move/from16 v0, v20

    move v1, v8

    if-le v0, v1, :cond_10

    add-int v9, v20, v4

    add-int v10, v8, v6

    if-ge v9, v10, :cond_f

    add-int v4, v4, v20

    :goto_8
    sub-int v4, v4, v20

    move v6, v4

    move/from16 v21, v20

    :goto_9
    move/from16 v0, v19

    move v1, v7

    if-le v0, v1, :cond_13

    add-int v4, v19, v3

    add-int v8, v7, v5

    if-ge v4, v8, :cond_12

    add-int v3, v3, v19

    :goto_a
    sub-int v3, v3, v19

    move v10, v3

    move/from16 v22, v19

    :goto_b
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object v11, v0

    if-nez v11, :cond_15

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move v11, v0

    :goto_c
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v12

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v13

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    move v14, v0

    rem-int v14, v11, v14

    mul-int/2addr v14, v12

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    move v15, v0

    div-int/2addr v11, v15

    mul-int/2addr v11, v13

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    move-object v15, v0

    if-nez v15, :cond_e

    mul-int v15, v12, v13

    new-array v15, v15, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    mul-int v15, v12, v13

    new-array v15, v15, [I

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    :cond_e
    const/4 v15, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    move-object/from16 v16, v0

    move/from16 v23, v11

    move/from16 v24, v14

    move/from16 v25, v13

    move/from16 v26, v12

    move/from16 v17, v7

    move/from16 v18, v5

    move/from16 v27, v4

    move/from16 v28, v3

    move-object/from16 v29, p0

    move/from16 v30, v15

    move-object/from16 v4, v16

    move v15, v9

    move/from16 v16, v8

    :goto_d
    if-eqz v30, :cond_26

    move-object/from16 v0, v29

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    move v3, v0

    packed-switch v3, :pswitch_data_1

    const/4 v3, 0x0

    goto/16 :goto_1

    :cond_f
    add-int v4, v8, v6

    goto/16 :goto_8

    :cond_10
    add-int v9, v8, v6

    add-int v10, v20, v4

    if-ge v9, v10, :cond_11

    add-int v4, v8, v6

    :goto_e
    sub-int/2addr v4, v8

    move v6, v4

    move/from16 v21, v8

    goto/16 :goto_9

    :cond_11
    add-int v4, v4, v20

    goto :goto_e

    :cond_12
    add-int v3, v7, v5

    goto/16 :goto_a

    :cond_13
    add-int v4, v7, v5

    add-int v8, v19, v3

    if-ge v4, v8, :cond_14

    add-int v3, v7, v5

    :goto_f
    sub-int/2addr v3, v7

    move v10, v3

    move/from16 v22, v7

    goto/16 :goto_b

    :cond_14
    add-int v3, v3, v19

    goto :goto_f

    :cond_15
    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object v11, v0

    move-object/from16 v0, p0

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move v12, v0

    aget v11, v11, v12

    goto/16 :goto_c

    :pswitch_8
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    const/4 v5, 0x0

    add-int v7, v24, v21

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v23, v22

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x0

    const/4 v5, 0x1

    const/4 v7, 0x0

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    :goto_10
    move-object/from16 v0, p1

    move-object/from16 v1, v29

    if-eq v0, v1, :cond_25

    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/Sprite;

    move v8, v0

    if-eqz v8, :cond_17

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/Sprite;

    move-object/from16 p2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    move-object v4, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object v8, v0

    if-nez v8, :cond_16

    move-object/from16 v0, p2

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move v8, v0

    :goto_11
    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v9

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v11

    move-object/from16 v0, p2

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    move v12, v0

    rem-int v12, v8, v12

    mul-int/2addr v12, v9

    move-object/from16 v0, p2

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    move v13, v0

    div-int/2addr v8, v13

    mul-int/2addr v8, v11

    move v13, v7

    move v14, v3

    move v7, v11

    move-object v3, v4

    move/from16 v11, v16

    move v4, v8

    move v8, v9

    move-object/from16 v16, p2

    move v9, v15

    move v15, v5

    move v5, v12

    move/from16 v12, v17

    move/from16 v17, v30

    :goto_12
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v7

    move/from16 v26, v8

    move/from16 v18, v13

    move/from16 v27, v14

    move/from16 v28, v15

    move-object/from16 v29, v16

    move/from16 v30, v17

    move v15, v9

    move/from16 v16, v11

    move/from16 v17, v12

    move-object v4, v3

    goto/16 :goto_d

    :pswitch_9
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    const/4 v5, 0x0

    add-int v7, v24, v26

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int v8, v21, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    add-int v8, v23, v25

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int v9, v22, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    mul-int v3, v10, v6

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    const/4 v5, -0x1

    const/4 v7, 0x0

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    goto/16 :goto_10

    :pswitch_a
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    const/4 v5, 0x0

    add-int v7, v24, v26

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int v8, v21, v8

    sub-int/2addr v7, v8

    sub-int/2addr v7, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    add-int v8, v23, v22

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x1

    sub-int v3, v6, v3

    const/4 v5, -0x1

    shl-int/lit8 v7, v6, 0x1

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    goto/16 :goto_10

    :pswitch_b
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v3, v0

    const/4 v5, 0x0

    add-int v7, v24, v21

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v8

    sub-int/2addr v7, v8

    add-int v8, v23, v25

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v9

    sub-int v9, v22, v9

    sub-int/2addr v8, v9

    sub-int/2addr v8, v10

    const/4 v9, 0x1

    sub-int/2addr v8, v9

    move v9, v6

    invoke-virtual/range {v3 .. v10}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x1

    sub-int v3, v10, v3

    mul-int/2addr v3, v6

    const/4 v5, 0x1

    shl-int/lit8 v7, v6, 0x1

    neg-int v7, v7

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    goto/16 :goto_10

    :pswitch_c
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v9, 0x0

    add-int v3, v24, v22

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v23, v25

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v5, v21, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x1

    sub-int v3, v6, v3

    mul-int/2addr v3, v10

    neg-int v5, v10

    mul-int v7, v10, v6

    add-int/lit8 v7, v7, 0x1

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    goto/16 :goto_10

    :pswitch_d
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v9, 0x0

    add-int v3, v24, v26

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v5, v22, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    add-int v3, v23, v25

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v5, v21, v5

    sub-int/2addr v3, v5

    sub-int v12, v3, v6

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    mul-int v3, v10, v6

    const/4 v5, 0x1

    sub-int/2addr v3, v5

    neg-int v5, v10

    mul-int v7, v10, v6

    const/4 v8, 0x1

    sub-int/2addr v7, v8

    move/from16 v40, v7

    move v7, v3

    move/from16 v3, v40

    goto/16 :goto_10

    :pswitch_e
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v9, 0x0

    add-int v3, v24, v22

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v11, v3, v5

    add-int v3, v23, v21

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x0

    mul-int v5, v10, v6

    neg-int v5, v5

    add-int/lit8 v5, v5, 0x1

    move v7, v3

    move v3, v5

    move v5, v10

    goto/16 :goto_10

    :pswitch_f
    move-object/from16 v0, v29

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    move-object v7, v0

    const/4 v9, 0x0

    add-int v3, v24, v26

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v5

    sub-int v5, v22, v5

    sub-int/2addr v3, v5

    sub-int v11, v3, v10

    add-int v3, v23, v21

    invoke-virtual/range {v29 .. v29}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v5

    sub-int v12, v3, v5

    move-object v8, v4

    move v13, v10

    move v14, v6

    invoke-virtual/range {v7 .. v14}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v3, 0x1

    sub-int v3, v10, v3

    mul-int v5, v10, v6

    neg-int v5, v5

    const/4 v7, 0x1

    sub-int/2addr v5, v7

    move v7, v3

    move v3, v5

    move v5, v10

    goto/16 :goto_10

    :cond_16
    move-object/from16 v0, p2

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    move-object v8, v0

    move-object/from16 v0, p2

    iget v0, v0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    move v9, v0

    aget v8, v8, v9

    goto/16 :goto_11

    :cond_17
    move-object/from16 v0, p1

    instance-of v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move v8, v0

    if-eqz v8, :cond_24

    const/4 v8, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/game/TiledLayer;

    move-object/from16 p2, v0

    move-object/from16 v0, p2

    iget-object v0, v0, Ljavax/microedition/lcdui/game/TiledLayer;->img:Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    const/4 v9, 0x0

    const/16 v27, 0x1

    const/16 v28, 0x0

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v30

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellHeight()I

    move-result v31

    sub-int v12, v21, v20

    div-int v32, v12, v30

    sub-int v12, v22, v19

    div-int v33, v12, v31

    sub-int v12, v21, v20

    add-int/2addr v12, v6

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    div-int v34, v12, v30

    sub-int v12, v22, v19

    add-int/2addr v12, v10

    const/4 v13, 0x1

    sub-int/2addr v12, v13

    div-int v35, v12, v31

    move/from16 v36, v33

    :goto_13
    move/from16 v0, v36

    move/from16 v1, v35

    if-gt v0, v1, :cond_23

    move/from16 v37, v32

    :goto_14
    move/from16 v0, v37

    move/from16 v1, v34

    if-gt v0, v1, :cond_22

    move-object/from16 v0, p2

    move/from16 v1, v37

    move/from16 v2, v36

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCell(II)I

    move-result v12

    if-gez v12, :cond_18

    move-object/from16 v0, p2

    move v1, v12

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/game/TiledLayer;->getAnimatedTile(I)I

    move-result v12

    :cond_18
    move/from16 v0, v37

    move/from16 v1, v32

    if-ne v0, v1, :cond_19

    sub-int v13, v21, v20

    rem-int v13, v13, v30

    move v14, v13

    :goto_15
    move/from16 v0, v36

    move/from16 v1, v33

    if-ne v0, v1, :cond_1a

    sub-int v13, v22, v19

    rem-int v13, v13, v31

    move/from16 v18, v13

    :goto_16
    move/from16 v0, v37

    move/from16 v1, v34

    if-ne v0, v1, :cond_1b

    add-int v13, v21, v6

    sub-int v13, v13, v20

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    rem-int v13, v13, v30

    move/from16 v17, v13

    :goto_17
    move/from16 v0, v36

    move/from16 v1, v35

    if-ne v0, v1, :cond_1c

    add-int v13, v22, v10

    sub-int v13, v13, v19

    const/4 v15, 0x1

    sub-int/2addr v13, v15

    rem-int v13, v13, v31

    move/from16 v38, v13

    :goto_18
    sub-int v13, v36, v33

    mul-int v13, v13, v31

    mul-int/2addr v13, v6

    sub-int v15, v37, v32

    mul-int v15, v15, v30

    add-int/2addr v13, v15

    move/from16 v0, v37

    move/from16 v1, v32

    if-ne v0, v1, :cond_1d

    const/4 v15, 0x0

    :goto_19
    sub-int/2addr v13, v15

    move/from16 v0, v36

    move/from16 v1, v33

    if-ne v0, v1, :cond_1e

    const/4 v15, 0x0

    :goto_1a
    mul-int/2addr v15, v6

    sub-int/2addr v13, v15

    if-nez v12, :cond_20

    move/from16 v12, v18

    :goto_1b
    move v0, v12

    move/from16 v1, v38

    if-gt v0, v1, :cond_21

    move v15, v13

    move v13, v14

    :goto_1c
    move v0, v13

    move/from16 v1, v17

    if-gt v0, v1, :cond_1f

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    move-object/from16 v16, v0

    const/16 v18, 0x0

    aput v18, v16, v15

    add-int/lit8 v13, v13, 0x1

    add-int/lit8 v15, v15, 0x1

    goto :goto_1c

    :cond_19
    const/4 v13, 0x0

    move v14, v13

    goto :goto_15

    :cond_1a
    const/4 v13, 0x0

    move/from16 v18, v13

    goto :goto_16

    :cond_1b
    const/4 v13, 0x1

    sub-int v13, v30, v13

    move/from16 v17, v13

    goto :goto_17

    :cond_1c
    const/4 v13, 0x1

    sub-int v13, v31, v13

    move/from16 v38, v13

    goto :goto_18

    :cond_1d
    sub-int v15, v21, v20

    rem-int v15, v15, v30

    goto :goto_19

    :cond_1e
    sub-int v15, v22, v19

    rem-int v15, v15, v31

    goto :goto_1a

    :cond_1f
    add-int/lit8 v12, v12, 0x1

    sub-int v13, v17, v14

    add-int/lit8 v13, v13, 0x1

    sub-int v13, v6, v13

    add-int/2addr v13, v15

    goto :goto_1b

    :cond_20
    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v15

    invoke-virtual/range {p2 .. p2}, Ljavax/microedition/lcdui/game/TiledLayer;->getCellWidth()I

    move-result v16

    div-int v15, v15, v16

    rem-int v16, v12, v15

    mul-int v16, v16, v30

    div-int/2addr v12, v15

    mul-int v39, v12, v31

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    move-object v12, v0

    add-int v15, v16, v14

    add-int v16, v39, v18

    sub-int v14, v17, v14

    add-int/lit8 v17, v14, 0x1

    sub-int v14, v38, v18

    add-int/lit8 v18, v14, 0x1

    move v14, v6

    invoke-virtual/range {v11 .. v18}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    :cond_21
    add-int/lit8 v12, v37, 0x1

    move/from16 v37, v12

    goto/16 :goto_14

    :cond_22
    add-int/lit8 v12, v36, 0x1

    move/from16 v36, v12

    goto/16 :goto_13

    :cond_23
    move/from16 v11, v28

    move/from16 v12, v27

    move v13, v7

    move v14, v3

    move v15, v5

    move-object/from16 v16, v29

    move/from16 v17, v8

    move/from16 v5, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move-object v3, v4

    move/from16 v4, v23

    goto/16 :goto_12

    :cond_24
    const/4 v8, 0x0

    move-object/from16 v0, p1

    check-cast v0, Ljavax/microedition/lcdui/Image;

    move-object v11, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    move-object v12, v0

    const/4 v13, 0x0

    sub-int v15, v21, v20

    sub-int v16, v22, v19

    move v14, v6

    move/from16 v17, v6

    move/from16 v18, v10

    invoke-virtual/range {v11 .. v18}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v9, 0x0

    const/4 v11, 0x1

    const/4 v12, 0x0

    move v13, v7

    move v14, v3

    move v15, v5

    move-object/from16 v16, v29

    move/from16 v17, v8

    move-object v3, v4

    move/from16 v5, v24

    move/from16 v7, v25

    move/from16 v8, v26

    move/from16 v4, v23

    move/from16 v40, v12

    move v12, v11

    move/from16 v11, v40

    goto/16 :goto_12

    :cond_25
    const/4 v8, 0x0

    move v9, v7

    move v11, v3

    move v12, v5

    move/from16 v13, v18

    move/from16 v14, v27

    move/from16 v15, v28

    move-object/from16 v16, v29

    move/from16 v17, v8

    move/from16 v7, v25

    move/from16 v8, v26

    move-object v3, v4

    move/from16 v5, v24

    move/from16 v4, v23

    goto/16 :goto_12

    :cond_26
    const/4 v3, 0x0

    move v4, v15

    move/from16 v5, v18

    :goto_1d
    if-ge v3, v10, :cond_29

    const/4 v7, 0x0

    move/from16 v40, v7

    move v7, v5

    move v5, v4

    move/from16 v4, v40

    :goto_1e
    if-ge v4, v6, :cond_28

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    move-object v8, v0

    aget v8, v8, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    move-object v9, v0

    aget v9, v9, v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    and-int/2addr v8, v9

    shr-int/lit8 v8, v8, 0x18

    const/4 v9, -0x1

    if-ne v8, v9, :cond_27

    const/4 v3, 0x1

    goto/16 :goto_1

    :cond_27
    add-int/lit8 v4, v4, 0x1

    add-int v7, v7, v28

    add-int v5, v5, v17

    goto :goto_1e

    :cond_28
    add-int/lit8 v3, v3, 0x1

    add-int v4, v7, v27

    add-int v5, v5, v16

    move/from16 v40, v5

    move v5, v4

    move/from16 v4, v40

    goto :goto_1d

    :cond_29
    const/4 v3, 0x0

    goto/16 :goto_1

    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_6
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_8
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_e
        :pswitch_c
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method


# virtual methods
.method public final collidesWith(Ljavax/microedition/lcdui/Image;IIZ)Z
    .locals 1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    if-eqz p4, :cond_2

    invoke-direct {p0, p1, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Ljavax/microedition/lcdui/game/Sprite;Z)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    move v0, v1

    :goto_0
    return v0

    :cond_2
    if-eqz p2, :cond_3

    invoke-direct {p0, p1, v1, v1}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1, v1, v1}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public final collidesWith(Ljavax/microedition/lcdui/game/TiledLayer;Z)Z
    .locals 2

    const/4 v1, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    return v0

    :cond_1
    invoke-virtual {p1}, Ljavax/microedition/lcdui/game/TiledLayer;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    if-eqz p2, :cond_4

    invoke-direct {p0, p1, v1, v1}, Ljavax/microedition/lcdui/game/Sprite;->collidesWithPixelLevel(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0

    :cond_4
    invoke-direct {p0, p1, v1, v1}, Ljavax/microedition/lcdui/game/Sprite;->collidesWith(Ljava/lang/Object;II)Z

    move-result v0

    goto :goto_0
.end method

.method public defineCollisionRectangle(IIII)V
    .locals 1

    if-ltz p3, :cond_0

    if-gez p4, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->collX:I

    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->collY:I

    iput p3, p0, Ljavax/microedition/lcdui/game/Sprite;->collWidth:I

    iput p4, p0, Ljavax/microedition/lcdui/game/Sprite;->collHeight:I

    return-void
.end method

.method public defineReferencePixel(II)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iput p2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    return-void
.end method

.method public final getFrame()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    return v0
.end method

.method public getFrameSequenceLength()I
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0
.end method

.method public getRawFrameCount()I
    .locals 2

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    mul-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelX()I
    .locals 2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getRefPixelY()I
    .locals 2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    add-int/2addr v0, v1

    return v0
.end method

.method public nextFrame()V
    .locals 3

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v1, :cond_0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v1, v2

    :goto_0
    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    :goto_1
    return-void

    :cond_0
    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v1, v1

    goto :goto_0

    :cond_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_1
.end method

.method public final paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    :goto_1
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v5

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    rem-int v1, v0, v1

    mul-int v2, v4, v1

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    div-int/2addr v0, v1

    mul-int v3, v5, v0

    iget-object v1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iget v6, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getX()I

    move-result v7

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getY()I

    move-result v8

    const/16 v9, 0x14

    move-object v0, p1

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    aget v0, v0, v1

    goto :goto_1
.end method

.method public prevFrame()V
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    if-nez v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_0

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    sub-int/2addr v0, v2

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    :goto_1
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    :cond_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_1
.end method

.method public setFrame(I)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    if-nez v0, :cond_1

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    :goto_0
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_2

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    array-length v0, v0

    goto :goto_0

    :cond_2
    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    return-void
.end method

.method public setFrameSequence([I)V
    .locals 5

    const/4 v4, 0x0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v0, v1

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    array-length v1, p1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    move v2, v4

    :goto_1
    if-ge v2, v1, :cond_4

    aget v3, p1, v2

    if-gt v3, v0, :cond_2

    if-gez v3, :cond_3

    :cond_2
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    iput v4, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    goto :goto_0
.end method

.method public setImage(Ljavax/microedition/lcdui/Image;II)V
    .locals 9

    const/4 v7, 0x0

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v3

    invoke-virtual {p0, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->setSize(II)V

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    rem-int/2addr v4, p2

    if-nez v4, :cond_0

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v4

    rem-int/2addr v4, p3

    if-eqz v4, :cond_1

    :cond_0
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
    :try_start_1
    iput-object p1, p0, Ljavax/microedition/lcdui/game/Sprite;->img:Ljavax/microedition/lcdui/Image;

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    mul-int/2addr v4, v5

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v5

    div-int/2addr v5, p2

    iput v5, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    div-int/2addr v5, p3

    iput v5, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v5, p0, Ljavax/microedition/lcdui/game/Sprite;->rows:I

    iget v6, p0, Ljavax/microedition/lcdui/game/Sprite;->cols:I

    mul-int/2addr v5, v6

    if-ge v5, v4, :cond_2

    const/4 v4, 0x0

    iput-object v4, p0, Ljavax/microedition/lcdui/game/Sprite;->sequence:[I

    const/4 v4, 0x0

    iput v4, p0, Ljavax/microedition/lcdui/game/Sprite;->frame:I

    :cond_2
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v4

    if-ne p2, v4, :cond_3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v4

    if-eq p3, v4, :cond_4

    :cond_3
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5, p2, p3}, Ljavax/microedition/lcdui/game/Sprite;->defineCollisionRectangle(IIII)V

    const/4 v4, 0x0

    iput-object v4, p0, Ljavax/microedition/lcdui/game/Sprite;->rgbDataAux:[I

    iput-object v4, p0, Ljavax/microedition/lcdui/game/Sprite;->rgbData:[I

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    if-eqz v4, :cond_4

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v4, :pswitch_data_0

    monitor-exit p0

    :goto_0
    return-void

    :pswitch_0
    sub-int v0, v2, v0

    sub-int v1, v3, v1

    move v8, v1

    move v1, v0

    move v0, v8

    :goto_1
    invoke-virtual {p0, v1, v0}, Ljavax/microedition/lcdui/game/Sprite;->move(II)V

    :cond_4
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :pswitch_1
    sub-int v0, v2, v0

    move v1, v0

    move v0, v7

    goto :goto_1

    :pswitch_2
    sub-int v0, v3, v1

    move v1, v7

    goto :goto_1

    :pswitch_3
    sub-int v0, v3, v1

    move v1, v0

    move v0, v7

    goto :goto_1

    :pswitch_4
    sub-int v1, v3, v1

    sub-int v0, v2, v0

    goto :goto_1

    :pswitch_5
    move v0, v7

    move v1, v7

    goto :goto_1

    :pswitch_6
    sub-int v0, v2, v0

    move v1, v7

    goto :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public setRefPixelPosition(II)V
    .locals 4

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v1

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch v2, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_1
    sub-int v1, p1, v1

    sub-int v0, p2, v0

    invoke-virtual {p0, v1, v0}, Ljavax/microedition/lcdui/game/Sprite;->setPosition(II)V

    goto :goto_0

    :pswitch_1
    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_2
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_3
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_4
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v1, v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_5
    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    goto :goto_1

    :pswitch_6
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_1

    :pswitch_7
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method public setTransform(I)V
    .locals 6

    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/Sprite;->getHeight()I

    move-result v1

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    packed-switch p1, :pswitch_data_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :pswitch_0
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v5, v4

    move v4, v3

    move v3, v5

    :goto_1
    packed-switch v2, :pswitch_data_1

    goto :goto_0

    :pswitch_1
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v5, v1

    move v1, v0

    move v0, v5

    :goto_2
    sub-int/2addr v1, v4

    sub-int/2addr v0, v3

    invoke-virtual {p0, v1, v0}, Ljavax/microedition/lcdui/game/Sprite;->move(II)V

    iput p1, p0, Ljavax/microedition/lcdui/game/Sprite;->transform:I

    goto :goto_0

    :pswitch_2
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v3, v0, v3

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v4, v1, v4

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_3
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v3, v0, v3

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_4
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v4, v1, v4

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_5
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v3, v1, v3

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_6
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v3, v1, v3

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v4, v0, v4

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_7
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_8
    iget v3, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v4, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int v4, v0, v4

    move v5, v4

    move v4, v3

    move v3, v5

    goto :goto_1

    :pswitch_9
    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :pswitch_a
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :pswitch_b
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :pswitch_c
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int v0, v1, v0

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto :goto_2

    :pswitch_d
    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    sub-int/2addr v1, v2

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    goto :goto_2

    :pswitch_e
    iget v0, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    move v5, v1

    move v1, v0

    move v0, v5

    goto/16 :goto_2

    :pswitch_f
    iget v1, p0, Ljavax/microedition/lcdui/game/Sprite;->refY:I

    iget v2, p0, Ljavax/microedition/lcdui/game/Sprite;->refX:I

    sub-int/2addr v0, v2

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method
