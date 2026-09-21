.class public Lcom/igexin/a/b/a/q;
.super Lcom/igexin/a/b/a/b;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/a/q;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/a/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Lorg/json/JSONObject;)Z
    .locals 2

    const-string v0, "action"

    :try_start_0
    const-string v0, "action"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "action"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "response_deviceid"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "deviceid"

    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/d/f;->b()V

    sget-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/f;->h()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->i()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    goto :goto_0
.end method
