.class Lj2ab/android/app/J2ABMIDletActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2ab/android/app/J2ABMIDletActivity;->invokeAndWait(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/app/J2ABMIDletActivity;

.field final synthetic val$runnable:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lj2ab/android/app/J2ABMIDletActivity;Ljava/lang/Runnable;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/app/J2ABMIDletActivity$1;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    iput-object p2, p0, Lj2ab/android/app/J2ABMIDletActivity$1;->val$runnable:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lj2ab/android/app/J2ABMIDletActivity$1;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v0}, Lj2ab/android/app/J2ABMIDletActivity;->access$000(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity$1;->val$runnable:Ljava/lang/Runnable;

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    iget-object v1, p0, Lj2ab/android/app/J2ABMIDletActivity$1;->this$0:Lj2ab/android/app/J2ABMIDletActivity;

    invoke-static {v1}, Lj2ab/android/app/J2ABMIDletActivity;->access$000(Lj2ab/android/app/J2ABMIDletActivity;)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->notify()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
