.class public Lj2ab/android/io/LogOutputStream;
.super Ljava/io/OutputStream;


# static fields
.field public static final LOG_LEVEL:I = 0x2


# instance fields
.field private bos:Ljava/io/ByteArrayOutputStream;

.field private name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lj2ab/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    iput-object p1, p0, Lj2ab/android/io/LogOutputStream;->name:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lj2ab/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>([B)V

    iget-object v1, p0, Lj2ab/android/io/LogOutputStream;->name:Ljava/lang/String;

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lj2ab/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lj2ab/android/io/LogOutputStream;->bos:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, p1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    goto :goto_0
.end method
