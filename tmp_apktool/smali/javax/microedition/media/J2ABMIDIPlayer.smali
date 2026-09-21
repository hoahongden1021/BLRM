.class public Ljavax/microedition/media/J2ABMIDIPlayer;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/media/Player;


# instance fields
.field private player:Landroid/media/MediaPlayer;

.field private volumeControl:Ljavax/microedition/media/control/VolumeControl;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const/high16 v4, 0x7f040000

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x4

    sub-int/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    packed-switch v0, :pswitch_data_0

    move v0, v4

    :goto_1
    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    new-instance v0, Ljavax/microedition/media/control/VolumeControl;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_MIDLET:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/media/control/VolumeControl;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->volumeControl:Ljavax/microedition/media/control/VolumeControl;

    return-void

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0

    :pswitch_0
    move v0, v4

    goto :goto_1

    :pswitch_1
    const v0, 0x7f040001

    goto :goto_1

    :pswitch_2
    const v0, 0x7f040002

    goto :goto_1

    :pswitch_3
    const v0, 0x7f040003

    goto :goto_1

    :pswitch_4
    const v0, 0x7f040004

    goto :goto_1

    :pswitch_5
    const v0, 0x7f040005

    goto :goto_1

    :pswitch_6
    const v0, 0x7f040006

    goto :goto_1

    :pswitch_7
    const v0, 0x7f040007

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    return-void
.end method

.method public deallocate()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/Control;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->volumeControl:Ljavax/microedition/media/control/VolumeControl;

    return-object v0
.end method

.method public getControls()[Ljavax/microedition/media/Control;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getMediaTime()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prefetch()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    return-void
.end method

.method public realize()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    return-void
.end method

.method public removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0

    return-void
.end method

.method public setLoopCount(I)V
    .locals 2

    if-lez p1, :cond_0

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    goto :goto_0
.end method

.method public setMediaTime(J)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public start()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method

.method public stop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/microedition/media/J2ABMIDIPlayer;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    return-void
.end method
