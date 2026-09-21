.class Lcom/igexin/a/d/a/a/a/g;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/d/a/a/f/c;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/igexin/a/d/a/a/a/f;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/a/a/f;Lcom/igexin/a/b/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/a/g;->f:Lcom/igexin/a/d/a/a/a/f;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    iput-object p3, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/a/d/a/a/a/g;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/igexin/a/d/a/a/a/g;->d:Ljava/lang/String;

    iput p6, p0, Lcom/igexin/a/d/a/a/a/g;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/b/b/b;)V
    .locals 5

    const/4 v3, 0x1

    sget-boolean v1, Lcom/igexin/a/d/a/a/f/b;->a:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/igexin/a/d/a/a/a/g;->e:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v1, Lcom/igexin/a/b/b/d;

    invoke-virtual {v1, v3}, Lcom/igexin/a/b/b/d;->d(Z)V

    :cond_0
    :goto_0
    move-object v0, p1

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/a/b/b/d;->n()Z

    move-result v1

    if-eqz v1, :cond_1

    check-cast p1, Lcom/igexin/a/b/b/d;

    invoke-virtual {p1}, Lcom/igexin/a/b/b/d;->o()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/igexin/a/b/g;->a(Ljava/lang/String;Z)I

    move-result v1

    if-nez v1, :cond_1

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/a/g;->c:Ljava/lang/String;

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void

    :cond_2
    iget v1, p0, Lcom/igexin/a/d/a/a/a/g;->e:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v1, Lcom/igexin/a/b/b/d;

    invoke-virtual {v1, v3}, Lcom/igexin/a/b/b/d;->e(Z)V

    goto :goto_0
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 6

    const/4 v2, 0x3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0}, Lcom/igexin/a/b/b/d;->p()I

    move-result v0

    if-lt v0, v2, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->d(Z)V

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0}, Lcom/igexin/a/b/b/d;->q()I

    move-result v0

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->e(Z)V

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0}, Lcom/igexin/a/b/b/d;->n()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/b/b/d;

    invoke-virtual {v0}, Lcom/igexin/a/b/b/d;->o()Z

    move-result v0

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/igexin/a/b/g;->a(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_2

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/g;->c:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    :goto_0
    return-void

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/g;->f:Lcom/igexin/a/d/a/a/a/f;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/g;->d:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/g;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/a/g;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/a/d/a/a/a/g;->a:Lcom/igexin/a/b/b/b;

    iget v5, p0, Lcom/igexin/a/d/a/a/a/g;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/a/d/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    goto :goto_0
.end method
