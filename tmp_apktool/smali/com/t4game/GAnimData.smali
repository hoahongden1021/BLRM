.class public Lcom/t4game/GAnimData;
.super Ljava/lang/Object;


# instance fields
.field public animFrameDatas:[B

.field public frameNum:B

.field public objectData:Lcom/t4game/GObjectData;

.field public otherTriggerIndex:B

.field public selfTriggerIndex:B


# direct methods
.method public constructor <init>(Lcom/t4game/GObjectData;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v0, p0, Lcom/t4game/GAnimData;->frameNum:B

    iput-byte v0, p0, Lcom/t4game/GAnimData;->selfTriggerIndex:B

    iput-byte v0, p0, Lcom/t4game/GAnimData;->otherTriggerIndex:B

    iput-object p1, p0, Lcom/t4game/GAnimData;->objectData:Lcom/t4game/GObjectData;

    return-void
.end method


# virtual methods
.method public final draw(Ljavax/microedition/lcdui/Graphics;IIIZZ[Lcom/t4game/GImageData;IIIIB)V
    .locals 0

    return-void
.end method

.method public final draw(Ljavax/microedition/lcdui/Graphics;IIIZZ[Lcom/t4game/GImageData;Lcom/t4game/GMap;B)V
    .locals 14

    if-nez p8, :cond_0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v13, p9

    invoke-virtual/range {v1 .. v13}, Lcom/t4game/GAnimData;->draw(Ljavax/microedition/lcdui/Graphics;IIIZZ[Lcom/t4game/GImageData;IIIIB)V

    :goto_0
    return-void

    :cond_0
    move-object/from16 v0, p8

    iget v0, v0, Lcom/t4game/GMap;->WX:I

    move v9, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/t4game/GMap;->WH:I

    move v10, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/t4game/GMap;->WW:I

    move v11, v0

    move-object/from16 v0, p8

    iget v0, v0, Lcom/t4game/GMap;->WH:I

    move v12, v0

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v13, p9

    invoke-virtual/range {v1 .. v13}, Lcom/t4game/GAnimData;->draw(Ljavax/microedition/lcdui/Graphics;IIIZZ[Lcom/t4game/GImageData;IIIIB)V

    goto :goto_0
.end method

.method public final init(Ljava/io/InputStream;)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v0

    int-to-byte v1, v0

    iput-byte v1, p0, Lcom/t4game/GAnimData;->frameNum:B

    mul-int/lit8 v1, v0, 0x4

    new-array v1, v1, [B

    iput-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    move v1, v7

    move v2, v7

    :goto_0
    if-ge v2, v0, :cond_3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v3

    int-to-byte v3, v3

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v4

    int-to-byte v4, v4

    iget-object v5, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v6, v1, 0x1

    aput-byte v3, v5, v1

    iget-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v3, v6, 0x1

    aput-byte v4, v1, v6

    and-int/lit8 v1, v4, 0x4

    if-lez v1, :cond_1

    iget-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v5, v3, 0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v3

    iget-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v3, v5, 0x1

    invoke-virtual {p1}, Ljava/io/InputStream;->read()I

    move-result v6

    int-to-byte v6, v6

    aput-byte v6, v1, v5

    move v1, v3

    :goto_1
    shr-int/lit8 v3, v4, 0x4

    int-to-byte v3, v3

    if-ne v3, v8, :cond_2

    int-to-byte v3, v2

    iput-byte v3, p0, Lcom/t4game/GAnimData;->selfTriggerIndex:B

    :cond_0
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v5, v3, 0x1

    aput-byte v7, v1, v3

    iget-object v1, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    add-int/lit8 v3, v5, 0x1

    aput-byte v7, v1, v5

    move v1, v3

    goto :goto_1

    :cond_2
    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    int-to-byte v3, v2

    iput-byte v3, p0, Lcom/t4game/GAnimData;->otherTriggerIndex:B

    goto :goto_2

    :cond_3
    return v8
.end method

.method public release()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GAnimData;->animFrameDatas:[B

    return-void
.end method
