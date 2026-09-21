.class public Lcom/igexin/getuiext/view/GetuiExtDialogView;
.super Ljava/lang/Object;


# static fields
.field static a:Z

.field public static appNameTextView:Landroid/widget/TextView;

.field public static applists:Ljava/util/List;

.field static b:Ljava/lang/String;

.field static c:Landroid/app/Activity;

.field public static clickDownImageView:Landroid/widget/ImageView;

.field public static clickDownLinearLayout:Landroid/widget/LinearLayout;

.field public static clickListLinearLayout:Landroid/widget/LinearLayout;

.field public static closeImageView:Landroid/widget/ImageView;

.field public static context:Landroid/content/Context;

.field static d:I

.field public static downloadId:I

.field static e:Ljava/util/List;

.field static f:Landroid/view/View$OnClickListener;

.field public static filePath:Ljava/lang/String;

.field private static g:I

.field public static handler:Landroid/os/Handler;

.field public static itent:Landroid/content/Intent;

.field public static logoImageView:Landroid/widget/ImageView;

.field public static manageTextView:Landroid/widget/TextView;

.field public static needSizeTextView:Landroid/widget/TextView;

.field public static nextTextView:Landroid/widget/TextView;

.field public static progressBar:Landroid/widget/ProgressBar;

.field public static recInstall1:Landroid/widget/TextView;

.field public static recInstall2:Landroid/widget/TextView;

.field public static recInstall3:Landroid/widget/TextView;

.field public static recInstall4:Landroid/widget/TextView;

.field public static recProgressBar1:Landroid/widget/ProgressBar;

.field public static recProgressBar2:Landroid/widget/ProgressBar;

.field public static recProgressBar3:Landroid/widget/ProgressBar;

.field public static recProgressBar4:Landroid/widget/ProgressBar;

.field public static recommend1TextView:Landroid/widget/TextView;

.field public static recommend2TextView:Landroid/widget/TextView;

.field public static recommend3TextView:Landroid/widget/TextView;

.field public static recommend4TextView:Landroid/widget/TextView;

.field public static recommendImageView1:Landroid/widget/ImageView;

.field public static recommendImageView2:Landroid/widget/ImageView;

.field public static recommendImageView3:Landroid/widget/ImageView;

.field public static recommendImageView4:Landroid/widget/ImageView;

.field public static sizeTextView:Landroid/widget/TextView;

.field public static statusTextView1:Landroid/widget/TextView;

.field public static statusTextView2:Landroid/widget/TextView;

.field public static statusTextView3:Landroid/widget/TextView;

.field public static statusTextView4:Landroid/widget/TextView;

.field public static titleTextView:Landroid/widget/TextView;

.field public static updateMsg1TextView:Landroid/widget/TextView;

.field public static updateMsg2TextView:Landroid/widget/TextView;

.field public static updateMsgTextView:Landroid/widget/TextView;

.field public static uploadImageView:Landroid/widget/ImageView;

.field public static uploadStatusTextView:Landroid/widget/TextView;

.field public static versionTextView:Landroid/widget/TextView;

