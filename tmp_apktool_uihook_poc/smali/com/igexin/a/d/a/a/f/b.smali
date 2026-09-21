.class public Lcom/igexin/a/d/a/a/f/b;
.super Lcom/igexin/a/g/a/b;


# static fields
.field public static a:Z


# instance fields
.field private g:Ljava/lang/String;

.field private h:Lcom/igexin/a/b/b/b;

.field private i:I

.field private j:Lcom/igexin/a/d/a/a/f/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/a/d/a/a/f/b;->a:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;ILcom/igexin/a/d/a/a/f/c;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/igexin/a/g/a/b;-><init>(Ljava/lang/String;)V

    iput-object p3, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/f/b;->g:Ljava/lang/String;

    iput p4, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    iput-object p5, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    return-void
.end method

.method private a(Ljava/lang/String;)V
    .locals 3

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/igexin/a/b/a;->f:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Lcom/igexin/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_1
    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Exception;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    invoke-interface {v0, p1}, Lcom/igexin/a/d/a/a/f/c;->a(Ljava/lang/Exception;)V

    :cond_0
    return-void
.end method

.method public a([B)V
    .locals 12

    const/4 v10, 0x3

    const/4 v9, 0x2

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    sput-boolean v7, Lcom/igexin/a/d/a/a/f/b;->a:Z

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    invoke-virtual {v0}, Lcom/igexin/a/b/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget v0, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v0, v8, :cond_2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/d/a/a/b/e;

    move-object v2, v3

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    :goto_0
    iget-object v4, p0, Lcom/igexin/a/d/a/a/f/b;->g:Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/igexin/a/d/a/a/f/b;->a(Ljava/lang/String;)V

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v5, Lcom/igexin/a/b/a;->f:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/igexin/a/d/a/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v4, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v4, v8, :cond_5

    const-string v4, ""

    :goto_1
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ".bin"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/io/FileOutputStream;

    invoke-direct {v4, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    sget-object v5, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    array-length v6, p1

    invoke-static {p1, v7, v6}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_9

    const/16 v7, 0x64

    invoke-virtual {v6, v5, v7, v4}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    sput-boolean v8, Lcom/igexin/a/d/a/a/f/b;->a:Z

    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    const-string v5, "imageurl"

    invoke-virtual {p0}, Lcom/igexin/a/d/a/a/f/b;->c()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "imagesrc"

    invoke-virtual {v4, v5, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "taskid"

    iget-object v6, p0, Lcom/igexin/a/d/a/a/f/b;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v5, "createtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    iget v5, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v5, v8, :cond_6

    invoke-virtual {v3, v1}, Lcom/igexin/a/d/a/a/b/e;->g(Ljava/lang/String;)V

    :cond_0
    :goto_2
    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/c/c;->d()Lcom/igexin/a/d/a/a/d/a;

    move-result-object v0

    const-string v1, "image"

    invoke-virtual {v0, v1, v4}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V

    :goto_3
    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/igexin/a/d/a/a/f/b;->a:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    invoke-interface {v0, v1}, Lcom/igexin/a/d/a/a/f/c;->a(Lcom/igexin/a/b/b/b;)V

    :cond_1
    :goto_4
    return-void

    :cond_2
    iget v0, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-eq v0, v9, :cond_3

    iget v0, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v0, v10, :cond_4

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v2, v0

    move-object v0, v3

    goto/16 :goto_0

    :cond_4
    iget v0, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    const/4 v2, 0x4

    if-ne v0, v2, :cond_b

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->h:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    move-object v2, v3

    goto/16 :goto_0

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    :cond_6
    iget v3, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v3, v9, :cond_7

    invoke-virtual {v2, v1}, Lcom/igexin/a/b/b/d;->i(Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    iget v3, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    if-ne v3, v10, :cond_8

    invoke-virtual {v2, v1}, Lcom/igexin/a/b/b/d;->j(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    iget v2, p0, Lcom/igexin/a/d/a/a/f/b;->i:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->f(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Ljava/io/FileOutputStream;->close()V

    sput-boolean v7, Lcom/igexin/a/d/a/a/f/b;->a:Z

    goto :goto_3

    :cond_a
    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/b;->j:Lcom/igexin/a/d/a/a/f/c;

    new-instance v1, Ljava/lang/Exception;

    const-string v2, "no target existed or downloading bitmap failed!"

    invoke-direct {v1, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lcom/igexin/a/d/a/a/f/c;->a(Ljava/lang/Exception;)V

    goto :goto_4

    :cond_b
    move-object v0, v3

    move-object v2, v3

    goto/16 :goto_0
.end method

.method public final a_()I
    .locals 1

    const v0, 0x10015

    return v0
.end method
