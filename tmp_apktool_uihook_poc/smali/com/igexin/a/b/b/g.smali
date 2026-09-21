.class public Lcom/igexin/a/b/b/g;
.super Lcom/igexin/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v1, ""

    invoke-direct {p0}, Lcom/igexin/a/b/b/b;-><init>()V

    const-string v0, ""

    iput-object v1, p0, Lcom/igexin/a/b/b/g;->a:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/igexin/a/b/b/g;->b:Ljava/lang/String;

    const-string v0, ""

    iput-object v1, p0, Lcom/igexin/a/b/b/g;->c:Ljava/lang/String;

    const-string v0, "false"

    iput-object v0, p0, Lcom/igexin/a/b/b/g;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/g;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/g;->a:Ljava/lang/String;

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/g;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/g;->b:Ljava/lang/String;

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/g;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/g;->c:Ljava/lang/String;

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/g;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/g;->d:Ljava/lang/String;

    return-void
.end method
