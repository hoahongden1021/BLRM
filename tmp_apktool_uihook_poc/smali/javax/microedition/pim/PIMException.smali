.class public Ljavax/microedition/pim/PIMException;
.super Ljava/lang/Exception;


# static fields
.field public static final FEATURE_NOT_SUPPORTED:I = 0x1

.field public static final GENERAL_ERROR:I = 0x2

.field public static final LIST_CLOSED:I = 0x3

.field public static final LIST_NOT_ACCESSIBLE:I = 0x4

.field public static final MAX_CATEGORIES_EXCEEDED:I = 0x5

.field public static final UNSUPPORTED_VERSION:I = 0x6

.field public static final UPDATE_ERROR:I = 0x7


# instance fields
.field private reason:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Ljavax/microedition/pim/PIMException;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput p2, p0, Ljavax/microedition/pim/PIMException;->reason:I

    return-void
.end method


# virtual methods
.method public getReason()I
    .locals 1

    iget v0, p0, Ljavax/microedition/pim/PIMException;->reason:I

    return v0
.end method
