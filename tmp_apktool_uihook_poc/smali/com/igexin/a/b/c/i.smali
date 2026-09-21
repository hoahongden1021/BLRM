.class public final enum Lcom/igexin/a/b/c/i;
.super Ljava/lang/Enum;


# static fields
.field public static final enum a:Lcom/igexin/a/b/c/i;

.field public static final enum b:Lcom/igexin/a/b/c/i;

.field public static final enum c:Lcom/igexin/a/b/c/i;

.field public static final enum d:Lcom/igexin/a/b/c/i;

.field private static final synthetic e:[Lcom/igexin/a/b/c/i;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/igexin/a/b/c/i;

    const-string v1, "START_SERVICE"

    invoke-direct {v0, v1, v2}, Lcom/igexin/a/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/c/i;->a:Lcom/igexin/a/b/c/i;

    new-instance v0, Lcom/igexin/a/b/c/i;

    const-string v1, "STOP_SERVICE"

    invoke-direct {v0, v1, v3}, Lcom/igexin/a/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/c/i;->b:Lcom/igexin/a/b/c/i;

    new-instance v0, Lcom/igexin/a/b/c/i;

    const-string v1, "IS_STARTED"

    invoke-direct {v0, v1, v4}, Lcom/igexin/a/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/c/i;->c:Lcom/igexin/a/b/c/i;

    new-instance v0, Lcom/igexin/a/b/c/i;

    const-string v1, "SET_SILENTTIME"

    invoke-direct {v0, v1, v5}, Lcom/igexin/a/b/c/i;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/igexin/a/b/c/i;->d:Lcom/igexin/a/b/c/i;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/igexin/a/b/c/i;

    sget-object v1, Lcom/igexin/a/b/c/i;->a:Lcom/igexin/a/b/c/i;

    aput-object v1, v0, v2

    sget-object v1, Lcom/igexin/a/b/c/i;->b:Lcom/igexin/a/b/c/i;

    aput-object v1, v0, v3

    sget-object v1, Lcom/igexin/a/b/c/i;->c:Lcom/igexin/a/b/c/i;

    aput-object v1, v0, v4

    sget-object v1, Lcom/igexin/a/b/c/i;->d:Lcom/igexin/a/b/c/i;

    aput-object v1, v0, v5

    sput-object v0, Lcom/igexin/a/b/c/i;->e:[Lcom/igexin/a/b/c/i;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method
