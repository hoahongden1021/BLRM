.class public Lcom/igexin/a/d/a/b/f/a;
.super Lcom/igexin/a/g/b/h;


# static fields
.field private static a:Lcom/igexin/a/d/a/b/f/a;

.field private static c:Landroid/content/Context;

.field private static d:Ljava/util/ArrayList;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igexin/a/d/a/b/f/a;->d:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/d/a/b/f/a;->A:Z

    sget-object v0, Lcom/igexin/a/d/a/b/b/a;->a:Landroid/content/Context;

    sput-object v0, Lcom/igexin/a/d/a/b/f/a;->c:Landroid/content/Context;

    sget-object v0, Lcom/igexin/a/d/a/b/f/a;->d:Ljava/util/ArrayList;

    new-instance v1, Lcom/igexin/a/d/a/b/a/b;

    sget-object v2, Lcom/igexin/a/d/a/b/f/a;->c:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/igexin/a/d/a/b/a/b;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/igexin/a/d/a/b/f/a;->h()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 6

    const/4 v5, 0x0

    const-string v3, " "

    const-string v0, " "

    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "mm HH dd MM yy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/util/Date;

    invoke-direct {v2}, Ljava/util/Date;-><init>()V

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    move v2, v5

    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    aget-object v3, v0, v2

    const-string v4, "*"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    aget-object v3, v0, v2

    const-string v4, "*/"

    invoke-virtual {v3, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    aget-object v3, v0, v2

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    if-lez v3, :cond_0

    aget-object v4, v1, v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    rem-int v3, v4, v3

    if-eqz v3, :cond_0

    move v0, v5

    :goto_1
    return v0

    :cond_2
    aget-object v3, v1, v2

    aget-object v4, v0, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    move v0, v5

    goto :goto_1

    :cond_3
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public static g()Lcom/igexin/a/d/a/b/f/a;
    .locals 1

    sget-object v0, Lcom/igexin/a/d/a/b/f/a;->a:Lcom/igexin/a/d/a/b/f/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/d/a/b/f/a;

    invoke-direct {v0}, Lcom/igexin/a/d/a/b/f/a;-><init>()V

    sput-object v0, Lcom/igexin/a/d/a/b/f/a;->a:Lcom/igexin/a/d/a/b/f/a;

    :cond_0
    sget-object v0, Lcom/igexin/a/d/a/b/f/a;->a:Lcom/igexin/a/d/a/b/f/a;

    return-object v0
.end method

.method private j()J
    .locals 6

    new-instance v0, Ljava/util/Date;

    invoke-direct {v0}, Ljava/util/Date;-><init>()V

    new-instance v1, Ljava/util/Date;

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    sget-wide v4, Lcom/igexin/a/d/a/b/b/a;->c:J

    sub-long/2addr v2, v4

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v2, "mm"

    invoke-direct {v0, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, v1

    const/16 v1, 0xe10

    rem-int/2addr v0, v1

    sub-int v0, v1, v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    return-wide v0
.end method


# virtual methods
.method public a_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/a/g/b/h;->c()V

    iget-boolean v0, p0, Lcom/igexin/a/d/a/b/f/a;->x:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/igexin/a/d/a/b/f/a;->h()V

    :cond_0
    return-void
.end method

.method public h()V
    .locals 3

    invoke-direct {p0}, Lcom/igexin/a/d/a/b/f/a;->j()J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/d/a/b/f/a;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void
.end method

.method protected i()V
    .locals 7

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sget-object v0, Lcom/igexin/a/d/a/b/f/a;->d:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/d/a/b/a/a;

    invoke-interface {v0}, Lcom/igexin/a/d/a/b/a/a;->b()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/igexin/a/d/a/b/f/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    invoke-interface {v0}, Lcom/igexin/a/d/a/b/a/a;->c()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/igexin/a/d/a/b/f/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/d/a/b/a/a;

    sget-object v1, Lcom/igexin/a/d/a/b/f/a;->c:Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/igexin/a/d/a/b/a/a;->a(Landroid/content/Context;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/d/a/b/a/a;

    sget-object v1, Lcom/igexin/a/d/a/b/f/a;->c:Landroid/content/Context;

    invoke-interface {p0, v1}, Lcom/igexin/a/d/a/b/a/a;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "GBD"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "bitype:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {p0}, Lcom/igexin/a/d/a/b/a/a;->a()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " bidata:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v2, Lcom/igexin/a/g/a/c;

    new-instance v3, Lcom/igexin/a/d/a/b/d/a;

    invoke-static {}, Lcom/igexin/a/b/g;->a()Ljava/lang/String;

    move-result-object v4

    const-string v5, "UTF-8"

    invoke-virtual {v1, v5}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v1

    invoke-interface {p0}, Lcom/igexin/a/d/a/b/a/a;->a()I

    move-result v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v1, v5, v6}, Lcom/igexin/a/d/a/b/d/a;-><init>(Ljava/lang/String;[BIZ)V

    invoke-direct {v2, v3}, Lcom/igexin/a/g/a/c;-><init>(Lcom/igexin/a/g/a/b;)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_5
    return-void
.end method
