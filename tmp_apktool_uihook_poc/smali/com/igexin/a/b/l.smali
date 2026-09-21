.class final enum Lcom/igexin/a/b/l;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/a/b/l;

.field public static final enum b:Lcom/igexin/a/b/l;

.field public static final enum c:Lcom/igexin/a/b/l;

.field private static final synthetic d:[Lcom/igexin/a/b/l;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/a/b/l;

    const-string v1, "DETECT"

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/l;->a:Lcom/igexin/a/b/l;

    new-instance v0, Lcom/igexin/a/b/l;

    const-string v1, "STABLE"

    invoke-direct {v0, v1, v3}, Lcom/igexin/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/l;->b:Lcom/igexin/a/b/l;

    new-instance v0, Lcom/igexin/a/b/l;

    const-string v1, "PENDING"

    invoke-direct {v0, v1, v4}, Lcom/igexin/a/b/l;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/l;->c:Lcom/igexin/a/b/l;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/igexin/a/b/l;

    sget-object v1, Lcom/igexin/a/b/l;->a:Lcom/igexin/a/b/l;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/a/b/l;->b:Lcom/igexin/a/b/l;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/a/b/l;->c:Lcom/igexin/a/b/l;

    aput-object v1, v0, v4

    sput-object v0, Lcom/igexin/a/b/l;->d:[Lcom/igexin/a/b/l;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static a()[Lcom/igexin/a/b/l;
    .locals 1

    sget-object v0, Lcom/igexin/a/b/l;->d:[Lcom/igexin/a/b/l;

    invoke-virtual {v0}, [Lcom/igexin/a/b/l;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/igexin/a/b/l;

    return-object v0
.end method
