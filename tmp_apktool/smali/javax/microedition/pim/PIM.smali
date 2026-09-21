.class public Ljavax/microedition/pim/PIM;
.super Ljava/lang/Object;


# static fields
.field public static final CONTACT_LIST:I = 0x1

.field private static INSTANCE:Ljavax/microedition/pim/PIM; = null

.field public static final READ_ONLY:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field public static final WRITE_ONLY:I = 0x2


# direct methods
.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getInstance()Ljavax/microedition/pim/PIM;
    .locals 1

    sget-object v0, Ljavax/microedition/pim/PIM;->INSTANCE:Ljavax/microedition/pim/PIM;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/microedition/pim/PIM;

    invoke-direct {v0}, Ljavax/microedition/pim/PIM;-><init>()V

    sput-object v0, Ljavax/microedition/pim/PIM;->INSTANCE:Ljavax/microedition/pim/PIM;

    :cond_0
    sget-object v0, Ljavax/microedition/pim/PIM;->INSTANCE:Ljavax/microedition/pim/PIM;

    return-object v0
.end method


# virtual methods
.method public listPIMLists(I)[Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "default"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public openPIMList(II)Ljavax/microedition/pim/PIMList;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Ljavax/microedition/pim/PIM;->openPIMList(IILjava/lang/String;)Ljavax/microedition/pim/PIMList;

    move-result-object v0

    return-object v0
.end method

.method public openPIMList(IILjava/lang/String;)Ljavax/microedition/pim/PIMList;
    .locals 1

    new-instance v0, Lj2ab/android/pim/AndroidContactList;

    invoke-direct {v0}, Lj2ab/android/pim/AndroidContactList;-><init>()V

    return-object v0
.end method
