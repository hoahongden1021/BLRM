.class public Lcom/igexin/a/b/g;
.super Ljava/lang/Object;


# static fields
.field public static A:Ljava/lang/String;

.field public static B:Ljava/lang/String;

.field public static C:Ljava/lang/String;

.field public static D:Ljava/lang/String;

.field public static E:J

.field public static F:J

.field public static G:J

.field public static H:J

.field public static I:J

.field public static J:J

.field public static K:J

.field public static L:J

.field public static M:J

.field public static N:J

.field public static O:J

.field public static P:J

.field public static Q:J

.field public static R:Ljava/lang/String;

.field public static S:Ljava/lang/String;

.field public static T:Ljava/lang/String;

.field public static U:Ljava/lang/String;

.field public static V:Ljava/lang/String;

.field public static W:Ljava/lang/String;

.field public static X:Ljava/util/Map;

.field public static Y:Ljava/util/Map;

.field public static Z:Ljava/util/HashMap;

.field public static a:Ljava/lang/String;

.field public static aa:Ljava/util/HashMap;

.field public static ab:Ljava/util/List;

.field public static ac:Ljava/lang/String;

.field private static final ad:Ljava/lang/String;

.field private static ae:Ljava/util/Map;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;

.field public static h:Z

.field public static i:Landroid/content/Context;

.field public static j:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public static k:Z

.field public static l:Z

.field public static m:Z

.field public static n:Z

.field public static o:Z

.field public static p:Z

.field public static q:I

.field public static r:I

.field public static s:J

.field public static t:Ljava/lang/String;

.field public static u:Ljava/lang/String;

.field public static v:Ljava/lang/String;

.field public static w:Ljava/lang/String;

.field public static x:Ljava/lang/String;

.field public static y:Ljava/lang/String;

