.class public Lcom/t4game/Alignment;
.super Ljava/lang/Object;


# instance fields
.field public alignType:B

.field arrayUI:[Lcom/t4game/UI_Super;

.field private maxBottom:I

.field private maxRight:I

.field private minLeft:I

.field private minTop:I

.field referenceUI:Lcom/t4game/UI_Super;

.field public value:S


# direct methods
.method public constructor <init>(BLcom/t4game/UI_Super;[Lcom/t4game/UI_Super;S)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/t4game/Alignment;->referenceUI:Lcom/t4game/UI_Super;

    iput-object v0, p0, Lcom/t4game/Alignment;->arrayUI:[Lcom/t4game/UI_Super;

    const/4 v0, 0x0

    iput-short v0, p0, Lcom/t4game/Alignment;->value:S

    iput-byte p1, p0, Lcom/t4game/Alignment;->alignType:B

    iput-object p2, p0, Lcom/t4game/Alignment;->referenceUI:Lcom/t4game/UI_Super;

    iput-object p3, p0, Lcom/t4game/Alignment;->arrayUI:[Lcom/t4game/UI_Super;

    iput-short p4, p0, Lcom/t4game/Alignment;->value:S

    return-void
.end method


# virtual methods
.method public calculateBorder()V
    .locals 5

    const v0, 0x7fffffff

    iput v0, p0, Lcom/t4game/Alignment;->minTop:I

    iput v0, p0, Lcom/t4game/Alignment;->minLeft:I

    const/high16 v0, -0x80000000

    iput v0, p0, Lcom/t4game/Alignment;->maxBottom:I

    iput v0, p0, Lcom/t4game/Alignment;->maxRight:I

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/t4game/Alignment;->arrayUI:[Lcom/t4game/UI_Super;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    iget-object v1, p0, Lcom/t4game/Alignment;->arrayUI:[Lcom/t4game/UI_Super;

    aget-object v1, v1, v0

    iget v2, p0, Lcom/t4game/Alignment;->minLeft:I

    iget-short v3, v1, Lcom/t4game/UI_Super;->rx:S

    if-ge v2, v3, :cond_0

    iget v2, p0, Lcom/t4game/Alignment;->minLeft:I

    :goto_1
    iput v2, p0, Lcom/t4game/Alignment;->minLeft:I

    iget v2, p0, Lcom/t4game/Alignment;->minTop:I

    iget-short v3, v1, Lcom/t4game/UI_Super;->ry:S

    if-ge v2, v3, :cond_1

    iget v2, p0, Lcom/t4game/Alignment;->minTop:I

    :goto_2
    iput v2, p0, Lcom/t4game/Alignment;->minTop:I

    iget v2, p0, Lcom/t4game/Alignment;->maxRight:I

    iget-short v3, v1, Lcom/t4game/UI_Super;->rx:S

    iget-short v4, v1, Lcom/t4game/UI_Super;->w:S

    add-int/2addr v3, v4

    if-le v2, v3, :cond_2

    iget v2, p0, Lcom/t4game/Alignment;->maxRight:I

    :goto_3
    iput v2, p0, Lcom/t4game/Alignment;->maxRight:I

    iget v2, p0, Lcom/t4game/Alignment;->maxBottom:I

    iget-short v3, v1, Lcom/t4game/UI_Super;->ry:S

    iget-short v4, v1, Lcom/t4game/UI_Super;->h:S

    add-int/2addr v3, v4

    if-le v2, v3, :cond_3

    iget v1, p0, Lcom/t4game/Alignment;->maxBottom:I

    :goto_4
    iput v1, p0, Lcom/t4game/Alignment;->maxBottom:I

    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_0
    iget-short v2, v1, Lcom/t4game/UI_Super;->rx:S

    goto :goto_1

    :cond_1
    iget-short v2, v1, Lcom/t4game/UI_Super;->ry:S

    goto :goto_2

    :cond_2
    iget-short v2, v1, Lcom/t4game/UI_Super;->rx:S

    iget-short v3, v1, Lcom/t4game/UI_Super;->w:S

    add-int/2addr v2, v3

    goto :goto_3

    :cond_3
    iget-short v2, v1, Lcom/t4game/UI_Super;->ry:S

    iget-short v1, v1, Lcom/t4game/UI_Super;->h:S

    add-int/2addr v1, v2

    goto :goto_4

    :cond_4
    return-void
.end method

.method public getMaxBottom()I
    .locals 1

    iget v0, p0, Lcom/t4game/Alignment;->maxBottom:I

    return v0
.end method

.method public getMaxRight()I
    .locals 1

    iget v0, p0, Lcom/t4game/Alignment;->maxRight:I

    return v0
.end method

.method public getMinLeft()I
    .locals 1

    iget v0, p0, Lcom/t4game/Alignment;->minLeft:I

    return v0
.end method

.method public getMinTop()I
    .locals 1

    iget v0, p0, Lcom/t4game/Alignment;->minTop:I

    return v0
.end method
