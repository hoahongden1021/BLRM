.class Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2ab/android/pim/AndroidPIMList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidPIMListEnumeration"
.end annotation


# instance fields
.field private cursor:Landroid/database/Cursor;

.field final synthetic this$0:Lj2ab/android/pim/AndroidPIMList;


# direct methods
.method public constructor <init>(Lj2ab/android/pim/AndroidPIMList;Landroid/database/Cursor;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->this$0:Lj2ab/android/pim/AndroidPIMList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->cursor:Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->cursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->this$0:Lj2ab/android/pim/AndroidPIMList;

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->cursor:Landroid/database/Cursor;

    invoke-virtual {v0, v1}, Lj2ab/android/pim/AndroidPIMList;->create(Landroid/database/Cursor;)Ljavax/microedition/pim/PIMItem;

    move-result-object v0

    iget-object v1, p0, Lj2ab/android/pim/AndroidPIMList$AndroidPIMListEnumeration;->cursor:Landroid/database/Cursor;

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    return-object v0
.end method
