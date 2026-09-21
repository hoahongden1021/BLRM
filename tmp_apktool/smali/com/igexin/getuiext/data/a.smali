.class public Lcom/igexin/getuiext/data/a;
.super Ljava/lang/Object;


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/igexin/getuiext/data/a;->d:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/getuiext/data/a;->e:Z

    iput-boolean v1, p0, Lcom/igexin/getuiext/data/a;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/getuiext/data/a;->g:Ljava/lang/String;

    iput-object p1, p0, Lcom/igexin/getuiext/data/a;->b:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/getuiext/data/a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/getuiext/data/a;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/data/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/data/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/getuiext/data/a;->c:Ljava/lang/String;

    return-object v0
.end method
