.class public Ljavax/microedition/lcdui/Form;
.super Ljavax/microedition/lcdui/Screen;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;
    }
.end annotation


# instance fields
.field public buttonContainer:Landroid/view/ViewGroup;

.field private formContainer:Landroid/view/ViewGroup;

.field itemStateListener:Ljavax/microedition/lcdui/ItemStateListener;

.field private items:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/microedition/lcdui/Item;",
            ">;"
        }
    .end annotation
.end field

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private title:Ljava/lang/String;

.field private view:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->itemStateListener:Ljavax/microedition/lcdui/ItemStateListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;[Ljavax/microedition/lcdui/Item;)V
    .locals 2

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Form;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    aget-object v1, p2, v0

    invoke-virtual {p0, v1}, Ljavax/microedition/lcdui/Form;->append(Ljavax/microedition/lcdui/Item;)I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public append(Ljavax/microedition/lcdui/Item;)I
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, v0, v1}, Ljavax/microedition/lcdui/Item;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->formContainer:Landroid/view/ViewGroup;

    invoke-virtual {p1}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    return v0
.end method

.method public delete(I)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Item;

    iget-object v1, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public disposeDisplayable()V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Item;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Item;->dispose()V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iput-object v2, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    iput-object v2, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    return-void
.end method

.method fireItemStateListener(Ljavax/microedition/lcdui/Item;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->itemStateListener:Ljavax/microedition/lcdui/ItemStateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->itemStateListener:Ljavax/microedition/lcdui/ItemStateListener;

    invoke-interface {v0, p1}, Ljavax/microedition/lcdui/ItemStateListener;->itemStateChanged(Ljavax/microedition/lcdui/Item;)V

    :cond_0
    return-void
.end method

.method public get(I)Ljavax/microedition/lcdui/Item;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/lcdui/Item;

    return-object p0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 5

    const/4 v3, 0x1

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    const v1, 0x7f030006

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->formContainer:Landroid/view/ViewGroup;

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Ljavax/microedition/lcdui/Form;->buttonContainer:Landroid/view/ViewGroup;

    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->midlet:Ljavax/microedition/midlet/MIDlet;

    move v1, v2

    :goto_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Item;

    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->view:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1, v2}, Ljavax/microedition/lcdui/Item;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Item;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Ljavax/microedition/lcdui/Form;->formContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->commands:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/lcdui/Command;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f030001

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    const v2, 0x7f080006

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Command;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    new-instance v4, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;

    invoke-direct {v4, p0, v0}, Ljavax/microedition/lcdui/Form$CallbackOnMenuItemClickListener;-><init>(Ljavax/microedition/lcdui/Form;Ljavax/microedition/lcdui/Command;)V

    invoke-virtual {v2, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->buttonContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    :cond_1
    return-void
.end method

.method public setItemStateListener(Ljavax/microedition/lcdui/ItemStateListener;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->itemStateListener:Ljavax/microedition/lcdui/ItemStateListener;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Form;->title:Ljava/lang/String;

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Form;->items:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
