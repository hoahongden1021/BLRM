.class Lcom/igexin/a/b/e/c;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/e/b;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/e/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v1}, Lcom/igexin/a/b/e/b;->a(Lcom/igexin/a/b/e/b;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v2}, Lcom/igexin/a/b/e/b;->b(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/e/c/a;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v3}, Lcom/igexin/a/b/e/b;->c(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/b/b/e;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Lcom/igexin/a/e/c/a;Lcom/igexin/a/b/b/e;)V

    iget-object v0, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v0}, Lcom/igexin/a/b/e/b;->b(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/e/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v1}, Lcom/igexin/a/b/e/b;->b(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/e/c/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/e/c/a;->b()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/a/e/c/a;->a(I)V

    const-string v0, "HttpPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------sdk retryHttpTask url:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v2}, Lcom/igexin/a/b/e/b;->a(Lcom/igexin/a/b/e/b;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/b/e/c;->a:Lcom/igexin/a/b/e/b;

    invoke-static {v2}, Lcom/igexin/a/b/e/b;->b(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/e/c/a;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/e/c/a;->b()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
