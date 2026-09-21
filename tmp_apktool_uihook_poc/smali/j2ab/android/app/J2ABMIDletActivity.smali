.class public Lj2ab/android/app/J2ABMIDletActivity;
.super Landroid/app/Activity;

# interfaces
.implements Lj2ab/android/lcdui/Toolkit;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lj2ab/android/app/J2ABMIDletActivity$AlixOnCancelListener;
    }
.end annotation


# static fields
.field public static DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity; = null

.field private static IAlipayAuthenticate:Lcom/t4game/zhushen/alipay/IAliPayMessage; = null

.field public static final INFO_CPU:B = 0x3t

.field public static final INFO_IMEI:B = 0x0t

.field public static final INFO_MODEL:B = 0x4t

.field public static final INFO_NETWORK_OPERATOR:B = 0x2t

.field public static final INFO_PHONE_NUM:B = 0x1t

.field public static final INFO_VERSION_RELEASE:B = 0x5t

.field private static final JAD_PROPERTIES:Ljava/lang/String; = "jad.properties"

.field private static final MIDLET_PROPERTY:Ljava/lang/String; = "midlet"

.field public static final PARTNER:Ljava/lang/String; = "2088301302406399"

.field public static final SELLER:Ljava/lang/String; = "2088301302406399"

.field private static final SYSTEM_ERR:Ljava/lang/String; = "System.err"

.field private static final SYSTEM_OUT:Ljava/lang/String; = "System.out"

.field public static TAG:Ljava/lang/String; = null

.field private static final TARGET_HEAP_UTILIZATION:F = 0.8f

.field public static clientId:Ljava/lang/String;

