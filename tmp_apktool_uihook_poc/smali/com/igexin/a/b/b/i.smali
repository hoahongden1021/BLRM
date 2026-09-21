.class public Lcom/igexin/a/b/b/i;
.super Lcom/igexin/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/b/b/b;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/igexin/a/b/b/i;->b:Z

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/i;->b:Z

    return-void
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/i;->a:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/i;->b:Z

    return v0
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/i;->a:Ljava/lang/String;

    return-object v0
.end method
