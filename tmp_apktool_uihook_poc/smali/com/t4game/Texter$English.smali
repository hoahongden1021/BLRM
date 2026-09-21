.class Lcom/t4game/Texter$English;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/Texter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "English"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/t4game/Texter;


# direct methods
.method public constructor <init>(Lcom/t4game/Texter;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/Texter$English;->this$0:Lcom/t4game/Texter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWordPointerInput(I)C
    .locals 2

    const/16 v0, 0x21

    if-ltz p1, :cond_0

    sget-object v0, Lcom/t4game/Defaults;->CHARACTER_SET:[C

    aget-char v0, v0, p1

    const/16 v1, 0x41

    if-lt v0, v1, :cond_0

    const/16 v1, 0x5a

    if-gt v0, v1, :cond_0

    add-int/lit8 v0, v0, 0x20

    int-to-char v0, v0

    :cond_0
    return v0
.end method
