.class public Lcom/igexin/a/b/c/b;
.super Ljava/lang/Object;


# static fields
.field public static a:Lcom/igexin/a/b/c/b;


# instance fields
.field private b:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/c/b;->b:Ljava/util/Map;

    return-void
.end method

.method public static a()Lcom/igexin/a/b/c/b;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/c/b;->a:Lcom/igexin/a/b/c/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/c/b;

    invoke-direct {v0}, Lcom/igexin/a/b/c/b;-><init>()V

    sput-object v0, Lcom/igexin/a/b/c/b;->a:Lcom/igexin/a/b/c/b;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/c/b;->a:Lcom/igexin/a/b/c/b;

    return-object v0
.end method


# virtual methods
.method public a(Ljava/lang/String;)Lcom/igexin/a/b/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/b/c/a;

    return-object p0
.end method

.method public a(Ljava/lang/String;Lcom/igexin/a/b/c/a;)V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/c/b;->b:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
