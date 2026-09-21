.class public Lcom/t4game/Friend;
.super Ljava/lang/Object;


# instance fields
.field public id:I

.field public isSuperQ:Z

.field public jobType:B

.field public level:I

.field public name:Ljava/lang/String;

.field public online:B

.field public relation:B

.field public sceneName:Ljava/lang/String;

.field public subRelation:B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput-byte v0, p0, Lcom/t4game/Friend;->subRelation:B

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Friend;->isSuperQ:Z

    return-void
.end method
