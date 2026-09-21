.class public Lcom/t4game/RoleQuestGood;
.super Lcom/t4game/RoleGoods;


# instance fields
.field public questId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/RoleGoods;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/RoleQuestGood;->questId:I

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/RoleQuestGood;->type:B

    return-void
.end method
