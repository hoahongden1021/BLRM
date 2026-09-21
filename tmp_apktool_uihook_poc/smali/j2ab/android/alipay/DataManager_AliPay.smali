.class public Lj2ab/android/alipay/DataManager_AliPay;
.super Ljava/lang/Object;


# static fields
.field private static instance:Lj2ab/android/alipay/DataManager_AliPay;


# instance fields
.field private amount:I

.field private goodsDesc:Ljava/lang/String;

.field private goodsName:Ljava/lang/String;

.field private orderId:Ljava/lang/String;

.field private state:B


# direct methods
.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "\u5929\u5e01"

    iput-object v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->goodsName:Ljava/lang/String;

    return-void
.end method

.method public static getInstance()Lj2ab/android/alipay/DataManager_AliPay;
    .locals 1

    sget-object v0, Lj2ab/android/alipay/DataManager_AliPay;->instance:Lj2ab/android/alipay/DataManager_AliPay;

    if-nez v0, :cond_0

    new-instance v0, Lj2ab/android/alipay/DataManager_AliPay;

    invoke-direct {v0}, Lj2ab/android/alipay/DataManager_AliPay;-><init>()V

    sput-object v0, Lj2ab/android/alipay/DataManager_AliPay;->instance:Lj2ab/android/alipay/DataManager_AliPay;

    :cond_0
    sget-object v0, Lj2ab/android/alipay/DataManager_AliPay;->instance:Lj2ab/android/alipay/DataManager_AliPay;

    return-object v0
.end method


# virtual methods
.method public getAmount()I
    .locals 1

    iget v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->amount:I

    return v0
.end method

.method public getGoodsDesc()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->goodsDesc:Ljava/lang/String;

    return-object v0
.end method

.method public getGoodsName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->goodsName:Ljava/lang/String;

    return-object v0
.end method

.method public getOrderId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->orderId:Ljava/lang/String;

    return-object v0
.end method

.method public getState()B
    .locals 1

    iget-byte v0, p0, Lj2ab/android/alipay/DataManager_AliPay;->state:B

    return v0
.end method

.method public setAmount(I)V
    .locals 0

    iput p1, p0, Lj2ab/android/alipay/DataManager_AliPay;->amount:I

    return-void
.end method

.method public setGoodDesc(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/alipay/DataManager_AliPay;->goodsDesc:Ljava/lang/String;

    return-void
.end method

.method public setOrderId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/alipay/DataManager_AliPay;->orderId:Ljava/lang/String;

    return-void
.end method

.method public setState(B)V
    .locals 0

    iput-byte p1, p0, Lj2ab/android/alipay/DataManager_AliPay;->state:B

    return-void
.end method
