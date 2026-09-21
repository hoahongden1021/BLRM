.class public Lcom/igexin/a/b/a/e;
.super Lcom/igexin/a/b/a/a;


# static fields
.field private static final a:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lcom/igexin/a/a/h;->a:Ljava/lang/String;

    sput-object v0, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/igexin/a/b/a/a;-><init>()V

    return-void
.end method

.method private a(Ljava/lang/String;Lcom/igexin/a/e/c/a;)V
    .locals 7

    const/4 v4, 0x0

    const/4 v6, 0x1

    const-string v5, "------sdk analyzeCDNData stop, the cdnStr is wrong..."

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    const-string v0, ""

    if-eqz p1, :cond_0

    const-string v0, "CDN"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const-string v1, "@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "\\@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v1, v0, v4

    aget-object v2, v0, v6

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    aget-object v0, v0, v6

    const-string v2, "\\|"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    aget-object v2, v0, v4

    aget-object v0, v0, v6

    sget-object v3, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "------sdk analyzeCDNData msgId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " groupId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " cdnUrl:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    new-instance v3, Lcom/igexin/a/b/b/e;

    invoke-direct {v3}, Lcom/igexin/a/b/b/e;-><init>()V

    sget-object v4, Lcom/igexin/a/b/g;->c:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/igexin/a/b/b/e;->a(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/igexin/a/b/b/e;->c(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Lcom/igexin/a/b/b/e;->d(Ljava/lang/String;)V

    invoke-virtual {v3, v1}, Lcom/igexin/a/b/b/e;->b(Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/a/b/g;->d:Ljava/lang/String;

    invoke-virtual {v3, v1}, Lcom/igexin/a/b/b/e;->f(Ljava/lang/String;)V

    invoke-virtual {v3, v6}, Lcom/igexin/a/b/b/e;->a(I)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/igexin/a/b/a/f;->a(Lcom/igexin/a/b/b/e;)V

    invoke-static {}, Lcom/igexin/a/b/a/f;->a()Lcom/igexin/a/b/a/f;

    move-result-object v1

    invoke-virtual {v1, v0, p2, v3}, Lcom/igexin/a/b/a/f;->a(Ljava/lang/String;Lcom/igexin/a/e/c/a;Lcom/igexin/a/b/b/e;)V

    sget-object v0, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    const-string v1, "------sdk startCDNHttpTask start..."

    invoke-static {v0, v1}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    const-string v1, "------sdk analyzeCDNData stop, the cdnStr is wrong..."

    invoke-static {v0, v5}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    const-string v1, "------sdk analyzeCDNData stop, the cdnStr is wrong..."

    invoke-static {v0, v5}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/igexin/b/a/d/d;)Z
    .locals 1

    invoke-super {p0, p1}, Lcom/igexin/a/b/a/a;->a(Lcom/igexin/b/a/d/d;)Z

    move-result v0

    return v0
.end method

.method public a(Ljava/lang/Object;)Z
    .locals 5

    const-string v4, "RCV"

    instance-of v0, p1, Lcom/igexin/a/e/c/a;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/igexin/a/e/c/a;

    iget-object v0, p1, Lcom/igexin/a/e/c/a;->c:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/igexin/a/e/c/a;->c:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    sget-object v1, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sdk CDNFormatedReceive cdnStr:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "RCV"

    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "RCV"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/igexin/a/b/g;->aa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Lcom/igexin/a/b/g;->aa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/igexin/a/e/c/c;

    sget-object v1, Lcom/igexin/a/b/g;->aa:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/igexin/a/e/c/c;->e()Lcom/igexin/a/g/b/c;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/igexin/a/g/b/c;->u()V

    :cond_0
    sget-object v1, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sdk CDNFormatedReceive feedback sucessfully... RCV"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/igexin/a/b/a/e;->a:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "------sdk CDNFormatedReceive receiveMap removed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_2
    const-string v1, "CDN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0, p1}, Lcom/igexin/a/b/a/e;->a(Ljava/lang/String;Lcom/igexin/a/e/c/a;)V

    goto :goto_0
.end method
