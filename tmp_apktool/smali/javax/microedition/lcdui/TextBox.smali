.class public Ljavax/microedition/lcdui/TextBox;
.super Ljavax/microedition/lcdui/Screen;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private constraints:I

.field private maxSize:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private title:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->title:Ljava/lang/String;

    iput-object p2, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    iput p3, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    iput p4, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    return-void
.end method

.method private createTextView(ILandroid/content/Context;)Landroid/widget/TextView;
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    and-int/lit16 v0, p1, 0x400

    if-nez v0, :cond_1

    move v0, v6

    :goto_0
    const-string v1, "**************"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "---add des"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    new-instance v0, Landroid/text/method/ArrowKeyMovementMethod;

    invoke-direct {v0}, Landroid/text/method/ArrowKeyMovementMethod;-><init>()V

    and-int/lit8 v1, p1, 0x40

    if-lez v1, :cond_2

    new-instance v1, Landroid/text/method/PasswordTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/PasswordTransformationMethod;-><init>()V

    :goto_1
    new-instance v2, Landroid/widget/EditText;

    invoke-direct {v2, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const v3, 0x7f020008

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setBackgroundResource(I)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setTextColor(I)V

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    if-lez v0, :cond_0

    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    invoke-direct {v1, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v1, v0, v5

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    :cond_0
    move-object v0, v2

    :goto_2
    return-object v0

    :cond_1
    move v0, v5

    goto :goto_0

    :cond_2
    new-instance v1, Landroid/text/method/SingleLineTransformationMethod;

    invoke-direct {v1}, Landroid/text/method/SingleLineTransformationMethod;-><init>()V

    goto :goto_1

    :cond_3
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    goto :goto_2
.end method


# virtual methods
.method public disposeDisplayable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method public getConstraints()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    return v0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 2

    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    iget v0, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Ljavax/microedition/lcdui/TextBox;->createTextView(ILandroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public setConstraints(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/TextBox;->constraints:I

    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/TextBox;->maxSize:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljavax/microedition/lcdui/TextBox;->text:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextBox;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
