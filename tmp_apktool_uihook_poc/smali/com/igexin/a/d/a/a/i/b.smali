.class Lcom/igexin/a/d/a/a/i/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/igexin/a/d/a/a/i/a;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/a/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    const/4 v4, 0x0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/i/a;->a(Lcom/igexin/a/d/a/a/i/a;)Ljava/lang/String;

    move-result-object v2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/i/a;->b(Lcom/igexin/a/d/a/a/i/a;)Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/i/a;->c(Lcom/igexin/a/d/a/a/i/a;)Lcom/igexin/a/d/a/a/b/e;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/d/a/a/b/b;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/b;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0, v4}, Lcom/igexin/a/d/a/a/i/a;->a(Lcom/igexin/a/d/a/a/i/a;Z)Z

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/b;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/i/a;->d(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
