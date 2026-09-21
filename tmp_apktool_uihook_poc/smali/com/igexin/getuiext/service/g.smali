.class Lcom/igexin/getuiext/service/g;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Z

.field final synthetic e:Lcom/igexin/getuiext/service/f;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/service/f;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/g;->e:Lcom/igexin/getuiext/service/f;

    iput-object p2, p0, Lcom/igexin/getuiext/service/g;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/igexin/getuiext/service/g;->b:Ljava/lang/String;

    iput-object p4, p0, Lcom/igexin/getuiext/service/g;->c:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/igexin/getuiext/service/g;->d:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Lorg/json/JSONObject;)Ljava/lang/Void;
    .locals 6

    const-string v0, "versionCode"

    const-string v0, "checksum"

    const/4 v0, 0x0

    aget-object v0, p1, v0

    :try_start_0
    const-string v1, "packageName"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "versionCode"

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "checksum"

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    const-string v4, "action"

    const-string v5, "queryUpdate"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "cid"

    sget-object v5, Lcom/igexin/getuiext/data/Consts;->CID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "app_id"

    sget-object v5, Lcom/igexin/getuiext/data/Consts;->APPID:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "selfpkg"

    sget-object v5, Lcom/igexin/getuiext/service/GetuiExtService;->context:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "pkgname"

    invoke-virtual {v3, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v4, "versionCode"

    invoke-virtual {v3, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "checksum"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "sendId"

    iget-object v2, p0, Lcom/igexin/getuiext/service/g;->a:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "context"

    iget-object v2, p0, Lcom/igexin/getuiext/service/g;->b:Ljava/lang/String;

    invoke-virtual {v3, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "http://sdk.open.inc2.igexin.com/api.php"

    invoke-virtual {v3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    sget v3, Lcom/igexin/getuiext/service/GetuiExtService;->DEFAULT_RETRY_TIMES:I

    invoke-static {v0, v2, v3}, Lcom/igexin/getuiext/service/GetuiExtService;->sendData(Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/igexin/getuiext/service/g;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/getuiext/service/g;->a:Ljava/lang/String;

    iget-boolean v4, p0, Lcom/igexin/getuiext/service/g;->d:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/getuiext/service/GetuiExtService;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x0

    return-object v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/service/g;->a([Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
