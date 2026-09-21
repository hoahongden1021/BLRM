.class final Lcom/igexin/getuiext/view/i;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    const/4 v5, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const-string v6, "\u6b63\u5728\u4e0b\u8f7d"

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/view/j;

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->c:Landroid/widget/ImageView;

    if-ne v1, p1, :cond_0

    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    invoke-virtual {v1}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    iget v1, p0, Lcom/igexin/getuiext/view/j;->a:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->d:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v4}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iput v3, p0, Lcom/igexin/getuiext/view/j;->a:I

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    invoke-static {v1, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startDownloadService(Lcom/igexin/getuiext/data/b;Z)I

    iget-object v1, p0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    if-eqz v0, :cond_1

    invoke-static {v0, v5, v4}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    iget v1, p0, Lcom/igexin/getuiext/view/j;->a:I

    if-ne v1, v3, :cond_3

    iput v5, p0, Lcom/igexin/getuiext/view/j;->a:I

    iget v1, p0, Lcom/igexin/getuiext/view/j;->g:I

    invoke-static {v1, v0, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->pauseDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    iget-object v0, p0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget v1, p0, Lcom/igexin/getuiext/view/j;->a:I

    if-ne v1, v5, :cond_4

    iput v3, p0, Lcom/igexin/getuiext/view/j;->a:I

    iget v1, p0, Lcom/igexin/getuiext/view/j;->g:I

    invoke-static {v1, v0, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->continueDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    iget-object v0, p0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v1, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/igexin/getuiext/view/j;->a:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    iget v2, p0, Lcom/igexin/getuiext/view/j;->g:I

    iget-object v3, p0, Lcom/igexin/getuiext/view/j;->h:Ljava/lang/String;

    invoke-static {v1, v2, v3, v0, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startOpenApp(Ljava/lang/String;)V

    goto :goto_0
.end method
