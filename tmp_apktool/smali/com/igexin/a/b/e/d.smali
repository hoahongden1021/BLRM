.class Lcom/igexin/a/b/e/d;
.super Ljava/util/TimerTask;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/b/e;

.field final synthetic b:Lcom/igexin/a/e/c/a;

.field final synthetic c:Lcom/igexin/a/b/e/b;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/e/b;Lcom/igexin/a/b/b/e;Lcom/igexin/a/e/c/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/e/d;->c:Lcom/igexin/a/b/e/b;

    iput-object p2, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    iput-object p3, p0, Lcom/igexin/a/b/e/d;->b:Lcom/igexin/a/e/c/a;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    sget-object v0, Lcom/igexin/a/b/g;->Z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    invoke-virtual {v1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/g;->Z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    invoke-virtual {v1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    sget-object v0, Lcom/igexin/a/b/g;->Z:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    invoke-virtual {v1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/e/d;->c:Lcom/igexin/a/b/e/b;

    iget-object v1, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    iget-object v2, p0, Lcom/igexin/a/b/e/d;->b:Lcom/igexin/a/e/c/a;

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/e/b;->a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/e/c/a;)V

    iget-object v0, p0, Lcom/igexin/a/b/e/d;->b:Lcom/igexin/a/e/c/a;

    iget-object v1, p0, Lcom/igexin/a/b/e/d;->b:Lcom/igexin/a/e/c/a;

    invoke-virtual {v1}, Lcom/igexin/a/e/c/a;->c()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/a/e/c/a;->b(I)V

    const-string v0, "HttpPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------sdk retry sendRetrieveCDNMessage to CM....."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/b/e/d;->b:Lcom/igexin/a/e/c/a;

    invoke-virtual {v2}, Lcom/igexin/a/e/c/a;->c()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " times "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " messageID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/b/e/d;->a:Lcom/igexin/a/b/b/e;

    invoke-virtual {v2}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
