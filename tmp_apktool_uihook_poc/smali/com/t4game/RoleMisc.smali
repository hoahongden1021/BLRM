.class public Lcom/t4game/RoleMisc;
.super Lcom/t4game/RoleGoods;


# instance fields
.field public hasHole:Z

.field public posList:[B

.field public skillIconId:S

.field public skillOn:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/t4game/RoleGoods;-><init>()V

    const/4 v0, -0x1

    iput-short v0, p0, Lcom/t4game/RoleMisc;->skillIconId:S

    iput-boolean v1, p0, Lcom/t4game/RoleMisc;->hasHole:Z

    iput-boolean v1, p0, Lcom/t4game/RoleMisc;->skillOn:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/RoleMisc;->posList:[B

    const/4 v0, 0x4

    iput-byte v0, p0, Lcom/t4game/RoleMisc;->type:B

    return-void
.end method
