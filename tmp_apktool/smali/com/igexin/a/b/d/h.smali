.class Lcom/igexin/a/b/d/h;
.super Lcom/igexin/a/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/d/f;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/d/h;->a:Lcom/igexin/a/b/d/f;

    invoke-direct {p0}, Lcom/igexin/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/d/h;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "session"

    sget-wide v4, Lcom/igexin/a/b/g;->s:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-static {v4}, Lcom/igexin/a/h/b;->a([B)[B

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/b/d/f;->a(Lcom/igexin/a/b/d/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;[B)V

    iget-object v0, p0, Lcom/igexin/a/b/d/h;->a:Lcom/igexin/a/b/d/f;

    invoke-static {v0}, Lcom/igexin/a/b/d/f;->a(Lcom/igexin/a/b/d/f;)V

    return-void
.end method
