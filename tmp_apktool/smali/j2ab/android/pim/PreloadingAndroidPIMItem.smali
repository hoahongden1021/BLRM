.class public Lj2ab/android/pim/PreloadingAndroidPIMItem;
.super Lj2ab/android/pim/AndroidPIMItem;


# instance fields
.field private valueMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/Map;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lj2ab/android/pim/AndroidPIMItem;-><init>(Landroid/database/Cursor;Ljava/util/Map;)V

    new-instance v0, Ljava/util/HashMap;

    invoke-interface {p3}, Ljava/util/Map;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lj2ab/android/pim/PreloadingAndroidPIMItem;->valueMappings:Ljava/util/Map;

    invoke-virtual {p0, p3}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->preload(Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public getDate(II)J
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/PreloadingAndroidPIMItem;->valueMappings:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/PreloadingAndroidPIMItem;->valueMappings:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getStringArray(II)[Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/PreloadingAndroidPIMItem;->valueMappings:Ljava/util/Map;

    invoke-virtual {p0, p1}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method protected preload(Ljava/util/Map;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    if-ne v1, v3, :cond_0

    invoke-super {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    iget-object v3, p0, Lj2ab/android/pim/PreloadingAndroidPIMItem;->valueMappings:Ljava/util/Map;

    invoke-interface {v3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const-class v3, [Ljava/lang/String;

    if-ne v1, v3, :cond_1

    invoke-super {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    const-class v3, Ljava/util/Date;

    if-ne v1, v3, :cond_2

    invoke-super {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getDate(Ljava/lang/String;)J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    goto :goto_1

    :cond_2
    const/4 v1, 0x0

    goto :goto_1

    :cond_3
    return-void
.end method
