.class Lcom/t4game/KingAward$AwardItem;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/KingAward;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AwardItem"
.end annotation


# instance fields
.field public awardAlreadyGetNum:I

.field public awardIconId:[S

.field public awardName:Ljava/lang/String;

.field public awardQuality:[B

.field public awardSize:B

.field public awardTotalNum:B

.field final synthetic this$0:Lcom/t4game/KingAward;


# direct methods
.method constructor <init>(Lcom/t4game/KingAward;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/KingAward$AwardItem;->this$0:Lcom/t4game/KingAward;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
