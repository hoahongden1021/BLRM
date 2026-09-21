.class Lcom/igexin/a/d/a/b/a/c;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/location/GpsStatus$Listener;


# instance fields
.field final synthetic a:Lcom/igexin/a/d/a/b/a/b;


# direct methods
.method constructor <init>(Lcom/igexin/a/d/a/b/a/b;)V
    .locals 0

    iput-object p1, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGpsStatusChanged(I)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const-string v1, "GBD"

    packed-switch p1, :pswitch_data_0

    const-string v0, "GBD"

    const-string v0, "gpsStatusListener default"

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    const-string v0, "GBD"

    const-string v0, "gpsStatusListener firstfix"

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    const-string v0, "GBD"

    const-string v0, "gpsStatusListener satellite"

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v3}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;Z)Z

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;)I

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0}, Lcom/igexin/a/d/a/b/a/b;->b(Lcom/igexin/a/d/a/b/a/b;)I

    move-result v0

    const/16 v1, 0x78

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v2}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;I)I

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    iget-object v1, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v1}, Lcom/igexin/a/d/a/b/a/b;->c(Lcom/igexin/a/d/a/b/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    iget-object v1, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v1}, Lcom/igexin/a/d/a/b/a/b;->c(Lcom/igexin/a/d/a/b/a/b;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/igexin/a/d/a/b/a/b;->b(Lcom/igexin/a/d/a/b/a/b;Landroid/content/Context;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v3}, Lcom/igexin/a/d/a/b/a/b;->b(Lcom/igexin/a/d/a/b/a/b;Z)V

    goto :goto_0

    :pswitch_2
    const-string v0, "GBD"

    const-string v0, "gpsStatusListener started"

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v3}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;Z)Z

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    const/16 v1, 0x76

    invoke-static {v0, v1}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;I)I

    goto :goto_0

    :pswitch_3
    const-string v0, "GBD"

    const-string v0, "gpsStatusListener stopped"

    invoke-static {v1, v0}, Lcom/igexin/b/a/c/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v2}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;Z)Z

    iget-object v0, p0, Lcom/igexin/a/d/a/b/a/c;->a:Lcom/igexin/a/d/a/b/a/b;

    invoke-static {v0, v2}, Lcom/igexin/a/d/a/b/a/b;->a(Lcom/igexin/a/d/a/b/a/b;I)I

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
