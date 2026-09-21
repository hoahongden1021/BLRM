.class public Lcom/t4game/Texter;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/t4game/Texter$Number;,
        Lcom/t4game/Texter$Interpunction;,
        Lcom/t4game/Texter$English;
    }
.end annotation


# instance fields
.field public enable:Z

.field private english:Lcom/t4game/Texter$English;

.field private fcous:I

.field private inputLength:I

.field private inputMode:I

.field public inputed:Z

.field interpunction:Lcom/t4game/Texter$Interpunction;

.field private isPointerPressedJING:Z

.field private isPointerPressedOK:Z

.field private numLock:Z

.field private number:Lcom/t4game/Texter$Number;

.field private sb:Ljava/lang/StringBuffer;

.field public text:Lcom/t4game/IViewText;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v1, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean v1, p0, Lcom/t4game/Texter;->enable:Z

    iput-boolean v1, p0, Lcom/t4game/Texter;->numLock:Z

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iput-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iput v1, p0, Lcom/t4game/Texter;->inputLength:I

    new-instance v0, Lcom/t4game/Texter$English;

    invoke-direct {v0, p0}, Lcom/t4game/Texter$English;-><init>(Lcom/t4game/Texter;)V

    iput-object v0, p0, Lcom/t4game/Texter;->english:Lcom/t4game/Texter$English;

    new-instance v0, Lcom/t4game/Texter$Number;

    invoke-direct {v0, p0}, Lcom/t4game/Texter$Number;-><init>(Lcom/t4game/Texter;)V

    iput-object v0, p0, Lcom/t4game/Texter;->number:Lcom/t4game/Texter$Number;

    new-instance v0, Lcom/t4game/Texter$Interpunction;

    invoke-direct {v0, p0}, Lcom/t4game/Texter$Interpunction;-><init>(Lcom/t4game/Texter;)V

    iput-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/Texter;->inputMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/Texter;->inputed:Z

    iput v1, p0, Lcom/t4game/Texter;->fcous:I

    return-void
.end method


# virtual methods
.method public clearMunLock()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/Texter;->inputMode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/t4game/Texter;->numLock:Z

    return-void
.end method

.method public clearText()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;

    iput v2, p0, Lcom/t4game/Texter;->fcous:I

    return-void
.end method

.method public getFcous()I
    .locals 1

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    return v0
.end method

.method public getInterpunctionState()Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    iget-boolean v0, v0, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    return v0
.end method

