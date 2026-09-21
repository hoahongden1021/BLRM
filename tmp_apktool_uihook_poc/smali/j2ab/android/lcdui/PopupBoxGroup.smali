.class public Lj2ab/android/lcdui/PopupBoxGroup;
.super Lj2ab/android/lcdui/GroupItem;


# instance fields
.field private fitPolicy:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private popupBoxAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private popupBoxList:Landroid/widget/Spinner;

.field private titleView:Landroid/widget/TextView;

.field private view:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/GroupItem;-><init>(Ljava/lang/String;)V

    new-instance v0, Landroid/widget/Spinner;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/Spinner;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    new-instance v0, Landroid/widget/TextView;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->titleView:Landroid/widget/TextView;

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    iget-object v1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->setDefualTypeface(Landroid/widget/TextView;)V

    sget-object v0, Ljavax/microedition/midlet/MIDlet;->DEFAULT_TOOLKIT:Lj2ab/android/lcdui/Toolkit;

    const v1, 0x7f030003

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->titleView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->view:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Ljavax/microedition/midlet/MIDlet;->DEFAULT_ACTIVITY:Landroid/app/Activity;

    const v2, 0x1090008

    invoke-direct {v0, v1, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x7f03000d

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    iget-object v1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/PopupBoxGroup;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 3

    invoke-direct {p0, p1}, Lj2ab/android/lcdui/PopupBoxGroup;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    if-nez p3, :cond_0

    aget-object v1, p2, v0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/PopupBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    aget-object v1, p2, v0

    aget-object v2, p3, v0

    invoke-virtual {p0, v1, v2}, Lj2ab/android/lcdui/PopupBoxGroup;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getPopupBox(I)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Lj2ab/android/lcdui/PopupBoxGroup;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->removeViewAt(I)V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->clear()V

    return-void
.end method

.method public dispose()V
    .locals 0

    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    iget v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->fitPolicy:I

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

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    const/4 v1, 0x1

    aput-boolean v1, p1, v0

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->view:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 2

    const/4 v1, 0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

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
    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getChildCount()I

    move-result v0

    if-ne v0, v1, :cond_3

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lj2ab/android/lcdui/PopupBoxGroup;->setSelectedIndex(IZ)V

    :cond_3
    return-void
.end method

.method public isSelected(I)Z
    .locals 4

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemId()J

    move-result-wide v0

    int-to-long v2, p1

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 2

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v1, p1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v0, p2, p1}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    return-void
.end method

.method public setFitPolicy(I)V
    .locals 0

    iput p1, p0, Lj2ab/android/lcdui/PopupBoxGroup;->fitPolicy:I

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
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lj2ab/android/lcdui/PopupBoxGroup;->setSelectedIndex(IZ)V

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1
.end method

.method public setSelectedIndex(IZ)V
    .locals 1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0, p1, p2}, Landroid/widget/Spinner;->setSelection(IZ)V

    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lj2ab/android/lcdui/PopupBoxGroup;->popupBoxList:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getCount()I

    move-result v0

    return v0
.end method
