.class Lcom/t4game/GameWorld$GoodDetail;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/GameWorld;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GoodDetail"
.end annotation


# instance fields
.field iconId:S

.field id:I

.field name:Ljava/lang/String;

.field num:S

.field final synthetic this$0:Lcom/t4game/GameWorld;

.field type:B


# direct methods
.method constructor <init>(Lcom/t4game/GameWorld;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/GameWorld$GoodDetail;->this$0:Lcom/t4game/GameWorld;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
