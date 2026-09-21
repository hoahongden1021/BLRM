.class final Lcom/igexin/getuiext/service/c;
.super Landroid/os/AsyncTask;


# instance fields
.field final synthetic a:Lcom/igexin/getuiext/data/b;


# direct methods
.method constructor <init>(Lcom/igexin/getuiext/data/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/getuiext/service/c;->a:Lcom/igexin/getuiext/data/b;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Lcom/igexin/getuiext/data/b;

    invoke-virtual {v0}, Lcom/igexin/getuiext/data/b;->o()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/igexin/getuiext/service/GetuiExtService;->DEFAULT_RETRY_TIMES:I

    invoke-static {v0, v1}, Lcom/igexin/getuiext/service/GetuiExtService;->sendData(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "data_error"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected a(Ljava/lang/String;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/igexin/getuiext/service/c;->a:Lcom/igexin/getuiext/data/b;

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/igexin/getuiext/service/GetuiExtService;->uploadBIData(Lcom/igexin/getuiext/data/b;IZ)V

    :cond_0
    return-void
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/service/c;->a([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/igexin/getuiext/service/c;->a(Ljava/lang/String;)V

    return-void
.end method
