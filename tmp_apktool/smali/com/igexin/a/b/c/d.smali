.class Lcom/igexin/a/b/c/d;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/ServiceConnection;


# instance fields
.field final synthetic a:Lcom/igexin/a/b/c/c;


# direct methods
.method constructor <init>(Lcom/igexin/a/b/c/c;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/c/d;->a:Lcom/igexin/a/b/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 7

    const-string v6, "disconnected"

    const-string v5, "action"

    invoke-static {}, Lcom/igexin/a/b/c/b;->a()Lcom/igexin/a/b/c/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/c/b;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/a;

    move-result-object v0

    invoke-static {p2}, Lcom/igexin/sdk/aidl/a;->a(Landroid/os/IBinder;)Lcom/igexin/sdk/aidl/ICACallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/c/a;->a(Lcom/igexin/sdk/aidl/ICACallback;)V

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "pkgname"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/igexin/a/b/c/d;->a:Lcom/igexin/a/b/c/c;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/igexin/a/b/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/igexin/a/b/c/e;->a()Lcom/igexin/a/b/c/e;

    move-result-object v3

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Lcom/igexin/a/b/c/e;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "action"

    const-string v2, "connected"

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :goto_0
    sget v2, Lcom/igexin/a/b/a;->i:I

    iput v2, v0, Landroid/os/Message;->what:I

    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/f;->a(Landroid/os/Message;)Z

    return-void

    :cond_0
    const-string v2, "action"

    const-string v2, "disconnected"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    :cond_1
    const-string v2, "action"

    const-string v2, "disconnected"

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    invoke-static {}, Lcom/igexin/a/b/c/b;->a()Lcom/igexin/a/b/c/b;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/c/b;->a(Ljava/lang/String;)Lcom/igexin/a/b/c/a;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/c/a;->a(Lcom/igexin/sdk/aidl/ICACallback;)V

    return-void
.end method
