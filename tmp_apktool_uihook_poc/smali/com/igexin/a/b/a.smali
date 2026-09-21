.class public Lcom/igexin/a/b/a;
.super Ljava/lang/Object;


# static fields
.field public static a:I

.field public static b:I

.field public static c:Z

.field public static d:Z

.field public static e:Ljava/lang/String;

.field public static final f:Ljava/lang/String;

.field public static final g:Ljava/lang/String;

.field public static h:I

.field public static i:I

.field public static j:I

.field public static k:I

.field public static l:I

.field public static m:I

.field public static n:I

.field public static o:I

.field public static p:I

.field public static q:Ljava/lang/String;

.field public static r:Ljava/lang/String;

.field public static s:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x0

    const/4 v0, -0x1

    const/4 v2, 0x1

    sput v0, Lcom/igexin/a/b/a;->a:I

    sput v0, Lcom/igexin/a/b/a;->b:I

    sput-boolean v2, Lcom/igexin/a/b/a;->c:Z

    sput-boolean v2, Lcom/igexin/a/b/a;->d:Z

    const-string v0, "com.igexin.action.initialize"

    sput-object v0, Lcom/igexin/a/b/a;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/ImgCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/a;->f:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Sdk/WebCache/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/a;->g:Ljava/lang/String;

    sput v3, Lcom/igexin/a/b/a;->h:I

    sput v2, Lcom/igexin/a/b/a;->i:I

    sput v4, Lcom/igexin/a/b/a;->j:I

    const/4 v0, 0x3

    sput v0, Lcom/igexin/a/b/a;->k:I

    const/4 v0, 0x4

    sput v0, Lcom/igexin/a/b/a;->l:I

    const/4 v0, 0x5

    sput v0, Lcom/igexin/a/b/a;->m:I

    sput v3, Lcom/igexin/a/b/a;->n:I

    sput v2, Lcom/igexin/a/b/a;->o:I

    sput v4, Lcom/igexin/a/b/a;->p:I

    const-string v0, "com.igexin.sdk.PushService"

    sput-object v0, Lcom/igexin/a/b/a;->q:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.SdkMsgService"

    sput-object v0, Lcom/igexin/a/b/a;->r:Ljava/lang/String;

    const-string v0, "com.igexin.sdk.coordinator.GexinMsgService"

    sput-object v0, Lcom/igexin/a/b/a;->s:Ljava/lang/String;

    return-void
.end method
