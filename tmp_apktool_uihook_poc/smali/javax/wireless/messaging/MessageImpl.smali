.class public Ljavax/wireless/messaging/MessageImpl;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/wireless/messaging/Message;


# instance fields
.field protected address:Ljava/lang/String;

.field protected timestamp:Ljava/util/Date;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ljavax/wireless/messaging/MessageImpl;->timestamp:Ljava/util/Date;

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Ljavax/wireless/messaging/MessageImpl;->setAddress(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/wireless/messaging/MessageImpl;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getTimestamp()Ljava/util/Date;
    .locals 1

    iget-object v0, p0, Ljavax/wireless/messaging/MessageImpl;->timestamp:Ljava/util/Date;

    return-object v0
.end method

.method public setAddress(Ljava/lang/String;)V
    .locals 2

    const-string v1, "sms://"

    const-string v0, "sms://"

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "sms://"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Ljavax/wireless/messaging/MessageImpl;->address:Ljava/lang/String;

    return-void

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
