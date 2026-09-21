.class public Ljavax/microedition/lcdui/Display;
.super Ljava/lang/Object;


# static fields
.field public static final ALERT:I = 0x1

.field public static final CHOICE_GROUP_ELEMENT:I = 0x2

.field public static final COLOR_BACKGROUND:I = 0x0

.field public static final COLOR_BORDER:I = 0x2

.field public static final COLOR_FOREGROUND:I = 0x1

.field public static final COLOR_HIGHLIGHTED_BACKGROUND:I = 0x3

.field public static final COLOR_HIGHLIGHTED_BORDER:I = 0x5

.field public static final COLOR_HIGHLIGHTED_FOREGROUND:I = 0x4

.field private static final DISPLAYS:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljavax/microedition/midlet/MIDlet;",
            "Ljavax/microedition/lcdui/Display;",
            ">;"
        }
    .end annotation
.end field

.field public static final LIST_ELEMENT:I


# instance fields
.field private current:Ljavax/microedition/lcdui/Displayable;

.field private midlet:Ljavax/microedition/midlet/MIDlet;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/util/Hashtable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    sput-object v0, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    return-void
.end method

.method private constructor <init>(Ljavax/microedition/midlet/MIDlet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/lcdui/Display;)Ljavax/microedition/midlet/MIDlet;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public static getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;
    .locals 2

    sget-object v0, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    invoke-virtual {v0, p0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Display;

    if-nez v0, :cond_0

    new-instance v0, Ljavax/microedition/lcdui/Display;

    invoke-direct {v0, p0}, Ljavax/microedition/lcdui/Display;-><init>(Ljavax/microedition/midlet/MIDlet;)V

    sget-object v1, Ljavax/microedition/lcdui/Display;->DISPLAYS:Ljava/util/Hashtable;

    invoke-virtual {v1, p0, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getBestImageHeight(I)I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public getBestImageWidth(I)I
    .locals 1

    const/16 v0, 0x30

    return v0
.end method

.method public getColor(I)I
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    const/high16 v0, 0xff0000

    :goto_0
    :pswitch_0
    return v0

    :pswitch_1
    const v0, 0xffffff

    goto :goto_0

    :pswitch_2
    const v0, 0x888888

    goto :goto_0

    :pswitch_3
    const v0, 0xff8600

    goto :goto_0

    :pswitch_4
    const v0, 0xaaaaaa

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public getCurrent()Ljavax/microedition/lcdui/Displayable;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    return-object v0
.end method

.method public getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Alert;Ljavax/microedition/lcdui/Displayable;)V
    .locals 1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Ljavax/microedition/lcdui/Display;->setCurrent(Ljavax/microedition/lcdui/Displayable;)V

    :cond_0
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Alert;->getDialog()Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_1
    return-void
.end method

.method public setCurrent(Ljavax/microedition/lcdui/Displayable;)V
    .locals 3

    instance-of v0, p1, Ljavax/microedition/lcdui/Alert;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Displayable;->initDisplayable(Ljavax/microedition/midlet/MIDlet;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    if-eq p1, v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    iput-object p1, p0, Ljavax/microedition/lcdui/Display;->current:Ljavax/microedition/lcdui/Displayable;

    iget-object v1, p0, Ljavax/microedition/lcdui/Display;->midlet:Ljavax/microedition/midlet/MIDlet;

    new-instance v2, Ljavax/microedition/lcdui/Display$1;

    invoke-direct {v2, p0, v0, p1}, Ljavax/microedition/lcdui/Display$1;-><init>(Ljavax/microedition/lcdui/Display;Ljavax/microedition/lcdui/Displayable;Ljavax/microedition/lcdui/Displayable;)V

    invoke-virtual {v1, v2}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
