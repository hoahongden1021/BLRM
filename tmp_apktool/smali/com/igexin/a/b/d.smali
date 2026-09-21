.class public final enum Lcom/igexin/a/b/d;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/a/b/d;

.field public static final enum b:Lcom/igexin/a/b/d;

.field public static final enum c:Lcom/igexin/a/b/d;

.field public static final enum d:Lcom/igexin/a/b/d;

.field private static final synthetic e:[Lcom/igexin/a/b/d;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/a/b/d;

    const-string v1, "init"

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/d;->a:Lcom/igexin/a/b/d;

    new-instance v0, Lcom/igexin/a/b/d;

    const-string v1, "prepare"

    invoke-direct {v0, v1, v3}, Lcom/igexin/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/d;->b:Lcom/igexin/a/b/d;

    new-instance v0, Lcom/igexin/a/b/d;

    const-string v1, "active"

    invoke-direct {v0, v1, v4}, Lcom/igexin/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/d;->c:Lcom/igexin/a/b/d;

    new-instance v0, Lcom/igexin/a/b/d;

    const-string v1, "passive"

    invoke-direct {v0, v1, v5}, Lcom/igexin/a/b/d;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/d;->d:Lcom/igexin/a/b/d;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/igexin/a/b/d;

    sget-object v1, Lcom/igexin/a/b/d;->a:Lcom/igexin/a/b/d;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/a/b/d;->b:Lcom/igexin/a/b/d;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/a/b/d;->c:Lcom/igexin/a/b/d;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/a/b/d;->d:Lcom/igexin/a/b/d;

    aput-object v1, v0, v5

    sput-object v0, Lcom/igexin/a/b/d;->e:[Lcom/igexin/a/b/d;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/a/b/d;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/d;->e:[Lcom/igexin/a/b/d;

    invoke-virtual {v0}, [Lcom/igexin/a/b/d;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/a/b/d;

    return-object v0
.end method
