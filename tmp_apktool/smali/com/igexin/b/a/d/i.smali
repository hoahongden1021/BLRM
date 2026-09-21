.class final Lcom/igexin/b/a/d/i;
.super Ljava/lang/Thread;


# instance fields
.field volatile a:Z

.field b:Lcom/igexin/b/a/d/f;

.field final synthetic c:Lcom/igexin/b/a/d/e;


# direct methods
.method public constructor <init>(Lcom/igexin/b/a/d/e;)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/b/a/d/i;->a:Z

    const-string v0, "taskService-processor"

    invoke-virtual {p0, v0}, Lcom/igexin/b/a/d/i;->setName(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v0, -0x2

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    iget-object v0, v0, Lcom/igexin/b/a/d/e;->m:Lcom/igexin/b/a/d/c;

    move v1, v4

    move-object v2, v5

    :goto_0
    iget-boolean v3, p0, Lcom/igexin/b/a/d/i;->a:Z

    if-eqz v3, :cond_b

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    :try_start_0
    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->d()V

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->q()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igexin/b/a/d/i;->b:Lcom/igexin/b/a/d/f;

    if-nez v1, :cond_0

    new-instance v1, Lcom/igexin/b/a/d/f;

    iget-object v3, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-direct {v1, v3}, Lcom/igexin/b/a/d/f;-><init>(Lcom/igexin/b/a/d/e;)V

    iput-object v1, p0, Lcom/igexin/b/a/d/i;->b:Lcom/igexin/b/a/d/f;

    :cond_0
    iget-object v1, p0, Lcom/igexin/b/a/d/i;->b:Lcom/igexin/b/a/d/f;

    invoke-virtual {v1, v2}, Lcom/igexin/b/a/d/f;->a(Lcom/igexin/b/a/d/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v4

    move-object v2, v5

    goto :goto_0

    :catch_0
    move-exception v1

    move v1, v4

    goto :goto_0

    :cond_1
    :pswitch_1
    :try_start_1
    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->b()V

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->t()V

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->v()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    iget-object v1, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/b/a/d/e;->h()V

    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->F:Z

    if-nez v1, :cond_2

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->c()V

    :cond_2
    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->x:Z

    if-nez v1, :cond_3

    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->B:Z

    if-nez v1, :cond_3

    iput v6, v2, Lcom/igexin/b/a/d/d;->M:I

    invoke-virtual {v0, v2}, Lcom/igexin/b/a/d/c;->a(Lcom/igexin/b/a/d/d;)Z

    :cond_3
    move v1, v4

    move-object v2, v5

    :goto_1
    :pswitch_2
    :try_start_2
    invoke-virtual {v0}, Lcom/igexin/b/a/d/c;->c()Lcom/igexin/b/a/d/d;
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v2

    :goto_2
    if-eqz v2, :cond_a

    iget-boolean v3, v2, Lcom/igexin/b/a/d/d;->x:Z

    if-nez v3, :cond_4

    iget-boolean v3, v2, Lcom/igexin/b/a/d/d;->y:Z

    if-eqz v3, :cond_9

    :cond_4
    move-object v2, v5

    goto :goto_0

    :catch_1
    move-exception v1

    const/4 v3, 0x1

    :try_start_3
    iput-boolean v3, v2, Lcom/igexin/b/a/d/d;->F:Z

    iput-object v1, v2, Lcom/igexin/b/a/d/d;->N:Ljava/lang/Exception;

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->w()V

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->p()V

    iget-object v1, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    iget-object v1, v1, Lcom/igexin/b/a/d/e;->l:Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v1, v2}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    iget-object v1, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {v1}, Lcom/igexin/b/a/d/e;->h()V

    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->F:Z

    if-nez v1, :cond_5

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->c()V

    :cond_5
    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->x:Z

    if-nez v1, :cond_6

    iget-boolean v1, v2, Lcom/igexin/b/a/d/d;->B:Z

    if-nez v1, :cond_6

    iput v6, v2, Lcom/igexin/b/a/d/d;->M:I

    invoke-virtual {v0, v2}, Lcom/igexin/b/a/d/c;->a(Lcom/igexin/b/a/d/d;)Z

    :cond_6
    move v1, v4

    move-object v2, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    iget-object v3, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {v3}, Lcom/igexin/b/a/d/e;->h()V

    iget-boolean v3, v2, Lcom/igexin/b/a/d/d;->F:Z

    if-nez v3, :cond_7

    invoke-virtual {v2}, Lcom/igexin/b/a/d/d;->c()V

    :cond_7
    iget-boolean v3, v2, Lcom/igexin/b/a/d/d;->x:Z

    if-nez v3, :cond_8

    iget-boolean v3, v2, Lcom/igexin/b/a/d/d;->B:Z

    if-nez v3, :cond_8

    iput v6, v2, Lcom/igexin/b/a/d/d;->M:I

    invoke-virtual {v0, v2}, Lcom/igexin/b/a/d/c;->a(Lcom/igexin/b/a/d/d;)Z

    :cond_8
    throw v1

    :cond_9
    const/4 v1, -0x1

    goto/16 :goto_0

    :cond_a
    :pswitch_3
    move-object v1, v2

    iget-object v2, p0, Lcom/igexin/b/a/d/i;->c:Lcom/igexin/b/a/d/e;

    invoke-virtual {v2}, Lcom/igexin/b/a/d/e;->h()V

    move-object v2, v1

    move v1, v4

    goto/16 :goto_0

    :cond_b
    invoke-virtual {v0}, Lcom/igexin/b/a/d/c;->d()V

    return-void

    :catch_2
    move-exception v3

    goto :goto_2

    nop

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
