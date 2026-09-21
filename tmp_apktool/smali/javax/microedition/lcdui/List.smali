.class public Ljavax/microedition/lcdui/List;
.super Ljavax/microedition/lcdui/Screen;

# interfaces
.implements Landroid/view/View$OnKeyListener;


# static fields
.field public static final EXCLUSIVE:I = 0x0

.field public static final IMPLICIT:I = 0x1

.field private static final KEY_IMAGE:Ljava/lang/String; = "image"

.field private static final KEY_TEXT:Ljava/lang/String; = "text"

.field public static final MULTIPLE:I = 0x2

.field public static final POPUP:I = 0x3


# instance fields
.field private data:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;>;"
        }
    .end annotation
.end field

.field private listType:I

.field private midlet:Ljavax/microedition/midlet/MIDlet;

.field private selectCommand:Ljavax/microedition/lcdui/Command;

.field private selectedIndex:I

.field private title:Ljava/lang/String;

.field private view:Landroid/widget/ListView;


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljavax/microedition/lcdui/Screen;-><init>()V

    iput-object p1, p0, Ljavax/microedition/lcdui/List;->title:Ljava/lang/String;

    iput p2, p0, Ljavax/microedition/lcdui/List;->listType:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public append(Ljava/lang/String;Ljavax/microedition/lcdui/Image;)I
    .locals 3

    new-instance v0, Ljava/util/HashMap;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/HashMap;-><init>(I)V

    if-eqz p2, :cond_0

    const-string v1, "image"

    invoke-virtual {p2}, Ljavax/microedition/lcdui/Image;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const-string v1, "text"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public disposeDisplayable()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    return-void
.end method

.method public getSelectCommand()Ljavax/microedition/lcdui/Command;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    return-object v0
.end method

.method public getSelectedIndex()I
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getSelectedItemPosition()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    goto :goto_0
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Map;

    const-string v0, "text"

    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0
.end method

.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    return-object v0
.end method

.method public initDisplayable(Ljavax/microedition/midlet/MIDlet;)V
    .locals 8

    const/4 v7, 0x2

    iput-object p1, p0, Ljavax/microedition/lcdui/List;->midlet:Ljavax/microedition/midlet/MIDlet;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getToolkit()Lj2ab/android/lcdui/Toolkit;

    move-result-object v0

    const v1, 0x7f030008

    invoke-interface {v0, v1}, Lj2ab/android/lcdui/Toolkit;->inflate(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    new-instance v0, Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Ljavax/microedition/midlet/MIDlet;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Ljavax/microedition/lcdui/List;->data:Ljava/util/ArrayList;

    const v3, 0x7f030009

    new-array v4, v7, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "image"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "text"

    aput-object v6, v4, v5

    new-array v5, v7, [I

    fill-array-data v5, :array_0

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    iget-object v1, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    iget v1, p0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setSelection(I)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080042
        0x7f080042
    .end array-data
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p3}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x42

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iget-object v1, p0, Ljavax/microedition/lcdui/List;->commandListener:Ljavax/microedition/lcdui/CommandListener;

    iget-object v2, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    invoke-interface {v1, v2, p0}, Ljavax/microedition/lcdui/CommandListener;->commandAction(Ljavax/microedition/lcdui/Command;Ljavax/microedition/lcdui/Displayable;)V

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setSelectCommand(Ljavax/microedition/lcdui/Command;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/List;->selectCommand:Ljavax/microedition/lcdui/Command;

    return-void
.end method

.method public setSelectedIndex(IZ)V
    .locals 1

    iput p1, p0, Ljavax/microedition/lcdui/List;->selectedIndex:I

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/lcdui/List;->view:Landroid/widget/ListView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    :cond_0
    return-void
.end method
