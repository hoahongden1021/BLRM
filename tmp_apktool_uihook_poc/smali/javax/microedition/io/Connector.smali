.class public Ljavax/microedition/io/Connector;
.super Ljava/lang/Object;


# static fields
.field private static final PROTOCOL_FILE:Ljava/lang/String; = "file:"

.field private static final PROTOCOL_HTTP:Ljava/lang/String; = "http:"

.field private static final PROTOCOL_SMS:Ljava/lang/String; = "sms:"

.field private static final PROTOCOL_SOCKET:Ljava/lang/String; = "socket:"

.field public static final READ:I = 0x1

.field public static final READ_WRITE:I = 0x3

.field public static final WRITE:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final open(Ljava/lang/String;)Ljavax/microedition/io/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static final open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-string v0, ""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Connection.open:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    const-string v1, "file:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    new-instance v0, Lj2ab/android/io/file/AndroidFileConnection;

    invoke-direct {v0, p0}, Lj2ab/android/io/file/AndroidFileConnection;-><init>(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    const-string v1, "socket:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/16 v0, 0x3a

    invoke-virtual {p0, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "socket://"

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    new-instance v2, Lj2ab/android/io/AndroidSocketConnection;

    invoke-direct {v2, v0, v1}, Lj2ab/android/io/AndroidSocketConnection;-><init>(Ljava/lang/String;I)V

    move-object v0, v2

    goto :goto_0

    :cond_2
    const-string v1, "http:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v0, Lj2ab/android/io/AndroidURLConnection;

    invoke-direct {v0, p0}, Lj2ab/android/io/AndroidURLConnection;-><init>(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    const-string v1, "sms:"

    invoke-virtual {p0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v0, Ljavax/wireless/messaging/MessageConnectionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljavax/wireless/messaging/MessageConnectionImpl;-><init>(Ljava/lang/String;IZ)V

    goto :goto_0
.end method

.method public static final open(Ljava/lang/String;IZ)Ljavax/microedition/io/Connection;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x3

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object v0

    return-object v0
.end method

.method public static final openDataInputStream(Ljava/lang/String;)Ljava/io/DataInputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataInputStream;

    invoke-static {p0}, Ljavax/microedition/io/Connector;->openInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    return-object v0
.end method

.method public static final openDataOutputStream(Ljava/lang/String;)Ljava/io/DataOutputStream;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Ljava/io/DataOutputStream;

    invoke-static {p0}, Ljavax/microedition/io/Connector;->openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-object v0
.end method

.method public static final openInputStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object p0

    check-cast p0, Ljavax/microedition/io/InputConnection;

    invoke-interface {p0}, Ljavax/microedition/io/InputConnection;->openInputStream()Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public static final openOutputStream(Ljava/lang/String;)Ljava/io/OutputStream;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljavax/microedition/io/Connector;->open(Ljava/lang/String;I)Ljavax/microedition/io/Connection;

    move-result-object p0

    check-cast p0, Ljavax/microedition/io/OutputConnection;

    invoke-interface {p0}, Ljavax/microedition/io/OutputConnection;->openOutputStream()Ljava/io/OutputStream;

    move-result-object v0

    return-object v0
.end method
