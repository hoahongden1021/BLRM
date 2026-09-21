.class Lcom/igexin/getuiext/service/e;
.super Ljava/lang/Thread;


# instance fields
.field private a:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Intent;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    iput-object p1, p0, Lcom/igexin/getuiext/service/e;->a:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Landroid/os/Looper;->prepare()V

    new-instance v0, Lcom/igexin/getuiext/service/f;

    invoke-direct {v0}, Lcom/igexin/getuiext/service/f;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->msgLooperHandler:Landroid/os/Handler;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igexin/getuiext/service/GetuiExtService;->a(B)B

    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
