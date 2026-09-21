.class public Ljavax/microedition/lcdui/Alert;
.super Ljavax/microedition/lcdui/Screen;


# static fields
.field public static final DEFAULT_TIMEOUT:J = 0xbb8L

.field public static final FOREVER:J = -0x1L


# instance fields
.field private alert:Landroid/widget/Toast;

.field private image:Ljavax/microedition/lcdui/Image;

.field private message:Ljava/lang/String;

.field private timeout:J

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    const-wide/16 v0, 0xbb8

    iput-wide v0, p0, Ljavax/microedition/lcdui/Alert;->timeout:J

    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->title:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/lcdui/Alert;)Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/widget/Toast;

    return-object v0
.end method

.method static synthetic access$002(Ljavax/microedition/lcdui/Alert;Landroid/widget/Toast;)Landroid/widget/Toast;
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/widget/Toast;

    return-object p1
.end method

.method static synthetic access$100(Ljavax/microedition/lcdui/Alert;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->message:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public disposeDisplayable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/widget/Toast;

    return-void
.end method

.method public getDialog()Landroid/widget/Toast;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Alert;->alert:Landroid/widget/Toast;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 1

    new-instance v0, Ljavax/microedition/lcdui/Alert$1;

    invoke-direct {v0, p0, p1}, Ljavax/microedition/lcdui/Alert$1;-><init>(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/midlet/MIDlet;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Alert;->message:Ljava/lang/String;

    return-void
.end method

.method public setTimeout(J)V
    .locals 0

    iput-wide p1, p0, Ljavax/microedition/lcdui/Alert;->timeout:J

    return-void
.end method
