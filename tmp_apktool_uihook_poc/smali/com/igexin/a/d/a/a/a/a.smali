.class public Lcom/igexin/a/d/a/a/a/a;
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
    .locals 4

    const/4 v3, 0x0

    const-string v0, "is_showprogress"

    const-string v0, "is_no_forcedownload"

    const-string v1, "url"

    const-string v0, "appstartupid"

    const-string v0, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7

    :try_start_0
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "https://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_0
    move-object v0, v3

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/igexin/a/d/a/a/b/a;

    invoke-direct {v0}, Lcom/igexin/a/d/a/a/b/a;-><init>()V

    const-string v1, "appdownload"

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->b(Ljava/lang/String;)V

    const-string v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->a(Ljava/lang/String;)V

    const-string v1, "do"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->c(Ljava/lang/String;)V

    const-string v1, "url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->d(Ljava/lang/String;)V

    const-string v1, "name"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->g(Ljava/lang/String;)V

    const-string v1, "appstartupid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "android"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->i(Ljava/lang/String;)V

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->e(Ljava/lang/String;)V

    :cond_3
    const-string v1, "appstartupid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v1, "appstartupid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->h(Ljava/lang/String;)V

    :cond_4
    const-string v1, "is_autoinstall"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->b(Z)V

    const-string v1, "is_autostart"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->a(Z)V

    const-string v1, "is_wifi_autodownload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "is_wifi_autodownload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->c(Z)V

    :cond_5
    const-string v1, "is_no_forcedownload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "is_no_forcedownload"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->d(Z)V

    :cond_6
    const-string v1, "is_showprogress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "is_showprogress"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/d/a/a/b/a;->e(Z)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    :cond_7
    move-object v0, v3

    goto/16 :goto_0
.end method

.method public a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Lcom/igexin/a/b/b;
    .locals 7

    move-object v0, p2

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "http://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "https://"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_0
    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/igexin/a/d/a/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x4

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/a/d/a/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    sget-object v1, Lcom/igexin/a/b/b;->b:Lcom/igexin/a/b/b;

    :goto_0
    return-object v1

    :cond_1
    invoke-virtual {v1, v3}, Lcom/igexin/a/d/a/a/b/a;->f(Ljava/lang/String;)V

    :cond_2
    sget-object v1, Lcom/igexin/a/b/b;->a:Lcom/igexin/a/b/b;

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V
    .locals 9

    new-instance v8, Lcom/igexin/a/d/a/a/f/b;

    new-instance v1, Lcom/igexin/a/d/a/a/a/b;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/igexin/a/d/a/a/a/b;-><init>(Lcom/igexin/a/d/a/a/a/a;Lcom/igexin/a/b/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

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

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    move-object v1, v0

    check-cast p4, Lcom/igexin/a/d/a/a/b/a;

    invoke-virtual {p4}, Lcom/igexin/a/d/a/a/b/a;->o()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/igexin/a/d/a/a/b/a;->a(I)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    return-void
.end method

.method public b(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Z
    .locals 13

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v5, 0x0

    const-string v12, "key"

    const-string v6, "GETUI_SDK"

    move-object v0, p2

    check-cast v0, Lcom/igexin/a/d/a/a/b/a;

    move-object v7, v0

    invoke-virtual {v7, p1}, Lcom/igexin/a/d/a/a/b/a;->a(Lcom/igexin/a/b/b/e;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/a/f;->r()Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    invoke-static {v1}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v1

    const-string v2, "GETUI_SDK"

    invoke-virtual {v1, v6}, Lcom/igexin/download/SdkDownLoader;->getCallback(Ljava/lang/String;)Lcom/igexin/download/IDownloadCallback;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/d/a/a/e/a;

    if-nez p0, :cond_5

    new-instance v2, Lcom/igexin/a/d/a/a/e/a;

    sget-object v3, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    const-string v4, "GETUI_SDK"

    invoke-direct {v2, v3, v6}, Lcom/igexin/a/d/a/a/e/a;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    move-object v8, v2

    :goto_0
    invoke-virtual {v1, v8}, Lcom/igexin/download/SdkDownLoader;->registerDownloadCallback(Lcom/igexin/download/IDownloadCallback;)V

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v4

    const-string v9, "GETUI_SDK"

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/download/SdkDownLoader;->newTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    invoke-virtual {v8, v1, v7}, Lcom/igexin/a/d/a/a/e/a;->a(ILcom/igexin/a/d/a/a/b/a;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APPDOWN_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v2, "actionid"

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "do"

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "url"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->g()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "logo"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "appstartupid"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_autoinstall"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->j()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "is_autostart"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->i()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v2, "pkgname"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->n()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "is_showprogress"

    invoke-virtual {v7}, Lcom/igexin/a/d/a/a/b/a;->k()Z

    move-result v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_2

    :goto_1
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "messageid"

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "taskid"

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "appid"

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->a()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v7, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "key"

    invoke-virtual {v7, v12, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "info"

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    const-string v2, "createtime"

    invoke-virtual {v1}, Landroid/text/format/Time;->format2445()Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x8

    invoke-virtual {v1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/d/a/a/c/c;->d()Lcom/igexin/a/d/a/a/d/a;

    move-result-object v1

    const-string v2, "message"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "key"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    if-eqz v2, :cond_0

    :try_start_2
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "message"

    invoke-virtual {v1, v3, v7}, Lcom/igexin/a/d/a/a/d/a;->a(Ljava/lang/String;Landroid/content/ContentValues;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    if-eqz v2, :cond_1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_1
    :goto_2
    sget-object v1, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    new-instance v2, Landroid/content/Intent;

    sget-object v3, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    const-class v4, Lcom/igexin/download/DownloadService;

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v1, v2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    const-string v2, "10050"

    invoke-virtual {v1, p1, v2}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/a/b/b/e;Ljava/lang/String;)V

    :goto_3
    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/igexin/a/b/b/e;->b(I)V

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/igexin/a/b/b/e;->a(I)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2}, Lcom/igexin/a/b/b/b;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_2
    return v10

    :catch_0
    move-exception v1

    move-object v1, v11

    :goto_4
    if-eqz v1, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_2

    :catchall_0
    move-exception v1

    move-object v2, v11

    :goto_5
    if-eqz v2, :cond_3

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v1

    :cond_4
    new-instance v1, Lcom/igexin/a/d/a/a/e/c;

    sget-object v2, Lcom/igexin/a/d/a/a/c/f;->a:Landroid/content/Context;

    invoke-direct {v1, v7, v2}, Lcom/igexin/a/d/a/a/e/c;-><init>(Lcom/igexin/a/d/a/a/b/a;Landroid/content/Context;)V

    invoke-virtual {v1, v5}, Lcom/igexin/a/d/a/a/e/c;->a(I)V

    new-instance v2, Ljava/lang/Thread;

    invoke-direct {v2, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_1
    move-exception v1

    move-object v1, v2

    goto :goto_4

    :catch_2
    move-exception v2

    goto/16 :goto_1

    :cond_5
    move-object v8, p0

    goto/16 :goto_0
.end method
