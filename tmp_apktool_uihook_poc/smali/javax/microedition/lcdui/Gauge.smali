.class public Ljavax/microedition/lcdui/Gauge;
.super Ljavax/microedition/lcdui/Item;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private interactive:Z

.field private label:Landroid/widget/TextView;

.field private maxValue:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private progressBar:Landroid/widget/ProgressBar;

.field private value:I

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZII)V
    .locals 0

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    iput-boolean p2, p0, Ljavax/microedition/lcdui/Gauge;->interactive:Z

    iput p3, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    iput p4, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    return-void
.end method


# virtual methods
.method public dispose()V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method public getMaxValue()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    return v0
.end method

.method public getValue()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 4

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    const v1, 0x7f030007

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getId()I

    const v0, 0x7f08003f

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    const v1, 0x7f08003e

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getLabel()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v2, p0, Ljavax/microedition/lcdui/Gauge;->view:Landroid/view/View;

    iput-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    iput-object v1, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    iput-object p1, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method public run()V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    iget v1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    invoke-virtual {p0}, Ljavax/microedition/lcdui/Gauge;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 1

    invoke-super {p0, p1}, Ljavax/microedition/lcdui/Item;->setLabel(Ljava/lang/String;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->label:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setMaxValue(I)V
    .locals 1

    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->maxValue:I

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method

.method public setValue(I)V
    .locals 1

    iput p1, p0, Ljavax/microedition/lcdui/Gauge;->value:I

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Gauge;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {v0, p0}, Ljavax/microedition/midlet/MIDlet;->invokeAndWait(Ljava/lang/Runnable;)V

    :cond_0
    return-void
.end method
