.class public Lcom/t4game/RoleOutfit;
.super Lcom/t4game/RoleGoods;


# instance fields
.field public breakage:B

.field public canQiangHua:Z

.field public canShengJi:Z

.field public canXiangQian:Z

.field public holeNum:B

.field public imageId:S

.field public maxHoleNum:B

.field public weaponTyte:B


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/RoleGoods;-><init>()V

    const/4 v0, 0x1

    iput-byte v0, p0, Lcom/t4game/RoleOutfit;->breakage:B

    iput-byte v1, p0, Lcom/t4game/RoleOutfit;->holeNum:B

    iput-byte v1, p0, Lcom/t4game/RoleOutfit;->maxHoleNum:B

    iput-byte v1, p0, Lcom/t4game/RoleOutfit;->type:B

    return-void
.end method
