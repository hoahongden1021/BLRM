.class Lcom/igexin/a/a/f;
.super Lcom/igexin/a/c/d;


# instance fields
.field final synthetic a:Lcom/igexin/a/a/a;


# direct methods
.method constructor <init>(Lcom/igexin/a/a/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    invoke-direct {p0}, Lcom/igexin/a/c/d;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 6

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x4

    const-string v3, "doMainBackUp"

    sget-boolean v4, Lcom/igexin/a/a/i;->j:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x5

    const-string v3, "readLocalCell"

    sget-boolean v4, Lcom/igexin/a/a/i;->k:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x6

    const-string v3, "uploadAppList"

    sget-boolean v4, Lcom/igexin/a/a/i;->l:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x7

    const-string v3, "sendMessage"

    sget-boolean v4, Lcom/igexin/a/a/i;->m:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x8

    const-string v3, "setTag"

    sget-boolean v4, Lcom/igexin/a/a/i;->n:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x9

    const-string v3, "setSilentTime"

    sget-boolean v4, Lcom/igexin/a/a/i;->o:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xa

    const-string v3, "ca"

    sget-boolean v4, Lcom/igexin/a/a/i;->r:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xb

    const-string v3, "snl"

    sget-boolean v4, Lcom/igexin/a/a/i;->s:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xc

    const-string v3, "maxActiveFlow"

    sget-wide v4, Lcom/igexin/a/a/i;->t:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xd

    const-string v3, "setHeartbeatInterval"

    sget-boolean v4, Lcom/igexin/a/a/i;->p:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xe

    const-string v3, "setSocketTimeout"

    sget-boolean v4, Lcom/igexin/a/a/i;->q:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0xf

    const-string v3, "heartbeatInterval"

    sget v4, Lcom/igexin/a/a/i;->h:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v2, 0x3

    const-string v3, "blockEndTime"

    sget-wide v4, Lcom/igexin/a/a/i;->g:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x11

    const-string v3, "guard"

    sget-boolean v4, Lcom/igexin/a/a/i;->u:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/a/f;->a:Lcom/igexin/a/a/a;

    iget-object v1, p0, Lcom/igexin/a/a/f;->c:Landroid/database/sqlite/SQLiteDatabase;

    const/16 v2, 0x12

    const-string v3, "wakeup"

    sget-boolean v4, Lcom/igexin/a/a/i;->v:Z

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/a/a/a;->a(Lcom/igexin/a/a/a;Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method
