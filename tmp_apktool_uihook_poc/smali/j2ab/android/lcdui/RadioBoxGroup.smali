.class public Lj2ab/android/lcdui/RadioBoxGroup;
.super Lj2ab/android/lcdui/GroupItem;


# instance fields
.field private RadioBoxList:Landroid/widget/RadioGroup;

.field private fitPolicy:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/GroupItem;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/RadioGroup;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RadioGroup;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    const v1, 0x7f030003

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 3

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-nez p3, :cond_0

    aget-object v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/RadioBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/RadioBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getRadioBox(I)Landroid/widget/RadioButton;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RadioButton;

    return-object p0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lj2ab/android/lcdui/RadioBoxGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0, p1}, Landroid/widget/RadioGroup;->removeViewAt(I)V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->removeAllViews()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    iget v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->fitPolicy:I

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 2

    iput-object p1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    const v1, 0x7f030006

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/RelativeLayout;

    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-le p1, v0, :cond_1

    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_2
    new-instance v0, Landroid/widget/RadioButton;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/RadioButton;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setId(I)V

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setTextColor(I)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "          "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/widget/RadioGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    invoke-interface {v1, v0}, Lj2ab/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    if-ne v0, v4, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v4}, Lj2ab/android/lcdui/RadioBoxGroup;->setSelectedIndex(IZ)V

    :cond_3
    return-void
.end method

.method public isSelected(I)Z
    .locals 1

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/RadioButton;->isSelected()Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/RadioButton;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFitPolicy(I)V
    .locals 0

    iput p1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->fitPolicy:I

    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 0

    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 3

    const/4 v2, 0x0

    move v0, v2

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_0

    :goto_1
    iget-object v1, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public setSelectedIndex(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;->getRadioBox(I)Landroid/widget/RadioButton;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RadioButton;->getId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->check(I)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/RadioBoxGroup;->RadioBoxList:Landroid/widget/RadioGroup;

    invoke-virtual {v0}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v0

    return v0
.end method
