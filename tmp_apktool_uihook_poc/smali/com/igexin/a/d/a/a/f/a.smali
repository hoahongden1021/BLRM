.class public Lcom/igexin/a/d/a/a/f/a;
.super Lcom/igexin/b/a/d/d;


# instance fields
.field public a:Lcom/igexin/a/g/a/b;

.field public b:Lorg/apache/http/client/methods/HttpRequestBase;

.field public c:Lorg/apache/http/client/HttpClient;


# direct methods
.method public constructor <init>(Lcom/igexin/a/g/a/b;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/igexin/b/a/d/d;-><init>(I)V

    iput-object p1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    return-void
.end method


# virtual methods
.method public final a_()I
    .locals 1

    const v0, -0x7ffffff7

    return v0
.end method

.method public final b()V
    .locals 6

    invoke-super {p0}, Lcom/igexin/b/a/d/d;->b()V

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v0}, Lcom/igexin/a/g/a/b;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v1}, Lcom/igexin/a/g/a/b;->d()[B

    move-result-object v1

    iget-object v2, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v2}, Lcom/igexin/a/g/a/b;->e()Ljava/io/InputStream;

    move-result-object v2

    iget-object v3, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    if-eqz v3, :cond_0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    new-instance v3, Lorg/apache/http/impl/client/DefaultHttpClient;

    invoke-direct {v3}, Lorg/apache/http/impl/client/DefaultHttpClient;-><init>()V

    iput-object v3, p0, Lcom/igexin/a/d/a/a/f/a;->c:Lorg/apache/http/client/HttpClient;

    :try_start_0
    iget-object v3, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v3}, Lcom/igexin/a/g/a/b;->d()[B

    move-result-object v3

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v3}, Lcom/igexin/a/g/a/b;->e()Ljava/io/InputStream;

    move-result-object v3

    if-nez v3, :cond_2

    new-instance v1, Lorg/apache/http/client/methods/HttpGet;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v1, v0}, Lorg/apache/http/client/methods/HttpGet;-><init>(Ljava/net/URI;)V

    iput-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v1}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v1

    const/16 v2, 0xc8

    if-ne v1, v2, :cond_4

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/http/util/EntityUtils;->toByteArray(Lorg/apache/http/HttpEntity;)[B

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/igexin/a/g/a/b;->a([B)V

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/igexin/b/a/b/d;->a(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/igexin/b/a/b/d;->c()Lcom/igexin/b/a/b/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igexin/b/a/b/d;->d()V

    goto :goto_0

    :cond_2
    :try_start_1
    new-instance v3, Lorg/apache/http/client/methods/HttpPost;

    invoke-static {v0}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v0

    invoke-direct {v3, v0}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/net/URI;)V

    iput-object v3, p0, Lcom/igexin/a/d/a/a/f/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v2, :cond_3

    new-instance v0, Lorg/apache/http/entity/InputStreamEntity;

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v1}, Lcom/igexin/a/g/a/b;->f()J

    move-result-wide v4

    invoke-direct {v0, v2, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v3, v0}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    :goto_2
    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->c:Lorg/apache/http/client/HttpClient;

    invoke-interface {v0, v3}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/io/ByteArrayInputStream;

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v2, Lorg/apache/http/entity/InputStreamEntity;

    array-length v1, v1

    int-to-long v4, v1

    invoke-direct {v2, v0, v4, v5}, Lorg/apache/http/entity/InputStreamEntity;-><init>(Ljava/io/InputStream;J)V

    invoke-virtual {v3, v2}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v1, v0}, Lcom/igexin/a/g/a/b;->a(Ljava/lang/Exception;)V

    throw v0

    :cond_4
    new-instance v1, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Http response code is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {v0}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->a:Lcom/igexin/a/g/a/b;

    invoke-virtual {v0, v1}, Lcom/igexin/a/g/a/b;->a(Ljava/lang/Exception;)V

    throw v1
.end method

.method public d()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/igexin/a/d/a/a/f/a;->z:Z

    return-void
.end method

.method protected e()V
    .locals 0

    return-void
.end method

.method public f()V
    .locals 1

    invoke-super {p0}, Lcom/igexin/b/a/d/d;->f()V

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->b:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v0}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/igexin/a/d/a/a/f/a;->c:Lorg/apache/http/client/HttpClient;

    return-void
.end method
