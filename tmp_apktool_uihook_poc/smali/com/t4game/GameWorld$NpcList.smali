.class Lcom/t4game/GameWorld$NpcList;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/GameWorld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "NpcList"
.end annotation


# instance fields
.field NpcListFlag:B

.field NpcListFunctionName:Ljava/lang/String;

.field NpcListId:I

.field NpcListNameInMap:Ljava/lang/String;

.field NpcListXInMap:S

.field NpcListYInMap:S

.field final synthetic this$0:Lcom/t4game/GameWorld;


# direct methods
.method constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/GameWorld$NpcList;->this$0:Lcom/t4game/GameWorld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
