.class public Lcom/igexin/sdk/PushActivity;
.super Landroid/app/Activity;


# instance fields
.field private a:Ljava/lang/Long;

.field private b:Lcom/igexin/a/b/f/a;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/app/Activity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/f/a;->a(Landroid/content/res/Configuration;)V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0, p1}, Lcom/igexin/a/b/f/a;->a(Landroid/view/Menu;)Z

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->h()V

    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0, p1, p2}, Lcom/igexin/a/b/f/a;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/app/Activity;->onNewIntent(Landroid/content/Intent;)V

    invoke-virtual {p0, p1}, Lcom/igexin/sdk/PushActivity;->setIntent(Landroid/content/Intent;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->f()V

    :cond_0
    return-void
.end method

.method protected onRestart()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onRestart()V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->d()V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->e()V

    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 4

    const-string v3, "activityid"

    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    invoke-virtual {p0}, Lcom/igexin/sdk/PushActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "activityid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "activityid"

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushActivity;->a:Ljava/lang/Long;

    invoke-static {}, Lcom/igexin/a/b/f/b;->a()Lcom/igexin/a/b/f/b;

    move-result-object v0

    iget-object v1, p0, Lcom/igexin/sdk/PushActivity;->a:Ljava/lang/Long;

    invoke-virtual {v0, v1}, Lcom/igexin/a/b/f/b;->a(Ljava/lang/Long;)Lcom/igexin/a/b/f/a;

    move-result-object v0

    iput-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0, p0}, Lcom/igexin/a/b/f/a;->a(Landroid/app/Activity;)V

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->c()V

    :cond_1
    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/igexin/sdk/PushActivity;->finish()V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/igexin/sdk/PushActivity;->b:Lcom/igexin/a/b/f/a;

    invoke-virtual {v0}, Lcom/igexin/a/b/f/a;->g()V

    :cond_0
    return-void
.end method
