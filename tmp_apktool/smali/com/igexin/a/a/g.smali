.class public Lcom/igexin/a/a/g;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/igexin/a/a/g;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/igexin/a/a/g;
    .locals 1

    sget-object v0, Lcom/igexin/a/a/g;->a:Lcom/igexin/a/a/g;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/a/a/g;

    invoke-direct {v0}, Lcom/igexin/a/a/g;-><init>()V

    sput-object v0, Lcom/igexin/a/a/g;->a:Lcom/igexin/a/a/g;

    :cond_0
    sget-object v0, Lcom/igexin/a/a/g;->a:Lcom/igexin/a/a/g;

    return-object v0
.end method


# virtual methods
.method public b()Z
    .locals 1

    invoke-static {}, Lcom/igexin/a/a/j;->a()V

    const/4 v0, 0x1

    return v0
.end method
