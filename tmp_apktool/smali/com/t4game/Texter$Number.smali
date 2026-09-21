.class Lcom/t4game/Texter$Number;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/Texter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Number"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/Texter;


# direct methods
.method public constructor <init>(Lcom/t4game/Texter;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Texter$Number;->this$0:Lcom/t4game/Texter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public OnPointerNumberInput(I)I
    .locals 3

    const/4 v0, -0x1

    if-ltz p1, :cond_0

    sget-object v1, Lcom/t4game/Defaults;->CHARACTER_SET:[C

    aget-char v1, v1, p1

    const/16 v2, 0x30

    if-lt v1, v2, :cond_0

    const/16 v2, 0x39

    if-gt v1, v2, :cond_0

    add-int/lit8 v0, v1, -0x30

    :cond_0
    return v0
.end method
