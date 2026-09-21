.class Ljavax/microedition/lcdui/Canvas$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ljavax/microedition/lcdui/Canvas;->onCancel()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ljavax/microedition/lcdui/Canvas;


# direct methods
.method constructor <init>(Ljavax/microedition/lcdui/Canvas;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Canvas$2;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Canvas$2;->this$0:Ljavax/microedition/lcdui/Canvas;

    invoke-static {v0}, Ljavax/microedition/lcdui/Canvas;->access$300(Ljavax/microedition/lcdui/Canvas;)Ljavax/microedition/lcdui/Canvas$CanvasView;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Canvas$CanvasView;->getContext()Landroid/content/Context;

    move-result-object p0

    check-cast p0, Landroid/app/Activity;

    check-cast p0, Landroid/app/Activity;

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method
