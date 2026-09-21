.class public Lcom/igexin/sdk/PushService;
.super Landroid/app/Service;


# static fields
.field private static a:Ljava/lang/String;


# instance fields
.field private b:Lcom/igexin/a/b/f;

.field private c:Lcom/igexin/sdk/aidl/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/sdk/PushService;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    invoke-static {}, Lcom/igexin/a/b/o;->a()Lcom/igexin/sdk/aidl/c;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->c:Lcom/igexin/sdk/aidl/c;

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->c:Lcom/igexin/sdk/aidl/c;

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/a/b/f;

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/a/b/f;

    invoke-virtual {v0, p0}, Lcom/igexin/a/b/f;->a(Landroid/content/Context;)Z

    return-void
.end method

.method public onDestroy()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushService;->b:Lcom/igexin/a/b/f;

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->k()V

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V

    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    return-void
.end method

.method public onLowMemory()V
    .locals 0

    invoke-super {p0}, Landroid/app/Service;->onLowMemory()V

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v1, Lcom/igexin/a/b/a;->h:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/f;->a(Landroid/os/Message;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
