.class public Lcom/igexin/a/d/a/a/a/h;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/b/a/a/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/a/b/b/b;
    .locals 7

    const-string v2, "title"

    const-string v0, "img"

    const-string v0, "do"

    const-string v0, "buttons"

    const-string v1, "text"

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/c/c;->e()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "title"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    :try_start_0
    new-instance v0, Lcom/igexin/a/d/a/a/b/e;

    invoke-direct {v0}, Lcom/igexin/a/d/a/a/b/e;-><init>()V

    const-string v1, "popup"

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->b(Ljava/lang/String;)V

    const-string v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->a(Ljava/lang/String;)V

    const-string v1, "do"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->c(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->d(Ljava/lang/String;)V

    const-string v1, "text"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->e(Ljava/lang/String;)V

    const-string v1, "img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "img"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->f(Ljava/lang/String;)V

    :cond_0
    const-string v1, "buttons"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const-string v2, "buttons"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v3, v4, :cond_1

    new-instance v4, Lcom/igexin/a/d/a/a/b/b;

    invoke-direct {v4}, Lcom/igexin/a/d/a/a/b/b;-><init>()V

    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string v6, "text"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/igexin/a/d/a/a/b/b;->a(Ljava/lang/String;)V

    const-string v6, "do"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/igexin/a/d/a/a/b/b;->b(Ljava/lang/String;)V

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/e;->a(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    return-object v0

    :catch_0
    move-exception v0

    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Lcom/igexin/a/b/b;
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/igexin/a/d/a/a/b/e;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/a/d/a/a/b/e;->g()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/igexin/a/d/a/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x1

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/a/d/a/a/a/h;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    sget-object v1, Lcom/igexin/a/b/b;->b:Lcom/igexin/a/b/b;

    :goto_0
    return-object v1

    :cond_0
    invoke-virtual {v1, v3}, Lcom/igexin/a/d/a/a/b/e;->g(Ljava/lang/String;)V

    :cond_1
    sget-object v1, Lcom/igexin/a/b/b;->a:Lcom/igexin/a/b/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V
    .locals 9

    new-instance v8, Lcom/igexin/a/d/a/a/f/b;

    new-instance v1, Lcom/igexin/a/d/a/a/a/i;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/igexin/a/d/a/a/a/i;-><init>(Lcom/igexin/a/d/a/a/a/h;Lcom/igexin/a/b/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/igexin/a/d/a/a/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;ILcom/igexin/a/d/a/a/f/c;)V

    new-instance v2, Lcom/igexin/a/d/a/a/f/a;

    invoke-direct {v2, v8}, Lcom/igexin/a/d/a/a/f/a;-><init>(Lcom/igexin/a/g/a/b;)V

    move-object v0, p4

    check-cast v0, Lcom/igexin/a/d/a/a/b/e;

    move-object v1, v0

    check-cast p4, Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {p4}, Lcom/igexin/a/d/a/a/b/e;->i()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/igexin/a/d/a/a/b/e;->a(I)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Z
    .locals 2

    new-instance v0, Lcom/igexin/a/d/a/a/i/a;

    check-cast p2, Lcom/igexin/a/d/a/a/b/e;

    invoke-direct {v0, p1, p2}, Lcom/igexin/a/d/a/a/i/a;-><init>(Lcom/igexin/a/b/b/e;Lcom/igexin/a/d/a/a/b/e;)V

    invoke-static {}, Lcom/igexin/a/b/f/b;->a()Lcom/igexin/a/b/f/b;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/igexin/a/b/f/b;->a(Lcom/igexin/a/b/f/a;)V

    const/4 v0, 0x1

    return v0
.end method
