.class public Ljavax/microedition/media/Manager;
.super Ljava/lang/Object;


# static fields
.field public static final TONE_DEVICE_LOCATOR:Ljava/lang/String; = "tone_device"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createPlayer(Ljava/io/InputStream;Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public static createPlayer(Ljava/lang/String;)Ljavax/microedition/media/Player;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    const-string v0, "tone_device"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/media/TonePlayer;

    invoke-direct {v0}, Ljavax/microedition/media/TonePlayer;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljavax/microedition/media/J2ABMIDIPlayer;

    invoke-direct {v0, p0}, Ljavax/microedition/media/J2ABMIDIPlayer;-><init>(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public static getSupportedContentTypes(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method public static playTone(III)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    return-void
.end method


# virtual methods
.method public getSupportedProtocols(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method
