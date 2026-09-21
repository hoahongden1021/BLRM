.class public Lcom/igexin/a/b/d/b;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/b/d/a;


# static fields
.field private static c:Lcom/igexin/a/b/d/b;


# instance fields
.field a:Lcom/igexin/a/h/a;

.field private b:Ljava/util/Map;


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/d/b;->b:Ljava/util/Map;

    new-instance v0, Lcom/igexin/a/h/a;

    invoke-direct {v0}, Lcom/igexin/a/h/a;-><init>()V

    iput-object v0, p0, Lcom/igexin/a/b/d/b;->a:Lcom/igexin/a/h/a;

    return-void
.end method

.method public static a()Lcom/igexin/a/b/d/b;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/d/b;->c:Lcom/igexin/a/b/d/b;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/b/d/b;

    invoke-direct {v0}, Lcom/igexin/a/b/d/b;-><init>()V

    sput-object v0, Lcom/igexin/a/b/d/b;->c:Lcom/igexin/a/b/d/b;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/d/b;->c:Lcom/igexin/a/b/d/b;

    return-object v0
.end method


# virtual methods
.method public a(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public b(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method

.method public c(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 0

    return-void
.end method
