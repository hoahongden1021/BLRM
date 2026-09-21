.class public Lcom/igexin/a/b/a/j;
.super Lcom/igexin/a/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 9

    const-wide/32 v7, 0x5265c00

    const/4 v6, 0x1

    const-wide/16 v4, 0x0

    const-string v2, "loginRsp|"

    instance-of v0, p1, Lcom/igexin/a/e/c/k;

    if-eqz v0, :cond_7

    sget-boolean v0, Lcom/igexin/a/b/g;->n:Z

    if-nez v0, :cond_7

    invoke-static {}, Lcom/igexin/a/b/d/n;->c()V

    check-cast p1, Lcom/igexin/a/e/c/k;

    iget-boolean v0, p1, Lcom/igexin/a/e/c/k;->a:Z

    if-eqz v0, :cond_8

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginRsp|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|success"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->g()V

    sput-boolean v6, Lcom/igexin/a/b/g;->n:Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->m()V

    sget-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->h()V

    :cond_0
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->J:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xf731400

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_2

    sget-boolean v0, Lcom/igexin/a/a/i;->l:Z

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->o()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/a/f;->q()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-wide v0, Lcom/igexin/a/b/g;->J:J

    cmp-long v0, v0, v4

    if-nez v0, :cond_2

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/b/g;->J:J

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->p()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :cond_2
    :goto_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->I:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-lez v0, :cond_3

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->j()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_3
    :goto_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->H:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-lez v0, :cond_4

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/a/f;->b(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->i()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/b/g;->H:J

    :cond_4
    sget-boolean v0, Lcom/igexin/a/b/g;->o:Z

    if-nez v0, :cond_5

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->l()V

    sput-boolean v6, Lcom/igexin/a/b/g;->o:Z

    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget-wide v2, Lcom/igexin/a/b/g;->L:J

    sub-long/2addr v0, v2

    sub-long/2addr v0, v7

    cmp-long v0, v0, v4

    if-lez v0, :cond_6

    new-instance v0, Lcom/igexin/a/g/a/c;

    new-instance v1, Lcom/igexin/a/b/e/e;

    invoke-static {}, Lcom/igexin/a/b/g;->a()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/igexin/a/b/e/e;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/igexin/a/g/a/c;-><init>(Lcom/igexin/a/g/a/b;)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_6
    :goto_2
    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/d/f;->b()V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->g()Lcom/igexin/a/f/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/f/c;->a()Z

    :cond_7
    :goto_3
    return v6

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "loginRsp|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|failed"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Lcom/igexin/a/b/d/f;->a(J)Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->e()V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/e/b/b;

    invoke-direct {v1}, Lcom/igexin/a/e/b/b;-><init>()V

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    goto :goto_3

    :catch_0
    move-exception v0

    goto :goto_2

    :catch_1
    move-exception v0

    goto/16 :goto_1

    :catch_2
    move-exception v0

    goto/16 :goto_0
.end method
