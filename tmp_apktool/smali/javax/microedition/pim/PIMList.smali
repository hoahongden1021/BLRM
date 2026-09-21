.class public interface abstract Ljavax/microedition/pim/PIMList;
.super Ljava/lang/Object;


# virtual methods
.method public abstract close()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public abstract isSupportedField(I)Z
.end method

.method public abstract items()Ljava/util/Enumeration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/pim/PIMException;
        }
    .end annotation
.end method
