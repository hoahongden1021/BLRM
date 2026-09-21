.class Lcom/igexin/a/b/d/l;
.super Lcom/igexin/a/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/d/f;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/d/f;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/d/l;->a:Lcom/igexin/a/b/d/f;

    invoke-direct {p0}, Lcom/igexin/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/d/l;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x7

    const-string v3, "lastUpdateCAPermissionTime"

    sget-wide v4, Lcom/igexin/a/b/g;->I:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/b/d/f;->a(Lcom/igexin/a/b/d/f;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
