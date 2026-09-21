.class public Lcom/t4game/Language;
.super Ljava/lang/Object;


# static fields
.field private static BufferIndex:B = 0x0t

.field private static final BufferLen:B = 0x14t

.field private static BufferSize:B = 0x0t

.field private static StrBuffer:[Ljava/lang/String; = null

.field private static final StrCurrent:[Ljava/lang/String;

.field private static StrIndex:[S = null

.field public static final Type_Buffer:B = 0x1t

.field public static final Type_Current:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v1, 0x14

    const/4 v2, 0x0

    sput-byte v2, Lcom/t4game/Language;->BufferSize:B

    sput-byte v2, Lcom/t4game/Language;->BufferIndex:B

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/t4game/Language;->StrBuffer:[Ljava/lang/String;

    new-array v0, v1, [S

    sput-object v0, Lcom/t4game/Language;->StrIndex:[S

    const/16 v0, 0xb

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u786e\u5b9a"

    aput-object v1, v0, v2

    const/4 v1, 0x1

    const-string v2, "\u8fd4\u56de"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "\u53d6\u6d88"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "\u9009\u62e9"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "\u5b8c\u6210"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "\'0\'\u952e\u5feb\u901f\u67e5\u770b"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u540c\u610f"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u4e0d\u540c\u610f"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u662f"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u5426"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u8be6\u60c5"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/Language;->StrCurrent:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getStr(BI)Ljava/lang/String;
    .locals 9

    const/4 v5, 0x0

    const/16 v8, 0x14

    const/4 v6, 0x0

    const-string v0, ""

    if-nez p0, :cond_2

    if-ltz p1, :cond_1

    if-ge p1, v8, :cond_1

    sget-object v0, Lcom/t4game/Language;->StrCurrent:[Ljava/lang/String;

    aget-object v0, v0, p1

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "\u5e38\u91cf\u81ea\u7b26\u4e32\u7d22\u5f15\u8d8a\u754c\uff01 index="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move v1, v6

    :goto_1
    sget-byte v2, Lcom/t4game/Language;->BufferSize:B

    if-ge v1, v2, :cond_4

    sget-object v2, Lcom/t4game/Language;->StrIndex:[S

    aget-short v2, v2, v1

    if-ne v2, p1, :cond_3

    sget-object v0, Lcom/t4game/Language;->StrBuffer:[Ljava/lang/String;

    aget-object v0, v0, v1

    goto :goto_0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_4
    const/16 v1, 0x64

    :try_start_0
    div-int v2, p1, v1

    int-to-byte v2, v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/Language/Language"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".str"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-class v4, Lcom/t4game/Language;

    invoke-virtual {v4, v3}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    :try_start_1
    new-instance v4, Ljava/io/DataInputStream;

    invoke-direct {v4, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readShort()S

    move-result v5

    if-ge p1, v5, :cond_9

    if-ltz p1, :cond_9

    :goto_2
    if-ge v6, v5, :cond_6

    mul-int v7, v1, v2

    sub-int v7, p1, v7

    if-ne v6, v7, :cond_8

    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/t4game/Language;->StrBuffer:[Ljava/lang/String;

    sget-byte v2, Lcom/t4game/Language;->BufferIndex:B

    aput-object v0, v1, v2

    sget-object v1, Lcom/t4game/Language;->StrIndex:[S

    sget-byte v2, Lcom/t4game/Language;->BufferIndex:B

    int-to-short v5, p1

    aput-short v5, v1, v2

    sget-byte v1, Lcom/t4game/Language;->BufferIndex:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Language;->BufferIndex:B

    sget-byte v1, Lcom/t4game/Language;->BufferIndex:B

    if-ne v1, v8, :cond_5

    const/4 v1, 0x0

    sput-byte v1, Lcom/t4game/Language;->BufferIndex:B

    :cond_5
    sget-byte v1, Lcom/t4game/Language;->BufferSize:B

    if-ge v1, v8, :cond_6

    sget-byte v1, Lcom/t4game/Language;->BufferSize:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/Language;->BufferSize:B
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :cond_6
    :goto_3
    if-eqz v4, :cond_7

    :try_start_3
    invoke-virtual {v4}, Ljava/io/DataInputStream;->close()V

    :cond_7
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    :cond_8
    :try_start_4
    invoke-virtual {v4}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    add-int/lit8 v6, v6, 0x1

    int-to-short v6, v6

    goto :goto_2

    :cond_9
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u81ea\u7b26\u4e32\u6570\u636e\u6d41\u7d22\u5f15\u8d8a\u754c\uff01index="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_3

    :catch_1
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v4

    :goto_4
    :try_start_5
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_a
    if-eqz v2, :cond_b

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2

    :cond_b
    move-object v0, v3

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    move-object v0, v3

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v5

    move-object v2, v5

    :goto_5
    if-eqz v1, :cond_c

    :try_start_7
    invoke-virtual {v1}, Ljava/io/DataInputStream;->close()V

    :cond_c
    if-eqz v2, :cond_d

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    :cond_d
    :goto_6
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v1, v5

    move-object v2, v3

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v4

    move-object v2, v3

    goto :goto_5

    :catchall_3
    move-exception v0

    goto :goto_5

    :catch_4
    move-exception v1

    move-object v2, v5

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v2, v3

    move-object v3, v0

    move-object v0, v1

    move-object v1, v5

    goto :goto_4
.end method
