.class public Lcom/t4game/CompactAStar;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/t4game/IPathSupport;


# static fields
.field private static final MAX_GH:S = 0x400s

.field private static final MAX_HEIGHT:B = 0x32t

.field private static final MAX_OPEN_SIZE:S = 0x80s

.field private static final MAX_WIDTH:B = 0x32t

.field private static final OBLIQUE_COST:B = 0x7t

.field private static final ORTHOGONAL_COST:B = 0x5t

.field private static amap:[[B

.field private static final cellList:[[I

.field private static final closeMask:[J

.field private static final openListX:[B

.field private static final openListY:[B


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/16 v2, 0x80

    const/16 v1, 0x32

    const/16 v3, 0x14

    new-array v0, v1, [J

    sput-object v0, Lcom/t4game/CompactAStar;->closeMask:[J

    filled-new-array {v1, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    sput-object v0, Lcom/t4game/CompactAStar;->cellList:[[I

    new-array v0, v2, [B

    sput-object v0, Lcom/t4game/CompactAStar;->openListX:[B

    new-array v0, v2, [B

    sput-object v0, Lcom/t4game/CompactAStar;->openListY:[B

    new-array v0, v3, [[B

    const/4 v1, 0x0

    new-array v2, v3, [B

    fill-array-data v2, :array_0

    aput-object v2, v0, v1

    const/4 v1, 0x1

    new-array v2, v3, [B

    fill-array-data v2, :array_1

    aput-object v2, v0, v1

    const/4 v1, 0x2

    new-array v2, v3, [B

    fill-array-data v2, :array_2

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-array v2, v3, [B

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-array v2, v3, [B

    fill-array-data v2, :array_4

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-array v2, v3, [B

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [B

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [B

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [B

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [B

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [B

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [B

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-array v2, v3, [B

    fill-array-data v2, :array_c

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-array v2, v3, [B

    fill-array-data v2, :array_d

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-array v2, v3, [B

    fill-array-data v2, :array_e

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-array v2, v3, [B

    fill-array-data v2, :array_f

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-array v2, v3, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-array v2, v3, [B

    fill-array-data v2, :array_11

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-array v2, v3, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-array v2, v3, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/CompactAStar;->amap:[[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_2
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_3
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_6
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_7
    .array-data 1
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_8
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_9
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_a
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x0t
    .end array-data

    :array_b
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_c
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_d
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_e
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_f
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x1t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_11
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_12
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    :array_13
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addToOpenList(BBI)I
    .locals 6

    const/16 v0, 0x32

    if-ltz p0, :cond_2

    if-ge p0, v0, :cond_2

    if-ltz p1, :cond_2

    if-ge p1, v0, :cond_2

    const/16 v0, 0x80

    if-ge p2, v0, :cond_2

    sget-object v0, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v0, v0, p1

    aget v0, v0, p0

    invoke-static {v0}, Lcom/t4game/CompactAStar;->getNodeF(I)I

    move-result v0

    sget-object v1, Lcom/t4game/CompactAStar;->openListX:[B

    aput-byte p0, v1, p2

    sget-object v1, Lcom/t4game/CompactAStar;->openListY:[B

    aput-byte p1, v1, p2

    const/4 v1, 0x1

    sub-int v1, p2, v1

    :goto_0
    if-ltz v1, :cond_1

    sget-object v2, Lcom/t4game/CompactAStar;->cellList:[[I

    sget-object v3, Lcom/t4game/CompactAStar;->openListY:[B

    aget-byte v3, v3, v1

    aget-object v2, v2, v3

    sget-object v3, Lcom/t4game/CompactAStar;->openListX:[B

    aget-byte v3, v3, v1

    aget v2, v2, v3

    invoke-static {v2}, Lcom/t4game/CompactAStar;->getNodeF(I)I

    move-result v2

    if-le v0, v2, :cond_0

    sget-object v2, Lcom/t4game/CompactAStar;->openListX:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/t4game/CompactAStar;->openListX:[B

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/t4game/CompactAStar;->openListX:[B

    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    sget-object v3, Lcom/t4game/CompactAStar;->openListX:[B

    aput-byte v2, v3, v1

    sget-object v2, Lcom/t4game/CompactAStar;->openListY:[B

    add-int/lit8 v3, v1, 0x1

    aget-byte v2, v2, v3

    sget-object v3, Lcom/t4game/CompactAStar;->openListY:[B

    add-int/lit8 v4, v1, 0x1

    sget-object v5, Lcom/t4game/CompactAStar;->openListY:[B

    aget-byte v5, v5, v1

    aput-byte v5, v3, v4

    sget-object v3, Lcom/t4game/CompactAStar;->openListY:[B

    aput-byte v2, v3, v1

    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    add-int/lit8 v0, p2, 0x1

    :goto_2
    return v0

    :cond_2
    move v0, p2

    goto :goto_2
.end method

.method private static calcH(BBBB)I
    .locals 2

    sub-int v0, p2, p0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sub-int v1, p3, p1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x5

    return v0
.end method

.method private static createNode(BBII)I
    .locals 2

    const/16 v1, 0x400

    const/16 v0, 0x32

    if-ge p0, v0, :cond_0

    if-ge p1, v0, :cond_0

    if-ltz p2, :cond_0

    if-ge p2, v1, :cond_0

    if-ltz p3, :cond_0

    if-ge p3, v1, :cond_0

    shl-int/lit8 v0, p1, 0x6

    or-int/2addr v0, p0

    shl-int/lit8 v1, p3, 0xc

    or-int/2addr v0, v1

    shl-int/lit8 v1, p2, 0x16

    or-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized findPath(BBBBLcom/t4game/IPathSupport;)Ljava/lang/String;
    .locals 17

    const-class v4, Lcom/t4game/CompactAStar;

    monitor-enter v4

    if-nez p4, :cond_0

    const/16 p0, 0x0

    :goto_0
    monitor-exit v4

    return-object p0

    :cond_0
    move/from16 v0, p1

    move/from16 v1, p3

    if-ne v0, v1, :cond_1

    move/from16 v0, p0

    move/from16 v1, p2

    if-ne v0, v1, :cond_1

    const/16 p0, 0x0

    goto :goto_0

    :cond_1
    :try_start_0
    invoke-interface/range {p4 .. p4}, Lcom/t4game/IPathSupport;->getMapWidth()B

    move-result v5

    invoke-interface/range {p4 .. p4}, Lcom/t4game/IPathSupport;->getMapHeight()B

    move-result v6

    const/16 v7, 0x32

    if-gt v5, v7, :cond_2

    const/16 v7, 0x32

    if-le v6, v7, :cond_3

    :cond_2
    const/16 p0, 0x0

    goto :goto_0

    :cond_3
    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuffer;

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v9, 0x0

    :goto_1
    const/16 v10, 0x32

    if-ge v9, v10, :cond_4

    sget-object v10, Lcom/t4game/CompactAStar;->closeMask:[J

    const-wide/16 v11, 0x0

    aput-wide v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    goto :goto_1

    :cond_4
    const/4 v9, 0x0

    :goto_2
    const/16 v10, 0x32

    if-ge v9, v10, :cond_6

    const/4 v10, 0x0

    :goto_3
    const/16 v11, 0x32

    if-ge v10, v11, :cond_5

    sget-object v11, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v11, v11, v9

    const/4 v12, 0x0

    aput v12, v11, v10

    add-int/lit8 v10, v10, 0x1

    int-to-short v10, v10

    goto :goto_3

    :cond_5
    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    goto :goto_2

    :cond_6
    const/4 v9, 0x0

    :goto_4
    const/16 v10, 0x80

    if-ge v9, v10, :cond_7

    sget-object v10, Lcom/t4game/CompactAStar;->openListX:[B

    const/4 v11, 0x0

    aput-byte v11, v10, v9

    sget-object v10, Lcom/t4game/CompactAStar;->openListY:[B

    const/4 v11, 0x0

    aput-byte v11, v10, v9

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    goto :goto_4

    :cond_7
    invoke-interface/range {p4 .. p4}, Lcom/t4game/IPathSupport;->obliqueSupport()Z

    move-result v9

    const/4 v10, 0x0

    invoke-static/range {p0 .. p3}, Lcom/t4game/CompactAStar;->calcH(BBBB)I

    move-result v11

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-static {v12, v13, v14, v11}, Lcom/t4game/CompactAStar;->createNode(BBII)I

    move-result v11

    move/from16 v0, p0

    move/from16 v1, p1

    move v2, v11

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->setCellNode(BBI)V

    move/from16 v0, p0

    move/from16 v1, p1

    move v2, v7

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->addToOpenList(BBI)I

    move-result p0

    move/from16 p1, p0

    move/from16 p0, v10

    :goto_5
    if-nez p0, :cond_13

    if-lez p1, :cond_13

    sget-object v7, Lcom/t4game/CompactAStar;->openListX:[B

    const/4 v10, 0x1

    sub-int v10, p1, v10

    aget-byte v7, v7, v10

    sget-object v10, Lcom/t4game/CompactAStar;->openListY:[B

    const/4 v11, 0x1

    sub-int v11, p1, v11

    aget-byte v10, v10, v11

    sget-object v11, Lcom/t4game/CompactAStar;->openListX:[B

    const/4 v12, 0x1

    sub-int v12, p1, v12

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    sget-object v11, Lcom/t4game/CompactAStar;->openListY:[B

    const/4 v12, 0x1

    sub-int v12, p1, v12

    const/4 v13, 0x0

    aput-byte v13, v11, v12

    add-int/lit8 p1, p1, -0x1

    sget-object v11, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v11, v11, v10

    aget v11, v11, v7

    invoke-static {v11}, Lcom/t4game/CompactAStar;->getNodeG(I)I

    move-result v11

    sget-object v12, Lcom/t4game/CompactAStar;->closeMask:[J

    sget-object v13, Lcom/t4game/CompactAStar;->closeMask:[J

    aget-wide v13, v13, v10

    const/4 v15, 0x1

    invoke-static {v13, v14, v15, v7}, Lcom/t4game/ExtUtils;->setBit(JZI)J

    move-result-wide v13

    aput-wide v13, v12, v10

    const/4 v12, 0x1

    sub-int v12, v10, v12

    int-to-byte v12, v12

    move/from16 v16, v12

    move/from16 v12, p1

    move/from16 p1, v16

    :goto_6
    if-nez p0, :cond_15

    add-int/lit8 v13, v10, 0x1

    move/from16 v0, p1

    move v1, v13

    if-gt v0, v1, :cond_15

    const/4 v13, 0x1

    sub-int v13, v7, v13

    int-to-byte v13, v13

    move/from16 v16, v13

    move v13, v12

    move/from16 v12, p1

    move/from16 p1, v16

    :goto_7
    if-nez p0, :cond_12

    add-int/lit8 v14, v7, 0x1

    move/from16 v0, p1

    move v1, v14

    if-gt v0, v1, :cond_12

    if-ltz p1, :cond_8

    move/from16 v0, p1

    move v1, v5

    if-ge v0, v1, :cond_8

    if-ltz v12, :cond_8

    if-ge v12, v6, :cond_8

    if-nez v9, :cond_9

    move/from16 v0, p1

    move v1, v7

    if-eq v0, v1, :cond_9

    if-eq v12, v10, :cond_9

    :cond_8
    :goto_8
    add-int/lit8 p1, p1, 0x1

    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 p1, v0

    goto :goto_7

    :cond_9
    move/from16 v0, p1

    move v1, v7

    if-ne v0, v1, :cond_a

    if-eq v12, v10, :cond_8

    :cond_a
    move-object/from16 v0, p4

    move/from16 v1, p1

    move v2, v12

    invoke-interface {v0, v1, v2}, Lcom/t4game/IPathSupport;->canCross(BB)Z

    move-result v14

    if-eqz v14, :cond_8

    move/from16 v0, p2

    move/from16 v1, p1

    if-ne v0, v1, :cond_e

    move/from16 v0, p3

    move v1, v12

    if-ne v0, v1, :cond_e

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    move-object v0, v8

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    const-string p1, ","

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object p0

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move/from16 p0, v7

    move/from16 p1, v10

    :cond_b
    if-gtz p0, :cond_c

    if-lez p1, :cond_d

    :cond_c
    const/4 v12, 0x0

    const-string v14, ","

    invoke-virtual {v8, v12, v14}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/4 v14, 0x0

    const-string v15, ","

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v12

    const/4 v14, 0x0

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v12, v14, v15}, Ljava/lang/StringBuffer;->insert(ILjava/lang/String;)Ljava/lang/StringBuffer;

    sget-object v12, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object p1, v12, p1

    aget p0, p1, p0

    invoke-static/range {p0 .. p0}, Lcom/t4game/CompactAStar;->getNodeX(I)B

    move-result p1

    invoke-static/range {p0 .. p0}, Lcom/t4game/CompactAStar;->getNodeY(I)B

    move-result p0

    move/from16 v16, p1

    move/from16 p1, p0

    move/from16 p0, v16

    :cond_d
    if-gtz p0, :cond_b

    if-gtz p1, :cond_b

    const/4 v12, 0x1

    move/from16 v16, v12

    move/from16 v12, p1

    move/from16 p1, p0

    move/from16 p0, v16

    goto/16 :goto_8

    :cond_e
    sget-object v14, Lcom/t4game/CompactAStar;->closeMask:[J

    aget-wide v14, v14, v12

    move-wide v0, v14

    move/from16 v2, p1

    invoke-static {v0, v1, v2}, Lcom/t4game/ExtUtils;->getBit(JI)Z

    move-result v14

    if-nez v14, :cond_8

    move/from16 v0, p1

    move v1, v7

    if-eq v0, v1, :cond_f

    if-ne v12, v10, :cond_10

    :cond_f
    add-int/lit8 v14, v11, 0x5

    :goto_9
    move/from16 v0, p1

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->openContains(BBI)Z

    move-result v15

    if-eqz v15, :cond_11

    move/from16 v0, p1

    move v1, v12

    invoke-static {v0, v1}, Lcom/t4game/CompactAStar;->getCellNode(BB)I

    move-result v15

    invoke-static {v15}, Lcom/t4game/CompactAStar;->getNodeG(I)I

    move-result v15

    if-le v15, v14, :cond_8

    move/from16 v0, p1

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->removeOpenNode(BBI)I

    move-result v13

    move/from16 v0, p1

    move v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/CompactAStar;->calcH(BBBB)I

    move-result v15

    invoke-static {v7, v10, v14, v15}, Lcom/t4game/CompactAStar;->createNode(BBII)I

    move-result v14

    move/from16 v0, p1

    move v1, v12

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->setCellNode(BBI)V

    move/from16 v0, p1

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->addToOpenList(BBI)I

    move-result v13

    goto/16 :goto_8

    :cond_10
    add-int/lit8 v14, v11, 0x7

    goto :goto_9

    :cond_11
    move/from16 v0, p1

    move v1, v12

    move/from16 v2, p2

    move/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/CompactAStar;->calcH(BBBB)I

    move-result v15

    invoke-static {v7, v10, v14, v15}, Lcom/t4game/CompactAStar;->createNode(BBII)I

    move-result v14

    move/from16 v0, p1

    move v1, v12

    move v2, v14

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->setCellNode(BBI)V

    move/from16 v0, p1

    move v1, v12

    move v2, v13

    invoke-static {v0, v1, v2}, Lcom/t4game/CompactAStar;->addToOpenList(BBI)I

    move-result v13

    goto/16 :goto_8

    :cond_12
    add-int/lit8 p1, v12, 0x1

    move/from16 v0, p1

    int-to-byte v0, v0

    move/from16 p1, v0

    move v12, v13

    goto/16 :goto_6

    :cond_13
    if-eqz p0, :cond_14

    invoke-virtual {v8}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object p0

    goto/16 :goto_0

    :cond_14
    const/16 p0, 0x0

    goto/16 :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4

    throw p0

    :cond_15
    move/from16 p1, v12

    goto/16 :goto_5
.end method

.method private static getCellNode(BB)I
    .locals 1

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v0, v0, p1

    aget v0, v0, p0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNodeF(I)I
    .locals 2

    invoke-static {p0}, Lcom/t4game/CompactAStar;->getNodeH(I)I

    move-result v0

    invoke-static {p0}, Lcom/t4game/CompactAStar;->getNodeG(I)I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method private static getNodeG(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0x16

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method private static getNodeH(I)I
    .locals 1

    shr-int/lit8 v0, p0, 0xc

    and-int/lit16 v0, v0, 0x3ff

    return v0
.end method

.method private static getNodeX(I)B
    .locals 1

    and-int/lit8 v0, p0, 0x3f

    int-to-byte v0, v0

    return v0
.end method

.method private static getNodeY(I)B
    .locals 1

    shr-int/lit8 v0, p0, 0x6

    and-int/lit8 v0, v0, 0x3f

    int-to-byte v0, v0

    return v0
.end method

.method private static openContains(BBI)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    if-ge v0, p2, :cond_1

    sget-object v1, Lcom/t4game/CompactAStar;->openListX:[B

    aget-byte v1, v1, v0

    if-ne v1, p0, :cond_0

    sget-object v1, Lcom/t4game/CompactAStar;->openListY:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method private static removeOpenNode(BBI)I
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    move v0, v6

    move v1, v6

    :goto_0
    if-ge v0, p2, :cond_2

    if-eqz v1, :cond_0

    sget-object v2, Lcom/t4game/CompactAStar;->openListX:[B

    sub-int v3, v0, v7

    aget-byte v2, v2, v3

    sget-object v3, Lcom/t4game/CompactAStar;->openListX:[B

    sub-int v4, v0, v7

    sget-object v5, Lcom/t4game/CompactAStar;->openListX:[B

    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    sget-object v3, Lcom/t4game/CompactAStar;->openListX:[B

    aput-byte v2, v3, v0

    sget-object v2, Lcom/t4game/CompactAStar;->openListY:[B

    sub-int v3, v0, v7

    aget-byte v2, v2, v3

    sget-object v3, Lcom/t4game/CompactAStar;->openListY:[B

    sub-int v4, v0, v7

    sget-object v5, Lcom/t4game/CompactAStar;->openListY:[B

    aget-byte v5, v5, v0

    aput-byte v5, v3, v4

    sget-object v3, Lcom/t4game/CompactAStar;->openListY:[B

    aput-byte v2, v3, v0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/t4game/CompactAStar;->openListX:[B

    aget-byte v1, v1, v0

    if-ne v1, p0, :cond_1

    sget-object v1, Lcom/t4game/CompactAStar;->openListY:[B

    aget-byte v1, v1, v0

    if-ne v1, p1, :cond_1

    move v1, v7

    goto :goto_1

    :cond_1
    move v1, v6

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    add-int/lit8 v0, p2, -0x1

    sget-object v1, Lcom/t4game/CompactAStar;->openListX:[B

    aput-byte v6, v1, v0

    sget-object v1, Lcom/t4game/CompactAStar;->openListY:[B

    aput-byte v6, v1, v0

    :goto_2
    return v0

    :cond_3
    move v0, p2

    goto :goto_2
.end method

.method private static setCellNode(BBI)V
    .locals 1

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v0, v0, p1

    aput p2, v0, p0

    :cond_0
    return-void
.end method

.method private static setCellNodeG(BBI)V
    .locals 2

    const/16 v0, 0x32

    if-ltz p0, :cond_0

    if-ge p0, v0, :cond_0

    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    sget-object v0, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v0, v0, p1

    sget-object v1, Lcom/t4game/CompactAStar;->cellList:[[I

    aget-object v1, v1, p1

    aget v1, v1, p0

    invoke-static {v1, p2}, Lcom/t4game/CompactAStar;->setNodeG(II)I

    move-result v1

    aput v1, v0, p0

    :cond_0
    return-void
.end method

.method private static setNodeG(II)I
    .locals 1

    if-ltz p1, :cond_0

    const/16 v0, 0x400

    if-ge p1, v0, :cond_0

    shl-int/lit8 v0, p1, 0x16

    or-int/2addr v0, p0

    :goto_0
    return v0

    :cond_0
    move v0, p0

    goto :goto_0
.end method


# virtual methods
.method public canCross(BB)Z
    .locals 1

    sget-object v0, Lcom/t4game/CompactAStar;->amap:[[B

    aget-object v0, v0, p2

    aget-byte v0, v0, p1

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getMapHeight()B
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public getMapWidth()B
    .locals 1

    const/16 v0, 0x14

    return v0
.end method

.method public obliqueSupport()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
