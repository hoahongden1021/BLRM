.class public Lcom/igexin/a/d/a/a/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/igexin/a/b/a/a/a;


# static fields
.field public static a:Ljava/util/HashMap;

.field private static final b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/d/a/a/a/f;->b:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/igexin/a/d/a/a/a/f;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;
    .locals 4

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.sdk.action.doaction"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "taskid"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "messageid"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appid"

    sget-object v2, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "actionid"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "accesstoken"

    sget-object v2, Lcom/igexin/a/b/g;->ac:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    sget-object v2, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    const/16 v3, 0x3e8

    invoke-virtual {v1, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v1

    const/high16 v3, 0x8000000

    invoke-static {v2, v1, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lorg/json/JSONObject;)Lcom/igexin/a/b/b/b;
    .locals 10

    const/4 v9, -0x1

    const-string v0, "logo_url"

    const-string v0, "banner_url"

    const-string v0, "id"

    const-string v0, "logo"

    :try_start_0
    sget-object v0, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "notification"

    const-string v2, "layout"

    sget-object v3, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "push"

    const-string v3, "drawable"

    sget-object v4, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    sget-object v2, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "notification_icon"

    const-string v4, "id"

    sget-object v5, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    sget-object v3, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification_background"

    const-string v5, "id"

    sget-object v6, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v5, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    sget-object v4, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "notification_title"

    const-string v6, "id"

    sget-object v7, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v6, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification_name"

    const-string v7, "id"

    sget-object v8, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v7, v8}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-nez v5, :cond_2

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return-object v0

    :cond_2
    new-instance v0, Lcom/igexin/a/b/b/d;

    invoke-direct {v0}, Lcom/igexin/a/b/b/d;-><init>()V

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->b(Ljava/lang/String;)V

    const-string v1, "actionid"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->a(Ljava/lang/String;)V

    const-string v1, "do"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->c(Ljava/lang/String;)V

    const-string v1, "title"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "text"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->d(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/igexin/a/b/b/d;->e(Ljava/lang/String;)V

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_3

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v9, :cond_a

    :cond_3
    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".png"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-ne v1, v9, :cond_4

    const-string v1, "logo"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".jpeg"

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    :cond_4
    const-string v2, "logo"

    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->f(Ljava/lang/String;)V

    :cond_5
    :goto_1
    const-string v1, "logo_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "logo_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "logo_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->g(Ljava/lang/String;)V

    :cond_6
    const-string v1, "banner_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "banner_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "http"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "banner_url"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->h(Ljava/lang/String;)V

    :cond_7
    const-string v1, "is_noclear"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "is_noclear"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->a(Z)V

    :cond_8
    const-string v1, "is_novibrate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "is_novibrate"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->b(Z)V

    :cond_9
    const-string v1, "is_noring"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "is_noring"

    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->c(Z)V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    const/4 v0, 0x0

    goto/16 :goto_0

    :cond_a
    const-string v1, "null"

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/b/d;->f(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public a(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Lcom/igexin/a/b/b;
    .locals 12

    const/4 v10, 0x1

    const/4 v9, 0x0

    const-string v11, ""

    move-object v0, p2

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v1, v0

    invoke-virtual {v1}, Lcom/igexin/a/b/b/d;->j()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/igexin/a/b/b/d;->k()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v2, :cond_4

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/igexin/a/d/a/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v1, v9}, Lcom/igexin/a/b/b/d;->d(Z)V

    move v5, v10

    :goto_0
    if-eqz v7, :cond_6

    invoke-static {}, Lcom/igexin/a/d/a/a/c/c;->a()Lcom/igexin/a/d/a/a/c/c;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/igexin/a/d/a/a/c/c;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v8, ""

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-virtual {v1, v9}, Lcom/igexin/a/b/b/d;->e(Z)V

    move v8, v10

    :goto_1
    if-nez v5, :cond_0

    if-eqz v8, :cond_7

    :cond_0
    if-eqz v5, :cond_1

    const/4 v6, 0x2

    move-object v1, p0

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/a/d/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    :cond_1
    if-eqz v8, :cond_2

    const/4 v6, 0x3

    move-object v1, p0

    move-object v2, v7

    move-object v5, p2

    invoke-virtual/range {v1 .. v6}, Lcom/igexin/a/d/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V

    :cond_2
    sget-object v1, Lcom/igexin/a/b/b;->b:Lcom/igexin/a/b/b;

    :goto_2
    return-object v1

    :cond_3
    invoke-virtual {v1, v5}, Lcom/igexin/a/b/b/d;->i(Ljava/lang/String;)V

    :cond_4
    move v5, v9

    goto :goto_0

    :cond_5
    invoke-virtual {v1, v6}, Lcom/igexin/a/b/b/d;->j(Ljava/lang/String;)V

    :cond_6
    move v8, v9

    goto :goto_1

    :cond_7
    sget-object v1, Lcom/igexin/a/b/b;->a:Lcom/igexin/a/b/b;

    goto :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/d;)V
    .locals 12

    const v7, 0x1080093

    const/4 v10, 0x1

    const-string v11, "notification"

    const-string v8, "drawable"

    const-string v9, "id"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    long-to-int v0, v0

    sget-object v1, Lcom/igexin/a/b/g;->Y:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->c()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v1}, Lcom/igexin/a/d/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/app/PendingIntent;

    move-result-object v1

    sget-object v2, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    const-string v3, "notification"

    invoke-virtual {v2, v11}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    new-instance v2, Landroid/app/Notification;

    invoke-direct {v2}, Landroid/app/Notification;-><init>()V

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->e()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    const/4 v3, 0x4

    iput v3, v2, Landroid/app/Notification;->defaults:I

    const v3, -0xff0100

    iput v3, v2, Landroid/app/Notification;->ledARGB:I

    const/16 v3, 0x3e8

    iput v3, v2, Landroid/app/Notification;->ledOnMS:I

    const/16 v3, 0xbb8

    iput v3, v2, Landroid/app/Notification;->ledOffMS:I

    iput v10, v2, Landroid/app/Notification;->flags:I

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->f()Z

    move-result v3

    if-nez v3, :cond_7

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v2, Landroid/app/Notification;->flags:I

    :goto_0
    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->h()Z

    move-result v3

    if-nez v3, :cond_0

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x1

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_0
    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->g()Z

    move-result v3

    if-nez v3, :cond_1

    iget v3, v2, Landroid/app/Notification;->defaults:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->defaults:I

    :cond_1
    sget-object v3, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "push"

    const-string v5, "drawable"

    sget-object v5, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v4, v8, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    const-string v4, "null"

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->i()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->i()Ljava/lang/String;

    move-result-object v4

    const-string v5, "@"

    invoke-virtual {v4, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->i()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v4, v10, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    const-string v5, "email"

    invoke-virtual {v4, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    const v3, 0x108008f

    iput v3, v2, Landroid/app/Notification;->icon:I

    :goto_1
    sget-object v3, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const-string v4, "notification"

    const-string v4, "layout"

    sget-object v5, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v3, v11, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_4

    new-instance v4, Landroid/widget/RemoteViews;

    sget-object v5, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v4, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const-string v5, "notification_icon"

    const-string v6, "id"

    sget-object v6, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v9, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification_background"

    const-string v7, "id"

    sget-object v7, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->l()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->m()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    if-eqz v6, :cond_10

    invoke-static {v6}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    if-eqz v6, :cond_10

    iget-object v8, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v8, v4, v6}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    move v6, v10

    :goto_2
    if-nez v6, :cond_2

    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    iget v8, v2, Landroid/app/Notification;->icon:I

    invoke-virtual {v6, v4, v8}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :cond_2
    if-eqz v7, :cond_3

    invoke-static {v7}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_3

    iget-object v6, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    invoke-virtual {v6, v5, v4}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :cond_3
    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v5, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification_title"

    const-string v7, "id"

    sget-object v7, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->d()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v4, v2, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    sget-object v5, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const-string v6, "notification_name"

    const-string v7, "id"

    sget-object v7, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v5, v6, v9, v7}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->e()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    :cond_4
    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->k()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->j()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    :cond_5
    if-nez v3, :cond_f

    :cond_6
    sget-object v3, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->d()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->e()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v3, v4, v5, v1}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    :goto_3
    invoke-virtual {p0, v0, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_7
    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v2, Landroid/app/Notification;->flags:I

    goto/16 :goto_0

    :cond_8
    if-eqz v3, :cond_9

    iput v3, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_9
    iput v7, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_a
    sget-object v4, Lcom/igexin/a/b/g;->i:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {p3}, Lcom/igexin/a/b/b/d;->i()Ljava/lang/String;

    move-result-object v5

    const-string v6, "drawable"

    sget-object v6, Lcom/igexin/a/b/g;->g:Ljava/lang/String;

    invoke-virtual {v4, v5, v8, v6}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_b

    iput v4, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_b
    if-eqz v3, :cond_c

    iput v3, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_c
    iput v7, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_d
    if-eqz v3, :cond_e

    iput v3, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_e
    iput v7, v2, Landroid/app/Notification;->icon:I

    goto/16 :goto_1

    :cond_f
    iput-object v1, v2, Landroid/app/Notification;->contentIntent:Landroid/app/PendingIntent;

    goto :goto_3

    :cond_10
    move v6, v8

    goto/16 :goto_2
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;I)V
    .locals 9

    new-instance v8, Lcom/igexin/a/d/a/a/f/b;

    new-instance v1, Lcom/igexin/a/d/a/a/a/g;

    move-object v2, p0

    move-object v3, p4

    move-object v4, p2

    move-object v5, p3

    move-object v6, p1

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/igexin/a/d/a/a/a/g;-><init>(Lcom/igexin/a/d/a/a/a/f;Lcom/igexin/a/b/b/b;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    move-object v2, v8

    move-object v3, p1

    move-object v4, p2

    move-object v5, p4

    move v6, p5

    move-object v7, v1

    invoke-direct/range {v2 .. v7}, Lcom/igexin/a/d/a/a/f/b;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/b;ILcom/igexin/a/d/a/a/f/c;)V

    new-instance v2, Lcom/igexin/a/d/a/a/f/a;

    invoke-direct {v2, v8}, Lcom/igexin/a/d/a/a/f/a;-><init>(Lcom/igexin/a/g/a/b;)V

    const/4 v1, 0x2

    if-ne p5, v1, :cond_1

    move-object v0, p4

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v1, v0

    check-cast p4, Lcom/igexin/a/b/b/d;

    invoke-virtual {p4}, Lcom/igexin/a/b/b/d;->p()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/igexin/a/b/b/d;->a(I)V

    :cond_0
    :goto_0
    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v1

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;ZZ)Z

    return-void

    :cond_1
    const/4 v1, 0x3

    if-ne p5, v1, :cond_0

    move-object v0, p4

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v1, v0

    check-cast p4, Lcom/igexin/a/b/b/d;

    invoke-virtual {p4}, Lcom/igexin/a/b/b/d;->q()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Lcom/igexin/a/b/b/d;->b(I)V

    goto :goto_0
.end method

.method public b(Lcom/igexin/a/b/b/e;Lcom/igexin/a/b/b/b;)Z
    .locals 4

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    instance-of v1, p2, Lcom/igexin/a/b/b/d;

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v3

    move-object v0, p2

    check-cast v0, Lcom/igexin/a/b/b/d;

    move-object v1, v0

    invoke-virtual {p0, v2, v3, v1}, Lcom/igexin/a/d/a/a/a/f;->a(Ljava/lang/String;Ljava/lang/String;Lcom/igexin/a/b/b/d;)V

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

    :cond_0
    const/4 v1, 0x1

    return v1
.end method
