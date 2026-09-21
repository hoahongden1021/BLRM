.class Lcom/t4game/StartGame$1;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4game/StartGame;->RepairGame()B
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/StartGame;


# direct methods
.method constructor <init>(Lcom/t4game/StartGame;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/StartGame$1;->this$0:Lcom/t4game/StartGame;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    invoke-static {}, Lcom/t4game/GDataManager;->cleanRMSData()V

    invoke-static {}, Lcom/t4game/GDataManager;->SystemGC()V

    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/StartGame;->access$002(B)B

    return-void
.end method
