.class Lcom/igexin/a/f/d;
.super Lcom/igexin/a/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/a/f/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/f/c;J)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/f/d;->a:Lcom/igexin/a/f/c;

    invoke-direct {p0, p2, p3}, Lcom/igexin/a/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a_()I
    .locals 1

    const/16 v0, 0x7f63

    return v0
.end method

.method protected i()V
    .locals 2

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->b:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    iget-object v1, p0, Lcom/igexin/a/f/d;->a:Lcom/igexin/a/f/c;

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    return-void
.end method
