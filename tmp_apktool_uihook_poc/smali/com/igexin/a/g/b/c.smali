.class public Lcom/igexin/a/g/b/c;
.super Lcom/igexin/a/g/b/h;


# instance fields
.field private a:Lcom/igexin/a/b/b/e;

.field private c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/igexin/a/b/b/e;Ljava/lang/String;J)V
    .locals 1

    invoke-direct {p0, p3, p4}, Lcom/igexin/a/g/b/h;-><init>(J)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/a/g/b/c;->A:Z

    iput-object p1, p0, Lcom/igexin/a/g/b/c;->a:Lcom/igexin/a/b/b/e;

    iput-object p2, p0, Lcom/igexin/a/g/b/c;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public c()V
    .locals 0

    invoke-super {p0}, Lcom/igexin/a/g/b/h;->c()V

    return-void
.end method

.method protected i()V
    .locals 3

    const-string v0, "FeedbackRetryTimerTask"

    const-string v1, "------sdk createRetrySendTimer feedbackCDNMessageAction begin... "

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/g/b/c;->a:Lcom/igexin/a/b/b/e;

    iget-object v2, p0, Lcom/igexin/a/g/b/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/a/f;->b(Lcom/igexin/a/b/b/e;Ljava/lang/String;)V

    return-void
.end method
