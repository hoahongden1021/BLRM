.class Lcom/t4game/Texter$Interpunction;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/Texter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Interpunction"
.end annotation


# instance fields
.field public interpunctionState:Z

.field final synthetic this$0:Lcom/t4game/Texter;


# direct methods
.method public constructor <init>(Lcom/t4game/Texter;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/Texter$Interpunction;->this$0:Lcom/t4game/Texter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    return-void
.end method


# virtual methods
.method public onPointerChooicedInterpunction(I)C
    .locals 1

    const/16 v0, 0x61

    if-ltz p1, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->INTERPUNCTION_SET:[C

    aget-char v0, v0, p1

    :cond_0
    return v0
.end method
