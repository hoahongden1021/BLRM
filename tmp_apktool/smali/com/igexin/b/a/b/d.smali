.class public Lcom/igexin/b/a/b/d;
.super Lcom/igexin/b/a/d/e;


# static fields
.field static a:Lcom/igexin/b/a/b/d;

.field public static f:Z


# instance fields
.field private A:[B

.field private B:[B

.field public volatile b:J

.field public volatile c:J

.field public volatile d:J

.field public volatile e:J

.field g:Lcom/igexin/b/a/d/a/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/b/a/d/e;-><init>()V

    return-void
.end method

.method public static c()Lcom/igexin/b/a/b/d;
    .locals 1

    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    if-nez v0, :cond_0

    new-instance v0, Lcom/igexin/b/a/b/d;

    invoke-direct {v0}, Lcom/igexin/b/a/b/d;-><init>()V

    sput-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    :cond_0
    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    return-object v0
.end method

.method public static e()V
    .locals 3

    const-wide/16 v1, 0x0

    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    iput-wide v1, v0, Lcom/igexin/b/a/b/d;->b:J

    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    iput-wide v1, v0, Lcom/igexin/b/a/b/d;->d:J

    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    iput-wide v1, v0, Lcom/igexin/b/a/b/d;->c:J

    sget-object v0, Lcom/igexin/b/a/b/d;->a:Lcom/igexin/b/a/b/d;

    iput-wide v1, v0, Lcom/igexin/b/a/b/d;->e:J

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/c;)Lcom/igexin/b/a/b/f;
    .locals 12

    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v9, v5

    move-object v10, v4

    move-object v11, v4

    invoke-virtual/range {v0 .. v11}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;Z)Lcom/igexin/b/a/b/f;
    .locals 12

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    invoke-virtual/range {v0 .. v11}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;)Lcom/igexin/b/a/b/f;
    .locals 14

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-wide/from16 v7, p7

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v13}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;ILcom/igexin/b/a/d/a/g;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;ILcom/igexin/b/a/d/a/g;)Lcom/igexin/b/a/b/f;
    .locals 14

    iget-object v4, p0, Lcom/igexin/b/a/b/d;->g:Lcom/igexin/b/a/d/a/b;

    if-nez v4, :cond_0

    const/4 v4, 0x0

    :goto_0
    return-object v4

    :cond_0
    iget-object v4, p0, Lcom/igexin/b/a/b/d;->g:Lcom/igexin/b/a/d/a/b;

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    move-object v0, v4

    move-object v1, p1

    move-object v2, v5

    move-object/from16 v3, p3

    invoke-interface {v0, v1, v2, v3}, Lcom/igexin/b/a/d/a/b;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Lcom/igexin/b/a/d/d;

    move-result-object v5

    check-cast v5, Lcom/igexin/b/a/b/f;

    if-eqz v5, :cond_2

    invoke-virtual {v5}, Lcom/igexin/b/a/b/f;->r()Z

    move-result v4

    if-nez v4, :cond_2

    if-eqz p13, :cond_1

    move-object v0, v5

    move/from16 v1, p12

    move-object/from16 v2, p13

    invoke-virtual {v0, v1, v2}, Lcom/igexin/b/a/b/f;->a(ILcom/igexin/b/a/d/a/g;)V

    :cond_1
    move-object v4, p0

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-wide/from16 v9, p7

    move/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v13, p11

    invoke-virtual/range {v4 .. v13}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;)Z

    move-object v4, v5

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZILcom/igexin/b/a/d/a/g;)Lcom/igexin/b/a/b/f;
    .locals 14

    const/4 v6, -0x1

    const-wide/16 v7, -0x1

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/String;ILcom/igexin/b/a/b/c;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;ILcom/igexin/b/a/d/a/g;)Lcom/igexin/b/a/b/f;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/igexin/b/a/d/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/b/a/b/d;->g:Lcom/igexin/b/a/d/a/b;

    return-void
.end method

.method public a([B)V
    .locals 1

    iput-object p1, p0, Lcom/igexin/b/a/b/d;->A:[B

    invoke-static {p1}, Lcom/igexin/b/b/a;->a([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/b/a/b/d;->B:[B

    return-void
.end method

.method a(Lcom/igexin/b/a/b/f;Ljava/lang/Object;ZIJBLjava/lang/Object;Lcom/igexin/b/a/d/a/d;)Z
    .locals 1

    iput-object p2, p1, Lcom/igexin/b/a/b/f;->c:Ljava/lang/Object;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, p5, p6, v0}, Lcom/igexin/b/a/b/f;->a(JLjava/util/concurrent/TimeUnit;)I

    iput p4, p1, Lcom/igexin/b/a/b/f;->J:I

    invoke-virtual {p1, p7}, Lcom/igexin/b/a/b/f;->a(I)V

    iput-object p8, p1, Lcom/igexin/b/a/b/f;->O:Ljava/lang/Object;

    invoke-virtual {p1, p9}, Lcom/igexin/b/a/b/f;->a(Lcom/igexin/b/a/d/a/d;)V

    invoke-virtual {p0, p1, p3}, Lcom/igexin/b/a/b/d;->a(Lcom/igexin/b/a/d/d;Z)Z

    move-result v0

    return v0
.end method

.method public a()[B
    .locals 1

    iget-object v0, p0, Lcom/igexin/b/a/b/d;->A:[B

    return-object v0
.end method

.method public b()[B
    .locals 1

    iget-object v0, p0, Lcom/igexin/b/a/b/d;->B:[B

    return-object v0
.end method

.method public final d()V
    .locals 0

    invoke-virtual {p0}, Lcom/igexin/b/a/b/d;->g()V

    return-void
.end method