.field private static devicesInfo:[Ljava/lang/String;

.field public static displayHeight:I

.field public static displayWidth:I

.field private static mProgress:Landroid/app/ProgressDialog;

.field public static orientation:I


# instance fields
.field private defaultView:Landroid/view/View;

.field private eventThread:Ljava/lang/Thread;

.field private handler:Landroid/os/Handler;

.field private lock:Ljava/lang/Object;

.field public mHandler:Landroid/os/Handler;

.field private menu:Landroid/view/Menu;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private tradeStatus_Body:Ljava/lang/String;

.field private tradeStatus_Out_Trade_No:Ljava/lang/String;

.field private tradeStatus_Subject:Ljava/lang/String;

.field private tradeStatus_total_fee:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const-string v0, "J2ABMIDletActivity"

    sput-object v0, Lj2ab/android/app/J2ABMIDletActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-object v0, Lj2ab/android/app/J2ABMIDletActivity;->mProgress:Landroid/app/ProgressDialog;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->lock:Ljava/lang/Object;

    new-instance v0, Lj2ab/android/app/J2ABMIDletActivity$3;

    invoke-direct {v0, p0}, Lj2ab/android/app/J2ABMIDletActivity$3;-><init>(Lj2ab/android/app/J2ABMIDletActivity;)V

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->mHandler:Landroid/os/Handler;

    sput-object p0, Lj2ab/android/app/J2ABMIDletActivity;->DEFAULT_ACTIVITY:Lj2ab/android/app/J2ABMIDletActivity;

    return-void
.end method

.method static synthetic access$000(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->lock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->defaultView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lj2ab/android/app/J2ABMIDletActivity;)Ljavax/microedition/midlet/MIDlet;
    .locals 1

    invoke-direct {p0}, Lj2ab/android/app/J2ABMIDletActivity;->createMIDlet()Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$302(Lj2ab/android/app/J2ABMIDletActivity;Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/midlet/MIDlet;
    .locals 0

    iput-object p1, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object p1
.end method

.method static synthetic access$400(Lj2ab/android/app/J2ABMIDletActivity;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lj2ab/android/app/J2ABMIDletActivity;->subString(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500()Lcom/t4game/zhushen/alipay/IAliPayMessage;
    .locals 1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->IAlipayAuthenticate:Lcom/t4game/zhushen/alipay/IAliPayMessage;

    return-object v0
.end method

.method static synthetic access$600(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Out_Trade_No:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Subject:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Body:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$900(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_total_fee:Ljava/lang/String;

    return-object v0
.end method

.method public static checkInfo()Z
    .locals 2

    const-string v1, "2088301302406399"

    const-string v0, "2088301302406399"

    const-string v0, "2088301302406399"

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-gtz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static closeProgress()V
    .locals 1

    :try_start_0
    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->mProgress:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->mProgress:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    const/4 v0, 0x0

    sput-object v0, Lj2ab/android/app/J2ABMIDletActivity;->mProgress:Landroid/app/ProgressDialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private createMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 2

    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    sput-object p0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    new-instance v0, Lcom/t4game/GameMIDlet;

    invoke-direct {v0}, Lcom/t4game/GameMIDlet;-><init>()V

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->menu:Landroid/view/Menu;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->menu:Landroid/view/Menu;

    invoke-virtual {v0, v1}, Ljavax/microedition/midlet/MIDlet;->setMenu(Landroid/view/Menu;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->menu:Landroid/view/Menu;

    :cond_0
    return-object v0
.end method

.method public static getChannelAuthenticate()Lcom/t4game/zhushen/alipay/IAliPayMessage;
    .locals 1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->IAlipayAuthenticate:Lcom/t4game/zhushen/alipay/IAliPayMessage;

    return-object v0
.end method

.method public static getDeviceInfo()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    return-object v0
.end method

.method public static getOutTradeNo()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "MMddHHmmss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0xf

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private initScreen()V
    .locals 2

    const-string v0, "window"

    invoke-virtual {p0, v0}, Lj2ab/android/app/J2ABMIDletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    invoke-interface {p0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getWidth()I

    move-result v1

    sput v1, Lj2ab/android/app/J2ABMIDletActivity;->displayWidth:I

    invoke-virtual {v0}, Landroid/view/Display;->getHeight()I

    move-result v1

    sput v1, Lj2ab/android/app/J2ABMIDletActivity;->displayHeight:I

    invoke-virtual {v0}, Landroid/view/Display;->getOrientation()I

    move-result v0

    sput v0, Lj2ab/android/app/J2ABMIDletActivity;->orientation:I

    return-void
.end method

.method private list(Ljava/lang/String;Landroid/content/res/AssetManager;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p2, p1}, Landroid/content/res/AssetManager;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "found "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " assets for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_0

    aget-object v2, v0, v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "asset "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lj2ab/android/app/J2ABMIDletActivity;->list(Ljava/lang/String;Landroid/content/res/AssetManager;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setChannelAuthenticate(Lcom/t4game/zhushen/alipay/IAliPayMessage;)V
    .locals 0

    sput-object p0, Lj2ab/android/app/J2ABMIDletActivity;->IAlipayAuthenticate:Lcom/t4game/zhushen/alipay/IAliPayMessage;

    return-void
.end method

.method private setDeviceInfo()V
    .locals 4

    const/4 v3, 0x1

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lj2ab/android/app/J2ABMIDletActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    aget-object v0, v0, v3

    if-nez v0, :cond_0

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const-string v1, "*******"

    aput-object v1, v0, v3

    :cond_0
    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const/4 v1, 0x2

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const/4 v1, 0x4

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v2, v0, v1

    sget-object v0, Lj2ab/android/app/J2ABMIDletActivity;->devicesInfo:[Ljava/lang/String;

    const/4 v1, 0x5

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    aput-object v2, v0, v1

    return-void
.end method

.method private subString(Ljava/lang/String;)V
    .locals 7

    const/4 v3, 0x1

    const-string v1, "out_trade_no="

    const-string v6, "&total_fee="

    const-string v5, "&subject="

    const-string v4, "&body="

    const-string v0, "out_trade_no="

    iput-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Out_Trade_No:Ljava/lang/String;

    const-string v0, "out_trade_no="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Out_Trade_No:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v0, v1

    const-string v1, "&subject="

    invoke-virtual {p1, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    sub-int v2, v1, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Out_Trade_No:Ljava/lang/String;

    const-string v0, "&subject="

    iput-object v5, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Subject:Ljava/lang/String;

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Subject:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "&body="

    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    sub-int v2, v1, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Subject:Ljava/lang/String;

    const-string v0, "&body="

    iput-object v4, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Body:Ljava/lang/String;

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Body:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "&total_fee="

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    sub-int v2, v1, v3

    invoke-virtual {p1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_Body:Ljava/lang/String;

    const-string v0, "&total_fee="

    iput-object v6, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_total_fee:Ljava/lang/String;

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_total_fee:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    const-string v1, "&notify_url="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    add-int/lit8 v0, v0, 0x1

    sub-int/2addr v1, v3

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->tradeStatus_total_fee:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getDefaultView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->defaultView:Landroid/view/View;

    return-object v0
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method public getMIDlet()Ljavax/microedition/midlet/MIDlet;
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-object v0
.end method

.method public getScreenHeight()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->defaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method public getScreenWidth()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->defaultView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    return v0
.end method

.method public inflate(I)Landroid/view/View;
    .locals 3

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public invokeAndWait(Ljava/lang/Runnable;)V
    .locals 3

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->eventThread:Ljava/lang/Thread;

    if-ne v0, v1, :cond_0

    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lj2ab/android/app/J2ABMIDletActivity$1;

    invoke-direct {v0, p0, p1}, Lj2ab/android/app/J2ABMIDletActivity$1;-><init>(Lj2ab/android/app/J2ABMIDletActivity;Ljava/lang/Runnable;)V

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity;->lock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lj2ab/android/app/J2ABMIDletActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->lock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    :try_start_2
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    :catch_0
    move-exception v0

    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const-string v2, ""

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v0, ""

    const-string v0, "********this is a portrait"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    invoke-direct {p0}, Lj2ab/android/app/J2ABMIDletActivity;->initScreen()V

    return-void

    :cond_1
    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const-string v0, ""

    const-string v0, "this is a landscape *************"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    const/16 v4, 0x400

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->gc()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->handler:Landroid/os/Handler;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->eventThread:Ljava/lang/Thread;

    invoke-direct {p0}, Lj2ab/android/app/J2ABMIDletActivity;->setDeviceInfo()V

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lj2ab/android/io/LogOutputStream;

    const-string v2, "System.err"

    invoke-direct {v1, v2}, Lj2ab/android/io/LogOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    new-instance v0, Ljava/io/PrintStream;

    new-instance v1, Lj2ab/android/io/LogOutputStream;

    const-string v2, "System.out"

    invoke-direct {v1, v2}, Lj2ab/android/io/LogOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    invoke-static {}, Lcom/igexin/sdk/PushManager;->getInstance()Lcom/igexin/sdk/PushManager;

    move-result-object v0

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/igexin/sdk/PushManager;->initialize(Landroid/content/Context;)V

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000e

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v4, v4}, Landroid/view/Window;->setFlags(II)V

    invoke-virtual {p0}, Lj2ab/android/app/J2ABMIDletActivity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lj2ab/android/app/J2ABMIDletActivity;->requestWindowFeature(I)Z

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    const v2, 0x3f4ccccd    # 0.8f

    invoke-virtual {v1, v2}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->defaultView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lj2ab/android/app/J2ABMIDletActivity;->setContentView(Landroid/view/View;)V

    const v0, 0x7f070003

    invoke-virtual {p0, v0}, Lj2ab/android/app/J2ABMIDletActivity;->setTheme(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p1}, Ljavax/microedition/midlet/MIDlet;->setMenu(Landroid/view/Menu;)V

    :goto_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0

    :cond_0
    iput-object p1, p0, Lj2ab/android/app/J2ABMIDletActivity;->menu:Landroid/view/Menu;

    goto :goto_0
.end method

.method protected onDestroy()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/microedition/midlet/MIDlet;->doDestroyApp(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    :cond_0
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->killProcess(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to destroy"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    invoke-static {}, Landroid/os/Debug;->stopMethodTracing()V

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-static {v0}, Ljavax/microedition/lcdui/Display;->getDisplay(Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/lcdui/Display;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Display;->getCurrent()Ljavax/microedition/lcdui/Displayable;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Displayable;->onCancel()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onPause()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->doPauseApp()V

    :cond_0
    const-string v0, "javalzy"

    const-string v1, "Debug.stopMethodTracing()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "unable to freeze app"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-nez v0, :cond_0

    new-instance v0, Lj2ab/android/app/J2ABMIDletActivity$2;

    invoke-direct {v0, p0}, Lj2ab/android/app/J2ABMIDletActivity$2;-><init>(Lj2ab/android/app/J2ABMIDletActivity;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method

.method public sendBackKeyDown()V
    .locals 0

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setCurrentDisplay(Ljavax/microedition/lcdui/Displayable;)V
    .locals 1

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Displayable;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lj2ab/android/app/J2ABMIDletActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public setDefualTypeface(Landroid/widget/TextView;)V
    .locals 0

    return-void
.end method
