.class Lcom/t4game/T4game$2;
.super Ljava/lang/Thread;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4game/T4game;->onPressedLogin(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/T4game;


# direct methods
.method constructor <init>(Lcom/t4game/T4game;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/T4game$2;->this$0:Lcom/t4game/T4game;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    invoke-static {}, Lcom/t4game/GDataManager;->cleanRMSData()V

    invoke-static {}, Lcom/t4game/GDataManager;->SystemGC()V

    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    iget-object v0, p0, Lcom/t4game/T4game$2;->this$0:Lcom/t4game/T4game;

    const-string v1, "\u5df2\u7ecf\u6210\u529f\u4fee\u590d\u6e38\u620f"

    invoke-static {v0, v1}, Lcom/t4game/T4game;->access$002(Lcom/t4game/T4game;Ljava/lang/String;)Ljava/lang/String;

    const/4 v0, 0x1

    sput-boolean v0, Lcom/t4game/Defaults;->showMsg:Z

    iget-object v0, p0, Lcom/t4game/T4game$2;->this$0:Lcom/t4game/T4game;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/t4game/T4game;->access$102(Lcom/t4game/T4game;B)B

    const/4 v0, 0x0

    sput-boolean v0, Lcom/t4game/Defaults;->NeedRepaired:Z

    return-void
.end method
