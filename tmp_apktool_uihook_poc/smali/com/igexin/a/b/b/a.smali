.class public Lcom/igexin/a/b/b/a;
.super Ljava/lang/Object;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;

.field public j:Ljava/lang/String;

.field public k:Ljava/lang/String;

.field public l:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "open"

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->f:Ljava/lang/String;

    const-string v0, "2.1.2.0"

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->e:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->w:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->b:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->v:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->c:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->y:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->d:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->z:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->i:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->x:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->a:Ljava/lang/String;

    const-string v0, "ANDROID"

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->h:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->j:Ljava/lang/String;

    const-string v0, "MDP"

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->k:Ljava/lang/String;

    sget-object v0, Lcom/igexin/a/b/g;->A:Ljava/lang/String;

    iput-object v0, p0, Lcom/igexin/a/b/b/a;->g:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/igexin/a/b/b/a;->l:J

    return-void
.end method

.method public static a(Lcom/igexin/a/b/b/a;)Ljava/lang/String;
    .locals 5

    const-string v4, ""

    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "model"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->a:Ljava/lang/String;

    if-nez v2, :cond_0

    const-string v2, ""

    move-object v2, v4

    :goto_0
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "sim"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->b:Ljava/lang/String;

    if-nez v2, :cond_1

    const-string v2, ""

    move-object v2, v4

    :goto_1
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "imei"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->c:Ljava/lang/String;

    if-nez v2, :cond_2

    const-string v2, ""

    move-object v2, v4

    :goto_2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "mac"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->d:Ljava/lang/String;

    if-nez v2, :cond_3

    const-string v2, ""

    move-object v2, v4

    :goto_3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "version"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->e:Ljava/lang/String;

    if-nez v2, :cond_4

    const-string v2, ""

    move-object v2, v4

    :goto_4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "channelid"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->f:Ljava/lang/String;

    if-nez v2, :cond_5

    const-string v2, ""

    move-object v2, v4

    :goto_5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "type"

    const-string v2, "ANDROID"

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "app"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->k:Ljava/lang/String;

    if-nez v2, :cond_6

    const-string v2, ""

    move-object v2, v4

    :goto_6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "deviceid"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANDROID-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/b/b/a;->g:Ljava/lang/String;

    if-nez v3, :cond_7

    const-string v3, ""

    move-object v3, v4

    :goto_7
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "system_version"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->j:Ljava/lang/String;

    if-nez v2, :cond_8

    const-string v2, ""

    move-object v2, v4

    :goto_8
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v1, "cell"

    iget-object v2, p0, Lcom/igexin/a/b/b/a;->i:Ljava/lang/String;

    if-nez v2, :cond_9

    const-string v2, ""

    move-object v2, v4

    :goto_9
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "action"

    const-string v3, "addphoneinfo"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "id"

    iget-wide v3, p0, Lcom/igexin/a/b/b/a;->l:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "info"

    invoke-virtual {v1, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->a:Ljava/lang/String;

    goto/16 :goto_0

    :cond_1
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->b:Ljava/lang/String;

    goto/16 :goto_1

    :cond_2
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->c:Ljava/lang/String;

    goto/16 :goto_2

    :cond_3
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->d:Ljava/lang/String;

    goto/16 :goto_3

    :cond_4
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->e:Ljava/lang/String;

    goto/16 :goto_4

    :cond_5
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->f:Ljava/lang/String;

    goto/16 :goto_5

    :cond_6
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->k:Ljava/lang/String;

    goto :goto_6

    :cond_7
    iget-object v3, p0, Lcom/igexin/a/b/b/a;->g:Ljava/lang/String;

    goto :goto_7

    :cond_8
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->j:Ljava/lang/String;

    goto :goto_8

    :cond_9
    iget-object v2, p0, Lcom/igexin/a/b/b/a;->i:Ljava/lang/String;

    goto :goto_9
.end method
