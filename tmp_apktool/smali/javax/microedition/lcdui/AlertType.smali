.class public Ljavax/microedition/lcdui/AlertType;
.super Ljava/lang/Object;


# static fields
.field public static final ALARM:Ljavax/microedition/lcdui/AlertType;

.field public static final CONFIRMATION:Ljavax/microedition/lcdui/AlertType;

.field public static final ERROR:Ljavax/microedition/lcdui/AlertType;

.field public static final INFO:Ljavax/microedition/lcdui/AlertType;

.field public static final WARNING:Ljavax/microedition/lcdui/AlertType;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->ALARM:Ljavax/microedition/lcdui/AlertType;

    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->CONFIRMATION:Ljavax/microedition/lcdui/AlertType;

    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->ERROR:Ljavax/microedition/lcdui/AlertType;

    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->INFO:Ljavax/microedition/lcdui/AlertType;

    new-instance v0, Ljavax/microedition/lcdui/AlertType;

    invoke-direct {v0}, Ljavax/microedition/lcdui/AlertType;-><init>()V

    sput-object v0, Ljavax/microedition/lcdui/AlertType;->WARNING:Ljavax/microedition/lcdui/AlertType;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public playSound(Ljavax/microedition/lcdui/Display;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
