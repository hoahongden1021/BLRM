.class public Ljavax/microedition/media/control/VolumeControl;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/media/Control;


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private instanceControl:Ljavax/microedition/media/control/VolumeControl;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->audioManager:Landroid/media/AudioManager;

    iput-object p0, p0, Ljavax/microedition/media/control/VolumeControl;->instanceControl:Ljavax/microedition/media/control/VolumeControl;

    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->audioManager:Landroid/media/AudioManager;

    iget-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->setMode(I)V

    return-void
.end method


# virtual methods
.method public getLevel()I
    .locals 2

    iget-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    return v0
.end method

.method public getVolumeControl()Ljavax/microedition/media/control/VolumeControl;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->instanceControl:Ljavax/microedition/media/control/VolumeControl;

    return-object v0
.end method

.method public isMuted()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setLevel(I)V
    .locals 3

    iget-object v0, p0, Ljavax/microedition/media/control/VolumeControl;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/media/AudioManager;->setStreamVolume(III)V

    return-void
.end method

.method public setMute(Z)V
    .locals 0

    return-void
.end method
