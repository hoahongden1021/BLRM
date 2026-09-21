.class public Ljavax/wireless/messaging/TextMessageImpl;
.super Ljavax/wireless/messaging/MessageImpl;

# interfaces
.implements Ljavax/wireless/messaging/TextMessage;


# instance fields
.field private payloadText:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/wireless/messaging/TextMessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/wireless/messaging/MessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getPayloadText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/wireless/messaging/TextMessageImpl;->payloadText:Ljava/lang/String;

    return-object v0
.end method

.method public setPayloadText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/wireless/messaging/TextMessageImpl;->payloadText:Ljava/lang/String;

    return-void
.end method
