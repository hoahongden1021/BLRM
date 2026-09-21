.class public Lcom/igexin/a/b/e/b;
.super Lcom/igexin/a/g/a/b;


# instance fields
.field private a:Ljava/lang/String;

.field private g:Ljava/lang/String;

.field private h:Lcom/igexin/a/e/c/a;

.field private i:Lcom/igexin/a/b/b/e;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/igexin/a/e/c/a;Lcom/igexin/a/b/b/e;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/a/g/a/b;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/igexin/a/b/e/b;->g:Ljava/lang/String;

    invoke-virtual {p3}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/b/e/b;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/igexin/a/b/e/b;->h:Lcom/igexin/a/e/c/a;

    iput-object p3, p0, Lcom/igexin/a/b/e/b;->i:Lcom/igexin/a/b/b/e;

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/b/e/b;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/e/b;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/e/c/a;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/e/b;->h:Lcom/igexin/a/e/c/a;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/a/b/e/b;)Lcom/igexin/a/b/b/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/b/e/b;->i:Lcom/igexin/a/b/b/e;

    return-object v0
.end method


# virtual methods
.method protected a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/e/c/a;)V
    .locals 6

    const-string v5, "HttpPlugin"

    const-string v4, "@"

    new-instance v0, Lcom/igexin/a/e/c/c;

    invoke-direct {v0}, Lcom/igexin/a/e/c/c;-><init>()V

    invoke-virtual {v0}, Lcom/igexin/a/e/c/c;->b()V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RTV"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "@"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/igexin/a/e/c/c;->c:Ljava/lang/Object;

    sget-object v1, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    iput-object v1, v0, Lcom/igexin/a/e/c/c;->d:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    long-to-int v1, v1

    iput v1, v0, Lcom/igexin/a/e/c/c;->a:I

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "C-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/igexin/a/b/g;->t:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/igexin/a/f/j;->a(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "---------------RTV|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/igexin/a/e/c/a;->c()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->k()J

    move-result-wide v0

    const-string v2, "HttpPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sdk retry CMHttpTask once after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/a/b/e/d;

    invoke-direct {v3, p0, p1, p2}, Lcom/igexin/a/b/e/d;-><init>(Lcom/igexin/a/b/e/b;Lcom/igexin/a/b/b/e;Lcom/igexin/a/e/c/a;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    sget-object v0, Lcom/igexin/a/b/g;->Z:Ljava/util/HashMap;

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "HttpPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------sdk sendRetrieveCDNMessage add retrieveMap value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/Exception;)V
    .locals 5

    const-string v4, "HttpPlugin"

    iget-object v0, p0, Lcom/igexin/a/b/e/b;->h:Lcom/igexin/a/e/c/a;

    invoke-virtual {v0}, Lcom/igexin/a/e/c/a;->b()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/b/a/f;->k()J

    move-result-wide v0

    const-string v2, "HttpPlugin"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sdk retry CDNHttpTask once after: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Ljava/util/Timer;

    invoke-direct {v2}, Ljava/util/Timer;-><init>()V

    new-instance v3, Lcom/igexin/a/b/e/c;

    invoke-direct {v3, p0}, Lcom/igexin/a/b/e/c;-><init>(Lcom/igexin/a/b/e/b;)V

    invoke-virtual {v2, v3, v0, v1}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/igexin/a/b/e/b;->i:Lcom/igexin/a/b/b/e;

    iget-object v1, p0, Lcom/igexin/a/b/e/b;->h:Lcom/igexin/a/e/c/a;

    invoke-virtual {p0, v0, v1}, Lcom/igexin/a/b/e/b;->a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/e/c/a;)V

    const-string v0, "HttpPlugin"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "------sdk sendRetrieveCDNMessage to CM... messageID: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/b/e/b;->i:Lcom/igexin/a/b/b/e;

    invoke-virtual {v1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public a([B)V
    .locals 7

    const-string v0, "extraData"

    const-string v6, "HttpPlugin"

    if-eqz p1, :cond_1

    sget-object v0, Lcom/igexin/a/b/g;->e:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/igexin/b/a/a/a;->a([BLjava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/b/a/b/g;->b([B)[B

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    new-instance v2, Ljava/lang/String;

    const-string v3, "utf-8"

    invoke-direct {v2, v0, v3}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-direct {v1, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string v0, "id"

    iget-object v2, p0, Lcom/igexin/a/b/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "messageid"

    iget-object v2, p0, Lcom/igexin/a/b/e/b;->a:Ljava/lang/String;

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "cdnType"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const/4 v0, 0x0

    :try_start_0
    const-string v2, "action"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "HttpPlugin"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------sdk startCDNHttpTask callback jsonObject: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pushmessage"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "extraData"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v0, "extraData"

    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    :cond_0
    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v2

    invoke-virtual {v2, v1, v0}, Lcom/igexin/a/b/a/f;->a(Lorg/json/JSONObject;[B)Z

    const-string v0, "HttpPlugin"

    const-string v1, "------sdk startCDNHttpTask end..."

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const-string v1, "HttpPlugin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "------sdk startCDNHttpTask callBack Exception: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Get error CDNData, can not UnGzip it..."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public a_()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
