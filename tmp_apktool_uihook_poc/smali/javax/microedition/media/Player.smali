.class public interface abstract Ljavax/microedition/media/Player;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/media/Controllable;


# static fields
.field public static final CLOSED:I = 0x1

.field public static final PREFETCHED:I = 0x2

.field public static final REALIZED:I = 0x3

.field public static final STARTED:I = 0x4

.field public static final TIME_UNKNOWN:J = 0x5L

.field public static final UNREALIZED:I = 0x6


# virtual methods
.method public abstract addPlayerListener(Ljavax/microedition/media/PlayerListener;)V
.end method

.method public abstract close()V
.end method

.method public abstract deallocate()V
.end method

.method public abstract getContentType()Ljava/lang/String;
.end method

.method public abstract getDuration()J
.end method

.method public abstract getMediaTime()J
.end method

.method public abstract getState()I
.end method

.method public abstract prefetch()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract realize()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract removePlayerListener(Ljavax/microedition/media/PlayerListener;)V
.end method

.method public abstract setLoopCount(I)V
.end method

.method public abstract setMediaTime(J)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract start()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method

.method public abstract stop()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/media/MediaException;
        }
    .end annotation
.end method
