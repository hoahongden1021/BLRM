.class public abstract Lcom/igexin/a/g/b/h;
.super Lcom/igexin/b/a/d/d;


# instance fields
.field b:J


# direct methods
.method public constructor <init>(J)V
    .locals 2

    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/igexin/a/g/b/h;-><init>(JJ)V

    return-void
.end method

.method public constructor <init>(JJ)V
    .locals 3

    const/4 v0, 0x5

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/d;-><init>(I)V

    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-gtz v0, :cond_0

    move-wide v0, p3

    :goto_0
    iput-wide v0, p0, Lcom/igexin/a/g/b/h;->b:J

    iget-wide v0, p0, Lcom/igexin/a/g/b/h;->b:J

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p0, v0, v1, v2}, Lcom/igexin/a/g/b/h;->a(JLjava/util/concurrent/TimeUnit;)I

    return-void

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long v0, p1, v0

    add-long/2addr v0, p3

    goto :goto_0
.end method


# virtual methods
.method public final b()V
    .locals 0

    invoke-super {p0}, Lcom/igexin/b/a/d/d;->b()V

    invoke-virtual {p0}, Lcom/igexin/a/g/b/h;->i()V

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method protected abstract i()V
.end method
