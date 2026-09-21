.class public Lcom/t4game/QuickAction;
.super Ljava/lang/Object;


# instance fields
.field public QUICK_OTHOR_ICONID:S

.field public QUICK_SKILL_ICONID:S

.field public QUICK_SKILL_ID:I

.field public canUse:B

.field public type:I


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lcom/t4game/QuickAction;->type:I

    iput v1, p0, Lcom/t4game/QuickAction;->QUICK_SKILL_ID:I

    const/4 v0, 0x6

    iput-short v0, p0, Lcom/t4game/QuickAction;->QUICK_SKILL_ICONID:S

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/QuickAction;->canUse:B

    iput-short v1, p0, Lcom/t4game/QuickAction;->QUICK_OTHOR_ICONID:S

    return-void
.end method
