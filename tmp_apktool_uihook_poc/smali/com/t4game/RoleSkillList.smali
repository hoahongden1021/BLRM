.class public Lcom/t4game/RoleSkillList;
.super Ljava/lang/Object;


# instance fields
.field public actTionType:[B

.field public iconH:Ljava/util/Hashtable;

.field public iconId:[S

.field public id:[S

.field public index:B

.field public length:B

.field public level:[[S

.field public name:[Ljava/lang/String;

.field public type:[B


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public init(B)V
    .locals 2

    const/4 v0, 0x0

    iput-byte v0, p0, Lcom/t4game/RoleSkillList;->index:B

    iput-byte p1, p0, Lcom/t4game/RoleSkillList;->length:B

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->type:[B

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->actTionType:[B

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->iconId:[S

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    const/4 v1, 0x2

    filled-new-array {v0, v1}, [I

    move-result-object v0

    sget-object v1, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->level:[[S

    iget-byte v0, p0, Lcom/t4game/RoleSkillList;->length:B

    new-array v0, v0, [S

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->id:[S

    return-void
.end method

.method public release()V
    .locals 3

    const/4 v2, 0x0

    iget-object v1, p0, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-object v2, p0, Lcom/t4game/RoleSkillList;->name:[Ljava/lang/String;

    iput-object v2, p0, Lcom/t4game/RoleSkillList;->type:[B

    iput-object v2, p0, Lcom/t4game/RoleSkillList;->actTionType:[B

    iput-object v2, p0, Lcom/t4game/RoleSkillList;->iconId:[S

    move-object v0, v2

    check-cast v0, [[S

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/RoleSkillList;->level:[[S

    iput-object v2, p0, Lcom/t4game/RoleSkillList;->id:[S

    return-void
.end method

.method public setIconList()V
    .locals 3

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    const/4 v1, 0x5

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GPNGGroupData;

    iget-object v1, p0, Lcom/t4game/RoleSkillList;->iconId:[S

    invoke-static {v1}, Lcom/t4game/Util;->getTaxisId([S)[S

    move-result-object v1

    iget-object v2, p0, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    invoke-virtual {v0, v1, v2}, Lcom/t4game/GPNGGroupData;->getImageMap([SLjava/util/Hashtable;)Ljava/util/Hashtable;

    move-result-object v0

    iput-object v0, p0, Lcom/t4game/RoleSkillList;->iconH:Ljava/util/Hashtable;

    return-void
.end method
