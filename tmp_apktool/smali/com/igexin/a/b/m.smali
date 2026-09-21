.class public Lcom/igexin/a/b/m;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static a:Lcom/igexin/a/b/m;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/a/b/m;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/m;->a:Lcom/igexin/a/b/m;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/m;

    invoke-direct {v0}, Lcom/igexin/a/b/m;-><init>()V

    sput-object v0, Lcom/igexin/a/b/m;->a:Lcom/igexin/a/b/m;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/m;->a:Lcom/igexin/a/b/m;

    return-object v0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    sget v1, Lcom/igexin/a/b/a;->j:I

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/f;->a(Landroid/os/Message;)Z

    :cond_0
    return-void
.end method
