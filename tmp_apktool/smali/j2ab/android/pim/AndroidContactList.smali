.class public Lj2ab/android/pim/AndroidContactList;
.super Lj2ab/android/pim/AndroidPIMList;

# interfaces
.implements Ljavax/microedition/pim/ContactList;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2ab/android/pim/AndroidContactList$AndroidContact;,
        Lj2ab/android/pim/AndroidContactList$PhoneNumber;
    }
.end annotation


# static fields
.field private static final DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;
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

.field private static final DEFAULT_COLUMN_TYPES:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const-string v6, "number"

    const-string v5, "name"

    const-string v4, "_id"

    const-class v3, Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_TYPES:Ljava/util/Map;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    const/16 v1, 0x11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "_id"

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_TYPES:Ljava/util/Map;

    const-string v1, "_id"

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    const/4 v1, 0x6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "name"

    invoke-interface {v0, v1, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_TYPES:Ljava/util/Map;

    const-string v1, "name"

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    const/16 v1, 0xf

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "number"

    invoke-interface {v0, v1, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_TYPES:Ljava/util/Map;

    const-string v1, "number"

    const-class v1, Ljava/lang/String;

    invoke-interface {v0, v6, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 7

    const-string v0, "Contacts"

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Landroid/provider/Contacts$People;->CONTENT_URI:Landroid/net/Uri;

    sget-object v3, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "primary_email"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "primary_phone"

    aput-object v6, v4, v5

    invoke-static {v3, v4}, Lj2ab/android/pim/AndroidContactList;->convert(Ljava/util/Collection;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lj2ab/android/pim/AndroidPIMList;-><init>(Ljava/lang/String;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$000()Ljava/util/Map;
    .locals 1

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/Map;
    .locals 1

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_TYPES:Ljava/util/Map;

    return-object v0
.end method


# virtual methods
.method protected create(Landroid/database/Cursor;)Ljavax/microedition/pim/PIMItem;
    .locals 1

    new-instance v0, Lj2ab/android/pim/AndroidContactList$AndroidContact;

    invoke-direct {v0, p0, p1}, Lj2ab/android/pim/AndroidContactList$AndroidContact;-><init>(Lj2ab/android/pim/AndroidContactList;Landroid/database/Cursor;)V

    return-object v0
.end method

.method public isSupportedField(I)Z
    .locals 2

    sget-object v0, Lj2ab/android/pim/AndroidContactList;->DEFAULT_COLUMN_MAPPINGS:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
