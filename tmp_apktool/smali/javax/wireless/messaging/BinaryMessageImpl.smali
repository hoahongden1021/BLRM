.class public Ljavax/wireless/messaging/BinaryMessageImpl;
.super Ljavax/wireless/messaging/MessageImpl;

# interfaces
.implements Ljavax/wireless/messaging/BinaryMessage;


# instance fields
.field private payloadData:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Ljavax/wireless/messaging/BinaryMessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljavax/wireless/messaging/MessageImpl;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    return-void
.end method


# virtual methods
.method public getPayloadData()[B
    .locals 1

    iget-object v0, p0, Ljavax/wireless/messaging/BinaryMessageImpl;->payloadData:[B

    return-object v0
.end method

.method public setPayloadData([B)V
    .locals 0

    iput-object p1, p0, Ljavax/wireless/messaging/BinaryMessageImpl;->payloadData:[B

    return-void
.end method
