.class public Lcom/t4game/GSkillData;
.super Lcom/t4game/GBaseData;


# instance fields
.field public description:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public rank:I

.field public rankData:[[[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/t4game/GBaseData;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/t4game/GSkillData;->rank:I

    return-void
.end method
