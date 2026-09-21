.class public Ljavax/microedition/lcdui/TextField;
.super Ljavax/microedition/lcdui/Item;

# interfaces
.implements Ljava/lang/Runnable;


# static fields
.field public static final ANY:I = 0x0

.field public static final DECIMAL:I = 0x1

.field public static final EMAILADDR:I = 0x2

.field public static final INITIAL_CAPS_SENTENCE:I = 0x4

.field public static final INITIAL_CAPS_WORD:I = 0x8

.field public static final NON_PREDICTIVE:I = 0x10

.field public static final NUMERIC:I = 0x20

.field public static final PASSWORD:I = 0x40

.field public static final PHONENUMBER:I = 0x80

.field public static final SENSITIVE:I = 0x100

.field public static final UNEDITABLE:I = 0x400

.field public static final URL:I = 0x200


# instance fields
.field private constraints:I

.field private label:Ljava/lang/String;

.field private labelView:Landroid/widget/TextView;

.field private maxSize:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/lcdui/Item;-><init>()V

    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    iput-object p2, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    iput p3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    iput p4, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

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

    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Text field max size "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    iget v0, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    if-lez v0, :cond_0

    new-array v0, v6, [Landroid/text/InputFilter;

    new-instance v1, Landroid/text/InputFilter$LengthFilter;

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

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
.method public dispose()V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    iput-object v1, p0, Ljavax/microedition/lcdui/TextField;->view:Landroid/widget/LinearLayout;

    iput-object v1, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    iput-object v1, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    return-void
.end method

.method public getConstraints()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    return v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getMaxSize()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    return v0
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    goto :goto_0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 4

    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, v0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    new-instance v2, Landroid/widget/TextView;

    invoke-direct {v2, v0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iget v3, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    invoke-direct {p0, v3, v0}, Ljavax/microedition/lcdui/TextField;->createTextView(ILandroid/content/Context;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v3, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v3, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iput-object v1, p0, Ljavax/microedition/lcdui/TextField;->view:Landroid/widget/LinearLayout;

    iput-object v2, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    iput-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    iget-object v1, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setConstraints(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/TextField;->constraints:I

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->label:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->labelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setMaxSize(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/TextField;->maxSize:I

    return-void
.end method

.method public setString(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljavax/microedition/lcdui/TextField;->text:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/TextField;->textView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    invoke-virtual {p0}, Ljavax/microedition/lcdui/TextField;->getString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method