.method public isPointerJing()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/Texter;->isPointerPressedJING:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/t4game/Texter;->isPointerPressedJING:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public isPointerOK()Z
    .locals 2

    const/4 v1, 0x0

    iget-boolean v0, p0, Lcom/t4game/Texter;->isPointerPressedOK:Z

    if-eqz v0, :cond_0

    iput-boolean v1, p0, Lcom/t4game/Texter;->isPointerPressedOK:Z

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method public onPointerInput(I)V
    .locals 5

    const/4 v2, 0x0

    const/4 v4, -0x1

    const/4 v3, 0x1

    iget-boolean v0, p0, Lcom/t4game/Texter;->enable:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    if-ne v0, v4, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/16 v0, -0x9

    if-ne p1, v0, :cond_2

    iput-boolean v3, p0, Lcom/t4game/Texter;->isPointerPressedJING:Z

    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x3

    if-ne p1, v0, :cond_3

    iput-boolean v3, p0, Lcom/t4game/Texter;->isPointerPressedOK:Z

    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    goto :goto_0

    :cond_3
    const/4 v0, -0x4

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/t4game/Texter;->numLock:Z

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    iget-object v1, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    iget-boolean v1, v1, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    if-nez v1, :cond_4

    move v1, v3

    :goto_1
    iput-boolean v1, v0, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    sget-boolean v0, Lcom/t4game/Defaults;->s_isPaintInterpunctionPanel:Z

    if-nez v0, :cond_5

    move v0, v3

    :goto_2
    sput-boolean v0, Lcom/t4game/Defaults;->s_isPaintInterpunctionPanel:Z

    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    goto :goto_0

    :cond_4
    move v1, v2

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Lcom/t4game/Texter;->inputed:Z

    if-eqz v0, :cond_c

    const/4 v0, -0x7

    if-ne p1, v0, :cond_8

    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_7

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    if-lez v0, :cond_e

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_7
    :goto_3
    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    :cond_8
    const/4 v0, -0x8

    if-ne p1, v0, :cond_a

    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    if-lez v0, :cond_9

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    if-ge v0, v1, :cond_f

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_9
    :goto_4
    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    :cond_a
    const/4 v0, -0x2

    if-ne p1, v0, :cond_c

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    if-lez v0, :cond_b

    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v1, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_b
    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    :cond_c
    iget-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    iget-boolean v0, v0, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter$Interpunction;->onPointerChooicedInterpunction(I)C

    move-result v0

    const/16 v1, 0x61

    if-eq v0, v1, :cond_d

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ge v1, v2, :cond_10

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_d
    :goto_5
    iget-object v0, p0, Lcom/t4game/Texter;->text:Lcom/t4game/IViewText;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/t4game/IViewText;->refreshView(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    goto :goto_3

    :cond_f
    iput v2, p0, Lcom/t4game/Texter;->fcous:I

    goto :goto_4

    :cond_10
    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ne v1, v2, :cond_d

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_5

    :cond_11
    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v0

    iget v1, p0, Lcom/t4game/Texter;->inputLength:I

    if-gt v0, v1, :cond_12

    iget v0, p0, Lcom/t4game/Texter;->inputMode:I

    packed-switch v0, :pswitch_data_0

    :cond_12
    :goto_6
    :pswitch_0
    iget-object v0, p0, Lcom/t4game/Texter;->text:Lcom/t4game/IViewText;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/t4game/IViewText;->refreshView(Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/t4game/Texter;->english:Lcom/t4game/Texter$English;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter$English;->onWordPointerInput(I)C

    move-result v0

    const/16 v1, 0x21

    if-eq v0, v1, :cond_12

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ge v1, v2, :cond_14

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_13
    :goto_7
    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    goto :goto_6

    :cond_14
    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ne v1, v2, :cond_13

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(IC)Ljava/lang/StringBuffer;

    goto :goto_7

    :pswitch_2
    iget-object v0, p0, Lcom/t4game/Texter;->number:Lcom/t4game/Texter$Number;

    invoke-virtual {v0, p1}, Lcom/t4game/Texter$Number;->OnPointerNumberInput(I)I

    move-result v0

    sget-boolean v1, Lcom/t4game/Defaults;->isInputMoney:Z

    if-eqz v1, :cond_15

    if-nez v0, :cond_15

    iget v1, p0, Lcom/t4game/Texter;->fcous:I

    if-nez v1, :cond_15

    sput-boolean v2, Lcom/t4game/Defaults;->isInputMoney:Z

    goto/16 :goto_0

    :cond_15
    if-eq v0, v4, :cond_12

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ge v1, v2, :cond_17

    if-eq v0, v4, :cond_16

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    iget v0, p0, Lcom/t4game/Texter;->fcous:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    :cond_16
    :goto_8
    sput v4, Lcom/t4game/Defaults;->s_iCurrentSelect:I

    goto :goto_6

    :cond_17
    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I

    move-result v1

    iget v2, p0, Lcom/t4game/Texter;->inputLength:I

    if-ne v1, v2, :cond_16

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    iget v2, p0, Lcom/t4game/Texter;->fcous:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2, v0}, Ljava/lang/StringBuffer;->insert(II)Ljava/lang/StringBuffer;

    goto :goto_8

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 1

    iget-boolean v0, p0, Lcom/t4game/Texter;->enable:Z

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method

.method public setEnglishLock()V
    .locals 1

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/Texter;->inputMode:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/Texter;->numLock:Z

    return-void
.end method

.method public setInputLength(I)V
    .locals 0

    iput p1, p0, Lcom/t4game/Texter;->inputLength:I

    return-void
.end method

.method public setInputModeViewXY(II)V
    .locals 0

    return-void
.end method

.method public setMunLock()V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x4

    iput v0, p0, Lcom/t4game/Texter;->inputMode:I

    iget-object v0, p0, Lcom/t4game/Texter;->interpunction:Lcom/t4game/Texter$Interpunction;

    iput-boolean v1, v0, Lcom/t4game/Texter$Interpunction;->interpunctionState:Z

    sput-boolean v1, Lcom/t4game/Defaults;->s_isPaintInterpunctionPanel:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/Texter;->numLock:Z

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/Texter;->clearText()V

    iget-object v0, p0, Lcom/t4game/Texter;->sb:Ljava/lang/StringBuffer;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iput v0, p0, Lcom/t4game/Texter;->fcous:I

    return-void
.end method
