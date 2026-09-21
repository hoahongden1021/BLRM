.class final Lcom/igexin/getuiext/view/e;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/data/b;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/view/e;->a:Lcom/igexin/getuiext/data/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x1

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/getuiext/util/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    invoke-static {v0, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startDownloadService(Lcom/igexin/getuiext/data/b;Z)I

    :cond_0
    iget-object v0, p0, Lcom/igexin/getuiext/view/e;->a:Lcom/igexin/getuiext/data/b;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/getuiext/view/e;->a:Lcom/igexin/getuiext/data/b;

    const/16 v1, 0xb

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_1
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->c:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