.field public static z:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const-wide/16 v6, -0x1

    const/4 v5, 0x1

    const/4 v3, 0x0

    const-wide/16 v1, 0x0

    const-string v4, ""

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->ad:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/a/i;->a:[Ljava/lang/String;

    aget-object v0, v0, v3

    sput-object v0, Lcom/igexin/a/b/g;->a:Ljava/lang/String;

    const-string v0, "http://sdk.open.phone.igexin.com/api.php"

    sput-object v0, Lcom/igexin/a/b/g;->b:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->d:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->e:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->f:Ljava/lang/String;

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    sput-boolean v3, Lcom/igexin/a/b/g;->h:Z

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/igexin/a/b/g;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    sput-boolean v5, Lcom/igexin/a/b/g;->k:Z

    sput-boolean v3, Lcom/igexin/a/b/g;->l:Z

    sput-boolean v5, Lcom/igexin/a/b/g;->m:Z

    sput-boolean v3, Lcom/igexin/a/b/g;->n:Z

    sput-boolean v3, Lcom/igexin/a/b/g;->o:Z

    sput-boolean v5, Lcom/igexin/a/b/g;->p:Z

    sput v3, Lcom/igexin/a/b/g;->q:I

    sput v3, Lcom/igexin/a/b/g;->r:I

    sput-wide v1, Lcom/igexin/a/b/g;->s:J

    const-string v0, ""

    sput-object v4, Lcom/igexin/a/b/g;->D:Ljava/lang/String;

    sput-wide v6, Lcom/igexin/a/b/g;->E:J

    sput-wide v6, Lcom/igexin/a/b/g;->F:J

    sput-wide v1, Lcom/igexin/a/b/g;->G:J

    sput-wide v1, Lcom/igexin/a/b/g;->H:J

    sput-wide v1, Lcom/igexin/a/b/g;->I:J

    sput-wide v1, Lcom/igexin/a/b/g;->J:J

    sput-wide v1, Lcom/igexin/a/b/g;->K:J

    sput-wide v1, Lcom/igexin/a/b/g;->L:J

    sput-wide v1, Lcom/igexin/a/b/g;->M:J

    sput-wide v1, Lcom/igexin/a/b/g;->P:J

    return-void
.end method

.method public static a(Ljava/lang/String;Z)I
    .locals 4

    sget-object v1, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    sget-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p1, :cond_1

    add-int/lit8 v0, v0, -0x1

    sget-object v2, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-nez v0, :cond_1

    sget-object v2, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    monitor-exit v1

    return v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static a()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/igexin/a/b/g;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?format=json&t=1"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(J)V
    .locals 2

    sput-wide p0, Lcom/igexin/a/b/g;->s:J

    sget-wide v0, Lcom/igexin/a/b/g;->s:J

    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/content/Context;)Z
    .locals 9

    const/4 v5, 0x0

    const/4 v8, 0x1

    const/4 v7, 0x0

    const-string v0, "PUSH_APPKEY"

    const-string v6, ""

    sput-object p0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v2, "PUSH_APPID"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v3, "PUSH_APPSECRET"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_APPKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_APPKEY"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_0
    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v5, "PUSH_GROUPID"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_2

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string v4, "PUSH_GROUPID"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_1
    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-nez v3, :cond_4

    :cond_0
    move v0, v7

    :goto_2
    return v0

    :cond_1
    move-object v3, v5

    goto :goto_0

    :cond_2
    const-string v0, ""
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    goto :goto_1

    :cond_3
    move v0, v7

    goto :goto_2

    :catch_0
    move-exception v0

    move v0, v7

    goto :goto_2

    :cond_4
    sput-object v1, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    sput-object v3, Lcom/igexin/a/b/g;->d:Ljava/lang/String;

    sput-object v2, Lcom/igexin/a/b/g;->e:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->f:Ljava/lang/String;

    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    const/16 v2, 0x1000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    if-eqz v0, :cond_6

    iget-object v1, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v1, :cond_6

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    move v1, v7

    :goto_3
    array-length v2, v0

    if-ge v1, v2, :cond_7

    aget-object v2, v0, v1

    const-string v3, "android.permission.CALL_PHONE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    const/4 v2, 0x1

    sput-boolean v2, Lcom/igexin/a/b/g;->h:Z
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_6
    move v0, v7

    goto :goto_2

    :catch_1
    move-exception v0

    move v0, v7

    goto :goto_2

    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    new-instance v0, Ljava/io/File;

    const-string v1, "/sdcard/libs"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_8

    invoke-virtual {v0}, Ljava/io/File;->mkdir()Z

    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/sdcard/libs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".db"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->T:Ljava/lang/String;

    const-string v0, "/sdcard/libs/com.igexin.sdk.deviceId.db"

    sput-object v0, Lcom/igexin/a/b/g;->U:Ljava/lang/String;

    const-string v0, "/sdcard/libs/app.db"

    sput-object v0, Lcom/igexin/a/b/g;->V:Ljava/lang/String;

    const-string v0, "/sdcard/libs/imsi.db"

    sput-object v0, Lcom/igexin/a/b/g;->W:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/data/data/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/files/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".properties"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->S:Ljava/lang/String;

    :try_start_2
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/igexin/a/b/g;->v:Ljava/lang/String;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->w:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    :cond_9
    sget-boolean v0, Lcom/igexin/a/a/i;->k:Z

    if-eqz v0, :cond_d

    invoke-static {}, Lcom/igexin/a/b/g;->b()Ljava/util/HashMap;

    move-result-object v0

    if-eqz v0, :cond_a

    sget-object v1, Lcom/igexin/a/b/g;->w:Ljava/lang/String;

    if-eqz v1, :cond_a

    sget-object v1, Lcom/igexin/a/b/g;->w:Ljava/lang/String;

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    sget-object v1, Lcom/igexin/a/b/g;->w:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    :cond_a
    sget-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    :cond_b
    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    :cond_c
    :goto_4
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/g;->x:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->y:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->i()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_e

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->i()Landroid/net/ConnectivityManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v0

    if-ne v0, v8, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lcom/igexin/a/b/g;->k:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_5
    sget-object v0, Lcom/igexin/a/b/g;->v:Ljava/lang/String;

    if-nez v0, :cond_f

    const-string v0, "cantgetimei"

    :goto_6
    invoke-static {v0}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->C:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->X:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->Y:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->Z:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->aa:Ljava/util/HashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->ab:Ljava/util/List;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/igexin/a/b/g;->Q:J

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.igexin.sdk.action.snlresponse."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->R:Ljava/lang/String;

    new-instance v0, Lcom/igexin/a/b/q;

    invoke-direct {v0, p0}, Lcom/igexin/a/b/q;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/igexin/a/b/q;->c()Z

    move-result v0

    sput-boolean v0, Lcom/igexin/a/b/g;->l:Z

    const/16 v0, 0x20

    invoke-static {v0}, Lcom/igexin/b/b/a;->a(I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->ac:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    move v0, v8

    goto/16 :goto_2

    :cond_d
    const/4 v0, 0x0

    :try_start_3
    sput-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    goto/16 :goto_4

    :catch_2
    move-exception v0

    goto :goto_5

    :cond_e
    const/4 v0, 0x0

    sput-boolean v0, Lcom/igexin/a/b/g;->k:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :cond_f
    sget-object v0, Lcom/igexin/a/b/g;->v:Ljava/lang/String;

    goto :goto_6
.end method

.method public static a(Ljava/lang/String;Ljava/lang/Integer;Z)Z
    .locals 3

    sget-object v1, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eqz p2, :cond_0

    sget-object v2, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v2, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    sget-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    add-int/2addr v0, v2

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    monitor-exit v1

    :goto_0
    return v0

    :cond_0
    sget-object v2, Lcom/igexin/a/b/g;->ae:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v2, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static b()Ljava/util/HashMap;
    .locals 3

    const/4 v1, 0x0

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/igexin/a/b/g;->W:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    sget-object v2, Lcom/igexin/a/b/g;->W:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/ObjectInputStream;

    invoke-direct {v2, v0}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-interface {v2}, Ljava/io/ObjectInput;->readObject()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    invoke-interface {v2}, Ljava/io/ObjectInput;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0

    :cond_0
    move-object v0, v1

    goto :goto_0
.end method
