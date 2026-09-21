.class public Lcom/igexin/sdk/Tag;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private a:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;)Z
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v0, v4

    move v1, v3

    :goto_0
    if-ltz v0, :cond_7

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x4e00

    if-lt v1, v2, :cond_0

    const v2, 0x9fa5

    if-le v1, v2, :cond_4

    :cond_0
    const/16 v2, 0x41

    if-lt v1, v2, :cond_1

    const/16 v2, 0x5a

    if-le v1, v2, :cond_4

    :cond_1
    const/16 v2, 0x61

    if-lt v1, v2, :cond_2

    const/16 v2, 0x7a

    if-le v1, v2, :cond_4

    :cond_2
    const/16 v2, 0x30

    if-lt v1, v2, :cond_3

    const/16 v2, 0x39

    if-le v1, v2, :cond_4

    :cond_3
    const/16 v2, 0x2b

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2d

    if-eq v1, v2, :cond_4

    const/16 v2, 0x2a

    if-eq v1, v2, :cond_4

    const/16 v2, 0x5f

    if-eq v1, v2, :cond_4

    const/16 v2, 0x20

    if-eq v1, v2, :cond_4

    const/16 v2, 0x3a

    if-ne v1, v2, :cond_5

    :cond_4
    move v1, v4

    :goto_1
    if-nez v1, :cond_6

    move v0, v1

    :goto_2
    return v0

    :cond_5
    move v1, v3

    goto :goto_1

    :cond_6
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_7
    move v0, v1

    goto :goto_2
.end method

.method private b(Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/Tag;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/igexin/sdk/Tag;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iput-object p1, p0, Lcom/igexin/sdk/Tag;->a:Ljava/lang/String;

    :cond_0
    return-void
.end method
