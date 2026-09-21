.class Lcom/igexin/a/d/a/a/a/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/d/a/a/f/c;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/b/b;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:I

.field final synthetic f:Lcom/igexin/a/d/a/a/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/a/a/a;Lcom/igexin/a/b/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/a/b;->f:Lcom/igexin/a/d/a/a/a/a;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/a/b;->a:Lcom/igexin/a/b/b/b;

    iput-object p3, p0, Lcom/igexin/a/d/a/a/a/b;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    iput-object p5, p0, Lcom/igexin/a/d/a/a/a/b;->d:Ljava/lang/String;

    iput p6, p0, Lcom/igexin/a/d/a/a/a/b;->e:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/a/b/b/b;)V
    .locals 4

    sget-boolean v0, Lcom/igexin/a/d/a/a/f/b;->a:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igexin/a/b/g;->a(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/b;->d:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 6

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/b;->a:Lcom/igexin/a/b/b/b;

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/a;->o()I

    move-result v0

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/b;->f:Lcom/igexin/a/d/a/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/b;->b:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/a/b;->d:Ljava/lang/String;

    iget-object v4, p0, Lcom/igexin/a/d/a/a/a/b;->a:Lcom/igexin/a/b/b/b;

    iget v5, p0, Lcom/igexin/a/d/a/a/a/b;->e:I

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/a/d/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/igexin/a/b/g;->a(Ljava/lang/String;Z)I

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/a/b;->c:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/a/b;->d:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0
.end method
