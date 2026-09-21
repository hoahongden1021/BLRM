.class final Lcom/igexin/getuiext/view/b;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/igexin/getuiext/data/b;


# direct methods
.method constructor <init>(ZLcom/igexin/getuiext/data/b;)V
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/getuiext/view/b;->a:Z

    iput-object p2, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    const/4 v3, 0x3

    const/4 v2, 0x2

    const/4 v1, 0x1

    const-string v0, "\u6682\u505c"

    const-string v0, "inc_pause.png"

    iget-boolean v0, p0, Lcom/igexin/getuiext/view/b;->a:Z

    if-eqz v0, :cond_4

    :try_start_0
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_start.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(I)I

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    iget-object v1, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->pauseDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v2, :cond_2

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_pause.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(I)I

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    iget-object v1, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->continueDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v3, :cond_3

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    sget v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    sget-object v2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startOpenApp(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_4
    :try_start_1
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_pause.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(I)I

    iget-object v0, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startDownloadService(Lcom/igexin/getuiext/data/b;Z)I

    move-result v0

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    iget-object v0, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v1, 0x3

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    goto/16 :goto_0

    :catch_1
    move-exception v0

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_start.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u7ee7\u7eed"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(I)I

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    iget-object v1, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->pauseDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    goto/16 :goto_0

    :cond_6
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v2, :cond_7

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_pause.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(I)I

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    iget-object v1, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->continueDownloadService(ILcom/igexin/getuiext/data/b;Z)V

    goto/16 :goto_0

    :cond_7
    invoke-static {}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a()I

    move-result v0

    if-ne v0, v3, :cond_8

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    sget v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    sget-object v2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->filePath:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/getuiext/view/b;->b:Lcom/igexin/getuiext/data/b;

    const/4 v4, 0x1

    invoke-static {v0, v1, v2, v3, v4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    goto/16 :goto_0

    :cond_8
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    invoke-static {v0}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->startOpenApp(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_0
.end method
