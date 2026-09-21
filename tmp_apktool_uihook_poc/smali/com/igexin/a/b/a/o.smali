.class public Lcom/igexin/a/b/a/o;
.super Lcom/igexin/a/b/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/a/o;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/d;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 7

    const/4 v6, 0x1

    const/4 v4, 0x0

    instance-of v0, p1, Lcom/igexin/a/e/c/o;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/igexin/a/e/c/o;

    iget-wide v0, p1, Lcom/igexin/a/e/c/o;->a:J

    sget-wide v2, Lcom/igexin/a/b/g;->s:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    sput-boolean v4, Lcom/igexin/a/b/g;->o:Z

    invoke-static {}, Lcom/igexin/a/b/d/f;->a()Lcom/igexin/a/b/d/f;

    move-result-object v0

    iget-wide v1, p1, Lcom/igexin/a/e/c/o;->a:J

    invoke-virtual {v0, v1, v2}, Lcom/igexin/a/b/d/f;->a(J)Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/igexin/a/b/g;->H:J

    move v0, v6

    :goto_0
    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1}, Lcom/igexin/a/b/a/f;->c()Lcom/igexin/a/e/c/i;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "CoreAction loginCommand.session|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, v1, Lcom/igexin/a/e/c/i;->a:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "newtoken|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-wide v3, Lcom/igexin/a/b/g;->s:J

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/igexin/b/b/a;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;)V

    invoke-static {}, Lcom/igexin/a/b/f;->a()Lcom/igexin/a/b/f;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igexin/a/b/f;->f()Lcom/igexin/a/f/j;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "S-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v1, Lcom/igexin/a/e/c/i;->a:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/igexin/a/f/j;->a(Ljava/lang/String;Lcom/igexin/a/e/c/e;)I

    if-eqz v0, :cond_0

    :cond_0
    return v6

    :cond_1
    move v0, v4

    goto :goto_0
.end method
