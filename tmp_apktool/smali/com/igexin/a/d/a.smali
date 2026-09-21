.class public Lcom/igexin/a/d/a;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String;

.field private static c:Lcom/igexin/a/d/a;


# instance fields
.field private b:Ljava/util/List;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/d/a;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/d/a;->b:Ljava/util/List;

    return-void
.end method

.method public static a()Lcom/igexin/a/d/a;
    .locals 1

    sget-object v0, Lcom/igexin/a/d/a;->c:Lcom/igexin/a/d/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/d/a;

    invoke-direct {v0}, Lcom/igexin/a/d/a;-><init>()V

    sput-object v0, Lcom/igexin/a/d/a;->c:Lcom/igexin/a/d/a;

    :cond_0
    sget-object v0, Lcom/igexin/a/d/a;->c:Lcom/igexin/a/d/a;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/content/Context;)Z
    .locals 3

    new-instance v0, Lcom/igexin/a/d/a/a/g/a;

    invoke-direct {v0}, Lcom/igexin/a/d/a/a/g/a;-><init>()V

    invoke-interface {v0, p1}, Lcom/igexin/a/d/b/a;->a(Landroid/content/Context;)Z

    new-instance v1, Lcom/igexin/a/d/a/b/e/a;

    invoke-direct {v1}, Lcom/igexin/a/d/a/b/e/a;-><init>()V

    invoke-interface {v1, p1}, Lcom/igexin/a/d/b/a;->a(Landroid/content/Context;)Z

    iget-object v2, p0, Lcom/igexin/a/d/a;->b:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/igexin/a/d/a;->b:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x1

    return v0
.end method

.method public b()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/d/a;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/d/b/a;

    invoke-interface {p0}, Lcom/igexin/a/d/b/a;->a()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public c()Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a;->b:Ljava/util/List;

    return-object v0
.end method
