.class public Ljavax/microedition/media/TonePlayer;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/media/Player;
.implements Ljavax/microedition/media/control/ToneControl;
.implements Ljavax/microedition/media/Controllable;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0

    return-void
.end method

.method public close()V
    .locals 0

    return-void
.end method

.method public deallocate()V
    .locals 0

    return-void
.end method

.method public getContentType()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getControl(Ljava/lang/String;)Ljavax/microedition/media/Control;
    .locals 1

    const-string v0, "ToneControl"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getControls()[Ljavax/microedition/media/Control;
    .locals 2

    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/microedition/media/Control;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    return-object v0
.end method

.method public getDuration()J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getLevel()I
    .locals 1

    const/4 v0, 0x0

    return v0
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

.method public isMuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public prefetch()V
    .locals 0

    return-void
.end method

.method public realize()V
    .locals 0

    return-void
.end method

.method public removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
    .locals 0

    return-void
.end method

.method public setLevel(I)V
    .locals 0

    return-void
.end method

.method public setLoopCount(I)V
    .locals 0

    return-void
.end method

.method public setMediaTime(J)J
    .locals 2

    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method

.method public setSequence([B)V
    .locals 0

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
