.class Lcom/igexin/a/f/e;
.super Lcom/igexin/a/g/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/a/f/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/f/c;J)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/f/e;->a:Lcom/igexin/a/f/c;

    invoke-direct {p0, p2, p3}, Lcom/igexin/a/g/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a_()I
    .locals 1

    const/16 v0, 0x7fc7

    return v0
.end method

.method protected i()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/f/e;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/c;)V

    return-void
.end method
