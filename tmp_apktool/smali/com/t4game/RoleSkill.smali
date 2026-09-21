.class public Lcom/t4game/RoleSkill;
.super Ljava/lang/Object;


# instance fields
.field public actionType:B

.field public iconId:S

.field public id:S

.field public level:B

.field public limitLevel:S

.field public maxLevel:S

.field name:Ljava/lang/String;

.field public stringId:Ljava/lang/String;

.field public type:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/RoleSkill;->type:B

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/RoleSkill;->name:Ljava/lang/String;

    const/4 v0, 0x5

    iput-byte v0, p0, Lcom/t4game/RoleSkill;->type:B

    return-void
.end method
