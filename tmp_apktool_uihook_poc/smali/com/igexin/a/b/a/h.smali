.class public Lcom/igexin/a/b/a/h;
.super Lcom/igexin/a/b/a/a;


# static fields
.field private static final a:Ljava/lang/String;

.field private static b:Ljava/util/Map;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/a/h;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    invoke-direct {p0}, Lcom/igexin/a/b/a/a;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "redirect_server"

    new-instance v2, Lcom/igexin/a/b/a/n;

    invoke-direct {v2}, Lcom/igexin/a/b/a/n;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "response_deviceid"

    new-instance v2, Lcom/igexin/a/b/a/q;

    invoke-direct {v2}, Lcom/igexin/a/b/a/q;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "pushmessage"

    new-instance v2, Lcom/igexin/a/b/a/l;

    invoke-direct {v2}, Lcom/igexin/a/b/a/l;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "response_ca_list"

    new-instance v2, Lcom/igexin/a/b/a/p;

    invoke-direct {v2}, Lcom/igexin/a/b/a/p;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "bindappid_result"

    new-instance v2, Lcom/igexin/a/b/a/c;

    invoke-direct {v2}, Lcom/igexin/a/b/a/c;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "received"

    new-instance v2, Lcom/igexin/a/b/a/m;

    invoke-direct {v2}, Lcom/igexin/a/b/a/m;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "sendmessage_feedback"

    new-instance v2, Lcom/igexin/a/b/a/r;

    invoke-direct {v2}, Lcom/igexin/a/b/a/r;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    const-string v1, "block_client"

    new-instance v2, Lcom/igexin/a/b/a/d;

    invoke-direct {v2}, Lcom/igexin/a/b/a/d;-><init>()V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 4

    const-string v1, "id"

    const-string v1, "action"

    instance-of v1, p1, Lcom/igexin/a/e/c/n;

    if-eqz v1, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/igexin/a/e/c/n;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/a/e/c/n;->b()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, v1, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    if-eqz v2, :cond_1

    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    iget-object p0, v1, Lcom/igexin/a/e/c/n;->e:Ljava/lang/Object;

    check-cast p0, Ljava/lang/String;

    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "id"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;)V

    :cond_0
    if-eqz v2, :cond_1

    const-string v1, "action"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "action"

    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    sget-object v3, Lcom/igexin/a/b/a/h;->b:Ljava/util/Map;

    invoke-interface {v3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/b/a/b;

    if-eqz p0, :cond_1

    invoke-virtual {p0, p1, v2}, Lcom/igexin/a/b/a/b;->a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    :goto_0
    return v1

    :catch_0
    move-exception v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method
