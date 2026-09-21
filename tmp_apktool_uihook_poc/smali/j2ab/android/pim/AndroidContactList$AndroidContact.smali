.class Lj2ab/android/pim/AndroidContactList$AndroidContact;
.super Lj2ab/android/pim/PreloadingAndroidPIMItem;

# interfaces
.implements Ljavax/microedition/pim/Contact;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lj2ab/android/pim/AndroidContactList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AndroidContact"
.end annotation


# instance fields
.field private emailAddress:Ljava/lang/String;

.field private phoneNumbers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lj2ab/android/pim/AndroidContactList$PhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lj2ab/android/pim/AndroidContactList;


# direct methods
.method public constructor <init>(Lj2ab/android/pim/AndroidContactList;Landroid/database/Cursor;)V
    .locals 12

    iput-object p1, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->this$0:Lj2ab/android/pim/AndroidContactList;

    invoke-static {}, Lj2ab/android/pim/AndroidContactList;->access$000()Ljava/util/Map;

    move-result-object v0

    invoke-static {}, Lj2ab/android/pim/AndroidContactList;->access$100()Ljava/util/Map;

    move-result-object v1

    invoke-direct {p0, p2, v0, v1}, Lj2ab/android/pim/PreloadingAndroidPIMItem;-><init>(Landroid/database/Cursor;Ljava/util/Map;Ljava/util/Map;)V

    const/16 v0, 0x11

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lj2ab/android/pim/AndroidContactList$AndroidContact;->getString(II)Ljava/lang/String;

    move-result-object v6

    const-string v0, "primary_phone"

    invoke-virtual {p0, v0}, Lj2ab/android/pim/AndroidContactList$AndroidContact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v0, "primary_email"

    invoke-virtual {p0, v0}, Lj2ab/android/pim/AndroidContactList$AndroidContact;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    sget-object v1, Landroid/provider/Contacts$ContactMethods;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p1, Lj2ab/android/pim/AndroidContactList;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "data"

    aput-object v4, v2, v3

    const-string v3, "person=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "data"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "type"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string v4, "_id"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    if-eqz v1, :cond_1

    const-string v11, "vnd.android.cursor.dir/email"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_2

    :cond_1
    move-object v1, v5

    :cond_2
    if-eqz v10, :cond_0

    invoke-virtual {v10, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    move-object v1, v5

    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v1, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->emailAddress:Ljava/lang/String;

    sget-object v1, Landroid/provider/Contacts$Phones;->CONTENT_URI:Landroid/net/Uri;

    iget-object v0, p1, Lj2ab/android/pim/AndroidContactList;->contentResolver:Landroid/content/ContentResolver;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "_id"

    aput-object v4, v2, v3

    const/4 v3, 0x1

    const-string v4, "number"

    aput-object v4, v2, v3

    const/4 v3, 0x2

    const-string v4, "type"

    aput-object v4, v2, v3

    const/4 v3, 0x3

    const-string v4, "person"

    aput-object v4, v2, v3

    const-string v3, "person=?"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v6, v4, v5

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "number"

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    const-string v2, "type"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    const-string v3, "_id"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v6, v10, :cond_4

    or-int/lit8 v9, v9, 0x10

    :cond_4
    const/4 v10, 0x3

    if-ne v6, v10, :cond_5

    or-int/lit16 v9, v9, 0x200

    :cond_5
    const/4 v10, 0x1

    if-ne v6, v10, :cond_8

    or-int/lit8 v6, v9, 0x8

    :goto_1
    if-eqz v8, :cond_6

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    or-int/lit16 v6, v6, 0x80

    :cond_6
    new-instance v8, Lj2ab/android/pim/AndroidContactList$PhoneNumber;

    invoke-direct {v8, v5, v6}, Lj2ab/android/pim/AndroidContactList$PhoneNumber;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_7
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    iput-object v4, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->phoneNumbers:Ljava/util/ArrayList;

    return-void

    :cond_8
    move v6, v9

    goto :goto_1
.end method


# virtual methods
.method public countValues(I)I
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->countValues(I)I

    move-result v0

    goto :goto_0
.end method

.method public getAttributes(II)I
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj2ab/android/pim/AndroidContactList$PhoneNumber;

    invoke-virtual {p0}, Lj2ab/android/pim/AndroidContactList$PhoneNumber;->getAttributes()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->emailAddress:Ljava/lang/String;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    invoke-super {p0, p1, p2}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getAttributes(II)I

    move-result v0

    goto :goto_0
.end method

.method public getPreferredIndex(I)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getString(II)Ljava/lang/String;
    .locals 1

    const/16 v0, 0xf

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->phoneNumbers:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lj2ab/android/pim/AndroidContactList$PhoneNumber;

    invoke-virtual {p0}, Lj2ab/android/pim/AndroidContactList$PhoneNumber;->getNumber()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lj2ab/android/pim/AndroidContactList$AndroidContact;->emailAddress:Ljava/lang/String;

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public getStringArray(II)[Ljava/lang/String;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v0, 0x7

    if-ne p1, v0, :cond_1

    const/4 v0, 0x6

    invoke-virtual {p0, v0, v4}, Lj2ab/android/pim/AndroidContactList$AndroidContact;->getString(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x10

    invoke-virtual {p0, v2, v4}, Lj2ab/android/pim/AndroidContactList$AndroidContact;->getString(II)Ljava/lang/String;

    move-result-object v2

    if-ltz v1, :cond_0

    invoke-virtual {v0, v4, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v1, v3

    :goto_0
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    const/4 v0, 0x2

    aput-object v2, v3, v0

    const/4 v0, 0x3

    aput-object v5, v3, v0

    const/4 v0, 0x4

    aput-object v5, v3, v0

    move-object v0, v3

    :goto_1
    return-object v0

    :cond_0
    move-object v1, v0

    move-object v0, v5

    goto :goto_0

    :cond_1
    invoke-super {p0, p1, p2}, Lj2ab/android/pim/PreloadingAndroidPIMItem;->getStringArray(II)[Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method
