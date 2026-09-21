.class public Lcom/igexin/a/f/j;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Landroid/content/Context;

.field private c:Lcom/igexin/b/a/b/d;

.field private d:Lcom/igexin/a/f/k;

.field private e:Z

.field private f:J

.field private g:J

.field private h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "SNL"

    sput-object v0, Lcom/igexin/a/f/j;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    iput-wide v1, p0, Lcom/igexin/a/f/j;->f:J

    iput-wide v1, p0, Lcom/igexin/a/f/j;->g:J

    iput-boolean v0, p0, Lcom/igexin/a/f/j;->h:Z

    return-void
.end method

.method private a(J)J
    .locals 6

    const-wide/16 v0, 0xa

    div-long v0, p1, v0

    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v2

    long-to-double v4, v0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    long-to-double v0, v0

    sub-double v0, v2, v0

    double-to-long v0, v0

    add-long/2addr v0, p1

    return-wide v0
.end method

.method private b(Lcom/igexin/a/e/c/e;)Ljava/lang/String;
    .locals 8

    const-string v4, "R-"

    const-string v7, "S-"

    const-string v3, "C-"

    const-string v2, ""

    instance-of v1, p1, Lcom/igexin/a/e/c/f;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/f;

    invoke-virtual {p1}, Lcom/igexin/a/e/c/f;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    instance-of v1, p1, Lcom/igexin/a/e/c/o;

    if-eqz v1, :cond_1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/o;

    iget-object v2, p1, Lcom/igexin/a/e/c/o;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_1
    instance-of v1, p1, Lcom/igexin/a/e/c/i;

    if-eqz v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/i;

    iget-wide v2, p1, Lcom/igexin/a/e/c/i;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    instance-of v1, p1, Lcom/igexin/a/e/c/k;

    if-eqz v1, :cond_3

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/e/c/k;

    move-object v1, v0

    iget-wide v3, v1, Lcom/igexin/a/e/c/k;->e:J

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/k;

    iget-wide v2, p1, Lcom/igexin/a/e/c/k;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_3
    instance-of v1, p1, Lcom/igexin/a/e/c/l;

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/l;

    iget-wide v2, p1, Lcom/igexin/a/e/c/l;->a:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_4
    instance-of v1, p1, Lcom/igexin/a/e/c/m;

    if-eqz v1, :cond_5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/m;

    iget-wide v2, p1, Lcom/igexin/a/e/c/m;->e:J

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_5
    instance-of v1, p1, Lcom/igexin/a/e/c/d;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/d;

    iget-object v2, p1, Lcom/igexin/a/e/c/d;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_6
    instance-of v1, p1, Lcom/igexin/a/e/c/n;

    if-eqz v1, :cond_7

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/n;

    iget-object v2, p1, Lcom/igexin/a/e/c/n;->g:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_7
    instance-of v1, p1, Lcom/igexin/a/e/c/a;

    if-eqz v1, :cond_8

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/a;

    iget-object v2, p1, Lcom/igexin/a/e/c/a;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_8
    instance-of v1, p1, Lcom/igexin/a/e/c/c;

    if-eqz v1, :cond_9

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    check-cast p1, Lcom/igexin/a/e/c/c;

    iget-object v2, p1, Lcom/igexin/a/e/c/c;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    :cond_9
    move-object v1, v2

    goto/16 :goto_0
.end method

