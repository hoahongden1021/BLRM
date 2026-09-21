.class Lcom/t4game/SoulItem;
.super Ljava/lang/Object;


# static fields
.field public static final Type_Fun_Soul:B = 0x1t

.field public static final Type_Soul_Pattern:B


# instance fields
.field private id:B

.field private name:Ljava/lang/String;

.field private num:I

.field private quality:B

.field private type:B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/t4game/IoBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/t4game/SoulItem;->read(Lcom/t4game/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getId()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulItem;->id:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/SoulItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNum()I
    .locals 1

    iget v0, p0, Lcom/t4game/SoulItem;->num:I

    return v0
.end method

.method public getQuality()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulItem;->quality:B

    return v0
.end method

.method public getType()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/SoulItem;->type:B

    return v0
.end method

.method public read(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulItem;->id:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulItem;->type:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/SoulItem;->quality:B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/SoulItem;->num:I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/SoulItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setId(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/SoulItem;->id:B

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/t4game/SoulItem;->name:Ljava/lang/String;

    return-void
.end method

.method public setNum(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/SoulItem;->num:I

    return-void
.end method

.method public setQuality(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/SoulItem;->quality:B

    return-void
.end method

.method public setType(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/SoulItem;->type:B

    return-void
.end method
