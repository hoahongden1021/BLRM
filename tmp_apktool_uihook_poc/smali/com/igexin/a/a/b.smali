.class Lcom/igexin/a/a/b;
.super Lcom/igexin/a/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/a/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/b;->a:Lcom/igexin/a/a/a;

    invoke-direct {p0}, Lcom/igexin/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 5

    iget-object v0, p0, Lcom/igexin/a/a/b;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x1

    const-string v3, "silentBegin"

    sget v4, Lcom/igexin/a/a/i;->e:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/b;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/b;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x2

    const-string v3, "silentDuration"

    sget v4, Lcom/igexin/a/a/i;->f:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
