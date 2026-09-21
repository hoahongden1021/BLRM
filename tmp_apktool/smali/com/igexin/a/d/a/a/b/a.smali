.class public Lcom/igexin/a/d/a/a/b/a;
.super Lcom/igexin/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:Ljava/lang/String;

.field private f:Z

.field private g:Z

.field private h:I

.field private i:Z

.field private j:Z

.field private k:Z

.field private l:Z

.field private m:Lcom/igexin/a/b/b/e;

.field private n:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/igexin/a/b/b/b;-><init>()V

    iput v1, p0, Lcom/igexin/a/d/a/a/b/a;->h:I

    iput-boolean v1, p0, Lcom/igexin/a/d/a/a/b/a;->j:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/d/a/a/b/a;->k:Z

    iput-boolean v1, p0, Lcom/igexin/a/d/a/a/b/a;->l:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->m:Lcom/igexin/a/b/b/e;

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/igexin/a/d/a/a/b/a;->h:I

    return-void
.end method

.method public a(Lcom/igexin/a/b/b/e;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->m:Lcom/igexin/a/b/b/e;

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->f:Z

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->g:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->i:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->j:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->k:Z

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->c:Ljava/lang/String;

    return-object v0
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->c:Ljava/lang/String;

    return-void
.end method

.method public f(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/b/a;->l:Z

    return-void
.end method

.method public g()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->d:Ljava/lang/String;

    return-object v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->d:Ljava/lang/String;

    return-void
.end method

.method public h()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->e:Ljava/lang/String;

    return-object v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->e:Ljava/lang/String;

    return-void
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/b/a;->n:Ljava/lang/String;

    return-void
.end method

.method public i()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/d/a/a/b/a;->f:Z

    return v0
.end method

.method public j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/d/a/a/b/a;->g:Z

    return v0
.end method

.method public k()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/d/a/a/b/a;->k:Z

    return v0
.end method

.method public l()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/d/a/a/b/a;->l:Z

    return v0
.end method

.method public m()Lcom/igexin/a/b/b/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->m:Lcom/igexin/a/b/b/e;

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/b/a;->n:Ljava/lang/String;

    return-object v0
.end method

.method public o()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/d/a/a/b/a;->h:I

    return v0
.end method
