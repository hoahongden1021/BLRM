.class public Lcom/t4game/TagString;
.super Ljava/lang/Object;


# static fields
.field static final imageNum:B = 0x19t


# instance fields
.field final CUT:Ljava/lang/String;

.field final CUTA:Ljava/lang/String;

.field final CUTC:Ljava/lang/String;

.field final END:Ljava/lang/String;

.field final ENDSIZE:B

.field final START1:Ljava/lang/String;

.field final START1SIZE:B

.field final START2:Ljava/lang/String;

.field final START2SIZE:B

.field StringV:Ljava/util/Vector;

.field action:Ljava/util/Vector;

.field actionA:[Ljava/util/Vector;

.field actionParam:Ljava/util/Vector;

.field actionStor:Ljava/util/Vector;

.field actionString:[[S

.field actionV:Ljava/util/Vector;

.field color:Ljava/util/Vector;

.field colorString:[[I

.field colorStringIndex:[[S

.field colorStringL:I

.field cut:Ljava/util/Vector;

.field cutString:[Ljava/lang/String;

.field defultColor:I

.field index:I

.field lastIndex:I

.field scr:Ljava/lang/String;

.field startIndex:I

.field private totalLine:I

.field private width:S

.field xyV:Ljava/util/Vector;


# direct methods
.method public constructor <init>(Ljava/lang/String;IS)V
    .locals 5

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v4, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v1, "<#"

    iput-object v1, p0, Lcom/t4game/TagString;->START1:Ljava/lang/String;

    const-string v1, "$>"

    iput-object v1, p0, Lcom/t4game/TagString;->START2:Ljava/lang/String;

    const-string v1, "</#>"

    iput-object v1, p0, Lcom/t4game/TagString;->END:Ljava/lang/String;

    const-string v1, "|c="

    iput-object v1, p0, Lcom/t4game/TagString;->CUTC:Ljava/lang/String;

    const-string v1, "|a="

    iput-object v1, p0, Lcom/t4game/TagString;->CUTA:Ljava/lang/String;

    const-string v1, "|"

    iput-object v1, p0, Lcom/t4game/TagString;->CUT:Ljava/lang/String;

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/t4game/TagString;->ENDSIZE:B

    iput-byte v3, p0, Lcom/t4game/TagString;->START1SIZE:B

    iput-byte v3, p0, Lcom/t4game/TagString;->START2SIZE:B

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/TagString;->colorString:[[I

    move-object v0, v2

    check-cast v0, [[S

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/TagString;->actionString:[[S

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->actionStor:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    check-cast v2, [[S

    iput-object v2, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    iput-short v4, p0, Lcom/t4game/TagString;->width:S

    iput v4, p0, Lcom/t4game/TagString;->totalLine:I

    iput v4, p0, Lcom/t4game/TagString;->index:I

    iput v4, p0, Lcom/t4game/TagString;->lastIndex:I

    iput v4, p0, Lcom/t4game/TagString;->startIndex:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/TagString;->actionV:Ljava/util/Vector;

    iput v4, p0, Lcom/t4game/TagString;->colorStringL:I

    const/16 v1, 0xe

    sub-int v1, p3, v1

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/TagString;->width:S

    iput p2, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-virtual {p0, p1}, Lcom/t4game/TagString;->analyzeTagString(Ljava/lang/String;)V

    sput v4, Lcom/t4game/GameWorld;->tagStartIndex:I

    return-void
.end method

.method private getAction(Ljava/lang/String;)[I
    .locals 10

    const/4 v9, 0x0

    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, -0x1

    new-array v0, v8, [I

    const-string v1, "|c="

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const-string v2, "|a="

    invoke-virtual {p1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    if-ne v1, v5, :cond_0

    if-ne v2, v5, :cond_0

    move-object v0, v9

    :goto_0
    return-object v0

    :cond_0
    if-ne v1, v5, :cond_1

    aput v5, v0, v7

    :goto_1
    if-ne v2, v5, :cond_3

    aput v5, v0, v6

    goto :goto_0

    :cond_1
    const-string v3, "|"

    add-int/lit8 v4, v1, 0x3

    invoke-virtual {p1, v3, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v5, :cond_2

    aput v5, v0, v7

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const/16 v3, 0x10

    invoke-static {v1, v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    aput v1, v0, v7

    goto :goto_1

    :cond_3
    const-string v1, "|"

    add-int/lit8 v3, v2, 0x3

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v5, :cond_4

    aput v5, v0, v6

    goto :goto_0

    :cond_4
    add-int/lit8 v2, v2, 0x3

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "@"

    invoke-static {v1, v2}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_5

    aput v7, v0, v6

    iget-object v1, p0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    invoke-virtual {v1, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_0

    :cond_5
    array-length v2, v1

    if-le v2, v6, :cond_6

    new-array v2, v8, [Ljava/lang/String;

    aget-object v3, v1, v6

    aput-object v3, v2, v7

    aget-object v3, v1, v8

    aput-object v3, v2, v6

    iget-object v3, p0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    invoke-virtual {v3, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_2
    aget-object v1, v1, v7

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    aput v1, v0, v6

    goto :goto_0

    :cond_6
    iget-object v2, p0, Lcom/t4game/TagString;->actionParam:Ljava/util/Vector;

    invoke-virtual {v2, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_2
.end method

.method private haveCutInAction(II)Z
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v0, v0

    if-gtz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    aget-object v0, v0, p2

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gt p1, v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    goto :goto_0
.end method

.method private initReady()V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, 0x0

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/TagString;->colorString:[[I

    move-object v0, v2

    check-cast v0, [[S

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/TagString;->actionString:[[S

    check-cast v2, [[S

    iput-object v2, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    iput v4, p0, Lcom/t4game/TagString;->index:I

    iput v4, p0, Lcom/t4game/TagString;->lastIndex:I

    iput v4, p0, Lcom/t4game/TagString;->startIndex:I

    return-void
.end method

.method private isAction(I)Z
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v0, v0

    move v1, v3

    :goto_0
    if-ge v1, v0, :cond_1

    invoke-direct {p0, p1, v1}, Lcom/t4game/TagString;->haveCutInAction(II)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private isDrawActionLineOfOneCut(II)Z
    .locals 2

    const/4 v0, 0x0

    const/4 v1, -0x1

    if-eq p2, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/t4game/TagString;->haveCutInAction(II)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-direct {p0, p1}, Lcom/t4game/TagString;->isAction(I)Z

    move-result v0

    goto :goto_0
.end method

.method private setColor(I)V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p1, v0, v1

    iget-object v1, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method private split(Ljava/lang/String;)V
    .locals 9

    const/4 v5, -0x1

    const/4 v7, 0x1

    const/4 v6, 0x0

    const-string v2, "</#>"

    const-string v0, "</#>"

    iget v0, p0, Lcom/t4game/TagString;->index:I

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-gez v0, :cond_5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "</#>"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "</#>"

    iget v1, p0, Lcom/t4game/TagString;->index:I

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    move v8, v1

    move-object v1, v0

    move v0, v8

    :goto_0
    if-lez v0, :cond_2

    const-string v2, "$>"

    iget v3, p0, Lcom/t4game/TagString;->index:I

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v2

    if-lez v2, :cond_1

    iget v3, p0, Lcom/t4game/TagString;->startIndex:I

    add-int/lit8 v3, v3, 0x2

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/t4game/TagString;->getAction(Ljava/lang/String;)[I

    move-result-object v3

    if-eqz v3, :cond_4

    aget v4, v3, v6

    if-eq v4, v5, :cond_3

    aget v4, v3, v6

    invoke-direct {p0, v4}, Lcom/t4game/TagString;->setColor(I)V

    :goto_1
    aget v4, v3, v7

    if-eq v4, v5, :cond_0

    const/4 v4, 0x2

    new-array v4, v4, [S

    iget-object v5, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v5

    int-to-short v5, v5

    aput-short v5, v4, v6

    aget v3, v3, v7

    int-to-short v3, v3

    aput-short v3, v4, v7

    iget-object v3, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    invoke-virtual {v3, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    add-int/lit8 v2, v2, 0x2

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1
    add-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/TagString;->index:I

    iput v0, p0, Lcom/t4game/TagString;->lastIndex:I

    :cond_2
    return-void

    :cond_3
    iget v4, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-direct {p0, v4}, Lcom/t4game/TagString;->setColor(I)V

    goto :goto_1

    :cond_4
    iget v3, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-direct {p0, v3}, Lcom/t4game/TagString;->setColor(I)V

    goto :goto_2

    :cond_5
    move-object v1, p1

    goto :goto_0
.end method

.method private testAction(I)I
    .locals 4

    const/4 v3, 0x0

    const/4 v0, -0x1

    move v1, v3

    :goto_0
    iget-object v2, p0, Lcom/t4game/TagString;->actionString:[[S

    array-length v2, v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/t4game/TagString;->actionString:[[S

    aget-object v2, v2, v1

    aget-short v2, v2, v3

    if-ne p1, v2, :cond_1

    move v0, v1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method public analyzeTagString(Ljava/lang/String;)V
    .locals 10

    const/4 v9, 0x0

    const/4 v2, 0x0

    invoke-static {p1}, Lcom/t4game/Util;->refreashChatString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "/r/n"

    invoke-static {v1, v3}, Lcom/t4game/Util;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_0

    move v3, v9

    :goto_0
    move v4, v9

    :goto_1
    if-ge v4, v3, :cond_1

    invoke-direct {p0}, Lcom/t4game/TagString;->initReady()V

    aget-object v5, v1, v4

    invoke-virtual {p0, v5}, Lcom/t4game/TagString;->init(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/t4game/TagString;->initHighColor()V

    iget v5, p0, Lcom/t4game/TagString;->totalLine:I

    iget-object v6, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    iget-short v7, p0, Lcom/t4game/TagString;->width:S

    sget-object v8, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v6, v7, v8}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v6, v6

    add-int/2addr v5, v6

    iput v5, p0, Lcom/t4game/TagString;->totalLine:I

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_1

    :cond_0
    array-length v3, v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/t4game/TagString;->actionV:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Ljava/util/Vector;

    iput-object v1, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    move v3, v9

    :goto_2
    iget-object v1, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    array-length v1, v1

    if-ge v3, v1, :cond_2

    iget-object v4, p0, Lcom/t4game/TagString;->actionA:[Ljava/util/Vector;

    iget-object v1, p0, Lcom/t4game/TagString;->actionV:Ljava/util/Vector;

    invoke-virtual {v1, v3}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Vector;

    aput-object v1, v4, v3

    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/t4game/TagString;->actionV:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iput-object v2, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    move-object v0, v2

    check-cast v0, [[I

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/TagString;->colorString:[[I

    move-object v0, v2

    check-cast v0, [[S

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/TagString;->actionString:[[S

    check-cast v2, [[S

    iput-object v2, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    return-void
.end method

.method public getTotalLine()I
    .locals 1

    iget v0, p0, Lcom/t4game/TagString;->totalLine:I

    return v0
.end method

.method public init(Ljava/lang/String;)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const-string v6, "<#"

    const-string v0, "<#"

    invoke-virtual {p1, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_0

    iput-object p1, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    :goto_0
    return-void

    :cond_0
    :goto_1
    iget v0, p0, Lcom/t4game/TagString;->index:I

    if-eq v0, v3, :cond_3

    const-string v0, "<#"

    iget v0, p0, Lcom/t4game/TagString;->index:I

    invoke-virtual {p1, v6, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/t4game/TagString;->startIndex:I

    iget v0, p0, Lcom/t4game/TagString;->startIndex:I

    if-eq v0, v3, :cond_2

    iget v0, p0, Lcom/t4game/TagString;->startIndex:I

    iget v1, p0, Lcom/t4game/TagString;->lastIndex:I

    if-le v0, v1, :cond_1

    iget v0, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-direct {p0, v0}, Lcom/t4game/TagString;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/TagString;->lastIndex:I

    iget v2, p0, Lcom/t4game/TagString;->startIndex:I

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    invoke-direct {p0, p1}, Lcom/t4game/TagString;->split(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-direct {p0, p1}, Lcom/t4game/TagString;->split(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget v0, p0, Lcom/t4game/TagString;->startIndex:I

    iput v0, p0, Lcom/t4game/TagString;->index:I

    goto :goto_1

    :cond_3
    iget v0, p0, Lcom/t4game/TagString;->lastIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-direct {p0, v0}, Lcom/t4game/TagString;->setColor(I)V

    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    iget v1, p0, Lcom/t4game/TagString;->lastIndex:I

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move v1, v4

    :goto_2
    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_5

    iget-object v2, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    aput-object v0, v2, v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    iget-object v3, p0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-short v2, v2

    aput-short v2, v0, v4

    iget-object v0, p0, Lcom/t4game/TagString;->colorStringIndex:[[S

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    int-to-short v2, v2

    aput-short v2, v0, v5

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_5
    iget-object v0, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[I

    iput-object v0, p0, Lcom/t4game/TagString;->colorString:[[I

    move v1, v4

    :goto_3
    iget-object v0, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    iget-object v2, p0, Lcom/t4game/TagString;->colorString:[[I

    iget-object v0, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_6
    iget-object v0, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [[S

    iput-object v0, p0, Lcom/t4game/TagString;->actionString:[[S

    move v1, v4

    :goto_4
    iget-object v0, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_7

    iget-object v2, p0, Lcom/t4game/TagString;->actionString:[[S

    iget-object v0, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [S

    check-cast v0, [S

    aput-object v0, v2, v1

    iget-object v0, p0, Lcom/t4game/TagString;->actionStor:Ljava/util/Vector;

    iget-object v2, p0, Lcom/t4game/TagString;->actionString:[[S

    aget-object v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_4

    :cond_7
    iget-object v0, p0, Lcom/t4game/TagString;->cut:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/TagString;->color:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iget-object v0, p0, Lcom/t4game/TagString;->action:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    goto/16 :goto_0
.end method

.method public initHighColor()V
    .locals 18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v2, v0

    if-nez v2, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/TagString;->width:S

    move v3, v0

    sget-object v4, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v2, v3, v4}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    move-object v4, v0

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v4, 0x4

    new-array v4, v4, [I

    const/4 v5, 0x0

    const/4 v6, 0x0

    aput v6, v4, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v6, v0

    add-int/2addr v6, v3

    sget v7, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v6, v7

    aput v6, v4, v5

    const/4 v5, 0x2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->defultColor:I

    move v6, v0

    aput v6, v4, v5

    const/4 v5, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v6, v0

    add-int/2addr v6, v3

    aput v6, v4, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v4}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_0

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v2, v0

    array-length v3, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/TagString;->width:S

    move v4, v0

    sget-object v5, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v2, v4, v5}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v2, 0x2

    filled-new-array {v5, v2}, [I

    move-result-object v2

    sget-object v6, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v6, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    const/4 v6, 0x0

    :goto_1
    if-ge v6, v5, :cond_2

    if-nez v6, :cond_1

    aget-object v7, v2, v6

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-short v9, v7, v8

    aget-object v7, v2, v6

    const/4 v8, 0x1

    aget-object v9, v4, v6

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    aget-object v7, v2, v6

    const/4 v8, 0x0

    const/4 v9, 0x1

    sub-int v9, v6, v9

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-short v9, v9, v10

    add-int/lit8 v9, v9, 0x1

    int-to-short v9, v9

    aput-short v9, v7, v8

    aget-object v7, v2, v6

    const/4 v8, 0x1

    aget-object v9, v2, v6

    const/4 v10, 0x0

    aget-short v9, v9, v10

    aget-object v10, v4, v6

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    add-int/2addr v9, v10

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    int-to-short v9, v9

    aput-short v9, v7, v8

    goto :goto_2

    :cond_2
    const/4 v4, 0x0

    :goto_3
    if-ge v4, v3, :cond_10

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/t4game/TagString;->testAction(I)I

    move-result v5

    const/4 v6, 0x0

    const/4 v7, -0x1

    if-eq v5, v7, :cond_3

    new-instance v6, Ljava/util/Vector;

    invoke-direct {v6}, Ljava/util/Vector;-><init>()V

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v7, v0

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aget-short v7, v7, v8

    const/4 v8, -0x1

    if-eq v7, v8, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v7, v0

    aget-object v7, v7, v4

    const/4 v8, 0x0

    aget-short v7, v7, v8

    invoke-static {v2, v7}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v8, v0

    aget-object v8, v8, v4

    const/4 v9, 0x0

    aget-short v8, v8, v9

    aget-object v9, v2, v7

    const/4 v10, 0x0

    aget-short v9, v9, v10

    sub-int/2addr v8, v9

    int-to-short v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v9, v0

    aget-object v9, v9, v4

    const/4 v10, 0x1

    aget-short v9, v9, v10

    invoke-static {v2, v9}, Lcom/t4game/Util;->getlineNum([[SS)S

    move-result v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v10, v0

    aget-object v10, v10, v4

    const/4 v11, 0x1

    aget-short v10, v10, v11

    aget-object v11, v2, v9

    const/4 v12, 0x0

    aget-short v11, v11, v12

    sub-int/2addr v10, v11

    int-to-short v10, v10

    if-ne v7, v9, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    move-object v9, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->cutString:[Ljava/lang/String;

    move-object v10, v0

    aget-object v10, v10, v4

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v9, 0x4

    new-array v9, v9, [I

    if-nez v8, :cond_7

    const/4 v8, 0x0

    const/4 v10, 0x0

    aput v10, v9, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v10, v0

    add-int/2addr v10, v7

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v10, v11

    aput v10, v9, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v10, v0

    aget-object v10, v10, v4

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v9, v8

    :goto_4
    const/4 v8, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v10, v0

    add-int/2addr v7, v10

    aput v7, v9, v8

    const/4 v7, -0x1

    if-eq v5, v7, :cond_4

    new-instance v7, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v8, v0

    invoke-virtual {v8}, Ljava/util/Vector;->size()I

    move-result v8

    invoke-direct {v7, v8}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v7}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v7, v0

    invoke-virtual {v7, v9}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_5
    const/4 v7, -0x1

    if-eq v5, v7, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->actionV:Ljava/util/Vector;

    move-object v5, v0

    invoke-virtual {v5, v6}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_3

    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v8, v0

    aget-object v10, v2, v7

    const/4 v11, 0x0

    aget-short v10, v10, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v11, v0

    aget-object v11, v11, v4

    const/4 v12, 0x0

    aget-short v11, v11, v12

    invoke-virtual {v8, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const/4 v10, 0x0

    invoke-static {v8}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v8

    aput v8, v9, v10

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v10, v0

    add-int/2addr v10, v7

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v10, v11

    aput v10, v9, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v10, v0

    aget-object v10, v10, v4

    const/4 v11, 0x1

    aget v10, v10, v11

    aput v10, v9, v8

    goto :goto_4

    :cond_8
    sub-int v10, v9, v7

    add-int/lit8 v11, v10, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    :goto_5
    if-gt v12, v10, :cond_f

    if-nez v12, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v13, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v14, v0

    aget-object v14, v14, v4

    const/4 v15, 0x0

    aget-short v14, v14, v15

    aget-object v15, v2, v7

    const/16 v16, 0x1

    aget-short v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v13, 0x4

    new-array v13, v13, [I

    if-nez v8, :cond_a

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v15, v0

    add-int/2addr v15, v7

    sget v16, Lcom/t4game/Defaults;->sfh:I

    mul-int v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v15, v0

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    :goto_6
    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v15, v0

    add-int/2addr v15, v7

    aput v15, v13, v14

    const/4 v14, -0x1

    if-eq v5, v14, :cond_9

    new-instance v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :goto_7
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v14, v0

    aget-object v15, v2, v7

    const/16 v16, 0x0

    aget-short v15, v15, v16

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object/from16 v16, v0

    aget-object v16, v16, v4

    const/16 v17, 0x0

    aget-short v16, v16, v17

    invoke-virtual/range {v14 .. v16}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    const/4 v15, 0x0

    invoke-static {v14}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v14

    aput v14, v13, v15

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v15, v0

    add-int/2addr v15, v7

    sget v16, Lcom/t4game/Defaults;->sfh:I

    mul-int v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v15, v0

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    goto :goto_6

    :cond_b
    if-ne v12, v10, :cond_d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v13, v0

    aget-object v14, v2, v9

    const/4 v15, 0x0

    aget-short v14, v14, v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorStringIndex:[[S

    move-object v15, v0

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget-short v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v14, 0x1

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v15, v0

    add-int/2addr v15, v9

    sget v16, Lcom/t4game/Defaults;->sfh:I

    mul-int v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v15, v0

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x3

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move v15, v0

    add-int/2addr v15, v9

    aput v15, v13, v14

    const/4 v14, -0x1

    if-eq v5, v14, :cond_c

    new-instance v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->scr:Ljava/lang/String;

    move-object v13, v0

    add-int v14, v7, v12

    aget-object v14, v2, v14

    const/4 v15, 0x0

    aget-short v14, v14, v15

    add-int v15, v7, v12

    aget-object v15, v2, v15

    const/16 v16, 0x1

    aget-short v15, v15, v16

    add-int/lit8 v15, v15, 0x1

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    aput-object v13, v11, v12

    const/4 v13, 0x4

    new-array v13, v13, [I

    const/4 v14, 0x0

    const/4 v15, 0x0

    aput v15, v13, v14

    const/4 v14, 0x1

    add-int v15, v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move/from16 v16, v0

    add-int v15, v15, v16

    sget v16, Lcom/t4game/Defaults;->sfh:I

    mul-int v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->colorString:[[I

    move-object v15, v0

    aget-object v15, v15, v4

    const/16 v16, 0x1

    aget v15, v15, v16

    aput v15, v13, v14

    const/4 v14, 0x3

    add-int v15, v7, v12

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/TagString;->totalLine:I

    move/from16 v16, v0

    add-int v15, v15, v16

    aput v15, v13, v14

    const/4 v14, -0x1

    if-eq v5, v14, :cond_e

    new-instance v14, Ljava/lang/Integer;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v15, v0

    invoke-virtual {v15}, Ljava/util/Vector;->size()I

    move-result v15

    invoke-direct {v14, v15}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v6, v14}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    move-object v14, v0

    invoke-virtual {v14, v13}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto/16 :goto_7

    :cond_f
    invoke-static {v11}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    :goto_8
    array-length v9, v7

    if-ge v8, v9, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    move-object v9, v0

    aget-object v10, v7, v8

    invoke-virtual {v9, v10}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    add-int/lit8 v8, v8, 0x1

    int-to-byte v8, v8

    goto :goto_8

    :cond_10
    return-void
.end method

.method public paint(IIIILjavax/microedition/lcdui/Graphics;I)I
    .locals 7

    const/4 v0, 0x4

    new-array v0, v0, [I

    const/4 v0, 0x0

    move v2, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v2, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/TagString;->xyV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    const/4 v1, 0x3

    aget v1, v0, v1

    if-gt v1, p4, :cond_0

    const/4 v1, 0x3

    aget v1, v0, v1

    if-lt v1, p3, :cond_0

    const/4 v1, 0x2

    aget v1, v0, v1

    if-gez v1, :cond_1

    iget v1, p0, Lcom/t4game/TagString;->defultColor:I

    invoke-virtual {p5, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_1
    iget-object v1, p0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const/4 v3, 0x0

    aget v3, v0, v3

    add-int/2addr v3, p1

    const/4 v4, 0x1

    aget v4, v0, v4

    add-int/2addr v4, p2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, p3

    sub-int/2addr v4, v5

    invoke-static {p5, v1, v3, v4}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    invoke-direct {p0, v2, p6}, Lcom/t4game/TagString;->isDrawActionLineOfOneCut(II)Z

    move-result v1

    if-eqz v1, :cond_0

    sget-object v1, Lcom/t4game/Data;->color:[I

    const/4 v3, 0x0

    aget v1, v1, v3

    invoke-virtual {p5, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int v3, v1, p1

    const/4 v1, 0x1

    aget v1, v0, v1

    sget v4, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v1, v4

    add-int/2addr v1, p2

    sget v4, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, p3

    sub-int v4, v1, v4

    const/4 v1, 0x0

    aget v1, v0, v1

    add-int v5, v1, p1

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    iget-object v1, p0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v1

    add-int/2addr v1, v5

    const/4 v5, 0x1

    aget v0, v0, v5

    sget v5, Lcom/t4game/Defaults;->sfh:I

    add-int/2addr v0, v5

    add-int/2addr v0, p2

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, p3

    sub-int/2addr v0, v5

    invoke-virtual {p5, v3, v4, v1, v0}, Ljavax/microedition/lcdui/Graphics;->drawLine(IIII)V

    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto/16 :goto_0

    :cond_1
    const/4 v1, 0x2

    aget v1, v0, v1

    invoke-virtual {p5, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/t4game/TagString;->StringV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    return v0
.end method
