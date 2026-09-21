.class public final Lcom/t4game/Util;
.super Ljava/lang/Object;


# static fields
.field private static _sqrtList:[S

.field public static dialogTopLableHight:I

.field static rand:Ljava/util/Random;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x1e

    sput v0, Lcom/t4game/Util;->dialogTopLableHight:I

    const/16 v0, 0x50

    new-array v0, v0, [S

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/Util;->_sqrtList:[S

    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    sput-object v0, Lcom/t4game/Util;->rand:Ljava/util/Random;

    return-void

    nop

    :array_0
    .array-data 2
        0x1s
        0x4s
        0x9s
        0x10s
        0x19s
        0x24s
        0x31s
        0x40s
        0x51s
        0x64s
        0x79s
        0x90s
        0xa9s
        0xc4s
        0xe1s
        0x100s
        0x121s
        0x144s
        0x169s
        0x190s
        0x1b9s
        0x1e4s
        0x211s
        0x240s
        0x271s
        0x2a4s
        0x2d9s
        0x310s
        0x349s
        0x384s
        0x3c1s
        0x400s
        0x441s
        0x484s
        0x4c9s
        0x510s
        0x559s
        0x5a4s
        0x5f1s
        0x640s
        0x691s
        0x6e4s
        0x739s
        0x790s
        0x7e9s
        0x844s
        0x8a1s
        0x900s
        0x961s
        0x9c4s
        0xa29s
        0xa90s
        0xaf9s
        0xb64s
        0xbd1s
        0xc40s
        0xcb1s
        0xd24s
        0xd99s
        0xe10s
        0xe89s
        0xf04s
        0xf81s
        0x1000s
        0x1081s
        0x1104s
        0x1189s
        0x1210s
        0x1299s
        0x1324s
        0x13b1s
        0x1440s
        0x14d1s
        0x1564s
        0x15f9s
        0x1690s
        0x1729s
        0x17c4s
        0x1861s
        0x1900s
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static AddByte(B[BI)[B
    .locals 5

    const/4 v2, 0x0

    array-length v0, p1

    add-int/lit8 v0, v0, 0x1

    new-array v1, v0, [B

    move v3, v2

    :goto_0
    if-ge v2, v0, :cond_1

    if-eq v2, p2, :cond_0

    aget-byte v4, p1, v2

    aput-byte v4, v1, v2

    add-int/lit8 v3, v3, 0x1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    aput-byte p0, v1, v2

    goto :goto_1

    :cond_1
    return-object v1
.end method

.method public static ByteCopy(B[BI)V
    .locals 3

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    if-eq v1, p2, :cond_0

    aget-byte v2, p1, v1

    aput-byte v2, p1, v1

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aput-byte p0, p1, v1

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final ByteToInt([B)I
    .locals 2

    const/4 v0, 0x0

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x3

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static InitHighColor(IIIILjava/lang/String;[Ljava/lang/String;[I)[Ljava/util/Vector;
    .locals 23

    if-nez p4, :cond_0

    const/16 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    new-instance v3, Ljava/util/Vector;

    invoke-direct {v3}, Ljava/util/Vector;-><init>()V

    new-instance v4, Ljava/util/Vector;

    invoke-direct {v4}, Ljava/util/Vector;-><init>()V

    if-eqz p5, :cond_2

    const/4 v5, 0x0

    :goto_1
    move-object/from16 v0, p5

    array-length v0, v0

    move v6, v0

    if-ge v5, v6, :cond_2

    aget-object v6, p5, v5

    const-string v7, ""

    if-eq v6, v7, :cond_1

    aget-object v6, p5, v5

    move-object/from16 v0, p4

    move-object v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    aget-object v6, p5, v5

    invoke-virtual {v3, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v5, v5, 0x1

    int-to-byte v5, v5

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result p5

    if-nez p5, :cond_4

    const/16 p5, 0x0

    move-object/from16 v5, p5

    :cond_3
    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    new-instance v7, Ljava/util/Vector;

    invoke-direct {v7}, Ljava/util/Vector;-><init>()V

    new-instance v8, Ljava/util/Vector;

    invoke-direct {v8}, Ljava/util/Vector;-><init>()V

    new-instance v9, Ljava/util/Vector;

    invoke-direct {v9}, Ljava/util/Vector;-><init>()V

    sget-object p5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p4

    move/from16 v1, p2

    move-object/from16 v2, p5

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v10

    array-length v11, v10

    if-nez v5, :cond_6

    const/16 p2, 0x0

    :goto_2
    move/from16 v0, p2

    move v1, v11

    if-ge v0, v1, :cond_5

    const/16 p4, 0x2

    move/from16 v0, p4

    new-array v0, v0, [S

    move-object/from16 p4, v0

    const/16 p5, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 p6, v0

    aput-short p6, p4, p5

    const/16 p5, 0x1

    mul-int p6, p2, p3

    add-int p6, p6, p1

    move/from16 v0, p6

    int-to-short v0, v0

    move/from16 p6, v0

    aput-short p6, p4, p5

    aget-object p5, v10, p2

    move-object v0, v8

    move-object/from16 v1, p5

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move-object v0, v9

    move-object/from16 v1, p4

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result p5

    move/from16 v0, p5

    new-array v0, v0, [Ljava/lang/String;

    move-object v5, v0

    const/16 p5, 0x0

    move/from16 v6, p5

    :goto_3
    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result p5

    move v0, v6

    move/from16 v1, p5

    if-ge v0, v1, :cond_3

    invoke-virtual {v3, v6}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Ljava/lang/String;

    aput-object p5, v5, v6

    add-int/lit8 p5, v6, 0x1

    move/from16 v0, p5

    int-to-byte v0, v0

    move/from16 p5, v0

    move/from16 v6, p5

    goto :goto_3

    :cond_5
    const/16 p0, 0x5

    move/from16 v0, p0

    new-array v0, v0, [Ljava/util/Vector;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    aput-object v6, p0, p1

    const/16 p1, 0x1

    aput-object v7, p0, p1

    const/16 p1, 0x2

    aput-object v8, p0, p1

    const/16 p1, 0x3

    aput-object v9, p0, p1

    const/16 p1, 0x4

    aput-object v4, p0, p1

    goto/16 :goto_0

    :cond_6
    const/16 p2, 0x0

    const/16 p5, 0x0

    const/4 v3, 0x0

    move/from16 v12, p2

    move/from16 p2, v3

    :goto_4
    array-length v3, v5

    move/from16 v0, p2

    move v1, v3

    if-ge v0, v1, :cond_8

    move v3, v12

    :goto_5
    aget-object v12, v5, p2

    move-object/from16 v0, p4

    move-object v1, v12

    move/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result p5

    const/4 v12, -0x1

    move/from16 v0, p5

    move v1, v12

    if-eq v0, v1, :cond_7

    aget-object v12, v5, p2

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    add-int p5, p5, v12

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_7
    const/16 p5, 0x0

    add-int/lit8 p2, p2, 0x1

    move v12, v3

    goto :goto_4

    :cond_8
    const/16 p2, 0x2

    move v0, v12

    move/from16 v1, p2

    filled-new-array {v0, v1}, [I

    move-result-object p2

    sget-object p5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    const/16 p5, 0x0

    const/4 v3, 0x0

    const/4 v13, 0x0

    move/from16 v22, v13

    move/from16 v13, p5

    move/from16 p5, v22

    :goto_6
    array-length v14, v5

    move/from16 v0, p5

    move v1, v14

    if-ge v0, v1, :cond_a

    :goto_7
    aget-object v14, v5, p5

    move-object/from16 v0, p4

    move-object v1, v14

    move v2, v13

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v13

    const/4 v14, -0x1

    if-eq v13, v14, :cond_9

    aget-object v14, p2, v3

    const/4 v15, 0x0

    aput v13, v14, v15

    aget-object v14, p2, v3

    const/4 v15, 0x1

    aget-object v16, p2, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    aget-object v17, v5, p5

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    add-int v16, v16, v17

    aput v16, v14, v15

    add-int/lit8 v3, v3, 0x1

    aget-object v14, v5, p5

    invoke-virtual {v14}, Ljava/lang/String;->length()I

    move-result v14

    add-int/2addr v13, v14

    goto :goto_7

    :cond_9
    const/4 v13, 0x0

    add-int/lit8 p5, p5, 0x1

    goto :goto_6

    :cond_a
    const/16 p5, 0x0

    :goto_8
    move-object/from16 v0, p2

    array-length v0, v0

    move v3, v0

    const/4 v13, 0x1

    sub-int/2addr v3, v13

    move/from16 v0, p5

    move v1, v3

    if-ge v0, v1, :cond_d

    add-int/lit8 v3, p5, 0x1

    :goto_9
    move-object/from16 v0, p2

    array-length v0, v0

    move v13, v0

    if-ge v3, v13, :cond_c

    aget-object v13, p2, p5

    const/4 v14, 0x0

    aget v13, v13, v14

    aget-object v14, p2, v3

    const/4 v15, 0x0

    aget v14, v14, v15

    if-le v13, v14, :cond_b

    aget-object v13, p2, p5

    const/4 v14, 0x0

    aget v13, v13, v14

    aget-object v14, p2, p5

    const/4 v15, 0x0

    aget-object v16, p2, v3

    const/16 v17, 0x0

    aget v16, v16, v17

    aput v16, v14, v15

    aget-object v14, p2, v3

    const/4 v15, 0x0

    aput v13, v14, v15

    aget-object v13, p2, p5

    const/4 v14, 0x1

    aget v13, v13, v14

    aget-object v14, p2, p5

    const/4 v15, 0x1

    aget-object v16, p2, v3

    const/16 v17, 0x1

    aget v16, v16, v17

    aput v16, v14, v15

    aget-object v14, p2, v3

    const/4 v15, 0x1

    aput v13, v14, v15

    :cond_b
    add-int/lit8 v3, v3, 0x1

    goto :goto_9

    :cond_c
    add-int/lit8 p5, p5, 0x1

    goto :goto_8

    :cond_d
    const/16 p5, 0x0

    aget-object p5, p2, p5

    const/4 v3, 0x0

    aget p5, p5, v3

    if-nez p5, :cond_10

    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p5, v0

    const/4 v3, 0x1

    sub-int p5, p5, v3

    aget-object p5, p2, p5

    const/4 v3, 0x1

    aget p5, p5, v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p5

    move v1, v3

    if-ne v0, v1, :cond_f

    const/16 p5, 0x1

    sub-int p5, v12, p5

    move/from16 v13, p5

    :goto_a
    const/16 p5, 0x2

    move v0, v13

    move/from16 v1, p5

    filled-new-array {v0, v1}, [I

    move-result-object p5

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    move-object v0, v3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, [[S

    const/4 v3, 0x0

    const/4 v14, 0x0

    move/from16 v22, v14

    move v14, v3

    move/from16 v3, v22

    :goto_b
    if-ge v14, v13, :cond_15

    if-ge v3, v12, :cond_15

    if-nez v14, :cond_13

    if-nez v3, :cond_13

    const/4 v15, 0x0

    aget-object v15, p2, v15

    const/16 v16, 0x0

    aget v15, v15, v16

    if-nez v15, :cond_12

    aget-object v15, p5, v14

    const/16 v16, 0x0

    aget-object v17, p2, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    aget-object v15, p5, v14

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v17, p2, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    :cond_e
    :goto_c
    add-int/lit8 v14, v14, 0x1

    goto :goto_b

    :cond_f
    move v13, v12

    goto :goto_a

    :cond_10
    move-object/from16 v0, p2

    array-length v0, v0

    move/from16 p5, v0

    const/4 v3, 0x1

    sub-int p5, p5, v3

    aget-object p5, p2, p5

    const/4 v3, 0x1

    aget p5, p5, v3

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, p5

    move v1, v3

    if-ne v0, v1, :cond_11

    move v13, v12

    goto :goto_a

    :cond_11
    add-int/lit8 p5, v12, 0x1

    move/from16 v13, p5

    goto :goto_a

    :cond_12
    aget-object v15, p5, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput-short v17, v15, v16

    aget-object v15, p5, v14

    const/16 v16, 0x1

    aget-object v17, p2, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    goto :goto_c

    :cond_13
    const/4 v15, 0x1

    sub-int v15, v12, v15

    if-ne v3, v15, :cond_14

    aget-object v15, p2, v3

    const/16 v16, 0x1

    aget v15, v15, v16

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v16

    move v0, v15

    move/from16 v1, v16

    if-eq v0, v1, :cond_e

    aget-object v15, p5, v14

    const/16 v16, 0x0

    aget-object v17, p2, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    aget-object v15, p5, v14

    const/16 v16, 0x1

    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    goto :goto_c

    :cond_14
    aget-object v15, p5, v14

    const/16 v16, 0x0

    aget-object v17, p2, v3

    const/16 v18, 0x1

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    aget-object v15, p5, v14

    const/16 v16, 0x1

    add-int/lit8 v3, v3, 0x1

    aget-object v17, p2, v3

    const/16 v18, 0x0

    aget v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    aget-object v15, p5, v14

    const/16 v16, 0x1

    aget-short v15, v15, v16

    aget-object v16, p5, v14

    const/16 v17, 0x0

    aget-short v16, v16, v17

    move v0, v15

    move/from16 v1, v16

    if-ge v0, v1, :cond_e

    aget-object v15, p5, v14

    const/16 v16, 0x1

    aget-object v17, p5, v14

    const/16 v18, 0x0

    aget-short v17, v17, v18

    aput-short v17, v15, v16

    goto/16 :goto_c

    :cond_15
    const/4 v3, 0x2

    filled-new-array {v11, v3}, [I

    move-result-object v3

    sget-object v14, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v14, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [[S

    const/4 v14, 0x0

    :goto_d
    if-ge v14, v11, :cond_17

    if-nez v14, :cond_16

    aget-object v15, v3, v14

    const/16 v16, 0x0

    const/16 v17, 0x0

    aput-short v17, v15, v16

    aget-object v15, v3, v14

    const/16 v16, 0x1

    aget-object v17, v10, v14

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    :goto_e
    add-int/lit8 v14, v14, 0x1

    goto :goto_d

    :cond_16
    aget-object v15, v3, v14

    const/16 v16, 0x0

    const/16 v17, 0x1

    sub-int v17, v14, v17

    aget-object v17, v3, v17

    const/16 v18, 0x1

    aget-short v17, v17, v18

    aput-short v17, v15, v16

    aget-object v15, v3, v14

    const/16 v16, 0x1

    aget-object v17, v3, v14

    const/16 v18, 0x0

    aget-short v17, v17, v18

    aget-object v18, v10, v14

    invoke-virtual/range {v18 .. v18}, Ljava/lang/String;->length()I

    move-result v18

    add-int v17, v17, v18

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v15, v16

    goto :goto_e

    :cond_17
    const/4 v10, 0x0

    :goto_f
    if-ge v10, v13, :cond_1e

    aget-object v11, p5, v10

    const/4 v14, 0x0

    aget-short v11, v11, v14

    const/4 v14, -0x1

    if-eq v11, v14, :cond_18

    aget-object v11, p5, v10

    const/4 v14, 0x0

    aget-short v11, v11, v14

    invoke-static {v3, v11}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v11

    aget-object v14, p5, v10

    const/4 v15, 0x0

    aget-short v14, v14, v15

    aget-object v15, v3, v11

    const/16 v16, 0x0

    aget-short v15, v15, v16

    sub-int/2addr v14, v15

    int-to-short v14, v14

    aget-object v15, p5, v10

    const/16 v16, 0x1

    aget-short v15, v15, v16

    invoke-static {v3, v15}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v15

    if-ne v11, v15, :cond_1a

    aget-object v15, p5, v10

    const/16 v16, 0x0

    aget-short v15, v15, v16

    aget-object v16, p5, v10

    const/16 v17, 0x1

    aget-short v16, v16, v17

    move-object/from16 v0, p4

    move v1, v15

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v8, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v15, 0x2

    new-array v15, v15, [S

    if-nez v14, :cond_19

    const/4 v14, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v16, v0

    aput-short v16, v15, v14

    const/4 v14, 0x1

    mul-int v11, v11, p3

    add-int v11, v11, p1

    int-to-short v11, v11

    aput-short v11, v15, v14

    :goto_10
    invoke-virtual {v9, v15}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_18
    add-int/lit8 v10, v10, 0x1

    goto :goto_f

    :cond_19
    aget-object v14, v3, v11

    const/16 v16, 0x0

    aget-short v14, v14, v16

    aget-object v16, p5, v10

    const/16 v17, 0x0

    aget-short v16, v16, v17

    move-object/from16 v0, p4

    move v1, v14

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/16 v16, 0x0

    sget-object v17, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, v17

    move-object v1, v14

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v14

    add-int v14, v14, p0

    int-to-short v14, v14

    aput-short v14, v15, v16

    const/4 v14, 0x1

    mul-int v11, v11, p3

    add-int v11, v11, p1

    int-to-short v11, v11

    aput-short v11, v15, v14

    goto :goto_10

    :cond_1a
    sub-int v16, v15, v11

    const/16 v17, 0x0

    :goto_11
    move/from16 v0, v17

    move/from16 v1, v16

    if-gt v0, v1, :cond_18

    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v0, v0, [S

    move-object/from16 v18, v0

    if-nez v17, :cond_1c

    aget-object v19, p5, v10

    const/16 v20, 0x0

    aget-short v19, v19, v20

    aget-object v20, v3, v11

    const/16 v21, 0x1

    aget-short v20, v20, v21

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-nez v14, :cond_1b

    const/16 v19, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    const/16 v19, 0x1

    mul-int v20, v11, p3

    add-int v20, v20, p1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    :goto_12
    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_13
    add-int/lit8 v17, v17, 0x1

    goto :goto_11

    :cond_1b
    aget-object v19, v3, v11

    const/16 v20, 0x0

    aget-short v19, v19, v20

    aget-object v20, p5, v10

    const/16 v21, 0x0

    aget-short v20, v20, v21

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    const/16 v20, 0x0

    sget-object v21, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, v21

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v19

    add-int v19, v19, p0

    move/from16 v0, v19

    int-to-short v0, v0

    move/from16 v19, v0

    aput-short v19, v18, v20

    const/16 v19, 0x1

    mul-int v20, v11, p3

    add-int v20, v20, p1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    goto :goto_12

    :cond_1c
    move/from16 v0, v17

    move/from16 v1, v16

    if-ne v0, v1, :cond_1d

    aget-object v19, v3, v15

    const/16 v20, 0x0

    aget-short v19, v19, v20

    aget-object v20, p5, v10

    const/16 v21, 0x1

    aget-short v20, v20, v21

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v19, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    const/16 v19, 0x1

    mul-int v20, v15, p3

    add-int v20, v20, p1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_13

    :cond_1d
    add-int v19, v11, v17

    aget-object v19, v3, v19

    const/16 v20, 0x0

    aget-short v19, v19, v20

    add-int v20, v11, v17

    aget-object v20, v3, v20

    const/16 v21, 0x1

    aget-short v20, v20, v21

    move-object/from16 v0, p4

    move/from16 v1, v19

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v19

    move-object v0, v8

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v19, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    const/16 v19, 0x1

    add-int v20, v11, v17

    mul-int v20, v20, p3

    add-int v20, v20, p1

    move/from16 v0, v20

    int-to-short v0, v0

    move/from16 v20, v0

    aput-short v20, v18, v19

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_13

    :cond_1e
    const/16 p5, 0x0

    :goto_14
    move/from16 v0, p5

    move v1, v12

    if-ge v0, v1, :cond_25

    aget-object v10, p2, p5

    const/4 v11, 0x0

    aget v10, v10, v11

    const/4 v11, -0x1

    if-eq v10, v11, :cond_1f

    aget-object v10, p2, p5

    const/4 v11, 0x0

    aget v10, v10, v11

    int-to-short v10, v10

    invoke-static {v3, v10}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v10

    aget-object v11, p2, p5

    const/4 v13, 0x0

    aget v11, v11, v13

    aget-object v13, v3, v10

    const/4 v14, 0x0

    aget-short v13, v13, v14

    sub-int/2addr v11, v13

    int-to-short v11, v11

    aget-object v13, p2, p5

    const/4 v14, 0x1

    aget v13, v13, v14

    int-to-short v13, v13

    invoke-static {v3, v13}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v13

    if-ne v10, v13, :cond_21

    aget-object v13, p2, p5

    const/4 v14, 0x0

    aget v13, v13, v14

    aget-object v14, p2, p5

    const/4 v15, 0x1

    aget v14, v14, v15

    move-object/from16 v0, p4

    move v1, v13

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v6, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v13, 0x2

    new-array v13, v13, [S

    if-nez v11, :cond_20

    const/4 v11, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move v14, v0

    aput-short v14, v13, v11

    const/4 v11, 0x1

    mul-int v10, v10, p3

    add-int v10, v10, p1

    int-to-short v10, v10

    aput-short v10, v13, v11

    :goto_15
    invoke-virtual {v7, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1f
    add-int/lit8 p5, p5, 0x1

    goto :goto_14

    :cond_20
    aget-object v11, v3, v10

    const/4 v14, 0x0

    aget-short v11, v11, v14

    aget-object v14, p2, p5

    const/4 v15, 0x0

    aget v14, v14, v15

    move-object/from16 v0, p4

    move v1, v11

    move v2, v14

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x0

    sget-object v15, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v15, v11}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v11

    add-int v11, v11, p0

    int-to-short v11, v11

    aput-short v11, v13, v14

    const/4 v11, 0x1

    mul-int v10, v10, p3

    add-int v10, v10, p1

    int-to-short v10, v10

    aput-short v10, v13, v11

    goto :goto_15

    :cond_21
    sub-int v14, v13, v10

    const/4 v15, 0x0

    :goto_16
    if-gt v15, v14, :cond_1f

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [S

    move-object/from16 v16, v0

    if-nez v15, :cond_23

    aget-object v17, p2, p5

    const/16 v18, 0x0

    aget v17, v17, v18

    aget-object v18, v3, v10

    const/16 v19, 0x1

    aget-short v18, v18, v19

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    if-nez v11, :cond_22

    const/16 v17, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    const/16 v17, 0x1

    mul-int v18, v10, p3

    add-int v18, v18, p1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    :goto_17
    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_18
    add-int/lit8 v15, v15, 0x1

    goto :goto_16

    :cond_22
    aget-object v17, v3, v10

    const/16 v18, 0x0

    aget-short v17, v17, v18

    aget-object v18, p2, p5

    const/16 v19, 0x0

    aget v18, v18, v19

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    sget-object v19, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v17

    add-int v17, v17, p0

    move/from16 v0, v17

    int-to-short v0, v0

    move/from16 v17, v0

    aput-short v17, v16, v18

    const/16 v17, 0x1

    mul-int v18, v10, p3

    add-int v18, v18, p1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    goto :goto_17

    :cond_23
    if-ne v15, v14, :cond_24

    aget-object v17, v3, v13

    const/16 v18, 0x0

    aget-short v17, v17, v18

    aget-object v18, p2, p5

    const/16 v19, 0x1

    aget v18, v18, v19

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v17, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    const/16 v17, 0x1

    mul-int v18, v13, p3

    add-int v18, v18, p1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_18

    :cond_24
    add-int v17, v10, v15

    aget-object v17, v3, v17

    const/16 v18, 0x0

    aget-short v17, v17, v18

    add-int v18, v10, v15

    aget-object v18, v3, v18

    const/16 v19, 0x1

    aget-short v18, v18, v19

    move-object/from16 v0, p4

    move/from16 v1, v17

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v17

    move-object v0, v6

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v17, 0x0

    move/from16 v0, p0

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    const/16 v17, 0x1

    add-int v18, v10, v15

    mul-int v18, v18, p3

    add-int v18, v18, p1

    move/from16 v0, v18

    int-to-short v0, v0

    move/from16 v18, v0

    aput-short v18, v16, v17

    move-object v0, v7

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_18

    :cond_25
    const/16 p0, 0x0

    move/from16 p1, p0

    :goto_19
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result p0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_27

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    const-string p2, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_26

    move-object v0, v6

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move-object v0, v7

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_26
    add-int/lit8 p0, p1, 0x1

    move/from16 p1, p0

    goto :goto_19

    :cond_27
    const/16 p0, 0x0

    :goto_1a
    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result p1

    move/from16 v0, p0

    move/from16 v1, p1

    if-ge v0, v1, :cond_2a

    const/16 p1, 0x0

    move/from16 p2, p0

    :goto_1b
    move-object v0, v5

    array-length v0, v0

    move/from16 p0, v0

    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_29

    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aget-object p3, v5, p1

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_28

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    aget p3, p6, p1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move/from16 p0, p2

    :goto_1c
    add-int/lit8 p1, p1, 0x1

    move/from16 p2, p0

    goto :goto_1b

    :cond_28
    move-object v0, v6

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aget-object p3, v5, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p3

    const/16 p4, -0x1

    move/from16 v0, p3

    move/from16 v1, p4

    if-eq v0, v1, :cond_2b

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    aget p4, p6, p1

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string p4, ""

    invoke-virtual/range {p3 .. p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual/range {p3 .. p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    move-object v0, v4

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v6}, Ljava/util/Vector;->size()I

    move-result p3

    const/16 p4, 0x1

    sub-int p3, p3, p4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_29

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct/range {p3 .. p3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    add-int/lit8 p0, p2, 0x1

    move-object v0, v6

    move/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    aget-object p3, v5, p1

    move-object/from16 v0, p3

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2b

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct/range {p0 .. p0}, Ljava/lang/StringBuilder;-><init>()V

    aget p3, p6, p1

    move-object/from16 v0, p0

    move/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p3, ""

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual/range {p0 .. p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    move-object v0, v4

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 p0, p2, 0x1

    goto/16 :goto_1c

    :cond_29
    add-int/lit8 p0, p2, 0x1

    goto/16 :goto_1a

    :cond_2a
    const/16 p0, 0x5

    move/from16 v0, p0

    new-array v0, v0, [Ljava/util/Vector;

    move-object/from16 p0, v0

    const/16 p1, 0x0

    aput-object v6, p0, p1

    const/16 p1, 0x1

    aput-object v7, p0, p1

    const/16 p1, 0x2

    aput-object v8, p0, p1

    const/16 p1, 0x3

    aput-object v9, p0, p1

    const/16 p1, 0x4

    aput-object v4, p0, p1

    goto/16 :goto_0

    :cond_2b
    move/from16 p0, p2

    goto/16 :goto_1c
.end method

.method public static final IntToByte(IB)[B
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [B

    const/4 v1, 0x3

    and-int/lit16 v2, p0, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x2

    const v2, 0xff00

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x8

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0xff0000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x10

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x0

    const/high16 v2, -0x1000000

    and-int/2addr v2, p0

    shr-int/lit8 v2, v2, 0x18

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    const/4 v1, 0x4

    aput-byte p1, v0, v1

    return-object v0
.end method

.method public static final Num_R2(I)B
    .locals 1

    shr-int/lit8 v0, p0, 0x2

    and-int/lit16 v0, v0, 0xff

    int-to-byte v0, v0

    return v0
.end method

.method public static OpenIE(Ljavax/microedition/midlet/MIDlet;Ljava/lang/String;)V
    .locals 1

    if-nez p0, :cond_0

    :goto_0
    return-void

    :cond_0
    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/midlet/MIDlet;->platformRequest(Ljava/lang/String;)Z
    :try_end_0
    .catch Ljavax/microedition/io/ConnectionNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final PaintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/t4game/DraftingUtil;->PaintMsg(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    return-void
.end method

.method public static String2Int(Ljava/lang/String;)I
    .locals 1

    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static abs(I)I
    .locals 1

    if-ltz p0, :cond_0

    move v0, p0

    :goto_0
    return v0

    :cond_0
    neg-int v0, p0

    goto :goto_0
.end method

.method public static byte2string([BII)Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/String;

    const-string v1, "UTF-8"

    invoke-direct {v0, p0, p1, p2, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static charWidth(C)I
    .locals 1

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Font;->charWidth(C)I

    move-result v0

    return v0
.end method

.method public static checkList([[S)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    aget-short v1, v1, v3

    aget-object v2, p0, v0

    aget-short v2, v2, v4

    if-ge v1, v2, :cond_0

    move v0, v3

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v4

    goto :goto_1
.end method

.method public static copyString([Ljava/lang/String;I)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    move v1, p1

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    if-ne v1, p1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v3, p0, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\uff1a"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static copyStringArrary([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v3, 0x0

    if-nez p0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    if-nez p0, :cond_1

    move-object v0, p1

    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    move-object v0, p0

    goto :goto_0

    :cond_2
    array-length v0, p0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    invoke-static {p0, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p0

    array-length v2, p1

    invoke-static {p1, v3, v0, v1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0
.end method

.method public static final createAlphaImage(Ljavax/microedition/lcdui/Image;I)Ljavax/microedition/lcdui/Image;
    .locals 8

    const/4 v2, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    mul-int v0, v3, v7

    :goto_1
    if-ge v2, v0, :cond_2

    aget v4, v1, v2

    and-int/2addr v4, p1

    if-ne p1, v4, :cond_1

    aget v4, v1, v2

    and-int/2addr v4, p1

    aput v4, v1, v2

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x1

    invoke-static {v1, v3, v7, v0}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    goto :goto_0
.end method

.method public static createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    invoke-static {p0}, Ljavax/microedition/lcdui/Image;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static createImage([B)Ljavax/microedition/lcdui/Image;
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p0

    invoke-static {p0, v1, v2}, Ljavax/microedition/lcdui/Image;->createImage([BII)Ljavax/microedition/lcdui/Image;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final drawImage(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIZZ)V
    .locals 10

    const/4 v2, 0x0

    if-eqz p4, :cond_0

    const/4 v0, 0x2

    :goto_0
    if-eqz p5, :cond_1

    const/4 v1, 0x1

    :goto_1
    or-int v6, v0, v1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v5

    const/16 v9, 0x14

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v7, p2

    move v8, p3

    invoke-virtual/range {v0 .. v9}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    return-void

    :cond_0
    move v0, v2

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1
.end method

.method public static drawQiuColor(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 7

    const/16 v5, 0x32

    invoke-virtual {p5, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object v0, p5

    move v1, p0

    move v2, p1

    move v3, p2

    move v4, p3

    move v6, v5

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillRoundRect(IIIIII)V

    return-void
.end method

.method public static final drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/t4game/DraftingUtil;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static drawStringCutLine(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)B
    .locals 9

    mul-int/lit8 v0, p4, 0x2

    sub-int v0, p3, v0

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p0, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p6, p5}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_0

    aget-object v0, v7, v8

    add-int v1, p1, p4

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v2, v8

    add-int/2addr v2, p2

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    move v5, p5

    move-object v6, p6

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    int-to-byte v0, v0

    move v8, v0

    goto :goto_0

    :cond_0
    array-length v0, v7

    int-to-byte v0, v0

    return v0
.end method

.method public static drawStringCutLine(Ljava/lang/String;IIILjavax/microedition/lcdui/Graphics;)I
    .locals 1

    invoke-static {p0, p1, p2, p3, p4}, Lcom/t4game/DraftingUtil;->drawStringCutLine(Ljava/lang/String;IIILjavax/microedition/lcdui/Graphics;)I

    move-result v0

    return v0
.end method

.method public static drawStringCutLineWithUnderLine(Ljava/lang/String;IIIILjavax/microedition/lcdui/Graphics;)I
    .locals 9

    sget v0, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v0, v0, 0x168

    sub-int/2addr v0, p1

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shr-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p0, v0, v1}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p5, p4}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v0, 0x0

    move v8, v0

    :goto_0
    array-length v0, v7

    if-ge v8, v0, :cond_1

    sget v0, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v8

    add-int/2addr v0, p2

    if-le v0, p3, :cond_0

    add-int/lit8 v0, v8, 0x1

    :goto_1
    return v0

    :cond_0
    aget-object v0, v7, v8

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v8

    add-int v2, p2, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    move v1, p1

    move v5, p4

    move-object v6, p5

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v8, 0x1

    int-to-byte v0, v0

    move v8, v0

    goto :goto_0

    :cond_1
    array-length v0, v7

    goto :goto_1
.end method

.method public static effect_resizeImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 10

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v7

    mul-int v0, v3, v7

    new-array v1, v0, [I

    move-object v0, p0

    move v4, v2

    move v5, v2

    move v6, v3

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    mul-int v0, v3, v7

    move v4, v2

    :goto_0
    if-ge v4, v0, :cond_1

    aget v5, v1, v4

    const/4 v6, -0x1

    if-ne v5, v6, :cond_0

    const v5, 0xffffff

    aput v5, v1, v4

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    mul-int v0, p1, p2

    new-array v0, v0, [I

    move v4, v2

    :goto_1
    if-ge v4, p2, :cond_3

    move v5, v2

    :goto_2
    if-ge v5, p1, :cond_2

    mul-int v6, v5, v3

    div-int/2addr v6, p1

    mul-int v8, v4, v7

    div-int/2addr v8, p2

    mul-int v9, v4, p1

    add-int/2addr v9, v5

    mul-int/2addr v8, v3

    add-int/2addr v6, v8

    aget v6, v1, v6

    aput v6, v0, v9

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_3
    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static final empty(Ljava/lang/Object;)Z
    .locals 1

    if-nez p0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getBufTime(I)Ljava/lang/String;
    .locals 2

    const v1, 0x15180

    const-string v0, ""

    if-lt p0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int v1, p0, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5929"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/16 v0, 0xe10

    if-lt p0, v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0xe10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static final getClips(Ljavax/microedition/lcdui/Graphics;)[I
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v1, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getClipX()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getClipY()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getClipWidth()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Graphics;->getClipHeight()I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method

.method public static final getCompositeImage(Ljavax/microedition/lcdui/Image;Ljavax/microedition/lcdui/Image;)Ljavax/microedition/lcdui/Image;
    .locals 22

    if-nez p1, :cond_1

    if-nez p0, :cond_0

    const/16 p0, 0x0

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    if-nez p0, :cond_2

    move-object/from16 p0, p1

    goto :goto_0

    :cond_2
    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v8

    invoke-virtual/range {p0 .. p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v9

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v16

    invoke-virtual/range {p1 .. p1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v14

    add-int v19, v8, v16

    if-le v9, v14, :cond_4

    move/from16 v20, v9

    :goto_1
    invoke-static/range {v19 .. v20}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x14

    move-object/from16 v5, p0

    invoke-static/range {v4 .. v13}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v15, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x14

    move-object v9, v4

    move-object/from16 v10, p1

    move/from16 v13, v16

    move/from16 v16, v8

    invoke-static/range {v9 .. v18}, Lcom/t4game/GUtil;->drawImageRegion(Ljavax/microedition/lcdui/Graphics;Ljavax/microedition/lcdui/Image;IIIIIIII)V

    mul-int p0, v19, v20

    move/from16 v0, p0

    new-array v0, v0, [I

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v4, v21

    move/from16 v7, v19

    move/from16 v10, v19

    move/from16 v11, v20

    invoke-virtual/range {v4 .. v11}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/16 p1, 0x0

    :goto_2
    move/from16 v0, p1

    move/from16 v1, p0

    if-ge v0, v1, :cond_5

    aget v4, v5, p1

    const/4 v6, -0x1

    if-ne v4, v6, :cond_3

    const/4 v4, 0x0

    aput v4, v5, p1

    :cond_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_4
    move/from16 v20, v14

    goto :goto_1

    :cond_5
    const/16 p0, 0x1

    move-object v0, v5

    move/from16 v1, v19

    move/from16 v2, v20

    move/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object p0

    goto :goto_0
.end method

.method public static getCurrentIndexLFRT(III)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x3

    if-ne p2, v0, :cond_1

    if-nez p0, :cond_0

    sub-int v0, p1, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x4

    if-ne p2, v0, :cond_3

    sub-int v0, p1, v1

    if-ne p0, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    :cond_3
    move v0, p0

    goto :goto_0
.end method

.method public static getCurrentIndexUPDN(III)I
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-nez p0, :cond_0

    sub-int v0, p1, v1

    :goto_0
    return v0

    :cond_0
    add-int/lit8 v0, p0, -0x1

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    sub-int v0, p1, v1

    if-ne p0, v0, :cond_2

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p0, 0x1

    goto :goto_0

    :cond_3
    move v0, p0

    goto :goto_0
.end method

.method public static getDistance2(SSSS)I
    .locals 2

    sub-int v0, p0, p2

    sub-int v1, p1, p3

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    return v0
.end method

.method public static getFaceDirection(II)B
    .locals 2

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {p0}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-le v0, v1, :cond_1

    if-lez p1, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    if-lez p0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public static getFaceDirection(Lcom/t4game/GSprite;Lcom/t4game/GSprite;)B
    .locals 3

    if-nez p1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    :goto_0
    return v0

    :cond_0
    iget-short v0, p1, Lcom/t4game/GSprite;->mapX:S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    if-eq v0, v1, :cond_1

    iget-short v0, p1, Lcom/t4game/GSprite;->mapY:S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne v0, v1, :cond_2

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    goto :goto_0

    :cond_2
    iget-short v0, p1, Lcom/t4game/GSprite;->mapX:S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    sub-int/2addr v0, v1

    iget-short v1, p1, Lcom/t4game/GSprite;->mapY:S

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/t4game/Util;->getFaceDirection(II)B

    move-result v0

    goto :goto_0
.end method

.method public static getFeeMemory()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->freeMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getFloatString(IBB)Ljava/lang/String;
    .locals 3

    const-string v2, "%"

    if-nez p1, :cond_2

    if-nez p2, :cond_1

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-static {p0, p1}, Lcom/t4game/GUtil;->getFloatString(II)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "%"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getImage(Ljavax/microedition/lcdui/Image;III)Ljavax/microedition/lcdui/Image;
    .locals 8

    const/4 v2, 0x0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    mul-int v0, p1, p2

    new-array v1, v0, [I

    mul-int v4, p3, p1

    move-object v0, p0

    move v3, p1

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method public static getLineNumInt(IB)I
    .locals 1

    rem-int v0, p0, p1

    if-nez v0, :cond_0

    div-int v0, p0, p1

    :goto_0
    return v0

    :cond_0
    div-int v0, p0, p1

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    div-int v0, p0, p1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public static getMoney(J)Ljava/lang/String;
    .locals 11

    const-wide/16 v3, 0x2710

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    div-long v1, p0, v3

    mul-long/2addr v3, v1

    sub-long v3, p0, v3

    div-long v5, v3, v7

    mul-long/2addr v7, v5

    sub-long/2addr v3, v7

    cmp-long v7, v1, v9

    if-lez v7, :cond_0

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    cmp-long v1, v5, v9

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    cmp-long v1, v3, v9

    if-lez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getMoney(JB)Ljava/lang/String;
    .locals 11

    const-wide/16 v3, 0x2710

    const-wide/16 v7, 0x64

    const-wide/16 v9, 0x0

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, -0x2

    if-ne p2, v1, :cond_2

    div-long v1, p0, v7

    rem-long v3, p0, v7

    cmp-long v5, v1, v9

    if-lez v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1\u5143\u5b9d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    cmp-long v1, v3, v9

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6\u5143\u5b9d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_1
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v1, -0x3

    if-ne p2, v1, :cond_4

    div-long v1, p0, v7

    rem-long v3, p0, v7

    cmp-long v5, v1, v9

    if-lez v5, :cond_3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1\u53f6\u5b50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_3
    cmp-long v1, v3, v9

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6\u53f6\u5b50"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    :cond_4
    const/4 v1, -0x4

    if-ne p2, v1, :cond_1

    div-long v1, p0, v3

    mul-long/2addr v3, v1

    sub-long v3, p0, v3

    div-long v5, v3, v7

    mul-long/2addr v7, v5

    sub-long/2addr v3, v7

    cmp-long v7, v1, v9

    if-lez v7, :cond_5

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91d1"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_5
    cmp-long v1, v5, v9

    if-lez v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94f6"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_6
    cmp-long v1, v3, v9

    if-lez v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u94dc"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto/16 :goto_0
.end method

.method public static getMoneyCut(I)[I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x3

    new-array v0, v0, [I

    div-int/lit16 v1, p0, 0x2710

    aput v1, v0, v2

    aget v1, v0, v2

    mul-int/lit16 v1, v1, 0x2710

    sub-int v1, p0, v1

    div-int/lit8 v2, v1, 0x64

    aput v2, v0, v3

    aget v2, v0, v3

    mul-int/lit8 v2, v2, 0x64

    sub-int/2addr v1, v2

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method

.method public static getOffsetData(Ljava/io/InputStream;)[S
    .locals 8

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Ljava/io/InputStream;->available()I

    move-result v1

    new-array v1, v1, [B

    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    const/4 v2, 0x0

    add-int/lit8 v3, v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v4, v3, 0x1

    aget-byte v3, v1, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x8

    or-int/2addr v2, v3

    add-int/lit8 v3, v2, 0x1

    new-array v0, v3, [S
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v3, 0x1

    :goto_0
    if-gt v3, v2, :cond_0

    add-int/lit8 v5, v4, 0x1

    :try_start_1
    aget-byte v4, v1, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v6, v5, 0x1

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    add-int/2addr v4, v5

    const v5, 0xffff

    and-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v3

    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-object v0

    :catch_0
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    :goto_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move-object v0, v1

    goto :goto_1

    :catch_1
    move-exception v1

    move-object v7, v1

    move-object v1, v0

    move-object v0, v7

    goto :goto_2
.end method

.method public static getQuestTitleColor(B)I
    .locals 2

    const/4 v1, 0x2

    packed-switch p0, :pswitch_data_0

    sget-object v0, Lcom/t4game/Data;->color:[I

    aget v0, v0, v1

    :goto_0
    return v0

    :pswitch_0
    sget-object v0, Lcom/t4game/Data;->color:[I

    aget v0, v0, v1

    goto :goto_0

    :pswitch_1
    sget-object v0, Lcom/t4game/Data;->color:[I

    const/4 v1, 0x7

    aget v0, v0, v1

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/t4game/Data;->color:[I

    const/16 v1, 0xf

    aget v0, v0, v1

    goto :goto_0

    :pswitch_3
    sget-object v0, Lcom/t4game/Data;->color:[I

    const/16 v1, 0x10

    aget v0, v0, v1

    goto :goto_0

    :pswitch_4
    sget-object v0, Lcom/t4game/Data;->color:[I

    const/16 v1, 0xc

    aget v0, v0, v1

    goto :goto_0

    :pswitch_5
    sget-object v0, Lcom/t4game/Data;->color:[I

    const/4 v1, 0x1

    aget v0, v0, v1

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static getRoleFreeAction(B)B
    .locals 1

    const/4 v0, 0x1

    if-nez p0, :cond_0

    :cond_0
    return v0
.end method

.method public static getScrollStartAndEnd(III)[I
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [I

    if-le p0, p1, :cond_1

    add-int/lit8 v1, p2, 0x1

    if-le v1, p1, :cond_0

    add-int/lit8 v1, p2, 0x1

    sub-int/2addr v1, p1

    aput v1, v0, v2

    aget v1, v0, v2

    add-int/2addr v1, p1

    aput v1, v0, v3

    :goto_0
    return-object v0

    :cond_0
    aput v2, v0, v2

    aput p1, v0, v3

    goto :goto_0

    :cond_1
    aput v2, v0, v2

    aput p0, v0, v3

    goto :goto_0
.end method

.method public static getSmallMapxx(IIII)I
    .locals 2

    if-le p0, p2, :cond_0

    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x10

    sub-int v1, p1, p3

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    sub-int v0, p0, p3

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    shl-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getSmallMapyy(IIII)I
    .locals 2

    if-le p0, p2, :cond_0

    sub-int v0, p0, p1

    add-int/lit8 v0, v0, 0x10

    sub-int v1, p1, p3

    add-int/2addr v0, v1

    :goto_0
    return v0

    :cond_0
    if-ge p0, p1, :cond_1

    sub-int v0, p0, p3

    goto :goto_0

    :cond_1
    sub-int v0, p0, p1

    shl-int/lit8 v0, v0, 0x1

    sub-int v1, p1, p3

    add-int/2addr v0, v1

    goto :goto_0
.end method

.method public static getString([B[SI)Ljava/lang/String;
    .locals 6

    const v5, 0xffff

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/lang/String;

    aget-short v2, p1, p2

    and-int/2addr v2, v5

    add-int/lit8 v3, p2, 0x1

    aget-short v3, p1, v3

    and-int/2addr v3, v5

    aget-short v4, p1, p2

    and-int/2addr v4, v5

    sub-int/2addr v3, v4

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    const-string v4, "UTF-8"

    invoke-direct {v1, p0, v2, v3, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStringArrayBySpecifiedWidth([Ljava/lang/String;I)[Ljava/lang/String;
    .locals 9

    const/4 v8, 0x0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    array-length v0, p0

    new-array v1, v0, [[Ljava/lang/String;

    move v2, v8

    move v3, v8

    :goto_1
    if-ge v2, v0, :cond_1

    aget-object v4, p0, v2

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v4, p1, v5}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v2

    aget-object v4, v1, v2

    array-length v4, v4

    add-int/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    new-array v2, v3, [Ljava/lang/String;

    move v3, v8

    move v4, v8

    :goto_2
    if-ge v3, v0, :cond_3

    aget-object v5, v1, v3

    array-length v5, v5

    move v6, v4

    move v4, v8

    :goto_3
    if-ge v4, v5, :cond_2

    aget-object v7, v1, v3

    aget-object v7, v7, v4

    aput-object v7, v2, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v3, v3, 0x1

    move v4, v6

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_0
.end method

.method public static getStringWidth(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static getTaxisId([S)[S
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    array-length v0, p0

    new-array v1, v0, [S

    move v2, v7

    move v3, v7

    :goto_0
    if-ge v3, v0, :cond_2

    move v4, v7

    :goto_1
    if-ge v4, v2, :cond_6

    aget-short v5, v1, v4

    aget-short v6, p0, v3

    if-ne v5, v6, :cond_1

    move v4, v7

    :goto_2
    if-eqz v4, :cond_0

    aget-short v4, p0, v3

    aput-short v4, v1, v2

    add-int/lit8 v2, v2, 0x1

    int-to-short v2, v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    new-array v0, v2, [S

    invoke-static {v1, v7, v0, v7, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move v1, v8

    :goto_3
    if-ge v1, v2, :cond_5

    aget-short v3, v0, v1

    move v4, v1

    :cond_3
    sub-int v5, v4, v8

    aget-short v5, v0, v5

    if-le v5, v3, :cond_4

    sub-int v5, v4, v8

    aget-short v5, v0, v5

    aput-short v5, v0, v4

    add-int/lit8 v4, v4, -0x1

    if-gtz v4, :cond_3

    :cond_4
    aput-short v3, v0, v4

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return-object v0

    :cond_6
    move v4, v8

    goto :goto_2
.end method

.method public static final getTime()J
    .locals 2

    sget-boolean v0, Lcom/t4game/Defaults;->isKEmulator:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    goto :goto_0
.end method

.method public static final getTimeCountDown(I)Ljava/lang/String;
    .locals 10

    const/16 v7, 0xa

    const-string v9, ":"

    const-string v8, "0"

    const-string v6, ""

    div-int/lit16 v0, p0, 0xe10

    rem-int/lit16 v1, p0, 0xe10

    div-int/lit8 v1, v1, 0x3c

    rem-int/lit8 v2, p0, 0x3c

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-ge v0, v7, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ge v1, v7, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    if-ge v2, v7, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method

.method public static getTimePrecisionInHour(I)Ljava/lang/String;
    .locals 5

    const v1, 0x15180

    const-string v4, "\u5c0f\u65f6"

    const-string v3, "\u5929"

    const-string v0, ""

    if-lt p0, v1, :cond_1

    div-int v0, p0, v1

    rem-int v1, p0, v1

    div-int/lit16 v1, v1, 0xe10

    if-lez v1, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\u5929"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5929"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/16 v0, 0xe10

    if-lt p0, v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v1, p0, 0xe10

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5c0f\u65f6"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    const/16 v0, 0x3c

    if-lt p0, v0, :cond_3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit8 v1, p0, 0x3c

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u5206\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u79d2\u949f"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getTotalMemory()J
    .locals 2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->totalMemory()J

    move-result-wide v0

    return-wide v0
.end method

.method public static getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 9

    const v8, 0xffffff

    const/4 v2, 0x0

    mul-int v0, p1, p2

    new-array v1, v0, [I

    move-object v0, p0

    move v3, p1

    move v4, v2

    move v5, v2

    move v6, p1

    move v7, p2

    invoke-virtual/range {v0 .. v7}, Ljavax/microedition/lcdui/Image;->getRGB([IIIIIII)V

    move v0, v2

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_1

    aget v2, v1, v0

    and-int/2addr v2, v8

    if-ne v2, v8, :cond_0

    aget v2, v1, v0

    and-int/2addr v2, v8

    aput v2, v1, v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    invoke-static {v1, p1, p2, v0}, Ljavax/microedition/lcdui/Image;->createRGBImage([IIIZ)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static getYuanBao(II)Ljava/lang/String;
    .locals 8

    const/4 v5, 0x1

    const/4 v6, 0x0

    const-string v0, ""

    div-int/lit8 v1, p0, 0x64

    rem-int/lit8 v2, p0, 0x64

    const-string v3, "\u91d1\u5143\u5b9d"

    const/16 v4, 0x69e

    invoke-static {v5, v4}, Lcom/t4game/Language;->getStr(BI)Ljava/lang/String;

    move-result-object v4

    if-ne p1, v5, :cond_3

    const-string v3, "\u91d1\u53f6\u5b50"

    const-string v4, "\u94f6\u53f6\u5b50"

    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    :goto_0
    if-lez v1, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-lez v2, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_1
    if-nez p0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_2
    return-object v0

    :cond_3
    move-object v7, v4

    move-object v4, v3

    move-object v3, v7

    goto :goto_0
.end method

.method public static getlineNum([[SS)S
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-object v1, p0, v0

    aget-short v1, v1, v3

    if-lt p1, v1, :cond_0

    aget-object v1, p0, v0

    const/4 v2, 0x1

    aget-short v1, v1, v2

    if-gt p1, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-short v0, v0

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method public static final paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    return-void
.end method

.method public static final paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/t4game/DraftingUtil;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintAlertSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static final paintAlertSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/t4game/DraftingUtil;->paintAlertSplit(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)V

    return-void
.end method

.method public static final paintColorString(II[Ljava/lang/String;[ILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/4 v4, -0x1

    const-string v0, ""

    const/4 v1, 0x0

    move v7, v1

    move-object v8, v0

    :goto_0
    array-length v0, p2

    if-ge v7, v0, :cond_1

    if-nez v7, :cond_0

    aget-object v0, p2, v7

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    aget v5, p3, v7

    move v1, p0

    move v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p2, v7

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v7, 0x1

    int-to-byte v1, v1

    move v7, v1

    move-object v8, v0

    goto :goto_0

    :cond_0
    aget-object v0, p2, v7

    sget-object v1, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v1, v8}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, p0

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    aget v5, p3, v7

    move v2, p1

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public static final paintCommand(Ljava/lang/String;Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    const/4 v0, -0x1

    invoke-static {p0, p1, v0, p2}, Lcom/t4game/DraftingUtil;->paintCommand2(Ljava/lang/String;Ljava/lang/String;ILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/t4game/DraftingUtil;->paintDialog(Ljava/lang/String;Ljavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static/range {p0 .. p5}, Lcom/t4game/DraftingUtil;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static final paintMemory(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 0

    return-void
.end method

.method public static final paintReading(ILjavax/microedition/lcdui/Graphics;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/t4game/DraftingUtil;->paintReading(ILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method public static paintString2(IIILjava/lang/String;Ljavax/microedition/lcdui/Graphics;)V
    .locals 10

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {p3, p2, v0}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v7

    array-length v0, v7

    int-to-byte v8, v0

    const/4 v0, 0x0

    move v9, v0

    :goto_0
    if-ge v9, v8, :cond_0

    aget-object v0, v7, v9

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v1, v9

    add-int v2, p1, v1

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v4, -0x1

    invoke-virtual {p4}, Ljavax/microedition/lcdui/Graphics;->getColor()I

    move-result v5

    move v1, p0

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v9, 0x1

    int-to-byte v0, v0

    move v9, v0

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static pressedFunctionMenu(BBI)B
    .locals 2

    const/4 v1, 0x1

    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    if-lez p0, :cond_0

    sub-int v0, p0, v1

    int-to-byte v0, v0

    :goto_0
    return v0

    :cond_0
    sub-int v0, p1, v1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x2

    if-ne p2, v0, :cond_3

    sub-int v0, p1, v1

    if-ge p0, v0, :cond_2

    add-int/lit8 v0, p0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    :cond_3
    move v0, p0

    goto :goto_0
.end method

.method static println(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v0, p0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    return-void
.end method

.method public static quickSqrt(I)I
    .locals 3

    const/16 v2, 0x50

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    sget-object v1, Lcom/t4game/Util;->_sqrtList:[S

    aget-short v1, v1, v0

    if-ge p0, v1, :cond_0

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public static rand(I)I
    .locals 2

    sget-object v0, Lcom/t4game/Util;->rand:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    const v1, 0x7fffffff

    and-int/2addr v0, v1

    rem-int/2addr v0, p0

    return v0
.end method

.method public static read(Ljava/io/InputStream;[BI)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/t4game/Util;->read(Ljava/io/InputStream;[BII)V

    return-void
.end method

.method public static read(Ljava/io/InputStream;[BII)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move v0, p3

    move v1, p2

    :goto_0
    if-lez v0, :cond_0

    invoke-virtual {p0, p1, v1, v0}, Ljava/io/InputStream;->read([BII)I

    move-result v2

    if-lez v2, :cond_0

    sub-int/2addr v0, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static refreashChat([Ljava/lang/String;)[Ljava/lang/String;
    .locals 10

    const/16 v9, 0x3d

    const/4 v8, -0x1

    const/4 v7, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    move v0, v6

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_3

    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v5

    if-lez v1, :cond_1

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_1

    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v0, 0x1

    :try_start_0
    aget-object v1, p0, v1

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_1
    if-ltz v1, :cond_0

    const/16 v2, 0x6a

    if-ge v1, v2, :cond_0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    invoke-virtual {v1, v6, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v0, 0x1

    aget-object v3, p0, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v8

    goto :goto_1

    :cond_1
    aget-object v1, p0, v0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, v7

    if-lez v1, :cond_0

    aget-object v1, p0, v0

    aget-object v2, p0, v0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v1, v9, :cond_0

    add-int/lit8 v1, v0, 0x1

    array-length v2, p0

    if-ge v1, v2, :cond_0

    :try_start_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    aget-object v3, p0, v0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    :goto_2
    if-ltz v1, :cond_0

    const/16 v2, 0x6a

    if-ge v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, p0, v0

    add-int/lit8 v1, v0, 0x1

    add-int/lit8 v2, v0, 0x1

    aget-object v2, p0, v2

    invoke-virtual {v2, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, p0, v1

    add-int/lit8 v1, v0, 0x1

    aget-object v1, p0, v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-gtz v1, :cond_0

    move v0, v5

    :goto_3
    if-eqz v0, :cond_2

    array-length v0, p0

    sub-int/2addr v0, v5

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p0

    sub-int/2addr v1, v5

    invoke-static {p0, v6, v0, v6, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    invoke-static {}, Ljava/lang/System;->gc()V

    :goto_4
    return-object v0

    :catch_1
    move-exception v1

    move v1, v8

    goto :goto_2

    :cond_2
    move-object v0, p0

    goto :goto_4

    :cond_3
    move v0, v6

    goto :goto_3
.end method

.method public static refreashChatString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/t4game/Defaults;->smallFace:[Ljava/lang/String;

    array-length v0, v0

    int-to-byte v0, v0

    const/4 v1, 0x0

    move-object v2, p0

    :goto_0
    if-ge v1, v0, :cond_0

    sget-object v3, Lcom/t4game/Defaults;->smallFace:[Ljava/lang/String;

    aget-object v3, v3, v1

    sget-object v4, Lcom/t4game/Defaults;->smallFaceReplace:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-static {v2, v3, v4}, Lcom/t4game/Util;->replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_0

    :cond_0
    return-object v2
.end method

.method public static removeString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    if-eq v1, v3, :cond_2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static replace(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const/4 v2, 0x0

    const/4 v3, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v3, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    move v1, v2

    :cond_1
    :goto_1
    if-eq v1, v3, :cond_2

    invoke-virtual {p0, p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v3, :cond_1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static scaleImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    mul-int/2addr v0, p1

    div-int/2addr v0, p2

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    mul-int/2addr v1, p1

    div-int/2addr v1, p2

    invoke-static {p0, v0, v1}, Lcom/t4game/Util;->transImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public static split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    move v3, v1

    move-object v1, p0

    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/2addr v3, v2

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v2, v1, [Ljava/lang/String;

    move v3, v5

    :goto_2
    if-ge v3, v1, :cond_2

    invoke-virtual {v0, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    move-object v0, v2

    goto :goto_0
.end method

.method public static splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v7}, Ljava/util/Vector;-><init>(II)V

    if-nez p0, :cond_0

    new-array v0, v7, [Ljava/lang/String;

    const-string v1, " "

    aput-object v1, v0, v6

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    move v2, v6

    move v3, v6

    :goto_1
    if-ge v3, v1, :cond_2

    move v4, v2

    move v2, v3

    :goto_2
    if-ge v2, v1, :cond_5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    invoke-static {v5}, Lcom/t4game/Util;->charWidth(C)I

    move-result v5

    add-int/2addr v4, v5

    if-le v4, p1, :cond_1

    invoke-virtual {p0, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v3, v6

    move v4, v2

    move v2, v7

    :goto_3
    if-nez v2, :cond_4

    invoke-virtual {p0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v1

    :goto_4
    move v8, v3

    move v3, v2

    move v2, v8

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v6

    :goto_5
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_3
    move-object v0, v1

    goto :goto_0

    :cond_4
    move v2, v4

    goto :goto_4

    :cond_5
    move v2, v6

    move v8, v4

    move v4, v3

    move v3, v8

    goto :goto_3
.end method

.method public static splitStringOneScreen2(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;
    .locals 6

    const/4 v3, 0x1

    const/4 v5, 0x0

    new-instance v0, Ljava/util/Vector;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v3}, Ljava/util/Vector;-><init>(II)V

    new-array v1, v3, [Ljava/lang/String;

    if-nez p0, :cond_0

    const-string v0, " "

    aput-object v0, v1, v5

    move-object v0, v1

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p2, p0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v2

    if-gt v2, p1, :cond_6

    new-array v0, v3, [Ljava/lang/String;

    invoke-virtual {p0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    goto :goto_0

    :cond_1
    :goto_1
    if-ge v2, v1, :cond_4

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v3

    if-gt v3, p1, :cond_2

    invoke-virtual {p0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v1

    goto :goto_1

    :cond_2
    move v3, v2

    :goto_2
    if-ge v3, v1, :cond_1

    add-int/lit8 v4, v3, 0x1

    invoke-virtual {p0, v2, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v4

    if-le v4, p1, :cond_3

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v2, v3

    goto :goto_1

    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    move v2, v5

    :goto_3
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_5
    move-object v0, v1

    goto :goto_0

    :cond_6
    move v2, v5

    goto :goto_1
.end method

.method public static strArrayGrow([Ljava/lang/String;ILjava/lang/String;)[Ljava/lang/String;
    .locals 2

    add-int/lit8 v0, p1, 0x1

    array-length v1, p0

    if-le v0, v1, :cond_0

    add-int/lit8 v0, p1, 0x1

    new-array v0, v0, [Ljava/lang/String;

    add-int/lit8 v1, p1, 0x1

    aput-object p2, v0, v1

    :goto_0
    return-object v0

    :cond_0
    aput-object p2, p0, p1

    move-object v0, p0

    goto :goto_0
.end method

.method public static string2byte(Ljava/lang/String;)[B
    .locals 1

    :try_start_0
    const-string v0, "UTF-8"

    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static stringWidth(Ljava/lang/String;)I
    .locals 1

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p0}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static testInterRect(IIIIII)Z
    .locals 1

    sub-int v0, p0, p2

    invoke-static {v0}, Lcom/t4game/Util;->abs(I)I

    move-result v0

    if-ge v0, p4, :cond_0

    sub-int v0, p1, p3

    invoke-static {v0}, Lcom/t4game/Util;->abs(I)I

    move-result v0

    if-ge v0, p5, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static testInterRound(IIIII)Z
    .locals 2

    sub-int v0, p0, p2

    sub-int v1, p1, p3

    mul-int/2addr v0, v0

    mul-int/2addr v1, v1

    add-int/2addr v0, v1

    mul-int v1, p4, p4

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static testNpcFlag([BB)Z
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    aget-byte v1, p0, v0

    if-ne v1, p1, :cond_0

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

.method public static transImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;
    .locals 11

    const/16 v10, 0x14

    const/4 v9, 0x1

    const/4 v8, 0x0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    invoke-static {p1, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    invoke-static {v2, p1, v1}, Lcom/t4game/Util;->getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v3

    const/16 v4, 0x10

    shl-int/2addr v0, v4

    div-int/2addr v0, p1

    div-int/lit8 v5, v0, 0x2

    move v6, v5

    move v5, v8

    :goto_0
    if-ge v5, p1, :cond_0

    invoke-virtual {v3, v5, v8, v9, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    shr-int v7, v6, v4

    sub-int v7, v5, v7

    invoke-virtual {v3, p0, v7, v8, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/2addr v6, v0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    invoke-static {p1, p2}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/t4game/Util;->getTransparentImag(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v3

    shl-int/2addr v1, v4

    div-int/2addr v1, p2

    div-int/lit8 v5, v1, 0x2

    move v6, v5

    move v5, v8

    :goto_1
    if-ge v5, p2, :cond_1

    invoke-virtual {v3, v8, v5, p1, v9}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    shr-int v7, v6, v4

    sub-int v7, v5, v7

    invoke-virtual {v3, v2, v8, v7, v10}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/2addr v6, v1

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    return-object v0
.end method
