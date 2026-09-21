.class public interface abstract Ljavax/wireless/messaging/MessageConnection;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/io/Connection;


# static fields
.field public static final BINARY_MESSAGE:Ljava/lang/String; = "binary"

.field public static final TEXT_MESSAGE:Ljava/lang/String; = "text"


# virtual methods
.method public abstract newMessage(Ljava/lang/String;)Ljavax/wireless/messaging/Message;
.end method

.method public abstract newMessage(Ljava/lang/String;Ljava/lang/String;)Ljavax/wireless/messaging/Message;
.end method

.method public abstract numberOfSegments(Ljavax/wireless/messaging/Message;)I
.end method

.method public abstract receive()Ljavax/wireless/messaging/Message;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract send(Ljavax/wireless/messaging/Message;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/io/InterruptedIOException;
        }
    .end annotation
.end method

.method public abstract setMessageListener(Ljavax/wireless/messaging/MessageListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
