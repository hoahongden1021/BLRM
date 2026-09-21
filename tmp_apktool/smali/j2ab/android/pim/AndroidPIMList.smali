.class public abstract Lj2ab/android/pim/AndroidPIMList;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/pim/PIMList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;
    }
.end annotation


# instance fields
.field private columnNames:[Ljava/lang/String;

.field protected contentResolver:Landroid/content/ContentResolver;

.field private contentURI:Landroid/net/Uri;

.field private cursors:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2ab/android/pim/AndroidPIMList;->name:Ljava/lang/String;

    iput-object p2, p0, Lj2ab/android/pim/AndroidPIMList;->contentResolver:Landroid/content/ContentResolver;

    iput-object p3, p0, Lj2ab/android/pim/AndroidPIMList;->contentURI:Landroid/net/Uri;

    iput-object p4, p0, Lj2ab/android/pim/AndroidPIMList;->columnNames:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lj2ab/android/pim/AndroidPIMList;->cursors:Ljava/util/Collection;

    return-void
.end method

.method public static final convert(Ljava/util/Collection;)[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {p0, v0}, Lj2ab/android/pim/AndroidPIMList;->convert(Ljava/util/Collection;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final convert(Ljava/util/Collection;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")[",
            "Ljava/lang/String;"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    array-length v1, p1

    add-int/2addr v0, v1

    new-array v0, v0, [Ljava/lang/String;

    array-length v1, p1

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v1, p1

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList;->cursors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList;->cursors:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    return-void
.end method

.method protected abstract create(Landroid/database/Cursor;)Ljavax/microedition/pim/PIMItem;
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList;->name:Ljava/lang/String;

    return-object v0
.end method

.method public items()Ljava/util/Enumeration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList;->contentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMList;->contentURI:Landroid/net/Uri;

    iget-object v2, p0, Lj2ab/android/pim/AndroidPIMList;->columnNames:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    if-nez v0, :cond_2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lj2ab/android/pim/AndroidPIMList;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lj2ab/android/pim/AndroidPIMList;->columnNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lj2ab/android/pim/AndroidPIMList;->columnNames:[Ljava/lang/String;

    array-length v2, v2

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ge v1, v2, :cond_0

    const-string v2, ", "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Ljavax/microedition/pim/PIMException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid query "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lj2ab/android/pim/AndroidPIMList;->contentURI:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/microedition/pim/PIMException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_2
    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMList;->cursors:Ljava/util/Collection;

    invoke-interface {v1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    new-instance v1, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;

    invoke-direct {v1, p0, v0}, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;-><init>(Lj2ab/android/pim/AndroidPIMList;Landroid/database/Cursor;)V

    return-object v1
.end method
