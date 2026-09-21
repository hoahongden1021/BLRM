.class public Lcom/t4game/CampaignMap;
.super Ljava/lang/Object;


# instance fields
.field private final NEIGHBOR:[[B

.field private POS:[[S

.field private final TOWN_NAME:[Ljava/lang/String;

.field cname:Ljava/lang/String;

.field detail:Ljava/lang/String;

.field fightName:Ljava/lang/String;

.field private gs:Lcom/t4game/GameScreen;

.field private index:B

.field private map:[Ljavax/microedition/lcdui/Image;

.field private mapOffx:I

.field private mapOffy:I

.field name:Ljava/lang/String;

.field private roleGangID:I

.field private roleGangName:Ljava/lang/String;

.field private town:[Lcom/t4game/Town;

.field private viewState:B


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 8

    const/4 v7, 0x1

    const/16 v6, 0xc

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v6, p0, Lcom/t4game/CampaignMap;->index:B

    iput-byte v5, p0, Lcom/t4game/CampaignMap;->viewState:B

    iput v5, p0, Lcom/t4game/CampaignMap;->roleGangID:I

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/CampaignMap;->roleGangName:Ljava/lang/String;

    iput v5, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    iput v5, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    const/16 v0, 0xd

    new-array v0, v0, [[S

    new-array v1, v3, [S

    fill-array-data v1, :array_0

    aput-object v1, v0, v5

    new-array v1, v3, [S

    fill-array-data v1, :array_1

    aput-object v1, v0, v7

    new-array v1, v3, [S

    fill-array-data v1, :array_2

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v3, [S

    fill-array-data v2, :array_3

    aput-object v2, v0, v1

    new-array v1, v3, [S

    fill-array-data v1, :array_4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v3, [S

    fill-array-data v2, :array_5

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v3, [S

    fill-array-data v2, :array_6

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v3, [S

    fill-array-data v2, :array_7

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v3, [S

    fill-array-data v2, :array_8

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v3, [S

    fill-array-data v2, :array_9

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v3, [S

    fill-array-data v2, :array_a

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v3, [S

    fill-array-data v2, :array_b

    aput-object v2, v0, v1

    new-array v1, v3, [S

    fill-array-data v1, :array_c

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/CampaignMap;->POS:[[S

    const/16 v0, 0xd

    new-array v0, v0, [[B

    new-array v1, v4, [B

    fill-array-data v1, :array_d

    aput-object v1, v0, v5

    new-array v1, v4, [B

    fill-array-data v1, :array_e

    aput-object v1, v0, v7

    new-array v1, v4, [B

    fill-array-data v1, :array_f

    aput-object v1, v0, v3

    const/4 v1, 0x3

    new-array v2, v4, [B

    fill-array-data v2, :array_10

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_11

    aput-object v1, v0, v4

    const/4 v1, 0x5

    new-array v2, v4, [B

    fill-array-data v2, :array_12

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-array v2, v4, [B

    fill-array-data v2, :array_13

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-array v2, v4, [B

    fill-array-data v2, :array_14

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-array v2, v4, [B

    fill-array-data v2, :array_15

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-array v2, v4, [B

    fill-array-data v2, :array_16

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-array v2, v4, [B

    fill-array-data v2, :array_17

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-array v2, v4, [B

    fill-array-data v2, :array_18

    aput-object v2, v0, v1

    new-array v1, v4, [B

    fill-array-data v1, :array_19

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/CampaignMap;->NEIGHBOR:[[B

    const/16 v0, 0xd

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "\u7a7a\u660e\u6bbf"

    aput-object v1, v0, v5

    const-string v1, "\u5b9d\u7384\u5bab"

    aput-object v1, v0, v7

    const-string v1, "\u8000\u5149\u5bab"

    aput-object v1, v0, v3

    const/4 v1, 0x3

    const-string v2, "\u79c0\u4e50\u5bab"

    aput-object v2, v0, v1

    const-string v1, "\u970d\u6797\u6d1e"

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const-string v2, "\u84ec\u4e91\u6d1e"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "\u6731\u9675\u6d1e"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "\u865a\u9675\u6d1e"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "\u592a\u5143\u6d1e"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "\u534e\u5999\u6d1e"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "\u91d1\u5ead\u6d1e"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "\u4e39\u971e\u6d1e"

    aput-object v2, v0, v1

    const-string v1, "\u7941\u4ed9\u6d1e"

    aput-object v1, v0, v6

    iput-object v0, p0, Lcom/t4game/CampaignMap;->TOWN_NAME:[Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/CampaignMap;->cname:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/CampaignMap;->fightName:Ljava/lang/String;

    iput-object p1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    return-void

    :array_0
    .array-data 2
        0x73s
        0x87s
    .end array-data

    :array_1
    .array-data 2
        0xa0s
        0x6es
    .end array-data

    :array_2
    .array-data 2
        0x4bs
        0x5fs
    .end array-data

    :array_3
    .array-data 2
        0x78s
        0xb9s
    .end array-data

    :array_4
    .array-data 2
        0xb4s
        0xa5s
    .end array-data

    :array_5
    .array-data 2
        0xbes
        0x5as
    .end array-data

    :array_6
    .array-data 2
        0xa0s
        0x32s
    .end array-data

    :array_7
    .array-data 2
        0x64s
        0x2ds
    .end array-data

    :array_8
    .array-data 2
        0x32s
        0x2ds
    .end array-data

    :array_9
    .array-data 2
        0x2ds
        0x73s
    .end array-data

    :array_a
    .array-data 2
        0x3cs
        0xbes
    .end array-data

    :array_b
    .array-data 2
        0x6es
        0xe1s
    .end array-data

    :array_c
    .array-data 2
        0xa5s
        0xd2s
    .end array-data

    :array_d
    .array-data 1
        0x2t
        0x3t
        0x2t
        0x1t
    .end array-data

    :array_e
    .array-data 1
        0x6t
        0x4t
        0x0t
        0x5t
    .end array-data

    :array_f
    .array-data 1
        0x7t
        0x0t
        0x9t
        0x0t
    .end array-data

    :array_10
    .array-data 1
        0x0t
        0xbt
        0xat
        0xct
    .end array-data

    :array_11
    .array-data 1
        0x5t
        0xct
        0x1t
        0xat
    .end array-data

    :array_12
    .array-data 1
        0x6t
        0x4t
        0x4t
        0x9t
    .end array-data

    :array_13
    .array-data 1
        0xct
        0x1t
        0x7t
        0x5t
    .end array-data

    :array_14
    .array-data 1
        0xbt
        0x2t
        0x8t
        0x6t
    .end array-data

    :array_15
    .array-data 1
        0xat
        0x9t
        0x6t
        0x7t
    .end array-data

    :array_16
    .array-data 1
        0x8t
        0xat
        0x5t
        0x2t
    .end array-data

    :array_17
    .array-data 1
        0x9t
        0xbt
        0x9t
        0x3t
    .end array-data

    :array_18
    .array-data 1
        0x3t
        0x7t
        0xat
        0xct
    .end array-data

    :array_19
    .array-data 1
        0x4t
        0x6t
        0xbt
        0x4t
    .end array-data
.end method

.method private bSelfGang(I)Z
    .locals 1

    iget v0, p0, Lcom/t4game/CampaignMap;->roleGangID:I

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private drawFightState(Ljavax/microedition/lcdui/Graphics;I)V
    .locals 6

    const/4 v5, 0x5

    const/16 v4, 0x14

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, p2

    iget-byte v0, v0, Lcom/t4game/Town;->fightState:B

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, p2

    iget-short v1, v1, Lcom/t4game/Town;->offx:S

    const/16 v2, 0x8

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v2, v2, p2

    iget-short v2, v2, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    aget-object v0, v0, v5

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, p2

    iget-short v1, v1, Lcom/t4game/Town;->offx:S

    add-int/lit8 v1, v1, 0xd

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v2, v2, p2

    iget-short v2, v2, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, p2

    iget-short v1, v1, Lcom/t4game/Town;->offx:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v2, v2, p2

    iget-short v2, v2, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-virtual {p1, v0, v1, v2, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private fuck(IIIIII)Z
    .locals 1

    if-lt p1, p3, :cond_0

    if-gt p1, p5, :cond_0

    if-lt p2, p4, :cond_0

    if-le p2, p6, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V
    .locals 6

    const/16 v0, 0xff

    const/16 v1, 0xff

    const/4 v2, 0x0

    invoke-virtual {p5, v0, v1, v2}, Ljavax/microedition/lcdui/Graphics;->setColor(III)V

    sget v0, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v0, v0, 0x6

    const/4 v1, 0x3

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    sub-int v2, p3, v0

    const/4 v0, 0x1

    sub-int v3, p4, v0

    const/4 v4, 0x3

    move v0, p1

    move v1, p2

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x1

    sub-int v0, p1, v0

    const/4 v1, 0x1

    sub-int v1, p2, v1

    add-int/lit8 v2, p3, 0x1

    add-int/lit8 v3, p4, 0x1

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_0
    return-void

    :cond_0
    add-int/lit8 v0, p1, 0x2

    add-int/lit8 v1, p2, 0x2

    const/4 v2, 0x5

    sub-int v2, p3, v2

    const/4 v3, 0x5

    sub-int v3, p4, v3

    const/4 v4, 0x4

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, p1, 0x1

    add-int/lit8 v1, p2, 0x1

    const/4 v2, 0x3

    sub-int v2, p3, v2

    const/4 v3, 0x3

    sub-int v3, p4, v3

    const/4 v4, 0x3

    move-object v5, p5

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->drawRectM(IIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method private paintGangname(Ljava/lang/String;SSLjavax/microedition/lcdui/Graphics;B)V
    .locals 9

    const/high16 v4, 0xff0000

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v0, p2, 0x8

    int-to-short v6, v0

    const/16 v0, 0xa

    sub-int v0, p3, v0

    int-to-short v7, v0

    if-nez p5, :cond_0

    const v0, 0xff00

    move v8, v0

    :goto_0
    div-int/lit8 v0, v2, 0x2

    sub-int v0, v6, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    sget v3, Lcom/t4game/Defaults;->sfh:I

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v7, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    move-object v0, p1

    move v1, v6

    move v5, v8

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void

    :cond_0
    move v8, v4

    goto :goto_0
.end method

.method private paintMapname(Ljava/lang/String;SSLjavax/microedition/lcdui/Graphics;)V
    .locals 8

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {v0, p1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    add-int/lit8 v2, v0, 0x8

    add-int/lit8 v0, p2, 0x8

    int-to-short v6, v0

    add-int/lit8 v0, p3, 0x1e

    int-to-short v7, v0

    div-int/lit8 v0, v2, 0x2

    sub-int v0, v6, v0

    sget v1, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v7, v1

    sget v3, Lcom/t4game/Defaults;->sfh:I

    const v4, 0x2b2825

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->paintFaceBoxSmall(IIIIILjavax/microedition/lcdui/Graphics;)V

    sget v0, Lcom/t4game/Defaults;->sfh:I

    div-int/lit8 v0, v0, 0x2

    sub-int v2, v7, v0

    sget v3, Lcom/t4game/Defaults;->TOP_HCENTER:I

    const/4 v4, -0x1

    const v5, 0xffc700

    move-object v0, p1

    move v1, v6

    move-object v6, p4

    invoke-static/range {v0 .. v6}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    return-void
.end method

.method private pointStrongHolder()I
    .locals 11

    const/4 v10, 0x1

    const/4 v9, 0x0

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    iget-object v1, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v9

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int v7, v0, v1

    move v8, v9

    :goto_0
    const/16 v0, 0xd

    if-ge v8, v0, :cond_1

    const/4 v0, 0x4

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v1, v1, v8

    aget-short v1, v1, v9

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    aput v1, v0, v9

    iget-object v1, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v1, v1, v8

    aget-short v1, v1, v10

    add-int/2addr v1, v7

    aput v1, v0, v10

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v2, v2, v8

    aget-short v2, v2, v9

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v2, v3

    add-int/lit8 v2, v2, 0x1e

    aput v2, v0, v1

    const/4 v1, 0x3

    iget-object v2, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v2, v2, v8

    aget-short v2, v2, v10

    add-int/2addr v2, v7

    add-int/lit8 v2, v2, 0x1e

    aput v2, v0, v1

    sget v1, Lcom/t4game/PointerUtil;->s_iPointerPressedX:I

    sget v2, Lcom/t4game/PointerUtil;->s_iPointerPressedY:I

    iget-object v0, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v3, v0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v10

    add-int v4, v0, v7

    iget-object v0, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v9

    iget v5, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v0, v5

    add-int/lit8 v5, v0, 0x1e

    iget-object v0, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v0, v0, v8

    aget-short v0, v0, v10

    add-int/2addr v0, v7

    add-int/lit8 v6, v0, 0x1e

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/t4game/CampaignMap;->fuck(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v8

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v8, 0x1

    move v8, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method private processCallengeMessage()V
    .locals 4

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v2, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v1, v1, v2

    iput-byte v3, v1, Lcom/t4game/Town;->gangState:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v2, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v1, v1, v2

    iput-byte v3, v1, Lcom/t4game/Town;->fightState:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private processDetailMessage()V
    .locals 6

    const-string v5, " "

    const-string v0, ""

    iput-object v0, p0, Lcom/t4game/CampaignMap;->cname:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CampaignMap;->name:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CampaignMap;->fightName:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/CampaignMap;->fightName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CampaignMap;->fightName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/t4game/CampaignMap;->cname:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/t4game/CampaignMap;->cname:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CampaignMap;->detail:Ljava/lang/String;

    const/4 v0, 0x2

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    return-void
.end method

.method private processFightMapMessage()V
    .locals 5

    const/16 v4, 0xd

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->LOADINGBACK:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v0

    iput v0, p0, Lcom/t4game/CampaignMap;->roleGangID:I

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/CampaignMap;->roleGangName:Ljava/lang/String;

    new-array v0, v4, [Lcom/t4game/Town;

    iput-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    move v0, v3

    :goto_0
    if-ge v0, v4, :cond_1

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    new-instance v2, Lcom/t4game/Town;

    invoke-direct {v2}, Lcom/t4game/Town;-><init>()V

    aput-object v2, v1, v0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v2

    iput v2, v1, Lcom/t4game/Town;->gangID:I

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/t4game/Town;->gangName:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget v1, v1, Lcom/t4game/Town;->gangID:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-byte v3, v1, Lcom/t4game/Town;->state:B

    :cond_0
    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/t4game/Town;->gangState:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->readBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iput-byte v2, v1, Lcom/t4game/Town;->fightState:B

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->init()V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    const/16 v1, -0x18

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->setDialog(B)V

    return-void
.end method


# virtual methods
.method public PointerOfDialogStrongHolder()V
    .locals 5

    const/4 v4, 0x0

    const/4 v1, -0x1

    const/4 v3, 0x1

    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/t4game/CampaignMap;->pointStrongHolder()I

    move-result v0

    if-eq v0, v1, :cond_0

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v2, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v1, v1, v2

    iput-boolean v4, v1, Lcom/t4game/Town;->bSelect:Z

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v3, v0, Lcom/t4game/Town;->bSelect:Z

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    const/4 v1, -0x5

    invoke-virtual {v0, v1}, Lcom/t4game/GameScreen;->keyPressed(I)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    if-ne v0, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->pointerEvent()V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0}, Lcom/t4game/UI_Menu;->getCommand()B

    move-result v0

    if-eq v0, v1, :cond_0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_3

    iput-byte v4, p0, Lcom/t4game/CampaignMap;->viewState:B

    goto :goto_0

    :cond_3
    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_ENTER_MESSAGE()Z

    goto :goto_0

    :cond_4
    if-ne v0, v3, :cond_5

    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_Callenge_MESSAGE()Z

    goto :goto_0

    :cond_5
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_Detail_MESSAGE()Z

    goto :goto_0
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x18

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget v1, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    sget v2, Lcom/t4game/Defaults;->CANVAS_HH:I

    const/4 v3, 0x6

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_2
    const/4 v0, 0x0

    move v6, v0

    :goto_1
    const/16 v0, 0xd

    if-ge v6, v0, :cond_6

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v6

    iget-byte v1, v1, Lcom/t4game/Town;->grade:B

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v6

    iget-short v1, v1, Lcom/t4game/Town;->offx:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v2, v2, v6

    iget-short v2, v2, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v2, v3

    const/16 v3, 0x14

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/t4game/Town;->gangID:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget v0, v0, Lcom/t4game/Town;->gangID:I

    invoke-direct {p0, v0}, Lcom/t4game/CampaignMap;->bSelfGang(I)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-object v1, v0, Lcom/t4game/Town;->gangName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offx:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v0, v2

    int-to-short v2, v0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v0, v3

    int-to-short v3, v0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/CampaignMap;->paintGangname(Ljava/lang/String;SSLjavax/microedition/lcdui/Graphics;B)V

    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-byte v0, v0, Lcom/t4game/Town;->gangState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0, p1, v6}, Lcom/t4game/CampaignMap;->drawFightState(Ljavax/microedition/lcdui/Graphics;I)V

    :cond_4
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-object v1, v0, Lcom/t4game/Town;->gangName:Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offx:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v0, v2

    int-to-short v2, v0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v0, v3

    int-to-short v3, v0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v4, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/CampaignMap;->paintGangname(Ljava/lang/String;SSLjavax/microedition/lcdui/Graphics;B)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    move v6, v0

    :goto_3
    const/16 v0, 0xd

    if-ge v6, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-boolean v0, v0, Lcom/t4game/Town;->bSelect:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-object v0, v0, Lcom/t4game/Town;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v6

    iget-short v1, v1, Lcom/t4game/Town;->offx:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v1, v2

    int-to-short v1, v1

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v2, v2, v6

    iget-short v2, v2, Lcom/t4game/Town;->offy:S

    iget v3, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v2, v3

    int-to-short v2, v2

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/t4game/CampaignMap;->paintMapname(Ljava/lang/String;SSLjavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offx:S

    iget v1, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/2addr v0, v1

    int-to-short v1, v0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v0, v0, v6

    iget-short v0, v0, Lcom/t4game/Town;->offy:S

    iget v2, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    add-int/2addr v0, v2

    int-to-short v2, v0

    const/16 v3, 0x10

    const/16 v4, 0x10

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/t4game/CampaignMap;->paintFunctionBlockSelect(IIIILjavax/microedition/lcdui/Graphics;)V

    :cond_7
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    goto :goto_3

    :cond_8
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->draw(Ljavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_9
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->detail:Ljava/lang/String;

    const/16 v1, 0xdc

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v9

    array-length v0, v9

    add-int/lit8 v0, v0, 0x4

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v0, v1

    add-int/lit8 v3, v0, 0x14

    const/16 v0, 0xc8

    sget v1, Lcom/t4game/Defaults;->CANVAS_W:I

    sub-int v0, v1, v0

    div-int/lit8 v10, v0, 0x2

    sget v0, Lcom/t4game/Defaults;->CANVAS_H:I

    sub-int/2addr v0, v3

    shr-int/lit8 v1, v0, 0x1

    iget v0, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    add-int/lit8 v0, v0, 0xa

    const/16 v2, 0xdc

    const/4 v4, -0x2

    move-object v5, p1

    invoke-static/range {v0 .. v5}, Lcom/t4game/Util;->paintAlertBox(IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ed9\u5e9c\u540d:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v3, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/t4game/Town;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x5

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x0

    add-int v4, v0, v3

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xfbaf5d

    move v3, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5360\u9886\u5e2e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x5

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x1

    add-int v4, v0, v3

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xfbaf5d

    move v3, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4ea4\u6218\u5e2e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->fightName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x5

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x2

    add-int v4, v0, v3

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xfbaf5d

    move v3, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5ba3\u6218\u5e2e:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->cname:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v1, 0x5

    sget v3, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v3, v3, 0x3

    add-int v4, v0, v3

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xfbaf5d

    move v3, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const/4 v0, 0x0

    :goto_4
    array-length v2, v9

    if-ge v0, v2, :cond_0

    aget-object v2, v9, v0

    add-int/lit8 v3, v1, 0x5

    add-int/lit8 v4, v0, 0x4

    sget v5, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v4, v5

    add-int/2addr v4, v3

    const/16 v5, 0x14

    const/4 v6, -0x1

    const v7, 0xfbaf5d

    move v3, v10

    move-object v8, p1

    invoke-static/range {v2 .. v8}, Lcom/t4game/Util;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_4
.end method

.method public init()V
    .locals 8

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    iput-byte v3, p0, Lcom/t4game/CampaignMap;->viewState:B

    const/16 v0, 0xc

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    const/4 v0, 0x6

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/strongholder/mapbg.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/strongholder/s1.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v4

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/strongholder/s2.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v5

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/strongholder/s3.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v6

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const-string v1, "/strongholder/j0.png"

    invoke-static {v1}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v1

    aput-object v1, v0, v7

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    const/4 v1, 0x5

    const-string v2, "/strongholder/j1.png"

    invoke-static {v2}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v2

    aput-object v2, v0, v1

    move v0, v3

    :goto_0
    const/16 v1, 0xd

    if-ge v0, v1, :cond_3

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    int-to-byte v2, v0

    iput-byte v2, v1, Lcom/t4game/Town;->id:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->TOWN_NAME:[Ljava/lang/String;

    aget-object v2, v2, v0

    iput-object v2, v1, Lcom/t4game/Town;->name:Ljava/lang/String;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v3

    iput-short v2, v1, Lcom/t4game/Town;->offx:S

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->POS:[[S

    aget-object v2, v2, v0

    aget-short v2, v2, v4

    iput-short v2, v1, Lcom/t4game/Town;->offy:S

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->NEIGHBOR:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v3

    iput-byte v2, v1, Lcom/t4game/Town;->up:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->NEIGHBOR:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v4

    iput-byte v2, v1, Lcom/t4game/Town;->down:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->NEIGHBOR:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v5

    iput-byte v2, v1, Lcom/t4game/Town;->left:B

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iget-object v2, p0, Lcom/t4game/CampaignMap;->NEIGHBOR:[[B

    aget-object v2, v2, v0

    aget-byte v2, v2, v6

    iput-byte v2, v1, Lcom/t4game/Town;->right:B

    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-byte v4, v1, Lcom/t4game/Town;->grade:B

    :goto_1
    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-boolean v3, v1, Lcom/t4game/Town;->bSelect:Z

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-boolean v4, v1, Lcom/t4game/Town;->bSelect:Z

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    if-ge v0, v7, :cond_2

    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-byte v5, v1, Lcom/t4game/Town;->grade:B

    goto :goto_1

    :cond_2
    iget-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    aget-object v1, v1, v0

    iput-byte v6, v1, Lcom/t4game/Town;->grade:B

    goto :goto_1

    :cond_3
    sget v0, Lcom/t4game/Defaults;->CANVAS_WW:I

    iget-object v1, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CampaignMap;->mapOffx:I

    sget v0, Lcom/t4game/Defaults;->CANVAS_HH:I

    iget-object v1, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    aget-object v1, v1, v3

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    shr-int/lit8 v1, v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/CampaignMap;->mapOffy:I

    return-void
.end method

.method public keyEvent(I)V
    .locals 7

    const/4 v6, -0x6

    const/4 v3, -0x7

    const/4 v2, -0x1

    const/4 v5, 0x1

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    const/16 v1, -0x18

    if-eq v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    if-nez v0, :cond_8

    const/4 v0, -0x3

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->left:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/t4game/Town;->bSelect:Z

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->left:B

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v5, v0, Lcom/t4game/Town;->bSelect:Z

    goto :goto_0

    :cond_2
    if-ne p1, v2, :cond_3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->up:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/t4game/Town;->bSelect:Z

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->up:B

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v5, v0, Lcom/t4game/Town;->bSelect:Z

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->right:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/t4game/Town;->bSelect:Z

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->right:B

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v5, v0, Lcom/t4game/Town;->bSelect:Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x2

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->down:B

    if-eq v0, v2, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v4, v0, Lcom/t4game/Town;->bSelect:Z

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iget-byte v0, v0, Lcom/t4game/Town;->down:B

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    aget-object v0, v0, v1

    iput-boolean v5, v0, Lcom/t4game/Town;->bSelect:Z

    goto/16 :goto_0

    :cond_5
    const/4 v0, -0x5

    if-eq p1, v0, :cond_6

    if-ne p1, v6, :cond_7

    :cond_6
    iput-byte v5, p0, Lcom/t4game/CampaignMap;->viewState:B

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    new-instance v1, Lcom/t4game/UI_Menu;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/String;

    const-string v3, "\u8fdb\u5165"

    aput-object v3, v2, v4

    const-string v3, "\u5ba3\u6218"

    aput-object v3, v2, v5

    const/4 v3, 0x2

    const-string v4, "\u67e5\u770b"

    aput-object v4, v2, v3

    invoke-direct {v1, v2}, Lcom/t4game/UI_Menu;-><init>([Ljava/lang/String;)V

    iput-object v1, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    goto/16 :goto_0

    :cond_7
    if-ne p1, v3, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-byte v1, v1, Lcom/t4game/GameScreen;->PreState:B

    invoke-virtual {v0, v1, v4}, Lcom/t4game/GameScreen;->setState(BZ)V

    goto/16 :goto_0

    :cond_8
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    if-ne v0, v5, :cond_c

    if-eq p1, v6, :cond_9

    const/4 v0, -0x5

    if-ne p1, v0, :cond_a

    :cond_9
    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    iget-byte v0, v0, Lcom/t4game/UI_Menu;->index:B

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_ENTER_MESSAGE()Z

    goto/16 :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_Callenge_MESSAGE()Z

    goto/16 :goto_0

    :pswitch_2
    invoke-virtual {p0}, Lcom/t4game/CampaignMap;->send_Detail_MESSAGE()Z

    goto/16 :goto_0

    :pswitch_3
    iput-byte v4, p0, Lcom/t4game/CampaignMap;->viewState:B

    goto/16 :goto_0

    :cond_a
    if-ne p1, v3, :cond_b

    iput-byte v4, p0, Lcom/t4game/CampaignMap;->viewState:B

    goto/16 :goto_0

    :cond_b
    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->menu:Lcom/t4game/UI_Menu;

    invoke-virtual {v0, p1}, Lcom/t4game/UI_Menu;->keyEvent(I)V

    goto/16 :goto_0

    :cond_c
    iget-byte v0, p0, Lcom/t4game/CampaignMap;->viewState:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    iput-byte v5, p0, Lcom/t4game/CampaignMap;->viewState:B

    goto/16 :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public processMsg(I)V
    .locals 0

    sparse-switch p1, :sswitch_data_0

    :goto_0
    return-void

    :sswitch_0
    invoke-direct {p0}, Lcom/t4game/CampaignMap;->processFightMapMessage()V

    goto :goto_0

    :sswitch_1
    invoke-direct {p0}, Lcom/t4game/CampaignMap;->processCallengeMessage()V

    goto :goto_0

    :sswitch_2
    invoke-direct {p0}, Lcom/t4game/CampaignMap;->processDetailMessage()V

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x242 -> :sswitch_0
        0x244 -> :sswitch_1
        0x24a -> :sswitch_2
    .end sparse-switch
.end method

.method public released()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/t4game/CampaignMap;->map:[Ljavax/microedition/lcdui/Image;

    :cond_0
    iget-object v0, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    if-eqz v0, :cond_1

    iput-object v1, p0, Lcom/t4game/CampaignMap;->town:[Lcom/t4game/Town;

    :cond_1
    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/CampaignMap;->index:B

    return-void
.end method

.method protected send_Callenge_MESSAGE()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x244

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method protected send_Detail_MESSAGE()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x24a

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method

.method protected send_ENTER_MESSAGE()Z
    .locals 3

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    sget-byte v1, Lcom/t4game/GameWorld;->ONLOADING:B

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->setLoadingState(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v0}, Lcom/t4game/IoBuffer;->clearSend()V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-byte v1, p0, Lcom/t4game/CampaignMap;->index:B

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putByte(B)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    iget-object v1, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v1, v1, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget v1, v1, Lcom/t4game/GameWorld;->choicedFunctionNPCId:I

    invoke-virtual {v0, v1}, Lcom/t4game/IoBuffer;->putInt(I)V

    iget-object v0, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->network:Lcom/t4game/TcpNetwork;

    const/16 v1, 0x243

    iget-object v2, p0, Lcom/t4game/CampaignMap;->gs:Lcom/t4game/GameScreen;

    iget-object v2, v2, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->sendBuffer:Lcom/t4game/IoBuffer;

    invoke-virtual {v2}, Lcom/t4game/IoBuffer;->toBuffer()[B

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/t4game/TcpNetwork;->SendData(I[B)Z

    move-result v0

    return v0
.end method
