.class public Lj2ab/android/lcdui/CheckBoxGroup;
.super Lj2ab/android/lcdui/GroupItem;


# instance fields
.field private checkBoxAdpt:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Landroid/widget/CheckBox;",
            ">;"
        }
    .end annotation
.end field

.field private fitPolicy:I

.field private highlightedItemIndex:I

.field private listView:Landroid/widget/ListView;

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private numOfItems:I

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/GroupItem;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    const/4 v0, -0x1

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->highlightedItemIndex:I

    new-instance v0, Landroid/widget/ListView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    new-instance v0, Lj2ab/android/lcdui/CheckBoxGroup$1;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    const v2, 0x7f03000f

    invoke-direct {v0, p0, v1, v2}, Lj2ab/android/lcdui/CheckBoxGroup$1;-><init>(Lj2ab/android/lcdui/CheckBoxGroup;Landroid/content/Context;I)V

    iput-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    const v1, 0x7f030003

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->listView:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 3

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-nez p3, :cond_0

    aget-object v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/CheckBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/CheckBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    :cond_1
    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    invoke-virtual {p0, v0, p1, p2}, Lj2ab/android/lcdui/CheckBoxGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public delete(I)V
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    const/4 v0, -0x1

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->highlightedItemIndex:I

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->fitPolicy:I

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
    .locals 4

    const/4 v3, 0x0

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_1
    move v1, v3

    move v2, v3

    :goto_0
    array-length v0, p1

    if-ge v1, v0, :cond_3

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v1, v0, :cond_2

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v0

    :goto_1
    aput-boolean v0, p1, v1

    aget-boolean v0, p1, v1

    if-eqz v0, :cond_4

    add-int/lit8 v0, v2, 0x1

    :goto_2
    add-int/lit8 v1, v1, 0x1

    move v2, v0

    goto :goto_0

    :cond_2
    move v0, v3

    goto :goto_1

    :cond_3
    return v2

    :cond_4
    move v0, v2

    goto :goto_2
.end method

.method public getSelectedIndex()I
    .locals 2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v1, v0, :cond_1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->midlet:Ljavax/microedition/midlet/MIDlet;

    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 2

    if-ltz p1, :cond_0

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

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
    new-instance v0, Landroid/widget/CheckBox;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, v0, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public isSelected(I)Z
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Landroid/widget/CheckBox;->isSelected()Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setFitPolicy(I)V
    .locals 0

    iput p1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->fitPolicy:I

    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 0

    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/4 v2, -0x1

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_0
    array-length v0, p1

    iget v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v0, v1, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0

    :cond_1
    iget v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-nez v0, :cond_3

    :cond_2
    :goto_0
    return-void

    :cond_3
    move v0, v3

    :goto_1
    iget v1, p0, Lj2ab/android/lcdui/CheckBoxGroup;->numOfItems:I

    if-ge v0, v1, :cond_5

    aget-boolean v1, p1, v0

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0, v4}, Lj2ab/android/lcdui/CheckBoxGroup;->setSelectedIndex(IZ)V

    :goto_2
    if-ne v0, v2, :cond_2

    invoke-virtual {p0, v3, v4}, Lj2ab/android/lcdui/CheckBoxGroup;->setSelectedIndex(IZ)V

    goto :goto_0

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public setSelectedIndex(IZ)V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/widget/CheckBox;

    invoke-virtual {p0, p2}, Landroid/widget/CheckBox;->setSelected(Z)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/CheckBoxGroup;->checkBoxAdpt:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v0

    return v0
.end method
