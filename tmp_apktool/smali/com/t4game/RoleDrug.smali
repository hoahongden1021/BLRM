.class public Lcom/t4game/RoleDrug;
.super Lcom/t4game/RoleGoods;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/RoleGoods;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/RoleDrug;->type:B

    return-void
.end method
