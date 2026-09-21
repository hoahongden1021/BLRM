.class public Lcom/t4game/Drug;
.super Ljava/lang/Object;


# instance fields
.field coolDownTime:S

.field description:Ljava/lang/String;

.field public iconId:I

.field id:S

.field imageId:S

.field keepTime:S

.field name:Ljava/lang/String;

.field specialties:B

.field type:S

.field usedLevel:S

.field value:S


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "e"

    iput-object v0, p0, Lcom/t4game/Drug;->name:Ljava/lang/String;

    const-string v0, "q"

    iput-object v0, p0, Lcom/t4game/Drug;->description:Ljava/lang/String;

    return-void
.end method