.method private d()Z
    .locals 4

    sget-boolean v0, Lcom/igexin/a/a/i;->s:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Lcom/igexin/a/f/j;->f:J

    iget-wide v2, p0, Lcom/igexin/a/f/j;->g:J

    add-long/2addr v0, v2

    sget-wide v2, Lcom/igexin/a/a/i;->t:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->e:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private e()V
    .locals 11

    const/4 v8, 0x0

    const-string v0, "type"

    const-string v0, "loginerror_connecterror_count"

    const-string v0, "bi"

    const/4 v6, 0x0

    :try_start_0
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v0

    const-string v1, "bi"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "1"

    aput-object v5, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "loginerror_connecterror_count"

    add-int/lit8 v3, v8, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v2, "create_time"

    invoke-virtual {v1, v2, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "type"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v2

    const-string v3, "bi"

    invoke-virtual {v2, v3, v1}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_0
    return-void

    :goto_1
    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "create_time"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "loginerror_connecterror_count"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "loginerror_connecterror_count"

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v4

    const-string v5, "bi"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "id"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v4, v5, v2, v6, v8}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v1

    :goto_2
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_2
    :try_start_3
    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v4, "type"

    const-string v5, "2"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v4

    invoke-virtual {v4}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v4

    const-string v5, "bi"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "id"

    aput-object v9, v6, v8

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    invoke-virtual {v4, v5, v2, v6, v8}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;[Ljava/lang/String;[Ljava/lang/String;)V

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    const-string v3, "loginerror_connecterror_count"

    add-int/lit8 v4, v1, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "create_time"

    invoke-virtual {v2, v3, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    const-string v4, "1"

    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/f;->j()Lcom/igexin/a/c/b;

    move-result-object v3

    const-string v4, "bi"

    invoke-virtual {v3, v4, v2}, Lcom/igexin/a/c/b;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    move-object v10, v1

    move-object v1, v0

    move-object v0, v10

    :goto_3
    if-eqz v1, :cond_3

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v0

    :catchall_1
    move-exception v0

    move-object v1, v6

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v0, v6

    goto :goto_2

    :cond_4
    move v1, v8

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I
    .locals 11

    const-wide/16 v9, 0x8

    const/4 v2, 0x3

    const/4 v5, 0x1

    const/4 v8, -0x2

    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_1
    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    if-eqz v0, :cond_6

    iget v0, p2, Lcom/igexin/a/e/c/e;->i:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_2

    iget v0, p2, Lcom/igexin/a/e/c/e;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    iget v0, p2, Lcom/igexin/a/e/c/e;->i:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_2

    iget v0, p2, Lcom/igexin/a/e/c/e;->i:I

    if-nez v0, :cond_3

    :cond_2
    const/16 v0, 0xf

    sget v1, Lcom/igexin/a/a/i;->i:I

    if-lez v1, :cond_7

    sget v0, Lcom/igexin/a/a/i;->i:I

    move v6, v0

    :goto_1
    iget-object v0, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    sget-object v1, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/f;->e()Lcom/igexin/b/a/b/c;

    move-result-object v3

    new-instance v7, Lcom/igexin/a/e/b;

    invoke-direct {v7}, Lcom/igexin/a/e/b;-><init>()V

    move-object v4, p2

    invoke-virtual/range {v0 .. v7}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZILcom/igexin/b/a/d/a/g;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v8

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    sget-object v1, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v3

    invoke-virtual {v3}, Lcom/igexin/a/b/f;->e()Lcom/igexin/b/a/b/c;

    move-result-object v3

    move-object v4, p2

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;Z)Lcom/igexin/b/a/b/f;

    move-result-object v0

    if-nez v0, :cond_4

    move v0, v8

    goto :goto_0

    :cond_4
    invoke-virtual {p2}, Lcom/igexin/a/e/c/e;->d()[B

    move-result-object v0

    if-eqz v0, :cond_5

    iget-wide v1, p0, Lcom/igexin/a/f/j;->g:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v3, v9

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/igexin/a/f/j;->g:J

    :goto_2
    invoke-direct {p0}, Lcom/igexin/a/f/j;->d()Z

    const/4 v0, 0x0

    goto :goto_0

    :cond_5
    iget-wide v0, p0, Lcom/igexin/a/f/j;->g:J

    add-long/2addr v0, v9

    iput-wide v0, p0, Lcom/igexin/a/f/j;->g:J

    goto :goto_2

    :cond_6
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/igexin/a/f/c;->a(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I

    move-result v0

    goto :goto_0

    :cond_7
    move v6, v0

    goto :goto_1
.end method

.method public a(Landroid/content/Context;Lcom/igexin/b/a/b/d;Lcom/igexin/a/f/k;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/f/j;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    iput-object p3, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    return-void
.end method

.method public a(Lcom/igexin/a/e/c/e;)V
    .locals 8

    const-wide/16 v5, 0x8

    const-string v7, "S-"

    const-string v4, "R-"

    const-string v3, "C-"

    if-nez p1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    if-eqz v0, :cond_6

    invoke-direct {p0, p1}, Lcom/igexin/a/f/j;->b(Lcom/igexin/a/e/c/e;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "S-"

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "R-"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_2

    const-string v1, "C-"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "C-"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "R-"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/g;->B:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "S-"

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/igexin/a/b/g;->s:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    invoke-interface {v0, p1}, Lcom/igexin/a/f/k;->a(Lcom/igexin/a/e/c/e;)Z

    :cond_3
    :goto_1
    invoke-virtual {p1}, Lcom/igexin/a/e/c/e;->d()[B

    move-result-object v0

    if-eqz v0, :cond_5

    iget-wide v1, p0, Lcom/igexin/a/f/j;->f:J

    array-length v0, v0

    int-to-long v3, v0

    add-long/2addr v3, v5

    add-long v0, v1, v3

    iput-wide v0, p0, Lcom/igexin/a/f/j;->f:J

    :goto_2
    invoke-direct {p0}, Lcom/igexin/a/f/j;->d()Z

    goto/16 :goto_0

    :cond_4
    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v1

    invoke-virtual {v1, v0, p1}, Lcom/igexin/a/f/c;->b(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I

    goto :goto_1

    :cond_5
    iget-wide v0, p0, Lcom/igexin/a/f/j;->f:J

    add-long/2addr v0, v5

    iput-wide v0, p0, Lcom/igexin/a/f/j;->f:J

    goto :goto_2

    :cond_6
    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    invoke-interface {v0, p1}, Lcom/igexin/a/f/k;->a(Lcom/igexin/a/e/c/e;)Z

    goto/16 :goto_0
.end method

.method public a(Z)V
    .locals 5

    const/4 v4, 0x0

    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/igexin/a/f/j;->e:Z

    iput-boolean v4, p0, Lcom/igexin/a/f/j;->h:Z

    if-eqz p1, :cond_1

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/igexin/a/f/j;->g:J

    iput-wide v0, p0, Lcom/igexin/a/f/j;->f:J

    iget-object v0, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    new-instance v1, Lcom/igexin/a/e/b/b;

    invoke-direct {v1}, Lcom/igexin/a/e/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/f/j;->c:Lcom/igexin/b/a/b/d;

    sget-object v1, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    const-string v2, "socket"

    const-string v3, "disConnect"

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v4, v2}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;)Lcom/igexin/b/a/b/f;

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    return v0
.end method

.method public b()V
    .locals 2

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/a/b/g;->E:J

    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    invoke-interface {v0}, Lcom/igexin/a/f/k;->b()V

    goto :goto_0
.end method

.method public b(Z)V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_3

    const-string v0, "disconnected|network"

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/i;->a()Lcom/igexin/a/b/i;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/k;->c:Lcom/igexin/a/b/k;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/i;->a(Lcom/igexin/a/b/k;)V

    invoke-static {}, Lcom/igexin/a/b/d/n;->d()V

    invoke-static {}, Lcom/igexin/a/b/d/n;->a()V

    invoke-direct {p0}, Lcom/igexin/a/f/j;->e()V

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-ne v0, v2, :cond_0

    sput-boolean v3, Lcom/igexin/a/b/g;->n:Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->m()V

    :cond_0
    invoke-virtual {p0, v2}, Lcom/igexin/a/f/j;->c(Z)V

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/igexin/a/f/j;->e:Z

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/c;->b()Z

    :cond_2
    :goto_1
    return-void

    :cond_3
    const-string v0, "disconnected|user"

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/d/n;->d()V

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-ne v0, v2, :cond_1

    sput-boolean v3, Lcom/igexin/a/b/g;->n:Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->m()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/a/f/j;->d:Lcom/igexin/a/f/k;

    invoke-interface {v0, p1}, Lcom/igexin/a/f/k;->a(Z)V

    goto :goto_1
.end method

.method public c()J
    .locals 2

    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    return-wide v0
.end method

.method public c(Z)V
    .locals 8

    const-wide/16 v6, 0x0

    const-wide/32 v4, 0x36ee80

    if-eqz p1, :cond_0

    sput-wide v6, Lcom/igexin/a/b/g;->E:J

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/a/f;->a(J)Z

    move-result v0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/a/f;->n()Z

    move-result v1

    sget-boolean v2, Lcom/igexin/a/b/g;->k:Z

    if-eqz v2, :cond_1

    sget-boolean v2, Lcom/igexin/a/b/g;->l:Z

    if-eqz v2, :cond_1

    if-nez v0, :cond_1

    if-nez v1, :cond_2

    :cond_1
    sput-wide v4, Lcom/igexin/a/b/g;->E:J

    :goto_0
    invoke-static {}, Lcom/igexin/a/g/b/f;->g()Lcom/igexin/a/g/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/g/b/f;->h()V

    return-void

    :cond_2
    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    cmp-long v0, v0, v6

    if-gtz v0, :cond_4

    const-wide/16 v0, 0x3e8

    sput-wide v0, Lcom/igexin/a/b/g;->E:J

    :goto_1
    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    sput-wide v4, Lcom/igexin/a/b/g;->E:J

    :cond_3
    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/f/j;->a(J)J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/b/g;->E:J

    goto :goto_0

    :cond_4
    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-gtz v0, :cond_5

    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    const-wide/16 v2, 0x2710

    add-long/2addr v0, v2

    sput-wide v0, Lcom/igexin/a/b/g;->E:J

    goto :goto_1

    :cond_5
    sget-wide v0, Lcom/igexin/a/b/g;->E:J

    const-wide/32 v2, 0x1d4c0

    add-long/2addr v0, v2

    sput-wide v0, Lcom/igexin/a/b/g;->E:J

    goto :goto_1
.end method
