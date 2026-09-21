.class Lcom/t4game/WuXing;
.super Ljava/lang/Object;


# instance fields
.field activation:[B

.field advance:[[I

.field backgroud:Ljavax/microedition/lcdui/Image;

.field backgroud_h:I

.field backgroud_w:I

.field current_experience:[I

.field current_level_experience:[I

.field gameScreen:Lcom/t4game/GameScreen;

.field have_wuxing_skill:[B

.field next_wuxing_skill:[Ljava/lang/String;

.field next_wuxing_skill_des:[Ljava/lang/String;

.field next_wuxing_skill_show:[Ljava/lang/String;

.field quantity:[[I

.field subjoin:[[I

.field type:B

.field final type_description:B

.field final type_home_page:B

.field final type_xiuxing_alert:B

.field final type_xiuxing_result:B

.field wuxing:[B

.field wuxing_accrete:[Ljava/lang/String;

.field wuxing_backgroud_order:[B

.field wuxing_current:B

.field wuxing_grade:[S

.field wuxing_hotspot:[[I

.field wuxing_img:[[Ljavax/microedition/lcdui/Image;

.field wuxing_index:B

.field wuxing_order:[B

.field wuxing_position:[[I

.field wuxing_skill:[Ljava/lang/String;

.field wuxing_skill_des:[Ljava/lang/String;

.field wuxing_skill_next_flag:[B

.field wuxing_skill_show:[Ljava/lang/String;

.field wuxing_type:[[B

.field xiuxing_consume_bijou:S

.field xiuxing_result:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/t4game/GameScreen;)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, -0x1

    const/4 v2, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-byte v6, p0, Lcom/t4game/WuXing;->wuxing_index:B

    iput-byte v5, p0, Lcom/t4game/WuXing;->wuxing_current:B

    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/WuXing;->quantity:[[I

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/WuXing;->subjoin:[[I

    check-cast v2, [[I

    iput-object v2, p0, Lcom/t4game/WuXing;->advance:[[I

    iput-byte v5, p0, Lcom/t4game/WuXing;->type_home_page:B

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/WuXing;->type_xiuxing_alert:B

    iput-byte v6, p0, Lcom/t4game/WuXing;->type_xiuxing_result:B

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/t4game/WuXing;->type_description:B

    iput-byte v5, p0, Lcom/t4game/WuXing;->type:B

    iput-short v6, p0, Lcom/t4game/WuXing;->xiuxing_consume_bijou:S

    new-array v1, v7, [[I

    const/4 v2, 0x0

    new-array v3, v4, [I

    fill-array-data v3, :array_0

    aput-object v3, v1, v2

    new-array v2, v4, [I

    fill-array-data v2, :array_1

    aput-object v2, v1, v5

    new-array v2, v4, [I

    fill-array-data v2, :array_2

    aput-object v2, v1, v4

    const/4 v2, 0x3

    new-array v3, v4, [I

    fill-array-data v3, :array_3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-array v3, v4, [I

    fill-array-data v3, :array_4

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/t4game/WuXing;->wuxing_position:[[I

    new-array v1, v7, [B

    fill-array-data v1, :array_5

    iput-object v1, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    new-array v1, v7, [B

    fill-array-data v1, :array_6

    iput-object v1, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    iput-object p1, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    return-void

    nop

    :array_0
    .array-data 4
        0x15
        0x5c
    .end array-data

    :array_1
    .array-data 4
        0x37
        0x4
    .end array-data

    :array_2
    .array-data 4
        0x4
        0x26
    .end array-data

    :array_3
    .array-data 4
        0x69
        0x26
    .end array-data

    :array_4
    .array-data 4
        0x58
        0x5c
    .end array-data

    :array_5
    .array-data 1
        0x3t
        0x0t
        0x4t
        0x1t
        0x2t
    .end array-data

    nop

    :array_6
    .array-data 1
        0x1t
        0x3t
        0x4t
        0x0t
        0x2t
    .end array-data
.end method

.method private changeIndex2String(B)Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "\u91d1"

    goto :goto_0

    :pswitch_1
    const-string v0, "\u6728"

    goto :goto_0

    :pswitch_2
    const-string v0, "\u6c34"

    goto :goto_0

    :pswitch_3
    const-string v0, "\u706b"

    goto :goto_0

    :pswitch_4
    const-string v0, "\u571f"

    goto :goto_0

    :pswitch_5
    const-string v0, "\u91d1\u653b"

    goto :goto_0

    :pswitch_6
    const-string v0, "\u6728\u653b"

    goto :goto_0

    :pswitch_7
    const-string v0, "\u6c34\u653b"

    goto :goto_0

    :pswitch_8
    const-string v0, "\u706b\u653b"

    goto :goto_0

    :pswitch_9
    const-string v0, "\u571f\u653b"

    goto :goto_0

    :pswitch_a
    const-string v0, "\u91d1\u6297"

    goto :goto_0

    :pswitch_b
    const-string v0, "\u6728\u6297"

    goto :goto_0

    :pswitch_c
    const-string v0, "\u6c34\u6297"

    goto :goto_0

    :pswitch_d
    const-string v0, "\u706b\u6297"

    goto :goto_0

    :pswitch_e
    const-string v0, "\u571f\u6297"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private changeLevel(S)Ljava/lang/String;
    .locals 4

    div-int/lit8 v0, p1, 0xa

    rem-int/lit8 v1, p1, 0xa

    if-nez v1, :cond_0

    if-lez v0, :cond_0

    const/16 v1, 0xa

    add-int/lit8 v0, v0, -0x1

    move v3, v1

    move v1, v0

    move v0, v3

    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u91cd"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\u7ea7"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    move v3, v1

    move v1, v0

    move v0, v3

    goto :goto_0
.end method

.method private drawWuXingBackgroud(Ljavax/microedition/lcdui/Graphics;)V
    .locals 11

    const/16 v10, 0x1d

    const/4 v9, 0x1

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v1}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v1

    sget v2, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    const/16 v3, 0x96

    sub-int v0, v3, v0

    shr-int/lit8 v0, v0, 0x1

    add-int/2addr v0, v2

    const/16 v2, 0xc8

    sub-int v1, v2, v1

    shr-int/lit8 v1, v1, 0x1

    add-int/lit8 v1, v1, 0x20

    iget-object v2, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    sget v3, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v0, v1, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_img:[[Ljavax/microedition/lcdui/Image;

    iget-byte v3, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v2, v2, v3

    aget-object v2, v2, v9

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_position:[[I

    iget-byte v4, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v3, v3, v4

    aget v3, v3, v8

    add-int/2addr v3, v0

    iget-object v4, p0, Lcom/t4game/WuXing;->wuxing_position:[[I

    iget-byte v5, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v4, v4, v5

    aget v4, v4, v9

    add-int/2addr v4, v1

    sget v5, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v2, v3, v4, v5}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing:[B

    array-length v2, v2

    move v3, v8

    :goto_0
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/t4game/WuXing;->wuxing_position:[[I

    aget-object v4, v4, v3

    aget v4, v4, v8

    add-int/2addr v4, v0

    iget-object v5, p0, Lcom/t4game/WuXing;->wuxing_position:[[I

    aget-object v5, v5, v3

    aget v5, v5, v9

    add-int/2addr v5, v1

    iget-object v6, p0, Lcom/t4game/WuXing;->wuxing_img:[[Ljavax/microedition/lcdui/Image;

    aget-object v6, v6, v3

    aget-object v6, v6, v8

    sget v7, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v6, v4, v5, v7}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    iget-object v6, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    const/4 v7, 0x4

    new-array v7, v7, [I

    aput v4, v7, v8

    aput v5, v7, v9

    const/4 v4, 0x2

    aput v10, v7, v4

    const/4 v4, 0x3

    aput v10, v7, v4

    aput-object v7, v6, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_0

    :cond_0
    return-void
.end method

.method private drawWuXingDescription(Ljavax/microedition/lcdui/Graphics;)V
    .locals 21

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e94\u884c\u4fee\u884c-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v4, v0

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p1

    move-object v1, v3

    invoke-static {v0, v1}, Lcom/t4game/DraftingUtil;->paintFloatingDailog(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    const/16 v3, 0xa

    const/16 v19, 0x5

    sget v4, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int v5, v4, v3

    add-int/lit8 v6, v19, 0x20

    const/16 v4, 0x168

    shl-int/lit8 v3, v3, 0x1

    sub-int v7, v4, v3

    sget v8, Lcom/t4game/Defaults;->sfh:I

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u4e94\u884c\u7b49\u7ea7:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_grade:[S

    move-object v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v9, v0

    aget-short v4, v4, v9

    move-object/from16 v0, p0

    move v1, v4

    invoke-direct {v0, v1}, Lcom/t4game/WuXing;->changeLevel(S)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v9, 0x0

    const/4 v10, -0x1

    sget-object v3, Lcom/t4game/Data;->color:[I

    const/4 v11, 0x2

    aget v11, v3, v11

    const/4 v12, 0x1

    move-object/from16 v3, p1

    invoke-static/range {v3 .. v12}, Lcom/t4game/DraftingUtil;->paintStringInScrollType(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;IIIIIIIZ)V

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int/lit8 v10, v3, 0x25

    const-string v8, "\u4e94\u884c\u7ecf\u9a8c\u503c:"

    sget v11, Lcom/t4game/Defaults;->TOP_LEFT:I

    const/4 v12, -0x1

    sget-object v3, Lcom/t4game/Data;->color:[I

    const/4 v4, 0x2

    aget v13, v3, v4

    move v9, v5

    move-object/from16 v14, p1

    invoke-static/range {v8 .. v14}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    const-string v3, "\u4e94\u884c\u7ecf\u9a8c\u503c:"

    invoke-static {v3}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->current_experience:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v6, v0

    aget v12, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->current_level_experience:[I

    move-object v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v6, v0

    aget v13, v4, v6

    add-int v14, v5, v3

    sub-int v16, v7, v3

    sget v17, Lcom/t4game/Defaults;->sfh:I

    const/16 v18, -0x1

    move-object/from16 v11, p1

    move v15, v10

    invoke-static/range {v11 .. v18}, Lcom/t4game/DraftingUtil;->paintExp(Ljavax/microedition/lcdui/Graphics;IIIIIII)V

    sget v3, Lcom/t4game/Defaults;->sfh:I

    add-int v14, v10, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v3, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v4, v0

    aget-object v3, v3, v4

    array-length v3, v3

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    move-object v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v6, v0

    aget-byte v4, v4, v6

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->next_wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    if-eqz v4, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->next_wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    add-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v4, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v6, v0

    aget-object v4, v4, v6

    array-length v4, v4

    const/4 v6, 0x0

    new-array v9, v3, [[Ljava/lang/String;

    new-array v10, v3, [[I

    new-array v11, v3, [[I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v12, "\u5f53\u524d\u5c5e\u6027"

    aput-object v12, v3, v8

    aput-object v3, v9, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v8, 0x0

    sget-object v12, Lcom/t4game/Data;->color:[I

    const/4 v13, 0x2

    aget v12, v12, v13

    aput v12, v3, v8

    aput-object v3, v10, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v8, 0x0

    aput v7, v3, v8

    aput-object v3, v11, v6

    add-int/lit8 v3, v6, 0x1

    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v3

    move/from16 v3, v20

    :goto_0
    if-ge v3, v4, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->advance:[[I

    move-object v8, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v12, v0

    aget-object v8, v8, v12

    aget v8, v8, v3

    if-lez v8, :cond_2

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget-byte v15, v15, v3

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->quantity:[[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget v15, v15, v3

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "(\u4e0b\u7ea7\u63d0\u5347"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->advance:[[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget v15, v15, v3

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, "\u70b9"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ")"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    aput-object v8, v9, v6

    :goto_1
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    sget-object v13, Lcom/t4game/Data;->color:[I

    const/4 v15, 0x2

    aget v13, v13, v15

    aput v13, v8, v12

    aput-object v8, v10, v6

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    aput v7, v8, v12

    aput-object v8, v11, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_2
    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget-byte v15, v15, v3

    move-object/from16 v0, p0

    move v1, v15

    invoke-direct {v0, v1}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v15, ":"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->quantity:[[I

    move-object v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move/from16 v16, v0

    aget-object v15, v15, v16

    aget v15, v15, v3

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    aput-object v13, v8, v12

    aput-object v8, v9, v6

    goto :goto_1

    :cond_3
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "\u5f53\u524d\u4e94\u884c\u6280\u80fd"

    aput-object v8, v3, v4

    aput-object v3, v9, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget-object v8, Lcom/t4game/Data;->color:[I

    const/4 v12, 0x2

    aget v8, v8, v12

    aput v8, v3, v4

    aput-object v3, v10, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v7, v3, v4

    aput-object v3, v11, v6

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v3

    move/from16 v3, v20

    :goto_2
    if-ge v3, v4, :cond_5

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_show:[Ljava/lang/String;

    move-object v13, v0

    aget-object v13, v13, v3

    aput-object v13, v8, v12

    aput-object v8, v9, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    move-object v8, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v12, v0

    aget-byte v8, v8, v12

    const/4 v12, 0x1

    if-ne v8, v12, :cond_4

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    sget-object v13, Lcom/t4game/Data;->color:[I

    const/4 v15, 0x2

    aget v13, v13, v15

    aput v13, v8, v12

    aput-object v8, v10, v6

    :goto_3
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    aput v7, v8, v12

    aput-object v8, v11, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_4
    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    sget-object v13, Lcom/t4game/Data;->color:[I

    const/16 v15, 0xa

    aget v13, v13, v15

    aput v13, v8, v12

    aput-object v8, v10, v6

    goto :goto_3

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    move-object v3, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->wuxing_current:B

    move v4, v0

    aget-byte v3, v3, v4

    const/4 v4, 0x1

    if-ne v3, v4, :cond_6

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v8, "\u4e0b\u7ea7\u4e94\u884c\u6280\u80fd"

    aput-object v8, v3, v4

    aput-object v3, v9, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    sget-object v8, Lcom/t4game/Data;->color:[I

    const/4 v12, 0x2

    aget v8, v8, v12

    aput v8, v3, v4

    aput-object v3, v10, v6

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v7, v3, v4

    aput-object v3, v11, v6

    add-int/lit8 v3, v6, 0x1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->next_wuxing_skill_show:[Ljava/lang/String;

    move-object v4, v0

    array-length v4, v4

    const/4 v6, 0x0

    move/from16 v20, v6

    move v6, v3

    move/from16 v3, v20

    :goto_4
    if-ge v3, v4, :cond_6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/String;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->next_wuxing_skill_show:[Ljava/lang/String;

    move-object v13, v0

    aget-object v13, v13, v3

    aput-object v13, v8, v12

    aput-object v8, v9, v6

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    sget-object v13, Lcom/t4game/Data;->color:[I

    const/16 v15, 0xa

    aget v13, v13, v15

    aput v13, v8, v12

    aput-object v8, v10, v6

    const/4 v8, 0x1

    new-array v8, v8, [I

    const/4 v12, 0x0

    aput v7, v8, v12

    aput-object v8, v11, v6

    add-int/lit8 v6, v6, 0x1

    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    :cond_6
    move v3, v6

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/String;

    const/4 v6, 0x0

    const-string v8, "\u4e94\u884c\u5171\u751f"

    aput-object v8, v4, v6

    aput-object v4, v9, v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v6, 0x0

    sget-object v8, Lcom/t4game/Data;->color:[I

    const/4 v12, 0x7

    aget v8, v8, v12

    aput v8, v4, v6

    aput-object v4, v10, v3

    const/4 v4, 0x1

    new-array v4, v4, [I

    const/4 v6, 0x0

    aput v7, v4, v6

    aput-object v4, v11, v3

    add-int/lit8 v3, v3, 0x1

    const/4 v4, 0x0

    move/from16 v20, v4

    move v4, v3

    move/from16 v3, v20

    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    move-object v6, v0

    array-length v6, v6

    if-ge v3, v6, :cond_7

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    move-object v12, v0

    aget-object v12, v12, v3

    aput-object v12, v6, v8

    aput-object v6, v9, v4

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    sget-object v12, Lcom/t4game/Data;->color:[I

    const/4 v13, 0x7

    aget v12, v12, v13

    aput v12, v6, v8

    aput-object v6, v10, v4

    const/4 v6, 0x1

    new-array v6, v6, [I

    const/4 v8, 0x0

    aput v7, v6, v8

    aput-object v6, v11, v4

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_5

    :cond_7
    const/16 v3, 0xc8

    shl-int/lit8 v4, v19, 0x1

    sub-int/2addr v3, v4

    sget v4, Lcom/t4game/Defaults;->sfh:I

    shl-int/lit8 v4, v4, 0x1

    sub-int v16, v3, v4

    const/4 v12, 0x1

    sget v17, Lcom/t4game/Defaults;->sfh:I

    const/16 v18, 0x1

    move-object/from16 v8, p1

    move v13, v5

    move v15, v7

    invoke-static/range {v8 .. v18}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[[Ljava/lang/String;[[I[[IIIIIIIZ)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->type:B

    move v3, v0

    if-nez v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u672c\u6b21\u4fee\u884c\u9700\u8981\u6d88\u8017"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/WuXing;->xiuxing_consume_bijou:S

    move v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\u4e2a\u4e94\u884c\u77f3\uff0c\u662f\u5426\u4fee\u884c\uff1f"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x3

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    :cond_8
    :goto_6
    return-void

    :cond_9
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/WuXing;->type:B

    move v3, v0

    const/4 v4, -0x1

    if-ne v3, v4, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    move-object v3, v0

    if-eqz v3, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    move-object v3, v0

    const/4 v4, 0x1

    move-object/from16 v0, p1

    move-object v1, v3

    move v2, v4

    invoke-static {v0, v1, v2}, Lcom/t4game/DraftingUtil;->paintAlert(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;B)V

    goto :goto_6
.end method

.method private drawWuXingHomePage(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    const/4 v9, 0x3

    const/4 v12, 0x1

    const/4 v4, 0x0

    const/4 v11, 0x2

    const-string v13, ""

    const-string v0, "\u4e94\u884c"

    const/16 v1, 0x96

    invoke-static {p1, v0, v1}, Lcom/t4game/DraftingUtil;->paintDialog_SplitFloating_H2(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->drawWuXingBackgroud(Ljavax/microedition/lcdui/Graphics;)V

    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v0, v0, v1

    array-length v0, v0

    add-int/lit8 v3, v0, 0x2

    new-array v1, v3, [[Ljava/lang/String;

    new-array v2, v3, [[I

    new-array v3, v3, [[I

    new-array v5, v9, [Ljava/lang/String;

    const-string v6, "\u4e94\u884c:"

    aput-object v6, v5, v4

    iget-byte v6, p0, Lcom/t4game/WuXing;->wuxing_current:B

    invoke-direct {p0, v6}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v12

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/t4game/WuXing;->wuxing_grade:[S

    iget-byte v8, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-short v7, v7, v8

    invoke-direct {p0, v7}, Lcom/t4game/WuXing;->changeLevel(S)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    aput-object v5, v1, v4

    new-array v5, v9, [I

    sget-object v6, Lcom/t4game/Data;->color:[I

    aget v6, v6, v11

    aput v6, v5, v4

    sget-object v6, Lcom/t4game/Data;->color:[I

    aget v6, v6, v11

    aput v6, v5, v12

    sget-object v6, Lcom/t4game/Data;->color:[I

    aget v6, v6, v11

    aput v6, v5, v11

    aput-object v5, v2, v4

    new-array v5, v9, [I

    fill-array-data v5, :array_0

    aput-object v5, v3, v4

    move v5, v4

    :goto_0
    if-ge v5, v0, :cond_1

    iget-object v6, p0, Lcom/t4game/WuXing;->subjoin:[[I

    iget-byte v7, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v6, v6, v7

    aget v6, v6, v5

    if-gtz v6, :cond_0

    add-int/lit8 v6, v5, 0x1

    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    iget-byte v10, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v9, v9, v10

    aget-byte v9, v9, v5

    invoke-direct {p0, v9}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/t4game/WuXing;->quantity:[[I

    iget-byte v10, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v9, v9, v10

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    aput-object v7, v1, v6

    :goto_1
    add-int/lit8 v6, v5, 0x1

    new-array v7, v11, [I

    sget-object v8, Lcom/t4game/Data;->color:[I

    aget v8, v8, v11

    aput v8, v7, v4

    sget-object v8, Lcom/t4game/Data;->color:[I

    aget v8, v8, v11

    aput v8, v7, v12

    aput-object v7, v2, v6

    add-int/lit8 v6, v5, 0x1

    new-array v7, v11, [I

    fill-array-data v7, :array_1

    aput-object v7, v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    add-int/lit8 v6, v5, 0x1

    new-array v7, v11, [Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    iget-byte v10, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v9, v9, v10

    aget-byte v9, v9, v5

    invoke-direct {p0, v9}, Lcom/t4game/WuXing;->changeIndex2String(B)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v4

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/t4game/WuXing;->quantity:[[I

    iget-byte v10, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v9, v9, v10

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "(+"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/t4game/WuXing;->subjoin:[[I

    iget-byte v10, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v9, v9, v10

    aget v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v7, v12

    aput-object v7, v1, v6

    goto :goto_1

    :cond_1
    iget-object v5, p0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    iget-byte v6, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-byte v5, v5, v6

    if-ne v5, v12, :cond_2

    add-int/lit8 v5, v0, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u4e94\u884c\u6280\u80fd:"

    aput-object v7, v6, v4

    iget-object v7, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    iget-byte v8, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v7, v7, v8

    aput-object v7, v6, v12

    aput-object v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    new-array v6, v11, [I

    sget-object v7, Lcom/t4game/Data;->color:[I

    aget v7, v7, v11

    aput v7, v6, v4

    sget-object v7, Lcom/t4game/Data;->color:[I

    aget v7, v7, v11

    aput v7, v6, v12

    aput-object v6, v2, v5

    add-int/lit8 v0, v0, 0x1

    new-array v5, v11, [I

    fill-array-data v5, :array_2

    aput-object v5, v3, v0

    :goto_2
    const/16 v0, 0xa

    const/16 v6, 0x14

    const/16 v5, 0xd2

    shl-int/lit8 v7, v0, 0x1

    sub-int v7, v5, v7

    const/16 v5, 0xc8

    shl-int/lit8 v8, v6, 0x1

    sub-int v8, v5, v8

    sget v5, Lcom/t4game/Defaults;->DIALOG_LEFTX:I

    add-int/lit16 v5, v5, 0x96

    add-int/2addr v5, v0

    add-int/lit8 v6, v6, 0x20

    sget v9, Lcom/t4game/Defaults;->sfh:I

    move-object v0, p1

    invoke-static/range {v0 .. v9}, Lcom/t4game/DraftingUtil;->paintScrollTextListInVertDir(Ljavax/microedition/lcdui/Graphics;[[Ljava/lang/String;[[I[[IIIIIII)V

    return-void

    :cond_2
    add-int/lit8 v5, v0, 0x1

    new-array v6, v11, [Ljava/lang/String;

    const-string v7, "\u4e94\u884c\u6280\u80fd:"

    aput-object v7, v6, v4

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    iget-byte v9, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v8, v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "(2\u91cd10\u7ea7\u5373\u53ef\u6fc0\u6d3b\u6b64\u6280\u80fd)"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v12

    aput-object v6, v1, v5

    add-int/lit8 v5, v0, 0x1

    new-array v6, v11, [I

    sget-object v7, Lcom/t4game/Data;->color:[I

    aget v7, v7, v11

    aput v7, v6, v4

    sget-object v7, Lcom/t4game/Data;->color:[I

    aget v7, v7, v11

    aput v7, v6, v12

    aput-object v6, v2, v5

    add-int/lit8 v0, v0, 0x1

    new-array v5, v11, [I

    fill-array-data v5, :array_3

    aput-object v5, v3, v0

    goto :goto_2

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private drawWuXingXiuXingAlert(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method private drawWuXingXiuXingResult(Ljavax/microedition/lcdui/Graphics;)V
    .locals 0

    return-void
.end method

.method private initImg()V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x0

    filled-new-array {v7, v6}, [I

    move-result-object v0

    const-class v1, Ljavax/microedition/lcdui/Image;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_img:[[Ljavax/microedition/lcdui/Image;

    move v0, v5

    :goto_0
    if-ge v0, v7, :cond_1

    move v1, v5

    :goto_1
    if-ge v1, v6, :cond_0

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_img:[[Ljavax/microedition/lcdui/Image;

    aget-object v2, v2, v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "/wuxing/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".png"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v3

    aput-object v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto :goto_0

    :cond_1
    const-string v0, "/wuxing/wuxing_background.png"

    invoke-static {v0}, Lcom/t4game/Util;->createImage(Ljava/lang/String;)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    iget-object v0, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/t4game/WuXing;->backgroud_w:I

    iget-object v0, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/t4game/WuXing;->backgroud_h:I

    return-void
.end method

.method private pointerWuXingDescription(II)V
    .locals 0

    return-void
.end method

.method private pointerWuXingHomePage(II)V
    .locals 9

    const/4 v8, 0x0

    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    array-length v6, v0

    move v7, v8

    :goto_0
    if-ge v7, v6, :cond_1

    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    aget-object v0, v0, v7

    aget v0, v0, v8

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    aget-object v1, v1, v7

    const/4 v2, 0x1

    aget v2, v1, v2

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    aget-object v1, v1, v7

    const/4 v3, 0x2

    aget v4, v1, v3

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    aget-object v1, v1, v7

    const/4 v3, 0x3

    aget v5, v1, v3

    move v1, p1

    move v3, p2

    invoke-static/range {v0 .. v5}, Lcom/t4game/PointerUtil;->isPointerInArea(IIIIII)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-byte v0, p0, Lcom/t4game/WuXing;->wuxing_current:B

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    aget-byte v2, v2, v7

    aget-byte v1, v1, v2

    iput-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->PreState:B

    iget-object v1, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    const/16 v1, 0x14

    if-eq v0, v1, :cond_0

    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/t4game/WuXing;->pressedWuXingHomePage(I)V

    :cond_0
    add-int/lit8 v0, v7, 0x1

    int-to-byte v0, v0

    move v7, v0

    goto :goto_0

    :cond_1
    return-void
.end method

.method private pressedWuXingBackgroud(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v0, -0x4

    if-eq p1, v0, :cond_0

    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    :cond_0
    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-byte v0, v0, v1

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    if-ge v0, v1, :cond_2

    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-byte v1, v1, v2

    add-int/lit8 v1, v1, 0x1

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/WuXing;->wuxing_current:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/WuXing;->wuxing_current:B

    goto :goto_0

    :cond_3
    const/4 v0, -0x3

    if-eq p1, v0, :cond_4

    const/4 v0, -0x2

    if-ne p1, v0, :cond_1

    :cond_4
    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-byte v0, v0, v1

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_order:[B

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-byte v1, v1, v2

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/WuXing;->wuxing_current:B

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_backgroud_order:[B

    array-length v1, v1

    sub-int/2addr v1, v3

    aget-byte v0, v0, v1

    iput-byte v0, p0, Lcom/t4game/WuXing;->wuxing_current:B

    goto :goto_0
.end method

.method private pressedWuXingDescription(I)V
    .locals 5

    const/4 v4, -0x1

    const/4 v3, 0x1

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_4

    :cond_0
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    invoke-virtual {v0, v4, v1}, Lcom/t4game/GameWorld;->sendWuXingXiuXing(BB)Z

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-ne v0, v4, :cond_3

    iput-byte v1, p0, Lcom/t4game/WuXing;->type:B

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v1, p0, Lcom/t4game/WuXing;->wuxing_current:B

    invoke-virtual {v0, v2, v1}, Lcom/t4game/GameWorld;->sendWuXingXiuXing(BB)Z

    goto :goto_0

    :cond_4
    const/4 v0, -0x7

    if-ne p1, v0, :cond_6

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-ne v0, v1, :cond_5

    iput-byte v3, p0, Lcom/t4game/WuXing;->type:B

    invoke-static {v3, v2, v2, v2}, Lcom/t4game/LogicalMapping;->setHotspotInfo(IIII)V

    goto :goto_0

    :cond_5
    iput-byte v1, p0, Lcom/t4game/WuXing;->type:B

    goto :goto_0

    :cond_6
    invoke-static {v3, p1}, Lcom/t4game/LogicalMapping;->keyEvent(II)Z

    goto :goto_0
.end method

.method private pressedWuXingHomePage(I)V
    .locals 5

    const/16 v3, 0x168

    const/16 v2, -0xb

    const-string v4, ":"

    const/4 v0, -0x6

    if-eq p1, v0, :cond_0

    const/4 v0, -0x5

    if-ne p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v1, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    if-ne v0, v2, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/WuXing;->wuxing_skill_des:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x1

    sub-int v1, v3, v1

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_skill_show:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/t4game/WuXing;->next_wuxing_skill:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/WuXing;->next_wuxing_skill_des:[Ljava/lang/String;

    iget-byte v2, p0, Lcom/t4game/WuXing;->wuxing_current:B

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v1, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v1, v1, 0x1

    sub-int v1, v3, v1

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->next_wuxing_skill_show:[Ljava/lang/String;

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/WuXing;->type:B

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v0, -0x7

    if-ne p1, v0, :cond_3

    invoke-direct {p0}, Lcom/t4game/WuXing;->releaseImg()V

    invoke-direct {p0}, Lcom/t4game/WuXing;->releaseTextAndArray()V

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-byte v0, v0, Lcom/t4game/GameScreen;->dialogId:B

    iget-object v1, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    invoke-virtual {v0}, Lcom/t4game/GameScreen;->wuxingCallBack()V

    goto :goto_0

    :cond_3
    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->pressedWuXingBackgroud(I)V

    goto :goto_0
.end method

.method private releaseImg()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing:[B

    iput-object v0, p0, Lcom/t4game/WuXing;->backgroud:Ljavax/microedition/lcdui/Image;

    check-cast v0, [[Ljavax/microedition/lcdui/Image;

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_img:[[Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method private releaseTextAndArray()V
    .locals 4

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing:[B

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing_grade:[S

    iput-object v2, p0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    iput-object v2, p0, Lcom/t4game/WuXing;->current_experience:[I

    iput-object v2, p0, Lcom/t4game/WuXing;->current_level_experience:[I

    move-object v0, v2

    check-cast v0, [[B

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/WuXing;->quantity:[[I

    move-object v0, v2

    check-cast v0, [[I

    move-object v3, v0

    iput-object v3, p0, Lcom/t4game/WuXing;->subjoin:[[I

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill_des:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    iput-object v2, p0, Lcom/t4game/WuXing;->activation:[B

    iput-object v2, p0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public drawWuXingDispatcher(Ljavax/microedition/lcdui/Graphics;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->drawWuXingHomePage(Ljavax/microedition/lcdui/Graphics;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->drawWuXingDescription(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0
.end method

.method public initWuXing(Lcom/t4game/IoBuffer;)V
    .locals 7

    const/4 v6, 0x0

    const/4 v1, 0x5

    const/4 v0, 0x4

    filled-new-array {v1, v0}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_hotspot:[[I

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing:[B

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    new-array v0, v1, [[B

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/t4game/WuXing;->quantity:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/t4game/WuXing;->subjoin:[[I

    new-array v0, v1, [[I

    iput-object v0, p0, Lcom/t4game/WuXing;->advance:[[I

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_skill_des:[Ljava/lang/String;

    new-array v0, v1, [B

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/WuXing;->next_wuxing_skill:[Ljava/lang/String;

    new-array v0, v1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/WuXing;->next_wuxing_skill_des:[Ljava/lang/String;

    new-array v0, v1, [S

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_grade:[S

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/t4game/WuXing;->current_experience:[I

    new-array v0, v1, [I

    iput-object v0, p0, Lcom/t4game/WuXing;->current_level_experience:[I

    move v0, v6

    :goto_0
    if-ge v0, v1, :cond_2

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    new-array v4, v2, [B

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->quantity:[[I

    new-array v4, v2, [I

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->subjoin:[[I

    new-array v4, v2, [I

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->advance:[[I

    new-array v4, v2, [I

    aput-object v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_grade:[S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v4

    aput-short v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->current_experience:[I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v0

    iget-object v3, p0, Lcom/t4game/WuXing;->current_level_experience:[I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v4

    aput v4, v3, v0

    move v3, v6

    :goto_1
    if-ge v3, v2, :cond_0

    iget-object v4, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    aget-object v4, v4, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v5

    aput-byte v5, v4, v3

    iget-object v4, p0, Lcom/t4game/WuXing;->quantity:[[I

    aget-object v4, v4, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/t4game/WuXing;->subjoin:[[I

    aget-object v4, v4, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    aput v5, v4, v3

    iget-object v4, p0, Lcom/t4game/WuXing;->advance:[[I

    aget-object v4, v4, v0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    aput v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    int-to-byte v3, v3

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill_des:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    aput-byte v3, v2, v0

    iget-object v2, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    aget-byte v2, v2, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/t4game/WuXing;->next_wuxing_skill:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    iget-object v2, p0, Lcom/t4game/WuXing;->next_wuxing_skill_des:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    goto/16 :goto_0

    :cond_2
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    invoke-direct {p0}, Lcom/t4game/WuXing;->initImg()V

    return-void
.end method

.method public initWuXingXiuXing(Lcom/t4game/IoBuffer;)V
    .locals 9

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/WuXing;->type:B

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v0

    iput-short v0, p0, Lcom/t4game/WuXing;->xiuxing_consume_bijou:S

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    if-ne v0, v8, :cond_0

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v0

    move v1, v7

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v3

    iget-object v4, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    new-array v5, v3, [B

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->quantity:[[I

    new-array v5, v3, [I

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->subjoin:[[I

    new-array v5, v3, [I

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->advance:[[I

    new-array v5, v3, [I

    aput-object v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->wuxing_grade:[S

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getShort()S

    move-result v5

    aput-short v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->current_experience:[I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    aput v5, v4, v2

    iget-object v4, p0, Lcom/t4game/WuXing;->current_level_experience:[I

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v5

    aput v5, v4, v2

    move v4, v7

    :goto_2
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/t4game/WuXing;->wuxing_type:[[B

    aget-object v5, v5, v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v6

    aput-byte v6, v5, v4

    iget-object v5, p0, Lcom/t4game/WuXing;->quantity:[[I

    aget-object v5, v5, v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/t4game/WuXing;->subjoin:[[I

    aget-object v5, v5, v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    iget-object v5, p0, Lcom/t4game/WuXing;->advance:[[I

    aget-object v5, v5, v2

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getInt()I

    move-result v6

    aput v6, v5, v4

    add-int/lit8 v4, v4, 0x1

    int-to-byte v4, v4

    goto :goto_2

    :cond_2
    iget-object v3, p0, Lcom/t4game/WuXing;->have_wuxing_skill:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_skill:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_skill_des:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getByte()B

    move-result v4

    aput-byte v4, v3, v2

    iget-object v3, p0, Lcom/t4game/WuXing;->wuxing_skill_next_flag:[B

    aget-byte v3, v3, v2

    if-ne v3, v8, :cond_3

    iget-object v3, p0, Lcom/t4game/WuXing;->next_wuxing_skill:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    iget-object v3, p0, Lcom/t4game/WuXing;->next_wuxing_skill_des:[Ljava/lang/String;

    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v2

    :cond_3
    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    goto/16 :goto_1

    :cond_4
    invoke-virtual {p1}, Lcom/t4game/IoBuffer;->getString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x168

    sget v2, Lcom/t4game/Defaults;->sfw:I

    shl-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget-object v2, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/WuXing;->wuxing_accrete:[Ljava/lang/String;

    iget-object v0, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/WuXing;->gameScreen:Lcom/t4game/GameScreen;

    iget-object v0, v0, Lcom/t4game/GameScreen;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/t4game/GameWorld;->addmsg(Ljava/lang/String;)V

    :cond_5
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/WuXing;->xiuxing_result:Ljava/lang/String;

    const/4 v0, 0x3

    iput-byte v0, p0, Lcom/t4game/WuXing;->type:B

    goto/16 :goto_0
.end method

.method public pointerWuXingDispatcher(II)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, p2}, Lcom/t4game/WuXing;->pointerWuXingHomePage(II)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/t4game/WuXing;->pointerWuXingDescription(II)V

    goto :goto_0
.end method

.method public pressedWuXingDispatcher(I)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->pressedWuXingHomePage(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    if-eqz v0, :cond_2

    iget-byte v0, p0, Lcom/t4game/WuXing;->type:B

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/t4game/WuXing;->pressedWuXingDescription(I)V

    goto :goto_0
.end method
