.class public Lcom/igexin/a/b/d/n;
.super Ljava/lang/Object;


# static fields
.field private static a:I

.field private static b:I

.field private static c:Ljava/util/List;

.field private static d:Lcom/igexin/a/b/d/p;

.field private static e:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput v1, Lcom/igexin/a/b/d/n;->a:I

    sput v1, Lcom/igexin/a/b/d/n;->b:I

    sget-object v0, Lcom/igexin/a/b/d/p;->a:Lcom/igexin/a/b/d/p;

    sput-object v0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    sput v1, Lcom/igexin/a/b/d/n;->e:I

    return-void
.end method

.method public static a()V
    .locals 2

    invoke-static {}, Lcom/igexin/a/b/d/n;->e()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/igexin/a/a/i;->j:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    sget-object v1, Lcom/igexin/a/b/d/p;->b:Lcom/igexin/a/b/d/p;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/igexin/a/b/d/n;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v1, Lcom/igexin/a/a/i;->c:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v0, Lcom/igexin/a/a/i;->c:[Ljava/lang/String;

    sget v1, Lcom/igexin/a/b/d/n;->a:I

    aget-object v0, v0, v1

    :cond_0
    :goto_0
    sput-object v0, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    return-void

    :cond_1
    sget v0, Lcom/igexin/a/b/d/n;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v1, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v0, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    sget v1, Lcom/igexin/a/b/d/n;->a:I

    aget-object v0, v0, v1

    goto :goto_0

    :cond_2
    sget v0, Lcom/igexin/a/b/d/n;->a:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v1, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    array-length v1, v1

    rem-int/2addr v0, v1

    sput v0, Lcom/igexin/a/b/d/n;->a:I

    sget-object v0, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    sget v1, Lcom/igexin/a/b/d/n;->a:I

    aget-object v0, v0, v1

    goto :goto_0
.end method

.method private static a(Lcom/igexin/a/b/d/p;)V
    .locals 4

    const/4 v3, 0x0

    sget-boolean v0, Lcom/igexin/a/a/i;->j:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    if-eq v0, p0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Ljava/util/List;)V

    :cond_0
    sget-object v0, Lcom/igexin/a/b/d/o;->a:[I

    invoke-virtual {p0}, Lcom/igexin/a/b/d/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    sput-object p0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    :cond_1
    return-void

    :pswitch_0
    sget-object v0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    if-eq v0, p0, :cond_2

    sput v3, Lcom/igexin/a/b/d/n;->e:I

    :cond_2
    :pswitch_1
    sget-object v0, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/a/i;->b:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    if-eq v0, p0, :cond_3

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/a/b/d/f;->d(J)Z

    :cond_3
    sget-object v0, Lcom/igexin/a/a/i;->c:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/a/i;->d:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->b:Ljava/lang/String;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public static a(Ljava/util/List;)V
    .locals 1

    sput-object p0, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    const/4 v0, 0x0

    sput v0, Lcom/igexin/a/b/d/n;->b:I

    return-void
.end method

.method public static b()V
    .locals 4

    sget-object v0, Lcom/igexin/a/b/d/o;->a:[I

    sget-object v1, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    invoke-virtual {v1}, Lcom/igexin/a/b/d/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->O:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/d/p;->c:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public static c()V
    .locals 3

    sget-object v0, Lcom/igexin/a/b/d/o;->a:[I

    sget-object v1, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    invoke-virtual {v1}, Lcom/igexin/a/b/d/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/a/b/d/f;->b(J)Z

    goto :goto_0

    :pswitch_2
    sget-object v0, Lcom/igexin/a/b/d/p;->a:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static d()V
    .locals 3

    invoke-static {}, Lcom/igexin/a/b/d/n;->f()V

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/igexin/a/b/d/f;->b(J)Z

    :cond_0
    sget-object v0, Lcom/igexin/a/b/d/o;->a:[I

    sget-object v1, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    invoke-virtual {v1}, Lcom/igexin/a/b/d/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_1
    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    sget v0, Lcom/igexin/a/b/d/n;->e:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/igexin/a/b/d/n;->e:I

    const/16 v1, 0xa

    if-lt v0, v1, :cond_1

    sget-object v0, Lcom/igexin/a/b/d/p;->b:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static e()Ljava/lang/String;
    .locals 5

    sget-object v0, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    if-eqz v0, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    :goto_0
    sget-object v0, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    sget v0, Lcom/igexin/a/b/d/n;->b:I

    sget-object v3, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    sput v0, Lcom/igexin/a/b/d/n;->b:I

    :cond_0
    sget-object v0, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    sget v3, Lcom/igexin/a/b/d/n;->b:I

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/b/d/q;

    iget-wide v3, v0, Lcom/igexin/a/b/d/q;->b:J

    cmp-long v3, v3, v1

    if-gez v3, :cond_1

    sget-object v3, Lcom/igexin/a/b/d/n;->c:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    sget v1, Lcom/igexin/a/b/d/n;->b:I

    add-int/lit8 v1, v1, 0x1

    sput v1, Lcom/igexin/a/b/d/n;->b:I

    iget-object v0, v0, Lcom/igexin/a/b/d/q;->a:Ljava/lang/String;

    :goto_1
    return-object v0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private static f()V
    .locals 8

    const-wide/32 v6, 0x5265c00

    sget-object v0, Lcom/igexin/a/b/d/o;->a:[I

    sget-object v1, Lcom/igexin/a/b/d/n;->d:Lcom/igexin/a/b/d/p;

    invoke-virtual {v1}, Lcom/igexin/a/b/d/p;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->N:J

    sub-long v2, v0, v2

    const-wide/32 v4, 0x4d3f6400

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    sget-wide v2, Lcom/igexin/a/b/g;->O:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    sget-object v0, Lcom/igexin/a/b/d/p;->c:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/igexin/a/b/d/p;->b:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->O:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/d/p;->c:Lcom/igexin/a/b/d/p;

    invoke-static {v0}, Lcom/igexin/a/b/d/n;->a(Lcom/igexin/a/b/d/p;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
