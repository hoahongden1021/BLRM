.class public Lcom/t4game/GoodsPay;
.super Lcom/t4game/RoleGoods;


# instance fields
.field public money:I

.field public moneyName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/RoleGoods;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GoodsPay;->isGoodsPay:Z

    return-void
.end method
