.class Lcom/t4game/SoulRoleGood;
.super Ljava/lang/Object;


# instance fields
.field private attributeQualitys:[[B

.field private attributeStrings:[[Ljava/lang/String;

.field private exp_all:I

.field private exp_now:I


# direct methods
.method public constructor <init>(Lcom/t4game/IoBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/t4game/SoulRoleGood;->read(Lcom/t4game/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getAttributeQualitys()[[B
    .locals 1

    iget-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeQualitys:[[B

    return-object v0
.end method

.method public getAttributeStrings()[[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    return-object v0
.end method

.method public getExp_all()I
    .locals 1

    iget v0, p0, Lcom/t4game/SoulRoleGood;->exp_all:I

    return v0
.end method

.method public getExp_now()I
    .locals 1

    iget v0, p0, Lcom/t4game/SoulRoleGood;->exp_now:I

    return v0
.end method

.method public read(Lcom/t4game/IoBuffer;)V
    .locals 7

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/SoulRoleGood;->exp_now:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/SoulRoleGood;->exp_all:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v1

    add-int/lit8 v0, v1, 0x2

    const/4 v2, 0x3

    filled-new-array {v0, v2}, [I

    move-result-object v0

    const-class v2, Ljava/lang/String;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    filled-new-array {v1, v6}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[B

    iput-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeQualitys:[[B

    move v0, v4

    :goto_0
    if-ge v0, v1, :cond_0

    iget-object v2, p0, Lcom/t4game/SoulRoleGood;->attributeQualitys:[[B

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v4

    iget-object v2, p0, Lcom/t4game/SoulRoleGood;->attributeQualitys:[[B

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v5

    iget-object v2, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    iget-object v2, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    iget-object v2, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v6

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v4

    iget-object v0, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    aget-object v0, v0, v1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    return-void
.end method

.method public setAttributeQualitys([[B)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/SoulRoleGood;->attributeQualitys:[[B

    return-void
.end method

.method public setAttributeStrings([[Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/SoulRoleGood;->attributeStrings:[[Ljava/lang/String;

    return-void
.end method

.method public setExp_all(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/SoulRoleGood;->exp_all:I

    return-void
.end method

.method public setExp_now(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/SoulRoleGood;->exp_now:I

    return-void
.end method
