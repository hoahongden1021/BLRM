.class final Lcom/igexin/getuiext/view/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/data/b;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/view/c;->a:Lcom/igexin/getuiext/data/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/igexin/getuiext/view/c;->a:Lcom/igexin/getuiext/data/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/view/c;->a:Lcom/igexin/getuiext/data/b;

    const/4 v1, 0x7

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
