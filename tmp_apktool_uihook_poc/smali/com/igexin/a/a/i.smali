.class public Lcom/igexin/a/a/i;
.super Ljava/lang/Object;


# static fields
.field public static a:[Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:[Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:I

.field public static f:I

.field public static g:J

.field public static h:I

.field public static i:I

.field public static j:Z

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:Z

.field public static r:Z

.field public static s:Z

.field public static t:J

.field public static u:Z

.field public static v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x0

    const/4 v2, 0x1

    sget-object v0, Lcom/igexin/a/a/k;->a:[Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com/api.php"

    sput-object v0, Lcom/igexin/a/a/i;->b:Ljava/lang/String;

    new-array v0, v2, [Ljava/lang/String;

    const-string v1, "socket://sdk.open.talk.igexin.com:5224"

    aput-object v1, v0, v3

    sput-object v0, Lcom/igexin/a/a/i;->c:[Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com:8003/api.php"

    sput-object v0, Lcom/igexin/a/a/i;->d:Ljava/lang/String;

    sput-boolean v3, Lcom/igexin/a/a/i;->j:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->k:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->l:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->m:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->n:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->o:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->p:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->q:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->r:Z

    sput-boolean v3, Lcom/igexin/a/a/i;->s:Z

    const-wide/32 v0, 0x100000

    sput-wide v0, Lcom/igexin/a/a/i;->t:J

    sput-boolean v2, Lcom/igexin/a/a/i;->u:Z

    sput-boolean v2, Lcom/igexin/a/a/i;->v:Z

    return-void
.end method