.field public static wifiTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    sput-boolean v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->a:Z

    const-string v0, ""

    sput-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    sput v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->d:I

    sput v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    const/4 v0, -0x1

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    const/4 v0, 0x0

    sput-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->handler:Landroid/os/Handler;

    new-instance v0, Lcom/igexin/getuiext/view/i;

    invoke-direct {v0}, Lcom/igexin/getuiext/view/i;-><init>()V

    sput-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->f:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ShowDialogView(Landroid/content/Intent;ZLandroid/app/Activity;I)Landroid/view/View;
    .locals 12

    const/4 v0, 0x0

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

    sput p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    new-instance p3, Lcom/igexin/getuiext/view/a;

    invoke-direct {p3}, Lcom/igexin/getuiext/view/a;-><init>()V

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->handler:Landroid/os/Handler;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->clear()V

    sput-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->c:Landroid/app/Activity;

    sput-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string p2, "pkgname"

    invoke-virtual {p0, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    sput-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->itent:Landroid/content/Intent;

    sget-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v0, "increment_popup_dialog"

    const-string v1, "layout"

    invoke-static {p3, v0, v1}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    if-nez p3, :cond_0

    const/4 p0, 0x0

    :goto_0
    return-object p0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    sget-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string p3, "m_background"

    const-string v1, "id"

    invoke-static {p2, p3, v1}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    :try_start_0
    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p3

    const-string v1, "inc_bg.9.png"

    invoke-virtual {p3, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p3

    invoke-static {p3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-virtual {p3}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/NinePatch;->isNinePatchChunk([B)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v2, Landroid/graphics/drawable/NinePatchDrawable;

    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    const/4 v4, 0x0

    invoke-direct {v2, p3, v1, v3, v4}, Landroid/graphics/drawable/NinePatchDrawable;-><init>(Landroid/graphics/Bitmap;[BLandroid/graphics/Rect;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    sget-object p2, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b:Ljava/lang/String;

    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/igexin/getuiext/data/b;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_name_title"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->titleTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->titleTextView:Landroid/widget/TextView;

    const-string v1, "%1$s\u6b63\u5728\u5347\u7ea7..."

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "name"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_name"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->appNameTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->appNameTextView:Landroid/widget/TextView;

    const-string v1, "name"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_version"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->versionTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->versionTextView:Landroid/widget/TextView;

    const-string v1, "\u7248\u672c:%1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "versionName"

    invoke-virtual {p0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "upload_status"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u66f4\u65b0"

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string p3, "fullSize"

    const-wide/16 v1, 0x0

    invoke-virtual {p0, p3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    const-string p3, "diffSize"

    const-wide/16 v3, 0x0

    invoke-virtual {p0, p3, v3, v4}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v5, "app_size"

    const-string v6, "id"

    invoke-static {p3, v5, v6}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->sizeTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->sizeTextView:Landroid/widget/TextView;

    const-string v5, "\u5927\u5c0f:%1$s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "%.2f"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    long-to-float v1, v1

    const/high16 v2, 0x49800000    # 1048576.0f

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    aput-object v1, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "M"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-wide/16 v1, 0x0

    cmp-long p3, v3, v1

    if-lez p3, :cond_2

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->sizeTextView:Landroid/widget/TextView;

    invoke-virtual {p3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p3

    const/16 v1, 0x11

    invoke-virtual {p3, v1}, Landroid/text/TextPaint;->setFlags(I)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_need_size"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->needSizeTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->needSizeTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->needSizeTextView:Landroid/widget/TextView;

    const-string v1, "\u53ea\u9700:%1$s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "%.2f"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    long-to-float v3, v3

    const/high16 v4, 0x49800000    # 1048576.0f

    div-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "M"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :try_start_1
    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_logo_province"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_province.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6

    :cond_2
    :goto_2
    const-string p3, "description"

    invoke-virtual {p0, p3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const-string v1, "<br>"

    invoke-virtual {p3, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    array-length p3, v1

    if-lez p3, :cond_3

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v2, "update_msg"

    const-string v3, "id"

    invoke-static {p3, v2, v3}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsgTextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsgTextView:Landroid/widget/TextView;

    const-string v2, "\u66f4\u65b0\u8bf4\u660e:"

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v2, "update_msg1"

    const-string v3, "id"

    invoke-static {p3, v2, v3}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsg1TextView:Landroid/widget/TextView;

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsg1TextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v2, "update_msg2"

    const-string v3, "id"

    invoke-static {p3, v2, v3}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsg2TextView:Landroid/widget/TextView;

    array-length p3, v1

    const/4 v2, 0x1

    if-le p3, v2, :cond_3

    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->updateMsg2TextView:Landroid/widget/TextView;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_logo"

    const-string v2, "id"

    invoke-static {p3, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p3

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    sput-object p3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->logoImageView:Landroid/widget/ImageView;

    invoke-static {}, Lcom/igexin/getuiext/service/GetuiExtService;->getInstance()Lcom/igexin/getuiext/service/GetuiExtService;

    move-result-object p3

    const-string v1, "inc-default.png"

    invoke-virtual {p3, v1}, Lcom/igexin/getuiext/service/GetuiExtService;->getImageFromAssetsFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p3

    if-eqz p3, :cond_7

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->logoImageView:Landroid/widget/ImageView;

    invoke-virtual {v1, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_3
    const/4 v1, 0x0

    const-string v2, "appIcon"

    invoke-virtual {p0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->logoImageView:Landroid/widget/ImageView;

    invoke-static {v1, p0, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V

    :try_start_2
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "click_upload"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_update.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "close"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->closeImageView:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->closeImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_icon_close.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "click_down_img"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickDownImageView:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickDownImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_click_down.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "click_down"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickDownLinearLayout:Landroid/widget/LinearLayout;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickDownLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_more.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "down_click_linearLayout"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/LinearLayout;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickListLinearLayout:Landroid/widget/LinearLayout;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickListLinearLayout:Landroid/widget/LinearLayout;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_bg2.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/graphics/drawable/Drawable;->createFromStream(Ljava/io/InputStream;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    :goto_4
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "other_operation"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    const-string v1, "\u8fd8\u53ef\u4ee5\u8fdb\u884c\u4ee5\u4e0b\u64cd\u4f5c\uff1a"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "manage_app"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->manageTextView:Landroid/widget/TextView;

    :try_start_3
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "inc_btn_normal.png"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->manageTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_5
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->manageTextView:Landroid/widget/TextView;

    const-string v1, "\u7ba1\u7406\u6b64\u5e94\u7528"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "wifi_download"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->wifiTextView:Landroid/widget/TextView;

    :try_start_4
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object p0

    const-string v1, "inc_btn_focus.png"

    invoke-virtual {p0, v1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object p0

    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->wifiTextView:Landroid/widget/TextView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, p0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    :goto_6
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->wifiTextView:Landroid/widget/TextView;

    const-string v1, "WiFi\u4e0b\u4e0b\u8f7d"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "next_time"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->nextTextView:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->nextTextView:Landroid/widget/TextView;

    const-string v1, "\u4e0b\u6b21\u518d\u8bf4"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->nextTextView:Landroid/widget/TextView;

    invoke-virtual {p0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object p0

    const/16 v1, 0x9

    invoke-virtual {p0, v1}, Landroid/text/TextPaint;->setFlags(I)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v1, "app_progress"

    const-string v2, "id"

    invoke-static {p0, v1, v2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->progressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_4

    :try_start_5
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_pause.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u6682\u505c"

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p0, 0x1

    sput p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    :cond_4
    :goto_7
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    new-instance v1, Lcom/igexin/getuiext/view/b;

    invoke-direct {v1, p1, p2}, Lcom/igexin/getuiext/view/b;-><init>(ZLcom/igexin/getuiext/data/b;)V

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->closeImageView:Landroid/widget/ImageView;

    new-instance p1, Lcom/igexin/getuiext/view/c;

    invoke-direct {p1, p2}, Lcom/igexin/getuiext/view/c;-><init>(Lcom/igexin/getuiext/data/b;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->manageTextView:Landroid/widget/TextView;

    new-instance p1, Lcom/igexin/getuiext/view/d;

    invoke-direct {p1, p2}, Lcom/igexin/getuiext/view/d;-><init>(Lcom/igexin/getuiext/data/b;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->wifiTextView:Landroid/widget/TextView;

    new-instance p1, Lcom/igexin/getuiext/view/e;

    invoke-direct {p1, p2}, Lcom/igexin/getuiext/view/e;-><init>(Lcom/igexin/getuiext/data/b;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->clickDownLinearLayout:Landroid/widget/LinearLayout;

    new-instance p1, Lcom/igexin/getuiext/view/f;

    invoke-direct {p1}, Lcom/igexin/getuiext/view/f;-><init>()V

    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->nextTextView:Landroid/widget/TextView;

    new-instance p1, Lcom/igexin/getuiext/view/g;

    invoke-direct {p1, p2}, Lcom/igexin/getuiext/view/g;-><init>(Lcom/igexin/getuiext/data/b;)V

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_13

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string p2, "maybe"

    const-string v1, "id"

    invoke-static {p0, p2, v1}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    if-eqz p0, :cond_5

    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setVisibility(I)V

    const-string p2, "\u60a8\u53ef\u80fd\u8fd8\u559c\u6b22\u5982\u4e0b\u5e94\u7528\uff1a"

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_5
    const-string p0, ""

    const/4 p2, 0x4

    if-le p1, p2, :cond_6

    const/4 p1, 0x4

    :cond_6
    const-string p2, "\u70b9\u51fb\u5b89\u88c5"

    const/4 v1, 0x0

    :try_start_6
    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "inc_setup_bg.png"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-static {v3}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    move-object v1, v2

    :goto_8
    const/4 v2, 0x0

    move-object v3, p0

    :goto_9
    if-ge v2, p1, :cond_11

    packed-switch v2, :pswitch_data_0

    :goto_a
    const/4 p0, 0x4

    if-ge v2, p0, :cond_14

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_14

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object p0

    const-string v4, ""

    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_14

    sget-object v4, Lcom/igexin/getuiext/service/GetuiExtService;->appInfoMap:Ljava/util/HashMap;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, p0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string p0, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_10

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {p0, v3, v4}, Lcom/igexin/getuiext/service/GetuiExtService;->getBIData(Lcom/igexin/getuiext/data/b;IZ)Ljava/lang/String;

    move-result-object p0

    :goto_b
    add-int/lit8 v2, v2, 0x1

    move-object v3, p0

    goto :goto_9

    :catch_0
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_1

    :cond_7
    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->logoImageView:Landroid/widget/ImageView;

    const v2, 0x1080093

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_3

    :catch_1
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_4

    :catch_2
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    :catch_3
    move-exception p0

    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    :pswitch_0
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_lin1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_logo1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    if-eqz p3, :cond_9

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_c
    add-int/lit8 v4, v2, 0x1

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    invoke-static {v4, p0, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend1TextView:Landroid/widget/TextView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend1TextView:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "status1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView1:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "rec_install1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall1:Landroid/widget/TextView;

    if-eqz v1, :cond_8

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall1:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_8
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall1:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_pro1"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar1:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/igexin/getuiext/view/j;

    invoke-direct {v4}, Lcom/igexin/getuiext/view/j;-><init>()V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->c:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView1:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall1:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->d:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar1:Landroid/widget/ProgressBar;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/igexin/getuiext/data/b;->c(I)V

    goto/16 :goto_a

    :cond_9
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView1:Landroid/widget/ImageView;

    const v4, 0x1080093

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_c

    :pswitch_1
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_lin2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_logo2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    if-eqz p3, :cond_b

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_d
    add-int/lit8 v4, v2, 0x1

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    invoke-static {v4, p0, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend2TextView:Landroid/widget/TextView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend2TextView:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "status2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView2:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "rec_install2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall2:Landroid/widget/TextView;

    if-eqz v1, :cond_a

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall2:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_a
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall2:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_pro2"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar2:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/igexin/getuiext/view/j;

    invoke-direct {v4}, Lcom/igexin/getuiext/view/j;-><init>()V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->c:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView2:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall2:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->d:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar2:Landroid/widget/ProgressBar;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/igexin/getuiext/data/b;->c(I)V

    goto/16 :goto_a

    :cond_b
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView2:Landroid/widget/ImageView;

    const v4, 0x1080093

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_d

    :pswitch_2
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_lin3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_logo3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    if-eqz p3, :cond_d

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_e
    add-int/lit8 v4, v2, 0x1

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    invoke-static {v4, p0, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend3TextView:Landroid/widget/TextView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend3TextView:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "status3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView3:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "rec_install3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall3:Landroid/widget/TextView;

    if-eqz v1, :cond_c

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall3:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_c
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall3:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_pro3"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar3:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/igexin/getuiext/view/j;

    invoke-direct {v4}, Lcom/igexin/getuiext/view/j;-><init>()V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->c:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView3:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall3:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->d:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar3:Landroid/widget/ProgressBar;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/igexin/getuiext/data/b;->c(I)V

    goto/16 :goto_a

    :cond_d
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView3:Landroid/widget/ImageView;

    const v4, 0x1080093

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_e

    :pswitch_3
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_lin4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_logo4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    if-eqz p3, :cond_f

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    :goto_f
    add-int/lit8 v4, v2, 0x1

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object p0

    sget-object v5, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    invoke-static {v4, p0, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend4TextView:Landroid/widget/TextView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommend4TextView:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v4, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "status4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView4:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "rec_install4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall4:Landroid/widget/TextView;

    if-eqz v1, :cond_e

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall4:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_e
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall4:Landroid/widget/TextView;

    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string v4, "recommend_pro4"

    const-string v5, "id"

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ProgressBar;

    sput-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar4:Landroid/widget/ProgressBar;

    new-instance v4, Lcom/igexin/getuiext/view/j;

    invoke-direct {v4}, Lcom/igexin/getuiext/view/j;-><init>()V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->c:Landroid/widget/ImageView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->statusTextView4:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recInstall4:Landroid/widget/TextView;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->d:Landroid/widget/TextView;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recProgressBar4:Landroid/widget/ProgressBar;

    iput-object p0, v4, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {p0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    sget-object v4, Lcom/igexin/getuiext/view/GetuiExtDialogView;->f:Landroid/view/View$OnClickListener;

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Lcom/igexin/getuiext/data/b;->c(I)V

    goto/16 :goto_a

    :cond_f
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->recommendImageView4:Landroid/widget/ImageView;

    const v4, 0x1080093

    invoke-virtual {p0, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_f

    :cond_10
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v3, "\n"

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->applists:Ljava/util/List;

    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/getuiext/data/b;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-static {p0, v4, v5}, Lcom/igexin/getuiext/service/GetuiExtService;->getBIData(Lcom/igexin/getuiext/data/b;IZ)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto/16 :goto_b

    :cond_11
    const-string p0, ""

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    const-string p0, "3"

    invoke-static {v3, p0}, Lcom/igexin/getuiext/service/GetuiExtService;->sendBIMessage(Ljava/lang/String;Ljava/lang/String;)V

    :cond_12
    :goto_10
    move-object p0, v0

    goto/16 :goto_0

    :cond_13
    sget-object p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    const-string p1, "maybe"

    const-string p2, "id"

    invoke-static {p0, p1, p2}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_10

    :catch_4
    move-exception v2

    goto/16 :goto_8

    :catch_5
    move-exception p0

    goto/16 :goto_7

    :catch_6
    move-exception p3

    goto/16 :goto_2

    :cond_14
    move-object p0, v3

    goto/16 :goto_b

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a()I
    .locals 1

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

    return v0
.end method

.method static synthetic a(I)I
    .locals 0

    sput p0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

    return p0
.end method

.method static synthetic a(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->b(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    return-void
.end method

.method private static b(Landroid/content/Context;ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V
    .locals 2

    if-eqz p4, :cond_1

    invoke-virtual {p3}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/igexin/getuiext/util/h;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lcom/igexin/getuiext/data/b;->h()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p3}, Lcom/igexin/getuiext/data/b;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "\u5b89\u88c5\u5305\u4fe1\u606f\u7f3a\u5931\uff0c\u4e0b\u6b21\u518d\u8bd5\u8bd5\uff01"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_0
    invoke-static {p1}, Lcom/igexin/getuiext/util/b;->a(I)I

    move-result v0

    const-string v1, "notification"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    return-void

    :cond_0
    invoke-static {p1, p2, p3, p4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->sendBroadcastInstall(ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    goto :goto_0

    :cond_1
    invoke-static {p1, p2, p3, p4}, Lcom/igexin/getuiext/view/GetuiExtDialogView;->sendBroadcastInstall(ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V

    goto :goto_0
.end method

.method public static changeInstallStatus(Ljava/lang/String;)V
    .locals 4

    const-string v0, "\u6253\u5f00"

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->itent:Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->itent:Landroid/content/Intent;

    const-string v1, "name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_open.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u6253\u5f00"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x4

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/view/j;

    iget-object v2, v0, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    invoke-virtual {v2}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, v0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v3, "\u6253\u5f00"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v2, 0x4

    iput v2, v0, Lcom/igexin/getuiext/view/j;->a:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1
.end method

.method public static continueDownloadService(ILcom/igexin/getuiext/data/b;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.download.action.notify.click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "run"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/16 v0, 0x9

    invoke-static {p1, v0, p2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x7

    invoke-static {p1, v0, p2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    goto :goto_0
.end method

.method public static getHttpBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 2

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p0

    check-cast p0, Ljava/net/HttpURLConnection;

    const/16 v1, 0x1770

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    invoke-virtual {p0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object v0

    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static getResId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, p2, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static pauseDownloadService(ILcom/igexin/getuiext/data/b;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.download.action.notify.click"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "pause"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "id"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p1, :cond_0

    if-eqz p2, :cond_1

    const/16 v0, 0x8

    invoke-static {p1, v0, p2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x6

    invoke-static {p1, v0, p2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    goto :goto_0
.end method

.method public static refreshAppLogoImage(ILjava/lang/String;Landroid/widget/ImageView;)V
    .locals 2

    new-instance v0, Lcom/igexin/getuiext/view/h;

    invoke-direct {v0, p1, p0}, Lcom/igexin/getuiext/view/h;-><init>(Ljava/lang/String;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/igexin/getuiext/view/h;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static refreshDownloadSatus(ILjava/lang/String;)V
    .locals 7

    const/4 v4, 0x2

    const/4 v3, 0x1

    const-string v6, "\u6682\u505c"

    const-string v5, "pause"

    sget v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->downloadId:I

    if-ne v0, p0, :cond_2

    :try_start_0
    const-string v0, "pause"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

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

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I

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
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_3
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/view/j;

    iget v2, v0, Lcom/igexin/getuiext/view/j;->g:I

    if-ne v2, p0, :cond_3

    const-string v2, "pause"

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iput v4, v0, Lcom/igexin/getuiext/view/j;->a:I

    iget-object v0, v0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v2, "\u6682\u505c"

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_4
    iput v3, v0, Lcom/igexin/getuiext/view/j;->a:I

    iget-object v0, v0, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v2, "\u6b63\u5728\u4e0b\u8f7d"

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method public static sendBroadcastInstall(ILjava/lang/String;Lcom/igexin/getuiext/data/b;Z)V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.igexin.increment"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "action"

    const-string v2, "install"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "filepath"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "downloadId"

    invoke-virtual {v0, v1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, "verifyCode"

    sget v2, Lcom/igexin/getuiext/data/Consts;->verifyCode:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    if-eqz p2, :cond_0

    if-eqz p3, :cond_1

    const/4 v0, 0x6

    invoke-static {p2, v0, p3}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x5

    invoke-static {p2, v0, p3}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    goto :goto_0
.end method

.method public static startDownloadService(Lcom/igexin/getuiext/data/b;Z)I
    .locals 6

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->j()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "full"

    invoke-virtual {p0, v0}, Lcom/igexin/getuiext/data/b;->g(Ljava/lang/String;)V

    :cond_0
    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/igexin/getuiext/data/b;->i()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/igexin/download/SdkDownLoader;->getInstantiate(Landroid/content/Context;)Lcom/igexin/download/SdkDownLoader;

    move-result-object v0

    const-string v4, "/libs/tmp/"

    invoke-virtual {v0, v4}, Lcom/igexin/download/SdkDownLoader;->setDownloadDir(Ljava/lang/String;)V

    new-instance v4, Lcom/igexin/getuiext/data/a;

    invoke-direct {v4, v3, v1, v2}, Lcom/igexin/getuiext/data/a;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->b()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/a;->c()Ljava/lang/String;

    move-result-object v3

    const-string v5, "GETUI_INC"

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lcom/igexin/download/SdkDownLoader;->newTask(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)I

    move-result v0

    invoke-static {p0}, Lcom/igexin/getuiext/service/GetuiExtService;->DownLoadFormOriginalUrl(Lcom/igexin/getuiext/data/b;)V

    sget-object v1, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    if-eqz v1, :cond_1

    new-instance v1, Lcom/igexin/getuiext/a/a;

    sget-object v2, Lcom/igexin/getuiext/service/GetuiExtService;->basicDataHelper:Lcom/igexin/getuiext/data/c;

    invoke-direct {v1, v2}, Lcom/igexin/getuiext/a/a;-><init>(Lcom/igexin/getuiext/data/c;)V

    invoke-virtual {v1, v0, p0}, Lcom/igexin/getuiext/a/a;->a(ILcom/igexin/getuiext/data/b;)V

    :cond_1
    return v0
.end method

.method public static startOpenApp(Ljava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static updateProcessBarStatus(IILjava/lang/String;)V
    .locals 8

    const/16 v6, 0x64

    const/4 v5, 0x3

    const-string v7, "\u5b89\u88c5"

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->itent:Landroid/content/Intent;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/igexin/getuiext/service/GetuiExtService;->notificationInfoMap:Ljava/util/HashMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/getuiext/data/b;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->itent:Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->progressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    sput-object p2, Lcom/igexin/getuiext/view/GetuiExtDialogView;->filePath:Ljava/lang/String;

    if-ne p1, v6, :cond_0

    :try_start_0
    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadImageView:Landroid/widget/ImageView;

    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v2, "inc_setup.png"

    invoke-virtual {v1, v2}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    sget-object v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->uploadStatusTextView:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v0, 0x3

    sput v0, Lcom/igexin/getuiext/view/GetuiExtDialogView;->g:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/igexin/getuiext/view/GetuiExtDialogView;->e:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/igexin/getuiext/view/j;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v3

    iget-object v4, v1, Lcom/igexin/getuiext/view/j;->b:Lcom/igexin/getuiext/data/b;

    invoke-virtual {v4}, Lcom/igexin/getuiext/data/b;->k()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v0, v1, Lcom/igexin/getuiext/view/j;->f:Landroid/widget/ProgressBar;

    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setProgress(I)V

    iput p0, v1, Lcom/igexin/getuiext/view/j;->g:I

    if-ne p1, v6, :cond_0

    iput v5, v1, Lcom/igexin/getuiext/view/j;->a:I

    iput-object p2, v1, Lcom/igexin/getuiext/view/j;->h:Ljava/lang/String;

    iget-object v0, v1, Lcom/igexin/getuiext/view/j;->e:Landroid/widget/TextView;

    const-string v1, "\u5b89\u88c5"

    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0
.end method
