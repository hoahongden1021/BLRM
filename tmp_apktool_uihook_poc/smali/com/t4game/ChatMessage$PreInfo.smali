.class Lcom/t4game/ChatMessage$PreInfo;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/t4game/ChatMessage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PreInfo"
.end annotation


# instance fields
.field color:I

.field flag:B

.field imgIndex:I

.field imgTpe:I

.field len:I

.field str:Ljava/lang/String;

.field final synthetic this$0:Lcom/t4game/ChatMessage;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lcom/t4game/ChatMessage;I)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/ChatMessage$PreInfo;->this$0:Lcom/t4game/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    iput p2, p0, Lcom/t4game/ChatMessage$PreInfo;->color:I

    return-void
.end method

.method public constructor <init>(Lcom/t4game/ChatMessage;IIIBI)V
    .locals 2

    iput-object p1, p0, Lcom/t4game/ChatMessage$PreInfo;->this$0:Lcom/t4game/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iput p3, p0, Lcom/t4game/ChatMessage$PreInfo;->y:I

    iput-byte p5, p0, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    iget-byte v0, p0, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput p4, p0, Lcom/t4game/ChatMessage$PreInfo;->imgIndex:I

    iput p6, p0, Lcom/t4game/ChatMessage$PreInfo;->imgTpe:I

    :cond_0
    iget-byte v0, p0, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iput p4, p0, Lcom/t4game/ChatMessage$PreInfo;->len:I

    :cond_1
    return-void
.end method

.method public constructor <init>(Lcom/t4game/ChatMessage;IILjava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/t4game/ChatMessage$PreInfo;->this$0:Lcom/t4game/ChatMessage;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/ChatMessage$PreInfo;->flag:B

    iput p2, p0, Lcom/t4game/ChatMessage$PreInfo;->x:I

    iput p3, p0, Lcom/t4game/ChatMessage$PreInfo;->y:I

    iput-object p4, p0, Lcom/t4game/ChatMessage$PreInfo;->str:Ljava/lang/String;

    return-void
.end method
