.class Lcom/igexin/a/f/f;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/a/f/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/f/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->b(Lcom/igexin/a/f/c;)Lcom/igexin/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/d;->b:Lcom/igexin/a/b/d;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->c(Lcom/igexin/a/f/c;)Lcom/igexin/a/f/b;

    move-result-object v0

    invoke-static {p2}, Lcom/igexin/sdk/aidl/c;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/IGexinMsgService;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/b;->a(Lcom/igexin/sdk/aidl/IGexinMsgService;)V

    new-instance v0, Lcom/igexin/a/f/a;

    invoke-direct {v0}, Lcom/igexin/a/f/a;-><init>()V

    sget-object v1, Lcom/igexin/a/b/c;->d:Lcom/igexin/a/b/c;

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/a;->a(Lcom/igexin/a/b/c;)V

    iget-object v1, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-virtual {v1, v0}, Lcom/igexin/a/f/c;->a(Lcom/igexin/a/f/a;)V

    :cond_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->b(Lcom/igexin/a/f/c;)Lcom/igexin/a/b/d;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/d;->d:Lcom/igexin/a/b/d;

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/igexin/a/f/j;->b(Z)V

    iget-object v0, p0, Lcom/igexin/a/f/f;->a:Lcom/igexin/a/f/c;

    invoke-static {v0}, Lcom/igexin/a/f/c;->d(Lcom/igexin/a/f/c;)V

    :cond_0
    return-void
.end method
