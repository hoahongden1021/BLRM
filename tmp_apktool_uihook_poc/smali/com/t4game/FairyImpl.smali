.class public Lcom/t4game/FairyImpl;
.super Ljava/lang/Object;


# instance fields
.field private attribute:B

.field private canPatrol:B

.field private experience:I

.field private experienceNext:I

.field private firVelue:I

.field private firVelue_add:I

.field private id:I

.field private levle:B

.field private name:Ljava/lang/String;

.field private probability:B

.field private quality:B

.field private sendTo:B

.field private talent:[Ljava/lang/String;

.field private talent_effict:[Ljava/lang/String;

.field private talent_effict_next:[Ljava/lang/String;

.field private talent_level:[B

.field private talent_level_percent:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/t4game/IoBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init(Lcom/t4game/IoBuffer;)V

    return-void
.end method


# virtual methods
.method public getAttribute()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->attribute:B

    return v0
.end method

.method public getCanPatrol()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->canPatrol:B

    return v0
.end method

.method public getExperience()I
    .locals 1

    iget v0, p0, Lcom/t4game/FairyImpl;->experience:I

    return v0
.end method

.method public getExperienceNext()I
    .locals 1

    iget v0, p0, Lcom/t4game/FairyImpl;->experienceNext:I

    return v0
.end method

.method public getFirVelue()I
    .locals 1

    iget v0, p0, Lcom/t4game/FairyImpl;->firVelue:I

    return v0
.end method

.method public getFirVelue_add()I
    .locals 1

    iget v0, p0, Lcom/t4game/FairyImpl;->firVelue_add:I

    return v0
.end method

.method public getId()I
    .locals 1

    iget v0, p0, Lcom/t4game/FairyImpl;->id:I

    return v0
.end method

.method public getLevle()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->levle:B

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getProbability()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->probability:B

    return v0
.end method

.method public getQuality()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->quality:B

    return v0
.end method

.method public getSendTo()B
    .locals 1

    iget-byte v0, p0, Lcom/t4game/FairyImpl;->sendTo:B

    return v0
.end method

.method public getTalent()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->talent:[Ljava/lang/String;

    return-object v0
.end method

.method public getTalent_effict()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->talent_effict:[Ljava/lang/String;

    return-object v0
.end method

.method public getTalent_effict_next()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->talent_effict_next:[Ljava/lang/String;

    return-object v0
.end method

.method public getTalent_level()[B
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->talent_level:[B

    return-object v0
.end method

.method public getTalent_level_percent()[Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/FairyImpl;->talent_level_percent:[Ljava/lang/String;

    return-object v0
.end method

.method public init(Lcom/t4game/IoBuffer;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_id(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_quality(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_levle(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_attribute(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_experience(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_experienceNext(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_firVelue(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_firVelue_add(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_name(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_talentAbout(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_sendTo(Lcom/t4game/IoBuffer;)V

    invoke-virtual {p0, p1}, Lcom/t4game/FairyImpl;->init_canPatrol(Lcom/t4game/IoBuffer;)V

    return-void
.end method

.method public init_attribute(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->attribute:B

    return-void
.end method

.method public init_canPatrol(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->canPatrol:B

    return-void
.end method

.method public init_experience(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/FairyImpl;->experience:I

    return-void
.end method

.method public init_experienceNext(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/FairyImpl;->experienceNext:I

    return-void
.end method

.method public init_firVelue(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/FairyImpl;->firVelue:I

    return-void
.end method

.method public init_firVelue_add(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/FairyImpl;->firVelue_add:I

    return-void
.end method

.method public init_id(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/FairyImpl;->id:I

    return-void
.end method

.method public init_levle(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->levle:B

    return-void
.end method

.method public init_name(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/FairyImpl;->name:Ljava/lang/String;

    return-void
.end method

.method public init_probability(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->probability:B

    return-void
.end method

.method public init_quality(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->quality:B

    return-void
.end method

.method public init_sendTo(Lcom/t4game/IoBuffer;)V
    .locals 1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/FairyImpl;->sendTo:B

    return-void
.end method

.method public init_talentAbout(Lcom/t4game/IoBuffer;)V
    .locals 4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iget-object v1, p0, Lcom/t4game/FairyImpl;->talent:[Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/FairyImpl;->talent:[Ljava/lang/String;

    array-length v1, v1

    if-eq v1, v0, :cond_1

    :cond_0
    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/FairyImpl;->talent:[Ljava/lang/String;

    new-array v1, v0, [B

    iput-object v1, p0, Lcom/t4game/FairyImpl;->talent_level:[B

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/FairyImpl;->talent_level_percent:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/FairyImpl;->talent_effict:[Ljava/lang/String;

    new-array v1, v0, [Ljava/lang/String;

    iput-object v1, p0, Lcom/t4game/FairyImpl;->talent_effict_next:[Ljava/lang/String;

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    iget-object v2, p0, Lcom/t4game/FairyImpl;->talent:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/FairyImpl;->talent_level:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v1

    iget-object v2, p0, Lcom/t4game/FairyImpl;->talent_level_percent:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/FairyImpl;->talent_effict:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    iget-object v2, p0, Lcom/t4game/FairyImpl;->talent_effict_next:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method
