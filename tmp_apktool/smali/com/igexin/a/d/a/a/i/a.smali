.class public Lcom/igexin/a/d/a/a/i/a;
.super Lcom/igexin/a/b/f/a;


# instance fields
.field private d:Landroid/app/Dialog;

.field private e:Lcom/igexin/a/b/b/e;

.field private f:Lcom/igexin/a/d/a/a/b/e;

.field private g:Ljava/lang/String;

.field private h:Ljava/lang/String;

.field private i:Z


# direct methods
.method public constructor <init>(Lcom/igexin/a/b/b/e;Lcom/igexin/a/d/a/a/b/e;)V
    .locals 2

    invoke-direct {p0}, Lcom/igexin/a/b/f/a;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/d/a/a/i/a;->i:Z

    iput-object p1, p0, Lcom/igexin/a/d/a/a/i/a;->e:Lcom/igexin/a/b/b/e;

    iput-object p2, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    const-wide/32 v0, 0xa98ac7

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/d/a/a/i/a;->a(Ljava/lang/Long;)V

    invoke-virtual {p1}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/d/a/a/i/a;->a(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/i/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->g:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/igexin/a/d/a/a/i/a;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/igexin/a/d/a/a/i/a;->i:Z

    return p1
.end method

.method static synthetic b(Lcom/igexin/a/d/a/a/i/a;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->h:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic c(Lcom/igexin/a/d/a/a/i/a;)Lcom/igexin/a/d/a/a/b/e;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    return-object v0
.end method

.method static synthetic d(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic e(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic f(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic g(Lcom/igexin/a/d/a/a/i/a;)Landroid/app/Activity;
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    return-object v0
.end method

.method private j()V
    .locals 13

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->d()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v1}, Lcom/igexin/a/d/a/a/b/e;->e()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v2}, Lcom/igexin/a/d/a/a/b/e;->h()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->e:Lcom/igexin/a/b/b/e;

    invoke-virtual {v3}, Lcom/igexin/a/b/b/e;->d()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->g:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->e:Lcom/igexin/a/b/b/e;

    invoke-virtual {v3}, Lcom/igexin/a/b/b/e;->b()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->h:Ljava/lang/String;

    new-instance v3, Landroid/app/AlertDialog$Builder;

    iget-object v4, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0, v1}, Lcom/igexin/a/d/a/a/i/a;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v7

    if-eqz v2, :cond_1

    new-instance v8, Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    invoke-direct {v8, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v2}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v3

    :goto_0
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    sget v4, Lcom/igexin/a/d/a/a/c/f;->b:I

    int-to-double v4, v4

    const-wide/high16 v9, 0x4089000000000000L    # 800.0

    div-double/2addr v4, v9

    const-wide v9, 0x4075e00000000000L    # 350.0

    mul-double/2addr v4, v9

    int-to-double v9, v2

    div-double/2addr v4, v9

    sget v2, Lcom/igexin/a/d/a/a/c/f;->c:I

    int-to-double v9, v2

    const-wide/high16 v11, 0x407e000000000000L    # 480.0

    div-double/2addr v9, v11

    const-wide v11, 0x4075e00000000000L    # 350.0

    mul-double/2addr v9, v11

    int-to-double v1, v1

    div-double v1, v9, v1

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v9

    if-ltz v6, :cond_5

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v1, v9

    if-ltz v6, :cond_5

    const/high16 v1, 0x3f800000    # 1.0f

    :goto_1
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v5, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setMaxHeight(I)V

    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/widget/ImageView;->setMinimumHeight(I)V

    invoke-virtual {v7, v8}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    :cond_1
    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/d/a/a/b/b;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/d/a/a/i/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/d/a/a/i/b;

    invoke-direct {v1, p0}, Lcom/igexin/a/d/a/a/i/b;-><init>(Lcom/igexin/a/d/a/a/i/a;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_2
    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_3

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/d/a/a/b/b;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/d/a/a/i/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/d/a/a/i/c;

    invoke-direct {v1, p0}, Lcom/igexin/a/d/a/a/i/c;-><init>(Lcom/igexin/a/d/a/a/i/a;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_3
    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x3

    if-lt v0, v1, :cond_4

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->f()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/igexin/a/d/a/a/b/b;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/igexin/a/d/a/a/i/a;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/igexin/a/d/a/a/i/d;

    invoke-direct {v1, p0}, Lcom/igexin/a/d/a/a/i/d;-><init>(Lcom/igexin/a/d/a/a/i/a;)V

    invoke-virtual {v7, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    :cond_4
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->d:Landroid/app/Dialog;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->d:Landroid/app/Dialog;

    new-instance v1, Lcom/igexin/a/d/a/a/i/e;

    invoke-direct {v1, p0}, Lcom/igexin/a/d/a/a/i/e;-><init>(Lcom/igexin/a/d/a/a/i/a;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void

    :cond_5
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v4, v9

    if-ltz v6, :cond_6

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v1, v9

    if-gez v6, :cond_6

    double-to-float v1, v1

    goto/16 :goto_1

    :cond_6
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v9

    if-gez v6, :cond_7

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpl-double v6, v1, v9

    if-ltz v6, :cond_7

    double-to-float v1, v4

    goto/16 :goto_1

    :cond_7
    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v4, v9

    if-gez v6, :cond_9

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    cmpg-double v6, v1, v9

    if-gez v6, :cond_9

    cmpl-double v3, v4, v1

    if-lez v3, :cond_8

    double-to-float v1, v1

    goto/16 :goto_1

    :cond_8
    double-to-float v1, v4

    goto/16 :goto_1

    :catch_0
    move-exception v2

    goto/16 :goto_0

    :cond_9
    move v1, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public a(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/igexin/a/d/a/a/c/f;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/igexin/a/d/a/a/c/f;->c:I

    return-void
.end method

.method public a(ILandroid/view/KeyEvent;)Z
    .locals 4

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v0}, Lcom/igexin/a/d/a/a/b/e;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/i/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/i/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v3}, Lcom/igexin/a/d/a/a/b/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Landroid/view/Menu;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public b(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x100

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0xfe

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public c(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x12

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "..."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    move-object v0, p1

    goto :goto_0
.end method

.method public c()V
    .locals 2

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v1, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v1, Lcom/igexin/a/d/a/a/c/f;->b:I

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v0, Lcom/igexin/a/d/a/a/c/f;->c:I

    invoke-direct {p0}, Lcom/igexin/a/d/a/a/i/a;->j()V

    return-void
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 4

    iget-boolean v0, p0, Lcom/igexin/a/d/a/a/i/a;->i:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/i/a;->g:Ljava/lang/String;

    iget-object v2, p0, Lcom/igexin/a/d/a/a/i/a;->h:Ljava/lang/String;

    iget-object v3, p0, Lcom/igexin/a/d/a/a/i/a;->f:Lcom/igexin/a/d/a/a/b/e;

    invoke-virtual {v3}, Lcom/igexin/a/d/a/a/b/e;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    return-void
.end method

.method public g()V
    .locals 0

    return-void
.end method

.method public h()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->d:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->d:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public i()V
    .locals 1

    iget-object v0, p0, Lcom/igexin/a/d/a/a/i/a;->b:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    return-void
.end method
