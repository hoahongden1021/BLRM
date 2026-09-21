.class public Lcom/igexin/a/b/d/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/b/d/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Lcom/igexin/a/b/d/f;


# instance fields
.field private c:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/d/f;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/d/f;->c:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/a/b/d/f;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/d/f;->b:Lcom/igexin/a/b/d/f;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/d/f;

    invoke-direct {v0}, Lcom/igexin/a/b/d/f;-><init>()V

    sput-object v0, Lcom/igexin/a/b/d/f;->b:Lcom/igexin/a/b/d/f;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/d/f;->b:Lcom/igexin/a/b/d/f;

    return-object v0
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method private a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V
    .locals 3

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "id"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "name"

    invoke-virtual {v0, v1, p3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-virtual {v0, v1, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v1, "runtime"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->replace(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/b/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/d/f;->d()V

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/b/d/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/b/d/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V

    return-void
.end method

.method static synthetic b(Lcom/igexin/a/b/d/f;)V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/d/f;->f()V

    return-void
.end method

.method private d()V
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/a/b/g;->T:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/igexin/a/b/g;->T:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "v01"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/a/b/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-wide v2, Lcom/igexin/a/b/g;->s:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v2, Lcom/igexin/a/b/g;->C:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/igexin/b/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    throw v0

    :catch_2
    move-exception v0

    goto :goto_0

    :catch_3
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private e()J
    .locals 10

    const-wide/16 v7, 0x0

    const/4 v6, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/igexin/a/b/g;->T:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_7

    const/16 v0, 0x400

    new-array v0, v0, [B

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    sget-object v2, Lcom/igexin/a/b/g;->T:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v4, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v0, v2

    :goto_1
    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_4

    :cond_0
    :goto_2
    if-eqz v0, :cond_7

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    move-wide v0, v7

    :goto_3
    return-wide v0

    :cond_1
    :try_start_5
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    new-instance v3, Ljava/lang/String;

    sget-object v4, Lcom/igexin/a/b/g;->C:Ljava/lang/String;

    invoke-static {v0, v4}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    if-eqz v3, :cond_9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "v01"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v4, Lcom/igexin/a/b/g;->y:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v4, "null"

    invoke-virtual {v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    if-ltz v4, :cond_4

    const/4 v4, 0x0

    const/4 v5, 0x7

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x7

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    if-eqz v0, :cond_9

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    if-ltz v3, :cond_2

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    :cond_2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    move-result-wide v3

    cmp-long v0, v3, v7

    if-eqz v0, :cond_9

    :goto_5
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_3

    :cond_3
    :goto_6
    if-eqz v2, :cond_8

    :try_start_7
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-wide v0, v3

    goto :goto_3

    :cond_4
    const/4 v4, 0x0

    const/16 v5, 0x14

    :try_start_8
    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v0, 0x14

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    move-result-object v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-wide v0, v3

    goto :goto_3

    :catch_2
    move-exception v0

    move-wide v0, v7

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v6

    move-object v2, v6

    :goto_7
    if-eqz v2, :cond_5

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_5

    :cond_5
    :goto_8
    if-eqz v1, :cond_6

    :try_start_a
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_6

    :cond_6
    :goto_9
    throw v0

    :catch_3
    move-exception v0

    goto :goto_6

    :catch_4
    move-exception v1

    goto/16 :goto_2

    :catch_5
    move-exception v2

    goto :goto_8

    :catch_6
    move-exception v1

    goto :goto_9

    :catchall_1
    move-exception v0

    move-object v2, v1

    move-object v1, v6

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v9, v2

    move-object v2, v1

    move-object v1, v9

    goto :goto_7

    :catch_7
    move-exception v0

    move-object v0, v6

    move-object v1, v6

    goto/16 :goto_1

    :catch_8
    move-exception v0

    move-object v0, v6

    goto/16 :goto_1

    :cond_7
    move-wide v0, v7

    goto/16 :goto_3

    :cond_8
    move-wide v0, v3

    goto/16 :goto_3

    :cond_9
    move-wide v3, v7

    goto :goto_5

    :cond_a
    move-object v0, v6

    goto :goto_4
.end method

.method private f()V
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/a/b/g;->U:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    sget-object v2, Lcom/igexin/a/b/g;->U:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_5
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-nez v0, :cond_2

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    :cond_1
    :goto_0
    return-void

    :cond_2
    :try_start_3
    sget-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_5
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_1
    if-eqz v0, :cond_1

    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_0

    :catch_2
    move-exception v0

    goto :goto_0

    :catchall_0
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_2
    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    :cond_3
    :goto_3
    throw v0

    :catch_3
    move-exception v0

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method

.method private g()Ljava/lang/String;
    .locals 6

    const/4 v4, 0x0

    const-string v0, ""

    new-instance v1, Ljava/io/File;

    sget-object v2, Lcom/igexin/a/b/g;->U:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v1, 0x400

    new-array v1, v1, [B

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    sget-object v3, Lcom/igexin/a/b/g;->U:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_7
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v2, v1}, Ljava/io/FileInputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    const/4 v5, 0x0

    invoke-virtual {v3, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v1

    move-object v1, v3

    :goto_1
    if-eqz v2, :cond_0

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :cond_0
    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :cond_1
    :goto_3
    return-object v0

    :cond_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    new-instance v4, Ljava/lang/String;

    const-string v5, "utf-8"

    invoke-direct {v4, v1, v5}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_2

    :cond_3
    :goto_4
    if-eqz v3, :cond_6

    :try_start_7
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    move-object v0, v4

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v4

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v4

    move-object v2, v4

    :goto_5
    if-eqz v2, :cond_4

    :try_start_8
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_5

    :cond_4
    :goto_6
    if-eqz v1, :cond_5

    :try_start_9
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6

    :cond_5
    :goto_7
    throw v0

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v2

    goto :goto_2

    :catch_4
    move-exception v1

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_6

    :catch_6
    move-exception v1

    goto :goto_7

    :catchall_1
    move-exception v0

    move-object v1, v4

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object v1, v3

    goto :goto_5

    :catch_7
    move-exception v1

    move-object v1, v4

    move-object v2, v4

    goto :goto_1

    :catch_8
    move-exception v1

    move-object v1, v4

    goto :goto_1

    :cond_6
    move-object v0, v4

    goto :goto_3
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public a(J)Z
    .locals 4

    const/4 v3, 0x1

    invoke-static {p1, p2}, Lcom/igexin/a/b/g;->a(J)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/h;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/h;-><init>(Lcom/igexin/a/b/d/f;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    return v3
.end method

.method public b()V
    .locals 4

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/g;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/g;-><init>(Lcom/igexin/a/b/d/f;)V

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 9

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-wide/16 v4, 0x0

    const-string v0, "null"

    :try_start_0
    const-string v0, "select id, value from runtime order by id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_13

    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_13

    const/4 v1, 0x0

    add-int/lit8 v2, v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    if-ne v1, v7, :cond_5

    add-int/lit8 v3, v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v2

    move-object v3, v2

    move-object v2, v6

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    new-instance v1, Ljava/lang/String;

    sget-object v2, Lcom/igexin/a/b/g;->C:Ljava/lang/String;

    invoke-static {v3, v2}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_0

    :try_start_2
    const-string v2, "null"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_0
    move-wide v1, v4

    :goto_2
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/igexin/a/b/g;->u:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/igexin/a/b/g;->a(J)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-wide/16 v1, 0x0

    :try_start_3
    sput-wide v1, Lcom/igexin/a/b/g;->s:J
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    :goto_3
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_4
    sget-wide v0, Lcom/igexin/a/b/g;->s:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/igexin/a/b/d/f;->e()J

    move-result-wide v0

    cmp-long v2, v0, v4

    if-eqz v2, :cond_2

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcom/igexin/a/b/g;->u:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/b/g;->a(J)V

    const-string v2, "session"

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/a/h/b;->a([B)[B

    move-result-object v0

    invoke-direct {p0, p1, v7, v2, v0}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V

    :cond_2
    invoke-direct {p0}, Lcom/igexin/a/b/d/f;->g()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    if-nez v1, :cond_3

    if-eqz v0, :cond_3

    sput-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    const/4 v0, 0x2

    const-string v1, "deviceid"

    sget-object v2, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    :cond_3
    sget-object v0, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    if-nez v0, :cond_4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "A-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->v:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    const/4 v0, 0x3

    const-string v1, "registerid"

    sget-object v2, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    :cond_4
    return-void

    :cond_5
    add-int/lit8 v3, v2, 0x1

    :try_start_4
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v2

    move-object v3, v6

    goto/16 :goto_1

    :cond_6
    :try_start_5
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_0
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-wide v1

    goto/16 :goto_2

    :pswitch_1
    :try_start_6
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    move v1, v7

    :goto_5
    sput-boolean v1, Lcom/igexin/a/b/g;->m:Z
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_0

    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_6
    if-eqz v1, :cond_7

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_7
    throw v0

    :cond_8
    :try_start_7
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_5

    :pswitch_2
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    move-object v1, v6

    :goto_7
    sput-object v1, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto :goto_7

    :pswitch_3
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    move-wide v1, v4

    :goto_8
    sput-wide v1, Lcom/igexin/a/b/g;->J:J

    goto/16 :goto_0

    :cond_a
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_8

    :pswitch_4
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    move-wide v1, v4

    :goto_9
    sput-wide v1, Lcom/igexin/a/b/g;->I:J

    goto/16 :goto_0

    :cond_b
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_9

    :pswitch_5
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    move-wide v1, v4

    :goto_a
    sput-wide v1, Lcom/igexin/a/b/g;->H:J

    goto/16 :goto_0

    :cond_c
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_a

    :pswitch_6
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    move-wide v1, v4

    :goto_b
    sput-wide v1, Lcom/igexin/a/b/g;->N:J

    goto/16 :goto_0

    :cond_d
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_b

    :pswitch_7
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e

    move-wide v1, v4

    :goto_c
    sput-wide v1, Lcom/igexin/a/b/g;->O:J

    goto/16 :goto_0

    :cond_e
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_c

    :pswitch_8
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-wide v1, v4

    :goto_d
    sput-wide v1, Lcom/igexin/a/b/g;->G:J

    goto/16 :goto_0

    :cond_f
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_d

    :pswitch_9
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    move-object v1, v6

    :goto_e
    sput-object v1, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    goto/16 :goto_0

    :cond_10
    move-object v1, v2

    goto :goto_e

    :pswitch_a
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_11

    move-wide v1, v4

    :goto_f
    sput-wide v1, Lcom/igexin/a/b/g;->L:J

    goto/16 :goto_0

    :cond_11
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v1

    goto :goto_f

    :pswitch_b
    const-string v1, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    move-wide v1, v4

    :goto_10
    sput-wide v1, Lcom/igexin/a/b/g;->M:J

    goto/16 :goto_0

    :cond_12
    invoke-static {v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    move-result-wide v1

    goto :goto_10

    :cond_13
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto/16 :goto_4

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto/16 :goto_6

    :catch_2
    move-exception v0

    move-object v0, v6

    goto/16 :goto_3

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_9
        :pswitch_1
        :pswitch_8
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_6
        :pswitch_7
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method public b(J)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-wide v0, Lcom/igexin/a/b/g;->N:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Lcom/igexin/a/b/g;->N:J

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/i;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/i;-><init>(Lcom/igexin/a/b/d/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/d/f;->c:Ljava/util/Map;

    return-object v0
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 4

    sget-wide v0, Lcom/igexin/a/b/g;->s:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->C:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/b/a/a/a;->b([BLjava/lang/String;)[B

    move-result-object v0

    const/4 v1, 0x1

    const-string v2, "session"

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V

    const/4 v0, 0x4

    const-string v1, "isFirstInit"

    sget-boolean v2, Lcom/igexin/a/b/g;->m:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x2

    const-string v1, "deviceid"

    sget-object v2, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x8

    const-string v1, "lastUploadAppsTime"

    sget-wide v2, Lcom/igexin/a/b/g;->J:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x7

    const-string v1, "lastUpdateCAPermissionTime"

    sget-wide v2, Lcom/igexin/a/b/g;->I:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x6

    const-string v1, "lastAddphoneinfoTime"

    sget-wide v2, Lcom/igexin/a/b/g;->H:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0x9

    const-string v1, "lastOfflineTime"

    sget-wide v2, Lcom/igexin/a/b/g;->N:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xa

    const-string v1, "lastChange2BackupTime"

    sget-wide v2, Lcom/igexin/a/b/g;->O:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x5

    const-string v1, "lastBindAppTime"

    sget-wide v2, Lcom/igexin/a/b/g;->G:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x3

    const-string v1, "registerid"

    sget-object v2, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xb

    const-string v1, "lastGetSdkConfigTime"

    sget-wide v2, Lcom/igexin/a/b/g;->L:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    const/16 v0, 0xc

    const-string v1, "lastUploadBITime"

    sget-wide v2, Lcom/igexin/a/b/g;->M:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public c(J)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-wide v0, Lcom/igexin/a/b/g;->M:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Lcom/igexin/a/b/g;->M:J

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/j;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/j;-><init>(Lcom/igexin/a/b/d/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public d(J)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-wide v0, Lcom/igexin/a/b/g;->O:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Lcom/igexin/a/b/g;->O:J

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/k;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/k;-><init>(Lcom/igexin/a/b/d/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public e(J)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-wide v0, Lcom/igexin/a/b/g;->I:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Lcom/igexin/a/b/g;->I:J

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/l;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/l;-><init>(Lcom/igexin/a/b/d/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method

.method public f(J)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-wide v0, Lcom/igexin/a/b/g;->L:J

    cmp-long v0, v0, p1

    if-eqz v0, :cond_0

    sput-wide p1, Lcom/igexin/a/b/g;->L:J

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/b/d/m;

    invoke-direct {v1, p0}, Lcom/igexin/a/b/d/m;-><init>(Lcom/igexin/a/b/d/f;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    goto :goto_0
.end method
