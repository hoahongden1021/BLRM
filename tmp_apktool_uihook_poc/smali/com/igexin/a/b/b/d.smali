.class public Lcom/igexin/a/b/b/d;
.super Lcom/igexin/a/b/b/b;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Ljava/lang/String;

.field private j:Ljava/lang/String;

.field private k:Z

.field private l:Z

.field private m:I

.field private n:I


# direct methods
.method public constructor <init>()V
    .locals 3

    const/4 v2, 0x1

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/igexin/a/b/b/b;-><init>()V

    iput-boolean v0, p0, Lcom/igexin/a/b/b/d;->c:Z

    iput-boolean v0, p0, Lcom/igexin/a/b/b/d;->d:Z

    iput-boolean v0, p0, Lcom/igexin/a/b/b/d;->e:Z

    iput-object v1, p0, Lcom/igexin/a/b/b/d;->f:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/a/b/b/d;->g:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/a/b/b/d;->h:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/a/b/b/d;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/igexin/a/b/b/d;->j:Ljava/lang/String;

    iput-boolean v2, p0, Lcom/igexin/a/b/b/d;->k:Z

    iput-boolean v2, p0, Lcom/igexin/a/b/b/d;->l:Z

    iput v0, p0, Lcom/igexin/a/b/b/d;->m:I

    iput v0, p0, Lcom/igexin/a/b/b/d;->n:I

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    iput p1, p0, Lcom/igexin/a/b/b/d;->m:I

    return-void
.end method

.method public a(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/d;->c:Z

    return-void
.end method

.method public b(I)V
    .locals 0

    iput p1, p0, Lcom/igexin/a/b/b/d;->n:I

    return-void
.end method

.method public b(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/d;->d:Z

    return-void
.end method

.method public c(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/d;->e:Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->a:Ljava/lang/String;

    return-void
.end method

.method public d(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/d;->k:Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->b:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->b:Ljava/lang/String;

    return-void
.end method

.method public e(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/b/b/d;->l:Z

    return-void
.end method

.method public f(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->f:Ljava/lang/String;

    return-void
.end method

.method public f()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/d;->c:Z

    return v0
.end method

.method public g(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->g:Ljava/lang/String;

    return-void
.end method

.method public g()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/d;->d:Z

    return v0
.end method

.method public h(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->h:Ljava/lang/String;

    return-void
.end method

.method public h()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/d;->e:Z

    return v0
.end method

.method public i()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/b/d;->f:Ljava/lang/String;

    goto :goto_0
.end method

.method public i(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->i:Ljava/lang/String;

    return-void
.end method

.method public j()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->g:Ljava/lang/String;

    return-object v0
.end method

.method public j(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/b/b/d;->j:Ljava/lang/String;

    return-void
.end method

.method public k()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->h:Ljava/lang/String;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->i:Ljava/lang/String;

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/b/d;->j:Ljava/lang/String;

    return-object v0
.end method

.method public n()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/d;->k:Z

    return v0
.end method

.method public o()Z
    .locals 1

    iget-boolean v0, p0, Lcom/igexin/a/b/b/d;->l:Z

    return v0
.end method

.method public p()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/b/b/d;->m:I

    return v0
.end method

.method public q()I
    .locals 1

    iget v0, p0, Lcom/igexin/a/b/b/d;->n:I

    return v0
.end method
