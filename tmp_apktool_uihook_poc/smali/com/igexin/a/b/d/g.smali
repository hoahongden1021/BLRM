.class Lcom/igexin/a/b/d/g;
.super Lcom/igexin/a/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/d/f;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/d/g;->a:Lcom/igexin/a/b/d/f;

    invoke-direct {p0}, Lcom/igexin/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/b/d/g;->a:Lcom/igexin/a/b/d/f;

    iget-object v1, p0, Lcom/igexin/a/b/d/g;->c:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/d/f;->c(Landroid/database/sqlite/SQLiteDatabase;)V

    iget-object v0, p0, Lcom/igexin/a/b/d/g;->a:Lcom/igexin/a/b/d/f;

    invoke-static {v0}, Lcom/igexin/a/b/d/f;->a(Lcom/igexin/a/b/d/f;)V

    iget-object v0, p0, Lcom/igexin/a/b/d/g;->a:Lcom/igexin/a/b/d/f;

    invoke-static {v0}, Lcom/igexin/a/b/d/f;->b(Lcom/igexin/a/b/d/f;)V

    return-void
.end method
