.class public Ljavax/microedition/lcdui/ChoiceGroup;
.super Ljavax/microedition/lcdui/Item;

# interfaces
.implements Ljavax/microedition/lcdui/Choice;


# instance fields
.field choiceType:I

.field private gi:Lj2ab/android/lcdui/GroupItem;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;IZ)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p3}, Ljavax/microedition/lcdui/ChoiceGroup;->init(IZ)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lj2ab/android/lcdui/RadioBoxGroup;

    invoke-direct {v0, p1}, Lj2ab/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lj2ab/android/lcdui/PopupBoxGroup;

    invoke-direct {v0, p1}, Lj2ab/android/lcdui/PopupBoxGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lj2ab/android/lcdui/CheckBoxGroup;

    invoke-direct {v0, p1}, Lj2ab/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Ljavax/microedition/lcdui/ChoiceGroup;-><init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;I[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;Z)V
    .locals 1

    invoke-direct {p0, p1}, Ljavax/microedition/lcdui/Item;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p5}, Ljavax/microedition/lcdui/ChoiceGroup;->init(IZ)V

    packed-switch p2, :pswitch_data_0

    :goto_0
    :pswitch_0
    return-void

    :pswitch_1
    new-instance v0, Lj2ab/android/lcdui/RadioBoxGroup;

    invoke-direct {v0, p1, p3, p4}, Lj2ab/android/lcdui/RadioBoxGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_2
    new-instance v0, Lj2ab/android/lcdui/PopupBoxGroup;

    invoke-direct {v0, p1, p3, p4}, Lj2ab/android/lcdui/PopupBoxGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_3
    new-instance v0, Lj2ab/android/lcdui/CheckBoxGroup;

    invoke-direct {v0, p1, p3, p4}, Lj2ab/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;[Ljava/lang/String;[Ljavax/microedition/lcdui/Image;)V

    iput-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_3
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lj2ab/android/lcdui/GroupItem;->append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I

    move-result v0

    return v0
.end method

.method public delete(I)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->delete(I)V

    return-void
.end method

.method public deleteAll()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->deleteAll()V

    return-void
.end method

.method public dispose()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->dispose()V

    return-void
.end method

.method public getFitPolicy()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->getFitPolicy()I

    move-result v0

    return v0
.end method

.method public getFont(I)Ljavax/microedition/lcdui/Font;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->getFont(I)Ljavax/microedition/lcdui/Font;

    move-result-object v0

    return-object v0
.end method

.method public getImage(I)Ljavax/microedition/lcdui/Image;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->getImage(I)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    return-object v0
.end method

.method public getSelectedFlags([Z)I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->getSelectedFlags([Z)I

    move-result v0

    return v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->getSelectedIndex()I

    move-result v0

    return v0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->getView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method init(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Illegal choice type"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput p1, p0, Ljavax/microedition/lcdui/ChoiceGroup;->choiceType:I

    return-void
.end method

.method public init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lj2ab/android/lcdui/GroupItem;->init(Ljavax/microedition/midlet/MIDlet;Landroid/view/ViewGroup;)V

    return-void
.end method

.method public insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2, p3}, Lj2ab/android/lcdui/GroupItem;->insert(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    return-void
.end method

.method public isSelected(I)Z
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->isSelected(I)Z

    move-result v0

    return v0
.end method

.method public set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2, p3}, Lj2ab/android/lcdui/GroupItem;->set(ILjava/lang/String;Ljavax/microedition/lcdui/Image;)V

    return-void
.end method

.method public setFitPolicy(I)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->setFitPolicy(I)V

    return-void
.end method

.method public setFont(ILjavax/microedition/lcdui/Font;)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lj2ab/android/lcdui/GroupItem;->setFont(ILjavax/microedition/lcdui/Font;)V

    return-void
.end method

.method public setSelectedFlags([Z)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1}, Lj2ab/android/lcdui/GroupItem;->setSelectedFlags([Z)V

    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0, p1, p2}, Lj2ab/android/lcdui/GroupItem;->setSelectedIndex(IZ)V

    return-void
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/ChoiceGroup;->gi:Lj2ab/android/lcdui/GroupItem;

    invoke-virtual {v0}, Lj2ab/android/lcdui/GroupItem;->size()I

    move-result v0

    return v0
.end method
