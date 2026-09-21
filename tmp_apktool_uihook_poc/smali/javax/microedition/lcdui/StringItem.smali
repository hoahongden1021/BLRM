.class public Ljavax/microedition/lcdui/StringItem;
.super Ljavax/microedition/lcdui/Item;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private appearanceMode:I

.field private labelView:Landroid/widget/TextView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private text:Ljava/lang/String;

.field private textView:Landroid/widget/TextView;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/StringItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Ljavax/microedition/lcdui/Item;-><init>()V

    invoke-virtual {p0, p1}, Ljavax/microedition/lcdui/StringItem;->setLabel(Ljava/lang/String;)V

    iput-object p2, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    iput p3, p0, Ljavax/microedition/lcdui/StringItem;->appearanceMode:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    return-void
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    const v1, 0x7f03000a

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    const v1, 0x7f080046

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->view:Landroid/view/View;

    const v1, 0x7f080045

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    iget-object v1, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/StringItem;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->labelView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Ljavax/microedition/lcdui/StringItem;->text:Ljava/lang/String;

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->textView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/StringItem;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0}, Ljavax/microedition/midlet/MIDlet;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
