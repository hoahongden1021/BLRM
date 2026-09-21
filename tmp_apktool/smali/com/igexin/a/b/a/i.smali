.class public Lcom/igexin/a/b/a/i;
.super Lcom/igexin/a/b/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/a/i;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lcom/igexin/a/e/c/h;

    if-eqz v0, :cond_0

    const-string v0, "heartbeatRsp"

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/i;->a()Lcom/igexin/a/b/i;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/k;->a:Lcom/igexin/a/b/k;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/i;->a(Lcom/igexin/a/b/k;)V

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
