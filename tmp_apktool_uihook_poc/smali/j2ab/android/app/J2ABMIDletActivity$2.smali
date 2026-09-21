.class Lj2ab/android/app/J2ABMIDletActivity$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2ab/android/app/J2ABMIDletActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/app/J2ABMIDletActivity;


# direct methods
.method constructor <init>(Lj2ab/android/app/J2ABMIDletActivity;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :goto_0
    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v0}, Lj2ab/android/app/J2ABMIDletActivity;->access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    if-nez v0, :cond_0

    const-wide/16 v0, 0x1f4

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "W:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v2}, Lj2ab/android/app/J2ABMIDletActivity;->access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",H:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v2}, Lj2ab/android/app/J2ABMIDletActivity;->access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",MW:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v2}, Lj2ab/android/app/J2ABMIDletActivity;->access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",MH:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v2}, Lj2ab/android/app/J2ABMIDletActivity;->access$100(Lj2ab/android/app/J2ABMIDletActivity;)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v0}, Lj2ab/android/app/J2ABMIDletActivity;->access$200(Lj2ab/android/app/J2ABMIDletActivity;)Ljavax/microedition/midlet/MIDlet;

    move-result-object v0

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity$2;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v1, v0}, Lj2ab/android/app/J2ABMIDletActivity;->access$302(Lj2ab/android/app/J2ABMIDletActivity;Ljavax/microedition/midlet/MIDlet;)Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->doStartApp()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_1
    return-void

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
