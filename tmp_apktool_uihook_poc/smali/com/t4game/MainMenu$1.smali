.class Lcom/t4game/MainMenu$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/t4game/MainMenu;->authConnect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/MainMenu;


# direct methods
.method constructor <init>(Lcom/t4game/MainMenu;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/MainMenu$1;->this$0:Lcom/t4game/MainMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/MainMenu$1;->this$0:Lcom/t4game/MainMenu;

    invoke-static {v0}, Lcom/t4game/MainMenu;->access$000(Lcom/t4game/MainMenu;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/MainMenu$1;->this$0:Lcom/t4game/MainMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/t4game/MainMenu;->access$102(Lcom/t4game/MainMenu;Z)Z

    iget-object v0, p0, Lcom/t4game/MainMenu$1;->this$0:Lcom/t4game/MainMenu;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/t4game/MainMenu;->access$202(Lcom/t4game/MainMenu;Z)Z

    :cond_0
    return-void
.end method
