.class Lj2ab/android/lcdui/CheckBoxGroup$1;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2ab/android/lcdui/CheckBoxGroup;-><init>(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/widget/CheckBox;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/lcdui/CheckBoxGroup;


# direct methods
.method constructor <init>(Lj2ab/android/lcdui/CheckBoxGroup;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/lcdui/CheckBoxGroup$1;->this$0:Lj2ab/android/lcdui/CheckBoxGroup;

    invoke-direct {p0, p2, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    invoke-virtual {p0, p1}, Lj2ab/android/lcdui/CheckBoxGroup$1;->getItem(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/View;

    return-object p0
.end method
