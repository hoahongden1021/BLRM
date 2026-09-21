.class Lcom/igexin/a/d/a/a/i/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field final synthetic a:Lcom/igexin/a/d/a/a/i/a;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/a/i/a;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/a/i/e;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 2

    const/4 v1, 0x1

    packed-switch p2, :pswitch_data_0

    move v0, v1

    :goto_0
    return v0

    :pswitch_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/e;->a:Lcom/igexin/a/d/a/a/i/a;

    invoke-static {v0}, Lcom/igexin/a/d/a/a/i/a;->g(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    move v0, v1

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
    .end packed-switch
.end method
