.class public Lcom/t4game/RoleQuestList;
.super Ljava/lang/Object;


# static fields
.field static final TYPE_MASTER:B = 0x1t

.field static final TYPE_PARTY:B = 0x0t

.field static final TYPE_SLAVE:B = 0x2t

.field static final totalType:B = 0x3t


# instance fields
.field public questInMap:Ljava/util/Hashtable;

.field public questList:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lcom/t4game/RoleQuestList;->questInMap:Ljava/util/Hashtable;

    return-void
.end method


# virtual methods
.method public addRoleQuest(Lcom/t4game/RoleQuest;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    iget v1, p1, Lcom/t4game/RoleQuest;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public delRoleQuest(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleQuest;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleQuest;

    invoke-virtual {v0}, Lcom/t4game/RoleQuest;->release()V

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public release()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/RoleQuest;

    invoke-virtual {v0}, Lcom/t4game/RoleQuest;->release()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method public testRoleQuest(I)Z
    .locals 2

    iget-object v0, p0, Lcom/t4game/RoleQuestList;->questList:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
