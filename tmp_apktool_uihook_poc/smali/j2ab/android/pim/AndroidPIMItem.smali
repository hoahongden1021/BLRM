.class public Lj2ab/android/pim/AndroidPIMItem;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/pim/PIMItem;


# instance fields
.field private columnMappings:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private cursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    iput-object p2, p0, Lj2ab/android/pim/AndroidPIMItem;->columnMappings:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public countValues(I)I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAttributes(II)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected getColumnIndex(I)I
    .locals 3

    invoke-virtual {p0, p1}, Lj2ab/android/pim/AndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "no column name for field "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected getColumnName(I)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMItem;->columnMappings:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getDate(II)J
    .locals 2

    invoke-virtual {p0, p1}, Lj2ab/android/pim/AndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getDate(Ljava/lang/String;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getDate(Ljava/lang/String;)J
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lj2ab/android/pim/AndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMItem;->cursor:Landroid/database/Cursor;

    invoke-interface {v1, p1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(II)[Ljava/lang/String;
    .locals 1

    invoke-virtual {p0, p1}, Lj2ab/android/pim/AndroidPIMItem;->getColumnName(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj2ab/android/pim/AndroidPIMItem;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0, p1}, Lj2ab/android/pim/AndroidPIMItem;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    return-object v0
.end method
