.class public Lcom/igexin/a/d/a/a/b/f;
.super Lcom/igexin/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/igexin/a/b/b/b;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/igexin/a/d/a/a/b/f;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/f;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/f;->a:Ljava/lang/String;

    return-void
.end method
