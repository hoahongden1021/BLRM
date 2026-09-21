.class public Lcom/igexin/a/d/a/a/g/a;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/d/b/a;


# static fields
.field private static a:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "notification"

    new-instance v2, Lcom/igexin/a/d/a/a/a/f;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/f;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "startweb"

    new-instance v2, Lcom/igexin/a/d/a/a/a/k;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/k;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "popup"

    new-instance v2, Lcom/igexin/a/d/a/a/a/h;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/h;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "checkapp"

    new-instance v2, Lcom/igexin/a/d/a/a/a/d;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "dial"

    new-instance v2, Lcom/igexin/a/d/a/a/a/e;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/e;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "reportbindapp"

    new-instance v2, Lcom/igexin/a/d/a/a/a/c;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "reportaddphoneinfo"

    new-instance v2, Lcom/igexin/a/d/a/a/a/c;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "enablelog"

    new-instance v2, Lcom/igexin/a/d/a/a/a/c;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "disablelog"

    new-instance v2, Lcom/igexin/a/d/a/a/a/c;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "reportapplist"

    new-instance v2, Lcom/igexin/a/d/a/a/a/c;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "reportapp"

    new-instance v2, Lcom/igexin/a/d/a/a/a/j;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/j;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "appdownload"

    new-instance v2, Lcom/igexin/a/d/a/a/a/a;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/a;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "terminatetask"

    new-instance v2, Lcom/igexin/a/d/a/a/a/l;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    const-string v1, "uploadlog"

    new-instance v2, Lcom/igexin/a/d/a/a/a/m;

    invoke-direct {v2}, Lcom/igexin/a/d/a/a/a/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/a/b/b/b;
    .locals 2

    const-string v1, "type"

    if-eqz p1, :cond_0

    const-string v0, "type"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    :try_start_0
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/b/a/a/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1}, Lcom/igexin/a/b/a/a/a;->a(Lorg/json/JSONObject;)Lcom/igexin/a/b/b/b;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Lcom/igexin/a/b/b;
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/b/a/a/a;

    if-eqz p0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/igexin/a/b/a/a/a;->a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Lcom/igexin/a/b/b;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/igexin/a/b/b;->c:Lcom/igexin/a/b/b;

    goto :goto_0
.end method

.method public a()V
    .locals 1

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/c/c;->i()V

    return-void
.end method

.method public a(Landroid/content/Context;)Z
    .locals 6

    const/4 v5, 0x1

    const-string v4, "GETUI_SDK"

    sput-object p1, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-static {}, Lcom/igexin/a/d/a/a/h/a;->g()Lcom/igexin/a/d/a/a/h/a;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v5}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->r()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v0

    const-string v1, "GETUI_SDK"

    invoke-virtual {v0, v4}, Lcom/igexin/download/SdkDownLoader;->queryTask(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "GETUI_SDK"

    invoke-virtual {v0, v4}, Lcom/igexin/download/SdkDownLoader;->getCallback(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/d/a/a/e/a;

    if-nez p0, :cond_1

    new-instance v1, Lcom/igexin/a/d/a/a/e/a;

    sget-object v2, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    const-string v3, "GETUI_SDK"

    invoke-direct {v1, v2, v4}, Lcom/igexin/a/d/a/a/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1}, Lcom/igexin/download/SdkDownLoader;->registerDownloadCallback(Lcom/igexin/download/IDownloadCallback;)V

    sget-object v0, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/igexin/download/DownloadService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :cond_0
    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/c/c;->b()Z

    return v5

    :cond_1
    move-object v1, p0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 1

    if-eqz p1, :cond_0

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public b(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Z
    .locals 2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    sget-object v0, Lcom/igexin/a/d/a/a/g/a;->a:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->b()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/b/a/a/a;

    if-eqz p0, :cond_0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->l()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p0, p1, p2}, Lcom/igexin/a/b/a/a/a;->b(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
