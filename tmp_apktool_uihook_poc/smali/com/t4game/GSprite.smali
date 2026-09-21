.class public abstract Lcom/t4game/GSprite;
.super Lcom/t4game/GMapObject;

# interfaces
.implements Lcom/t4game/GIRenderManager;


# static fields
.field protected static DIRORDER:[[B = null

.field public static DIR_DOWN:B = 0x0t

.field public static DIR_DOWNLEFT:B = 0x0t

.field public static DIR_DOWNRIGHT:B = 0x0t

.field public static DIR_LEFT:B = 0x0t

.field protected static DIR_NEGATIVE_LIST:[B = null

.field public static DIR_NUM:B = 0x0t

.field public static DIR_RIGHT:B = 0x0t

.field public static DIR_UP:B = 0x0t

.field public static DIR_UPLEFT:B = 0x0t

.field public static DIR_UPRIGHT:B = 0x0t

.field static final SP_STATE_DINGSHEN:B = 0x2t

.field static final SP_STATE_HUNLUAN:B = 0x1t

.field static final SP_STATE_KONGJU:B = 0x5t

.field static final SP_STATE_TANHUAN:B = 0x4t

.field static final SP_STATE_XUANYUN:B = 0x3t

.field static final XZ_STATE_BIGBODY:B = 0x8t

.field static final XZ_STATE_MEHUNZOU:B = 0x4t

.field static final XZ_STATE_NOATTACK:B = 0x2t

.field static final XZ_STATE_NOMOVE:B = 0x0t

.field static final XZ_STATE_NOSKILL:B = 0x1t

.field static final XZ_STATE_NOUSEGOOD:B = 0x3t

.field static final XZ_STATE_SERVERHUNZOU:B = 0x5t

.field static final XZ_STATE_SMALLBODY:B = 0x9t

.field static final XZ_STATE_YINSHEN:B = 0x6t

.field private static freeStandMaxTick:I = 0x0

.field static heroObjDataId:S = 0x0s

.field static final maxStillTick:B = 0x32t

.field static final xianZhiNum:B = 0x1et

.field public static final xyp:B = 0xat


# instance fields
.field public CanShowPop:Z

.field public DestPos:Ljava/util/Vector;

.field protected FP_destMapX:I

.field protected FP_destMapY:I

.field public FP_mapX:I

.field public FP_mapY:I

.field protected FP_nowSpeedX:I

.field protected FP_nowSpeedY:I

.field protected FP_speed:I

.field protected FP_speed2:I

.field protected FP_standardDistance2:I

.field public HairName:Ljava/lang/String;

.field public final PopTime:B

.field public SayInPop:B

.field public StartPop:J

.field protected actionId:B

.field protected actionState:I

.field protected actionType:B

.field public alpha:B

.field protected animDataIndex:B

.field public attr_baseHP:I

.field public attr_baseMP:I

.field protected bloodStor:Ljava/util/Vector;

.field protected bloodUp:Ljava/util/Vector;

.field public bufH:Ljava/util/Hashtable;

.field protected bx1:I

.field protected bx2:I

.field protected by1:I

.field protected by2:I

.field caiJiFunctionEffectData:Lcom/t4game/RoleSkillEffectData;

.field public caiJiTime:I

.field public caiJiType:B

.field public canCaiJi:B

.field public canDeathRelive:Z

.field public canHit:B

.field public canSelect:B

.field public chongfengD:[[S

.field protected clipAnimStateMap:Ljava/util/Hashtable;

.field public controlType:B

.field public countryId:B

.field public crazyMovePos:[S

.field public crazyMovePosIndex:I

.field crazyStopTick:I

.field protected destMapX:I

.field protected destMapY:I

.field public dir:B

.field distancenext:Lcom/t4game/GSprite;

.field distancepre:Lcom/t4game/GSprite;

.field protected effectImage:Lcom/t4game/GImageData;

.field public exType:B

.field protected fabao:Lcom/t4game/GFabao;

.field private freeStandActionId:B

.field private freeStandTick:B

.field public grade:S

.field public hair:Lcom/t4game/GImageData;

.field public hitMove:Z

.field protected horseAnimDataIndex:B

.field protected horseObjectData:Lcom/t4game/GObjectData;

.field protected horseType:I

.field public id:Ljava/lang/String;

.field protected imageDataIdList:[S

.field public imageDataList:[[Lcom/t4game/GImageData;

.field public intId:I

.field public isCollectionSprite:B

.field protected isTheTargetNpc:Z

.field protected leftStep:I

.field protected loadingHorseObjectData:Lcom/t4game/GObjectData;

.field public maxHp:I

.field public maxMp:I

.field public moved:Z

.field public nSpeed:I

.field public name:Ljava/lang/String;

.field protected nowFrame:B

.field protected nowMoveTick:I

.field nowOutFrame:I

.field public objectData:Lcom/t4game/GObjectData;

.field public objectDataId:S

.field offsetOX:I

.field offsetOY:I

.field public outlineType:B

.field public playerRelation:B

.field public relationState:B

.field protected rightHand:Z

.field public sanxianDesXY:[S

.field protected size1:B

.field protected size2:B

.field protected size3:B

.field public skillPos:B

.field protected specialEffectHead:Lcom/t4game/GSEObject;

.field protected specialShowType:B

.field public speed:I

.field public spriteSpecialState:B

.field public spriteState:B

.field protected state:B

.field public supportChangeImage:Z

.field tick:B

.field tick1:B

.field tick2:B

.field protected totalStep:I

.field public words:Ljava/lang/String;

.field public wuxingType:B

.field public xianZhiFlag:[Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    const/4 v4, 0x4

    const/4 v0, 0x6

    sput v0, Lcom/t4game/GSprite;->freeStandMaxTick:I

    sput-byte v4, Lcom/t4game/GSprite;->DIR_NUM:B

    sput-byte v5, Lcom/t4game/GSprite;->DIR_UP:B

    sput-byte v6, Lcom/t4game/GSprite;->DIR_RIGHT:B

    sput-byte v7, Lcom/t4game/GSprite;->DIR_DOWN:B

    sput-byte v8, Lcom/t4game/GSprite;->DIR_LEFT:B

    sput-byte v4, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    const/4 v0, 0x5

    sput-byte v0, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    const/4 v0, 0x6

    sput-byte v0, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    const/4 v0, 0x7

    sput-byte v0, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    new-array v0, v4, [B

    sget-byte v1, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v1, v0, v5

    sget-byte v1, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v1, v0, v6

    sget-byte v1, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v1, v0, v7

    sget-byte v1, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v1, v0, v8

    sput-object v0, Lcom/t4game/GSprite;->DIR_NEGATIVE_LIST:[B

    const/16 v0, 0x8

    new-array v0, v0, [[B

    const/4 v1, 0x5

    new-array v1, v1, [B

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v2, v1, v5

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    aput-byte v2, v1, v6

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    aput-byte v2, v1, v7

    sget-byte v2, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v2, v1, v8

    sget-byte v2, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v2, v1, v4

    aput-object v1, v0, v5

    const/4 v1, 0x5

    new-array v1, v1, [B

    sget-byte v2, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v2, v1, v5

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    aput-byte v2, v1, v6

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    aput-byte v2, v1, v7

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v2, v1, v8

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v2, v1, v4

    aput-object v1, v0, v6

    const/4 v1, 0x5

    new-array v1, v1, [B

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v2, v1, v5

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    aput-byte v2, v1, v6

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    aput-byte v2, v1, v7

    sget-byte v2, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v2, v1, v8

    sget-byte v2, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v2, v1, v4

    aput-object v1, v0, v7

    const/4 v1, 0x5

    new-array v1, v1, [B

    sget-byte v2, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v2, v1, v5

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    aput-byte v2, v1, v6

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    aput-byte v2, v1, v7

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v2, v1, v8

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v2, v1, v4

    aput-object v1, v0, v8

    const/4 v1, 0x5

    new-array v1, v1, [B

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    aput-byte v2, v1, v5

    sget-byte v2, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v2, v1, v6

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v2, v1, v7

    sget-byte v2, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    aput-byte v2, v1, v8

    sget-byte v2, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    aput-byte v2, v1, v4

    aput-object v1, v0, v4

    const/4 v1, 0x5

    const/4 v2, 0x5

    new-array v2, v2, [B

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    aput-byte v3, v2, v5

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v3, v2, v6

    sget-byte v3, Lcom/t4game/GSprite;->DIR_RIGHT:B

    aput-byte v3, v2, v7

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    aput-byte v3, v2, v8

    sget-byte v3, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const/4 v2, 0x5

    new-array v2, v2, [B

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    aput-byte v3, v2, v5

    sget-byte v3, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v3, v2, v6

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWN:B

    aput-byte v3, v2, v7

    sget-byte v3, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    aput-byte v3, v2, v8

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWNRIGHT:B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const/4 v2, 0x5

    new-array v2, v2, [B

    sget-byte v3, Lcom/t4game/GSprite;->DIR_UPLEFT:B

    aput-byte v3, v2, v5

    sget-byte v3, Lcom/t4game/GSprite;->DIR_UP:B

    aput-byte v3, v2, v6

    sget-byte v3, Lcom/t4game/GSprite;->DIR_LEFT:B

    aput-byte v3, v2, v7

    sget-byte v3, Lcom/t4game/GSprite;->DIR_UPRIGHT:B

    aput-byte v3, v2, v8

    sget-byte v3, Lcom/t4game/GSprite;->DIR_DOWNLEFT:B

    aput-byte v3, v2, v4

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/GSprite;->DIRORDER:[[B

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    const/4 v8, 0x5

    const/4 v7, 0x1

    const/4 v2, 0x0

    const/4 v6, -0x1

    const/4 v5, 0x0

    invoke-direct {p0}, Lcom/t4game/GMapObject;-><init>()V

    iput-byte v5, p0, Lcom/t4game/GSprite;->specialShowType:B

    iput-byte v6, p0, Lcom/t4game/GSprite;->isCollectionSprite:B

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    iput-byte v6, p0, Lcom/t4game/GSprite;->exType:B

    const/16 v1, 0x2710

    iput v1, p0, Lcom/t4game/GSprite;->maxHp:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/t4game/GSprite;->maxMp:I

    iput-byte v8, p0, Lcom/t4game/GSprite;->wuxingType:B

    iput-byte v6, p0, Lcom/t4game/GSprite;->playerRelation:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->alpha:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->SayInPop:B

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/t4game/GSprite;->StartPop:J

    iput-byte v8, p0, Lcom/t4game/GSprite;->PopTime:B

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/GSprite;->words:Ljava/lang/String;

    iput-boolean v7, p0, Lcom/t4game/GSprite;->CanShowPop:Z

    iput-boolean v5, p0, Lcom/t4game/GSprite;->canDeathRelive:Z

    iput-byte v5, p0, Lcom/t4game/GSprite;->freeStandTick:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->freeStandActionId:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->controlType:B

    iput-byte v6, p0, Lcom/t4game/GSprite;->skillPos:B

    const/16 v1, 0x1e

    new-array v1, v1, [Z

    iput-object v1, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    iput-byte v5, p0, Lcom/t4game/GSprite;->spriteSpecialState:B

    const/16 v1, 0xa

    new-array v1, v1, [S

    iput-object v1, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    iput v7, p0, Lcom/t4game/GSprite;->crazyMovePosIndex:I

    iput v6, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    iput-boolean v7, p0, Lcom/t4game/GSprite;->rightHand:Z

    iput-byte v5, p0, Lcom/t4game/GSprite;->canHit:B

    iput-byte v7, p0, Lcom/t4game/GSprite;->canSelect:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->canCaiJi:B

    iput v5, p0, Lcom/t4game/GSprite;->caiJiTime:I

    iput-byte v6, p0, Lcom/t4game/GSprite;->caiJiType:B

    iput-object v2, p0, Lcom/t4game/GSprite;->caiJiFunctionEffectData:Lcom/t4game/RoleSkillEffectData;

    const/4 v1, 0x3

    iput-byte v1, p0, Lcom/t4game/GSprite;->relationState:B

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iput-object v2, p0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    iput-boolean v5, p0, Lcom/t4game/GSprite;->hitMove:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/t4game/GSprite;->name:Ljava/lang/String;

    iput-short v6, p0, Lcom/t4game/GSprite;->objectDataId:S

    move-object v0, v2

    check-cast v0, [[Lcom/t4game/GImageData;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    iput-object v2, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    iput-object v2, p0, Lcom/t4game/GSprite;->effectImage:Lcom/t4game/GImageData;

    const/16 v1, 0x2710

    iput v1, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    const/16 v1, 0x2710

    iput v1, p0, Lcom/t4game/GSprite;->attr_baseMP:I

    iput-byte v5, p0, Lcom/t4game/GSprite;->state:B

    iput-byte v6, p0, Lcom/t4game/GSprite;->actionType:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->actionId:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->nowFrame:B

    iput-byte v5, p0, Lcom/t4game/GSprite;->dir:B

    const/16 v1, 0x28

    iput v1, p0, Lcom/t4game/GSprite;->speed:I

    const/16 v1, 0x28

    iput v1, p0, Lcom/t4game/GSprite;->nSpeed:I

    iget v1, p0, Lcom/t4game/GSprite;->speed:I

    shl-int/lit8 v1, v1, 0x4

    div-int/lit8 v1, v1, 0xa

    iput v1, p0, Lcom/t4game/GSprite;->FP_speed:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_speed:I

    iget v3, p0, Lcom/t4game/GSprite;->FP_speed:I

    mul-int/2addr v1, v3

    iput v1, p0, Lcom/t4game/GSprite;->FP_speed2:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_speed2:I

    mul-int/lit8 v1, v1, 0x8

    mul-int/lit8 v1, v1, 0x8

    iput v1, p0, Lcom/t4game/GSprite;->FP_standardDistance2:I

    iput-boolean v5, p0, Lcom/t4game/GSprite;->moved:Z

    iput-byte v6, p0, Lcom/t4game/GSprite;->animDataIndex:B

    iput v5, p0, Lcom/t4game/GSprite;->nowMoveTick:I

    iput-object v2, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    iput-byte v6, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    iput v5, p0, Lcom/t4game/GSprite;->nowOutFrame:I

    iput-boolean v5, p0, Lcom/t4game/GSprite;->isTheTargetNpc:Z

    const/4 v1, 0x7

    iput-byte v1, p0, Lcom/t4game/GSprite;->size1:B

    const/4 v1, 0x4

    iput-byte v1, p0, Lcom/t4game/GSprite;->size2:B

    iput-byte v8, p0, Lcom/t4game/GSprite;->size3:B

    iput v5, p0, Lcom/t4game/GSprite;->leftStep:I

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    iput-object v1, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1}, Ljava/util/Hashtable;-><init>()V

    iput-object v1, p0, Lcom/t4game/GSprite;->clipAnimStateMap:Ljava/util/Hashtable;

    iput-object v2, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    check-cast v2, [[S

    iput-object v2, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    const/4 v1, 0x2

    iput-byte v1, p0, Lcom/t4game/GSprite;->type:B

    iput-byte v7, p0, Lcom/t4game/GSprite;->layer:B

    iput-byte v7, p0, Lcom/t4game/GSprite;->store:B

    iput-byte v8, p0, Lcom/t4game/GSprite;->wuxingType:B

    return-void
.end method

.method private drawBloodUp(Ljavax/microedition/lcdui/Graphics;)V
    .locals 14

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v11, v1, Lcom/t4game/GScene;->screen_mapx:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v12, v1, Lcom/t4game/GScene;->screen_mapy:I

    const/4 v1, 0x0

    move v13, v1

    :goto_0
    iget-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-ge v13, v1, :cond_11

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v1, v13}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object v10, v0

    const/4 v1, 0x5

    aget v1, v10, v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const/4 v2, 0x5

    aget v2, v10, v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v1

    check-cast v1, Lcom/t4game/GObjectData;

    const/4 v3, 0x0

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/16 v4, 0xf

    sub-int v4, v2, v4

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int v5, v2, v12

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-byte v9, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v2, p1

    invoke-virtual/range {v1 .. v9}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    :cond_0
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    :cond_1
    :goto_1
    add-int/lit8 v1, v13, 0x1

    move v13, v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto :goto_1

    :cond_3
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    const/4 v1, 0x0

    aget v1, v10, v1

    if-lez v1, :cond_4

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x3

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    aget v1, v10, v1

    if-gez v1, :cond_1

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    const/4 v5, 0x3

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto :goto_1

    :cond_5
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_6

    sget-object v1, Lcom/t4game/Defaults;->missImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto :goto_1

    :cond_6
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_7

    sget-object v1, Lcom/t4game/Defaults;->levelUpImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_7
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_8

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    const/4 v5, 0x1

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_1

    :cond_8
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0xb

    if-ne v1, v2, :cond_9

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_1

    :cond_9
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_a

    const/4 v1, 0x1

    aget v1, v10, v1

    sub-int/2addr v1, v11

    const/4 v2, 0x2

    aget v2, v10, v2

    sub-int/2addr v2, v12

    const/4 v3, 0x0

    aget v3, v10, v3

    const/4 v4, 0x1

    const/4 v5, 0x2

    iget-byte v7, p0, Lcom/t4game/GMapObject;->type:B

    move-object v6, p1

    invoke-static/range {v1 .. v7}, Lcom/t4game/DraftingUtil;->showNumber(IIIZBLjavax/microedition/lcdui/Graphics;I)V

    goto/16 :goto_1

    :cond_a
    const/4 v1, 0x4

    aget v1, v10, v1

    const/4 v2, 0x7

    if-ne v1, v2, :cond_b

    sget-object v1, Lcom/t4game/Defaults;->weimingzhongImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_b
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_c

    sget-object v1, Lcom/t4game/Defaults;->gedangImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_c
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0x9

    if-ne v1, v2, :cond_d

    sget-object v1, Lcom/t4game/Defaults;->zhaojiaImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_d
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_e

    sget-object v1, Lcom/t4game/Defaults;->xishouImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_e
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_f

    sget-object v1, Lcom/t4game/Defaults;->huomianImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_f
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_10

    sget-object v1, Lcom/t4game/Defaults;->dikangImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_10
    const/4 v1, 0x4

    aget v1, v10, v1

    const/16 v2, 0xe

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/t4game/Defaults;->mianyiImg:Ljavax/microedition/lcdui/Image;

    const/4 v2, 0x1

    aget v2, v10, v2

    sub-int/2addr v2, v11

    const/4 v3, 0x2

    aget v3, v10, v3

    sub-int/2addr v3, v12

    sget v4, Lcom/t4game/Defaults;->TOP_LEFT:I

    invoke-virtual {p1, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_1

    :cond_11
    return-void
.end method

.method private drawBuf(SSLjavax/microedition/lcdui/Graphics;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/Buf;

    iget-short v2, p0, Lcom/t4game/Buf;->iconId:S

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    mul-int/lit8 v2, v1, 0xa

    add-int/2addr v2, p1

    iget-short v3, p0, Lcom/t4game/Buf;->iconId:S

    invoke-static {v2, p2, v3, p3}, Lcom/t4game/DraftingUtil;->drawBuff(IIILjavax/microedition/lcdui/Graphics;)V

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iget-byte v2, p0, Lcom/t4game/Buf;->num:B

    if-lez v2, :cond_0

    const/16 v2, 0xa

    sub-int v2, p1, v2

    mul-int/lit8 v3, v1, 0xa

    add-int/2addr v2, v3

    iget-byte v3, p0, Lcom/t4game/Buf;->num:B

    add-int/lit8 v3, v3, 0x1

    invoke-static {v2, p2, v3, p3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private final drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 3

    const/4 v2, 0x2

    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-ne v0, v2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_5

    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v1, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_1
    if-eqz v0, :cond_0

    const/4 v1, -0x1

    if-eq p5, v1, :cond_3

    iget-byte v1, v0, Lcom/t4game/GSEObject;->type:B

    if-ne v1, p5, :cond_4

    :cond_3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/t4game/GSEObject;->draw(Ljavax/microedition/lcdui/Graphics;III)V

    :cond_4
    iget-object v0, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    goto :goto_1

    :cond_5
    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-ne v0, v2, :cond_2

    goto :goto_0
.end method

.method private final onHorseDataLoaded()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget v0, p0, Lcom/t4game/GSprite;->horseType:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSprite;->actionState:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    const/4 v1, 0x0

    iget-byte v2, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v3, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    invoke-direct {p0}, Lcom/t4game/GSprite;->updateBounds()V

    return-void
.end method

.method private final onHorseDataLoading()V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-direct {p0}, Lcom/t4game/GSprite;->onHorseDataLoaded()V

    goto :goto_0
.end method

.method private updateBounds()V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundX:S

    iput v0, p0, Lcom/t4game/GSprite;->bx1:I

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundY:S

    iput v0, p0, Lcom/t4game/GSprite;->by1:I

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundW:S

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v1, v1, Lcom/t4game/GObjectData;->boundX:S

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GSprite;->bx2:I

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundH:S

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-short v1, v1, Lcom/t4game/GObjectData;->boundY:S

    add-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GSprite;->by2:I

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v0, v0, Lcom/t4game/GObjectData;->boundX:S

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v1, v1, Lcom/t4game/GObjectData;->boundY:S

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v1, v1, Lcom/t4game/GObjectData;->boundW:S

    iget-object v2, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v2, v2, Lcom/t4game/GObjectData;->boundX:S

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v2, v2, Lcom/t4game/GObjectData;->boundH:S

    iget-object v3, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-short v3, v3, Lcom/t4game/GObjectData;->boundY:S

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GSprite;->bx1:I

    if-le v3, v0, :cond_0

    iput v0, p0, Lcom/t4game/GSprite;->bx1:I

    :cond_0
    iget v0, p0, Lcom/t4game/GSprite;->bx2:I

    if-ge v0, v1, :cond_1

    iput v1, p0, Lcom/t4game/GSprite;->bx2:I

    :cond_1
    iput v2, p0, Lcom/t4game/GSprite;->by2:I

    :cond_2
    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget v1, p0, Lcom/t4game/GSprite;->bx1:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundX1:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget v1, p0, Lcom/t4game/GSprite;->bx2:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundX2:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget v1, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundY1:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget v1, p0, Lcom/t4game/GSprite;->by2:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundY2:S

    return-void
.end method

.method private updateSpecialEffect()V
    .locals 6

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    const/4 v1, 0x0

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    if-eqz v1, :cond_2

    iget-object v2, v1, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    invoke-virtual {v1}, Lcom/t4game/GSEObject;->update()B

    move-result v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_1

    if-nez v0, :cond_0

    iput-object v2, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_1
    invoke-virtual {v1}, Lcom/t4game/GSEObject;->release()V

    invoke-static {v1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :goto_2
    move-object v1, v2

    goto :goto_0

    :cond_0
    iput-object v2, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    goto :goto_1

    :cond_1
    move-object v0, v1

    goto :goto_2

    :cond_2
    return-void
.end method


# virtual methods
.method public GetCanMovep2p(IIZ)[[S
    .locals 12

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    if-eqz p3, :cond_1

    iget v0, p0, Lcom/t4game/GSprite;->FP_speed2:I

    move v2, v0

    :goto_0
    const/4 v0, 0x0

    check-cast v0, [[S

    const/4 v0, 0x1

    const/4 v3, 0x2

    filled-new-array {v0, v3}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[S

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x0

    iget-short v5, p0, Lcom/t4game/GSprite;->mapX:S

    aput-short v5, v3, v4

    const/4 v3, 0x0

    aget-object v3, v0, v3

    const/4 v4, 0x1

    iget-short v5, p0, Lcom/t4game/GSprite;->mapY:S

    aput-short v5, v3, v4

    iget-short v3, p0, Lcom/t4game/GSprite;->mapX:S

    if-ne v3, p1, :cond_2

    iget-short v3, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne v3, p2, :cond_2

    :cond_0
    :goto_1
    return-object v0

    :cond_1
    const v0, 0x1e400

    move v2, v0

    goto :goto_0

    :cond_2
    shl-int/lit8 v3, p1, 0x4

    shl-int/lit8 v4, p2, 0x4

    iget v5, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iget v6, p0, Lcom/t4game/GSprite;->FP_mapY:I

    sub-int v7, v3, v5

    sub-int v8, v4, v6

    mul-int/2addr v7, v7

    mul-int/2addr v8, v8

    add-int/2addr v7, v8

    div-int v2, v7, v2

    invoke-static {v2}, Lcom/t4game/Util;->quickSqrt(I)I

    move-result v2

    move v11, v6

    move v6, v5

    move v5, v11

    :cond_3
    :goto_2
    if-lez v2, :cond_4

    sub-int v7, v3, v6

    sub-int v8, v4, v5

    div-int/2addr v7, v2

    div-int/2addr v8, v2

    add-int/2addr v7, v6

    add-int/2addr v8, v5

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v9, v7, 0x4

    shr-int/lit8 v10, v8, 0x4

    invoke-virtual {p0, v9, v10}, Lcom/t4game/GSprite;->hitTest(II)I

    move-result v9

    if-nez v9, :cond_3

    const/4 v5, 0x2

    new-array v5, v5, [I

    const/4 v6, 0x0

    aput v7, v5, v6

    const/4 v6, 0x1

    aput v8, v5, v6

    invoke-virtual {v1, v5}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    move v5, v8

    move v6, v7

    goto :goto_2

    :cond_4
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_0

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    const/4 v2, 0x2

    filled-new-array {v0, v2}, [I

    move-result-object v0

    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v2, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    invoke-virtual {v1}, Ljava/util/Vector;->lastElement()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, p1, v2

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v0, v1

    const/4 v0, 0x0

    aget-object v0, p0, v0

    const/4 v1, 0x1

    const/4 v2, 0x1

    aget v2, p1, v2

    shr-int/lit8 v2, v2, 0x4

    int-to-short v2, v2

    aput-short v2, v0, v1

    move-object v0, p0

    goto :goto_1

    :cond_5
    const/4 v0, 0x2

    filled-new-array {v2, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [[S

    const/4 v0, 0x0

    :goto_3
    if-ge v0, v2, :cond_6

    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    check-cast p1, [I

    aget-object v3, p0, v0

    const/4 v4, 0x0

    const/4 v5, 0x0

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    aput-short v5, v3, v4

    aget-object v3, p0, v0

    const/4 v4, 0x1

    const/4 v5, 0x1

    aget v5, p1, v5

    shr-int/lit8 v5, v5, 0x4

    int-to-short v5, v5

    aput-short v5, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    :cond_6
    move-object v0, p0

    goto/16 :goto_1
.end method

.method public Pop(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V
    .locals 24

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->SayInPop:B

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GSprite;->CanShowPop:Z

    move v5, v0

    if-eqz v5, :cond_0

    const-wide/16 v5, 0x1388

    invoke-static {}, Lcom/t4game/Util;->getTime()J

    move-result-wide v7

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/t4game/GSprite;->StartPop:J

    move-wide v9, v0

    sub-long/2addr v7, v9

    cmp-long v5, v5, v7

    if-gez v5, :cond_1

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-byte v0, v1, Lcom/t4game/GSprite;->SayInPop:B

    :cond_0
    return-void

    :cond_1
    invoke-static/range {p2 .. p2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v5, v5, 0xa

    const/16 v6, 0x96

    if-le v5, v6, :cond_2

    const/16 v5, 0x96

    move v8, v5

    :goto_0
    const/16 v5, 0xa

    sub-int v5, v8, v5

    sget-object v6, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    move-object/from16 v0, p2

    move v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/t4game/Util;->splitStringOneScreen(Ljava/lang/String;ILjavax/microedition/lcdui/Font;)[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/t4game/Util;->refreashChat([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    array-length v0, v0

    move v5, v0

    sget v6, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v5, v6

    add-int/lit8 v5, v5, 0xa

    const/16 v6, 0x46

    if-le v5, v6, :cond_3

    const/16 v5, 0x46

    move v12, v5

    :goto_1
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->mapX:S

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget v6, v6, Lcom/t4game/GScene;->screen_mapx:I

    sub-int/2addr v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->mapY:S

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v7, v0

    iget v7, v7, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    move-object v7, v0

    const/16 v9, 0x8

    aget-boolean v7, v7, v9

    if-eqz v7, :cond_4

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY2:S

    move v7, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY1:S

    move v9, v0

    sub-int/2addr v7, v9

    :goto_2
    sub-int/2addr v6, v7

    add-int/lit8 v5, v5, 0x1

    sget v7, Lcom/t4game/Defaults;->sfh:I

    sub-int/2addr v6, v7

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->by1:I

    move v7, v0

    add-int/2addr v6, v7

    const/16 v7, 0x1e

    sub-int v7, v8, v7

    sub-int v9, v5, v7

    const/16 v5, 0x14

    sub-int v5, v12, v5

    sub-int v10, v6, v5

    mul-int v5, v8, v12

    new-array v6, v5, [I

    const/4 v5, 0x0

    :goto_3
    array-length v7, v6

    if-ge v5, v7, :cond_5

    const v7, -0x77d3daee

    aput v7, v6, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_2
    move v8, v5

    goto :goto_0

    :cond_3
    move v12, v5

    goto :goto_1

    :cond_4
    const/4 v7, 0x0

    goto :goto_2

    :cond_5
    const/4 v7, 0x0

    const/4 v13, 0x1

    move-object/from16 v5, p1

    move v11, v8

    invoke-virtual/range {v5 .. v13}, Ljavax/microedition/lcdui/Graphics;->drawRGB([IIIIIIIZ)V

    const v5, 0x121212

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v5, v9, 0x1

    add-int/lit8 v6, v10, 0x1

    const/4 v7, 0x3

    sub-int v7, v8, v7

    const/4 v11, 0x3

    sub-int v11, v12, v11

    move-object/from16 v0, p1

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v11

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    const v5, 0xd6ff37

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    const/4 v5, 0x1

    sub-int v5, v8, v5

    const/4 v6, 0x1

    sub-int v6, v12, v6

    move-object/from16 v0, p1

    move v1, v9

    move v2, v10

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawRect(IIII)V

    add-int v5, v9, v8

    const/16 v6, 0x3c

    sub-int v14, v5, v6

    add-int v15, v10, v12

    add-int v5, v9, v8

    const/16 v6, 0x1e

    sub-int v16, v5, v6

    add-int v5, v10, v12

    add-int/lit8 v17, v5, 0xa

    add-int v5, v9, v8

    const/16 v6, 0x28

    sub-int v18, v5, v6

    add-int v19, v10, v12

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v19}, Ljavax/microedition/lcdui/Graphics;->fillTriangle(IIIIII)V

    sget-object v14, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/16 v22, 0x0

    move-object/from16 v13, p1

    move/from16 v20, v9

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v22}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v14, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v15, 0x3

    const/16 v16, 0x0

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v5, 0x3

    sub-int v5, v9, v5

    add-int v20, v5, v8

    const/16 v22, 0x0

    move-object/from16 v13, p1

    move/from16 v21, v10

    invoke-virtual/range {v13 .. v22}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v14, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v15, 0x0

    const/16 v16, 0x3

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x0

    add-int v5, v10, v12

    const/4 v6, 0x3

    sub-int v21, v5, v6

    const/16 v22, 0x0

    move-object/from16 v13, p1

    move/from16 v20, v9

    invoke-virtual/range {v13 .. v22}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    sget-object v14, Lcom/t4game/Defaults;->smallBoxTop:Ljavax/microedition/lcdui/Image;

    const/4 v15, 0x3

    const/16 v16, 0x3

    const/16 v17, 0x3

    const/16 v18, 0x3

    const/16 v19, 0x0

    const/4 v5, 0x3

    sub-int v5, v9, v5

    add-int v20, v5, v8

    add-int v5, v10, v12

    const/4 v6, 0x3

    sub-int v21, v5, v6

    const/16 v22, 0x0

    move-object/from16 v13, p1

    invoke-virtual/range {v13 .. v22}, Ljavax/microedition/lcdui/Graphics;->drawRegion(Ljavax/microedition/lcdui/Image;IIIIIIII)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_6

    const v5, 0xf9df00

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_4
    const/4 v5, 0x0

    :goto_5
    const/16 v6, 0xa

    sub-int v6, v12, v6

    sget v7, Lcom/t4game/Defaults;->sfh:I

    div-int/2addr v6, v7

    if-ge v5, v6, :cond_0

    aget-object v6, v23, v5

    add-int/lit8 v7, v9, 0x5

    add-int/lit8 v8, v10, 0x5

    sget v11, Lcom/t4game/Defaults;->sfh:I

    mul-int/2addr v11, v5

    add-int/2addr v8, v11

    move-object/from16 v0, p1

    move-object v1, v6

    move v2, v7

    move v3, v8

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->drawStringWithImage(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;II)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    const v5, 0xffffff

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_4
.end method

.method protected _setImageData(SI)V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    aput-short p1, v0, p2

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    invoke-virtual {p0, p2}, Lcom/t4game/GSprite;->releaseImageDataAt(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/GSprite;->visible:Z

    if-eqz v0, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-boolean v3, v0, Lcom/t4game/GImageData;->isDelayRelease:Z

    invoke-virtual {v0}, Lcom/t4game/GImageData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-virtual {p0, p2}, Lcom/t4game/GSprite;->releaseImageDataAt(I)V

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v2

    aput-object v0, v1, p2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v2

    aget-object v1, v1, p2

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v2

    aput-object v0, v1, p2

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v3

    aput-object v0, v1, p2

    goto :goto_0
.end method

.method public addBuf(Lcom/t4game/Buf;)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    iget v1, p1, Lcom/t4game/Buf;->id:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public addDestPos(II)V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public addSpecialEffect(IIIII)Lcom/t4game/GSEObject;
    .locals 5

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    move-object v0, v3

    :goto_0
    return-object v0

    :cond_0
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v0, v3

    goto :goto_0

    :cond_2
    invoke-virtual {v0, p2}, Lcom/t4game/GObjectData;->getSpecialEffectData(I)Lcom/t4game/GSEData;

    move-result-object v2

    if-nez v2, :cond_3

    move-object v0, v3

    goto :goto_0

    :cond_3
    invoke-static {v4}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v1

    check-cast v1, Lcom/t4game/GSEObject;

    invoke-virtual {v1, p0, v2, v0, p3}, Lcom/t4game/GSEObject;->init(Lcom/t4game/GSprite;Lcom/t4game/GSEData;Lcom/t4game/GObjectData;I)V

    iput p4, v1, Lcom/t4game/GSEObject;->playType:I

    iput p5, v1, Lcom/t4game/GSEObject;->playFrame:I

    iget-boolean v0, v2, Lcom/t4game/GSEData;->headOffset:Z

    if-eqz v0, :cond_4

    const/4 v0, -0x2

    iget v2, p0, Lcom/t4game/GSprite;->by1:I

    const/16 v3, 0x14

    sub-int/2addr v2, v3

    invoke-virtual {v1, v0, v2, v4, v4}, Lcom/t4game/GSEObject;->setOffsetPos(IIII)V

    :cond_4
    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    if-nez v0, :cond_5

    iput-object v1, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    move-object v0, v1

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_1
    iget-object v2, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    if-eqz v2, :cond_6

    iget-object v0, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    goto :goto_1

    :cond_6
    iput-object v1, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    move-object v0, v1

    goto :goto_0
.end method

.method public changeImageData(SI)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v0, v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/t4game/GSprite;->_setImageData(SI)V

    goto :goto_0
.end method

.method protected cleanSpecialEffect()V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_0
    if-eqz v0, :cond_0

    iget-object v1, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    invoke-virtual {v0}, Lcom/t4game/GSEObject;->release()V

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    move-object v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    return-void
.end method

.method public clearCrazy()V
    .locals 2

    const/4 v1, 0x0

    iput-byte v1, p0, Lcom/t4game/GSprite;->controlType:B

    const/4 v0, -0x1

    iput v0, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    iput v1, p0, Lcom/t4game/GSprite;->leftStep:I

    invoke-virtual {p0, v1}, Lcom/t4game/GSprite;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v1, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    return-void
.end method

.method public deathClear()V
    .locals 0

    return-void
.end method

.method public draw(Ljavax/microedition/lcdui/Graphics;)V
    .locals 20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v5

    if-nez v5, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->animDataIndex:B

    move v5, v0

    const/4 v6, -0x1

    if-eq v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->mapX:S

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget v6, v6, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v8, v5, v6

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->mapY:S

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget v6, v6, Lcom/t4game/GScene;->screen_mapy:I

    sub-int v9, v5, v6

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GSprite;->visibleReady:Z

    move v5, v0

    if-eqz v5, :cond_b

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->isCollectionSprite:B

    move v5, v0

    const/4 v6, -0x1

    if-ne v5, v6, :cond_4

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v6, v6, Lcom/t4game/GUser;->intId:I

    if-eq v5, v6, :cond_3

    :cond_2
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->actionType:B

    move v5, v0

    const/4 v6, 0x2

    if-eq v5, v6, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseHP:I

    move v5, v0

    if-gtz v5, :cond_4

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/t4game/GSprite;->visibleReady:Z

    goto :goto_0

    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-boolean v5, v5, Lcom/t4game/GameWorld;->RoleDeathCommTitleMenuOn:Z

    if-eqz v5, :cond_4

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseHP:I

    move v5, v0

    if-lez v5, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/t4game/GameWorld;->RoleDeathCommTitleMenuOn:Z

    const/4 v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/t4game/GSprite;->visibleReady:Z

    :cond_4
    const/4 v7, 0x0

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GSprite;->hitMove:Z

    move v7, v0

    if-eqz v7, :cond_d

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->dir:B

    move v7, v0

    sget-byte v10, Lcom/t4game/GSprite;->DIR_UP:B

    if-ne v7, v10, :cond_6

    const/4 v5, 0x0

    const/4 v6, 0x4

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    :goto_1
    const/4 v7, 0x0

    move v0, v7

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/t4game/GSprite;->hitMove:Z

    :goto_2
    add-int v17, v8, v6

    add-int v18, v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    move-object v5, v0

    const/4 v6, 0x6

    aget-boolean v5, v5, v6

    if-nez v5, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    move-object v5, v0

    const/16 v6, 0x8

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_9

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundX2:S

    move v5, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundX1:S

    move v6, v0

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY2:S

    move v6, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY1:S

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x28

    invoke-static {v5, v6}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v11

    shr-int/lit8 v12, v5, 0x1

    const/16 v10, 0xf

    sub-int v13, v6, v10

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->nowFrame:B

    move v14, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    move v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->animDataIndex:B

    move/from16 v16, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/t4game/GSprite;->drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V

    mul-int/lit8 v10, v5, 0x3

    shr-int/lit8 v10, v10, 0x1

    mul-int/lit8 v11, v6, 0x3

    shr-int/lit8 v11, v11, 0x1

    invoke-static {v7, v10, v11}, Lcom/t4game/Util;->effect_resizeImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    mul-int/lit8 v5, v5, 0x3

    shr-int/lit8 v5, v5, 0x2

    sub-int v5, v17, v5

    const/16 v10, 0xf

    sub-int/2addr v6, v10

    mul-int/lit8 v6, v6, 0x3

    shr-int/lit8 v6, v6, 0x1

    sub-int v6, v18, v6

    const/16 v10, 0x14

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_5
    :goto_3
    const/4 v7, 0x1

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    move-object v5, v0

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/t4game/GSprite;->isTheTargetNpc:Z

    move v5, v0

    if-nez v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, v17

    move/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GFabao;->draw(Ljavax/microedition/lcdui/Graphics;II)V

    goto/16 :goto_0

    :cond_6
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->dir:B

    move v7, v0

    sget-byte v10, Lcom/t4game/GSprite;->DIR_RIGHT:B

    if-ne v7, v10, :cond_7

    const/4 v5, -0x4

    const/4 v6, 0x0

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_7
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->dir:B

    move v7, v0

    sget-byte v10, Lcom/t4game/GSprite;->DIR_DOWN:B

    if-ne v7, v10, :cond_8

    const/4 v5, 0x0

    const/4 v6, -0x4

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_8
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->dir:B

    move v7, v0

    sget-byte v10, Lcom/t4game/GSprite;->DIR_LEFT:B

    if-ne v7, v10, :cond_c

    const/4 v5, 0x4

    const/4 v6, 0x0

    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    move-object v5, v0

    const/16 v6, 0x9

    aget-boolean v5, v5, v6

    if-eqz v5, :cond_a

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundX2:S

    move v5, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundX1:S

    move v6, v0

    sub-int/2addr v5, v6

    add-int/lit8 v5, v5, 0x28

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY2:S

    move v6, v0

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->boundY1:S

    move v7, v0

    sub-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x28

    invoke-static {v5, v6}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    invoke-virtual {v7}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v11

    shr-int/lit8 v12, v5, 0x1

    const/4 v10, 0x5

    sub-int v13, v6, v10

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->nowFrame:B

    move v14, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    move v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->animDataIndex:B

    move/from16 v16, v0

    move-object/from16 v10, p0

    invoke-virtual/range {v10 .. v16}, Lcom/t4game/GSprite;->drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V

    mul-int/lit8 v10, v5, 0x3

    shr-int/lit8 v10, v10, 0x2

    mul-int/lit8 v11, v6, 0x3

    shr-int/lit8 v11, v11, 0x2

    invoke-static {v7, v10, v11}, Lcom/t4game/Util;->effect_resizeImage(Ljavax/microedition/lcdui/Image;II)Ljavax/microedition/lcdui/Image;

    move-result-object v7

    mul-int/lit8 v5, v5, 0x3

    shr-int/lit8 v5, v5, 0x3

    sub-int v5, v17, v5

    const/4 v10, 0x5

    sub-int/2addr v6, v10

    mul-int/lit8 v6, v6, 0x3

    shr-int/lit8 v6, v6, 0x2

    sub-int v6, v18, v6

    const/16 v10, 0x14

    move-object/from16 v0, p1

    move-object v1, v7

    move v2, v5

    move v3, v6

    move v4, v10

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_3

    :cond_a
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->nowFrame:B

    move v14, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    move v15, v0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->animDataIndex:B

    move/from16 v16, v0

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move/from16 v12, v17

    move/from16 v13, v18

    invoke-virtual/range {v10 .. v16}, Lcom/t4game/GSprite;->drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V

    goto/16 :goto_3

    :cond_b
    const/4 v7, 0x0

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    const/4 v7, 0x1

    const/4 v10, -0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    invoke-direct/range {v5 .. v10}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    goto/16 :goto_0

    :cond_c
    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_1

    :cond_d
    move/from16 v19, v6

    move v6, v5

    move/from16 v5, v19

    goto/16 :goto_2
.end method

.method public drawButtom(Ljavax/microedition/lcdui/Graphics;)V
    .locals 9

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v7, v0, v1

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapy:I

    sub-int v8, v0, v1

    iget-short v0, p0, Lcom/t4game/GSprite;->boundX2:S

    iget-short v1, p0, Lcom/t4game/GSprite;->boundX1:S

    sub-int/2addr v0, v1

    int-to-short v3, v0

    iget v0, p0, Lcom/t4game/GSprite;->actionState:I

    if-lez v0, :cond_2

    const v0, 0x444444

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    :goto_1
    iget-short v0, p0, Lcom/t4game/GSprite;->boundX1:S

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->win_x:I

    sub-int v1, v0, v1

    shr-int/lit8 v0, v3, 0x2

    sub-int v2, v8, v0

    shr-int/lit8 v4, v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x168

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Ljavax/microedition/lcdui/Graphics;->fillArc(IIIIII)V

    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->choicedSpriteId:I

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v1, :cond_0

    invoke-virtual {p0, p1, v3, v7, v8}, Lcom/t4game/GSprite;->drawSelectBarFram1(Ljavax/microedition/lcdui/Graphics;SII)V

    goto :goto_0

    :cond_2
    const v0, 0x3b3b3b

    invoke-virtual {p1, v0}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    goto :goto_1
.end method

.method public drawHead(IILjavax/microedition/lcdui/Graphics;)V
    .locals 9

    const/16 v3, 0x10

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v1, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p3, p1, p2, v3, v3}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    add-int/lit8 v3, p1, 0x8

    add-int/lit8 v4, p2, 0x8

    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p3

    move v5, v2

    move v6, v2

    move-object v7, p0

    invoke-virtual/range {v0 .. v8}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    sget v0, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v1, Lcom/t4game/Defaults;->CANVAS_H:I

    invoke-virtual {p3, v2, v2, v0, v1}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    goto :goto_0
.end method

.method public drawName(Ljavax/microedition/lcdui/Graphics;)V
    .locals 12

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v1, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->state:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    if-lez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/t4game/GSprite;->drawBloodUp(Ljavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    iget-byte v1, p0, Lcom/t4game/GSprite;->caiJiType:B

    if-lez v1, :cond_4

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->choicedSpriteId:I

    iget v2, p0, Lcom/t4game/GSprite;->intId:I

    if-ne v1, v2, :cond_3

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->choicedSpriteType:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->type:B

    if-eq v1, v2, :cond_4

    :cond_3
    const/4 v0, 0x0

    :cond_4
    iget-boolean v1, p0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget v1, p0, Lcom/t4game/GSprite;->intId:I

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v0, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    if-ne v0, v1, :cond_5

    const/4 v0, 0x1

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    :cond_5
    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapx:I

    sub-int v8, v0, v1

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->screen_mapy:I

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/16 v2, 0x8

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_b

    iget-short v1, p0, Lcom/t4game/GSprite;->boundY2:S

    iget-short v2, p0, Lcom/t4game/GSprite;->boundY1:S

    sub-int/2addr v1, v2

    :goto_1
    sub-int v9, v0, v1

    invoke-virtual {p0}, Lcom/t4game/GSprite;->isShowName()Z

    move-result v0

    if-eqz v0, :cond_9

    const/4 v0, 0x0

    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_10

    iget-byte v1, p0, Lcom/t4game/GSprite;->wuxingType:B

    const/4 v2, 0x5

    if-eq v1, v2, :cond_10

    const/16 v0, 0xa

    move v10, v0

    :goto_2
    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v1, v8, 0x1

    add-int/2addr v1, v10

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, v9, v2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/16 v3, 0x11

    const/4 v4, 0x0

    iget-byte v5, p0, Lcom/t4game/GSprite;->relationState:B

    invoke-static {v5}, Lcom/t4game/mmorpg/dreamgame/Palette;->getColor(B)I

    move-result v5

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/t4game/DraftingUtil;->drawString(Ljava/lang/String;IIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/TeamRole;

    iget-byte v0, v0, Lcom/t4game/TeamRole;->leader:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v11, v0, 0x1

    sget-object v0, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    sub-int v1, v8, v11

    const/16 v2, 0xa

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/16 v3, 0x42

    const/4 v4, 0x0

    const/16 v5, 0x9

    const/4 v6, 0x7

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_6

    sget-object v0, Lcom/t4game/Defaults;->friendImg:Ljavax/microedition/lcdui/Image;

    sub-int v1, v8, v11

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_6
    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/t4game/Defaults;->enemyImg:Ljavax/microedition/lcdui/Image;

    sub-int v1, v8, v11

    const/16 v2, 0x14

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v1, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_7
    :goto_3
    add-int/lit8 v0, v8, 0x1

    sget v1, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v1, v1, 0x2

    sub-int v1, v9, v1

    iget v2, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v1, v2

    const/16 v2, 0x11

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/t4game/GSprite;->drawSpecialShow(Ljavax/microedition/lcdui/Graphics;III)V

    :cond_8
    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    const/16 v0, 0x14

    add-int/lit8 v1, v8, 0x1

    sub-int/2addr v1, v10

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/t4game/Util;->getStringWidth(Ljava/lang/String;)I

    move-result v2

    shr-int/lit8 v2, v2, 0x1

    sub-int/2addr v1, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    sub-int v2, v9, v2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/t4game/GSprite;->drawSelectWuXing(Ljavax/microedition/lcdui/Graphics;III)V

    :cond_9
    const/4 v0, 0x0

    sput-byte v0, Lcom/t4game/Defaults;->drawStringBounds:B

    :cond_a
    invoke-direct {p0, p1}, Lcom/t4game/GSprite;->drawBloodUp(Ljavax/microedition/lcdui/Graphics;)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->words:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/t4game/GSprite;->Pop(Ljavax/microedition/lcdui/Graphics;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    const/4 v1, 0x0

    goto/16 :goto_1

    :cond_c
    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_d

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/t4game/Defaults;->friendImg:Ljavax/microedition/lcdui/Image;

    sub-int v0, v8, v0

    const/16 v2, 0xa

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_d
    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/t4game/Defaults;->enemyImg:Ljavax/microedition/lcdui/Image;

    sub-int v0, v8, v0

    const/16 v2, 0xa

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_3

    :cond_e
    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_f

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/t4game/Defaults;->friendImg:Ljavax/microedition/lcdui/Image;

    sub-int v0, v8, v0

    const/16 v2, 0xa

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    :cond_f
    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_7

    sget-object v0, Lcom/t4game/Defaults;->sf:Ljavax/microedition/lcdui/Font;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Font;->stringWidth(Ljava/lang/String;)I

    move-result v0

    shr-int/lit8 v0, v0, 0x1

    sget-object v1, Lcom/t4game/Defaults;->enemyImg:Ljavax/microedition/lcdui/Image;

    sub-int v0, v8, v0

    const/16 v2, 0xa

    sub-int/2addr v0, v2

    sget v2, Lcom/t4game/Defaults;->sfh:I

    mul-int/lit8 v2, v2, 0x2

    const/4 v3, 0x7

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    sub-int v2, v9, v2

    add-int/lit8 v2, v2, 0x2

    iget v3, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v2, v3

    const/4 v3, 0x0

    invoke-virtual {p1, v1, v0, v2, v3}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    goto/16 :goto_3

    :cond_10
    move v10, v0

    goto/16 :goto_2
.end method

.method public drawOut(Ljavax/microedition/lcdui/Graphics;IIII)V
    .locals 9

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/GSprite;->nowOutFrame:I

    shr-int/lit8 v7, v0, 0x1

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget v1, p0, Lcom/t4game/GSprite;->actionState:I

    invoke-virtual {v0, v1, p5, p4}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v6

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v1}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p5, p4}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    move v8, v0

    :goto_1
    const/4 v2, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, v7

    move v5, v8

    invoke-virtual/range {v0 .. v6}, Lcom/t4game/GSprite;->drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V

    const/4 v2, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/t4game/GSprite;->drawSpecialEffect(Ljavax/microedition/lcdui/Graphics;IIII)V

    iget v0, p0, Lcom/t4game/GSprite;->nowOutFrame:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSprite;->nowOutFrame:I

    goto :goto_0

    :cond_2
    move v8, v0

    goto :goto_1
.end method

.method public drawSelectBarFram1(Ljavax/microedition/lcdui/Graphics;SII)V
    .locals 26

    const/4 v14, 0x7

    const/16 v15, 0xd

    const/16 v12, 0x1b

    const/4 v5, 0x7

    const/16 v7, 0x14

    const/4 v8, 0x5

    const/16 v22, 0x6

    const/16 v2, 0x1e

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->wuxingType:B

    move v3, v0

    if-ltz v3, :cond_0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->wuxingType:B

    move v3, v0

    const/4 v4, 0x6

    if-ne v3, v4, :cond_1

    :cond_0
    mul-int/lit8 v2, v2, 0x5

    move v6, v2

    :goto_0
    const/16 v21, 0x11

    const/16 v13, 0x8

    const/16 v24, 0x9

    const/16 v2, 0x1a

    move/from16 v0, p2

    move v1, v2

    if-ge v0, v1, :cond_3

    const/16 v2, 0x1a

    :goto_1
    add-int/lit8 v2, v2, 0xa

    move v0, v2

    int-to-short v0, v0

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    sget v2, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v2, v2, 0x4

    const/4 v3, 0x2

    if-ge v2, v3, :cond_2

    sget-object v2, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v3, v7, 0x1

    sub-int v3, p3, v3

    shr-int/lit8 v4, v25, 0x2

    sub-int v4, p4, v4

    move-object/from16 v9, p1

    invoke-static/range {v2 .. v9}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v9, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v2, v25, 0x1

    add-int v2, v2, p3

    sub-int v10, v2, v14

    shr-int/lit8 v2, v15, 0x1

    sub-int v11, p4, v2

    move v13, v6

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v16, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v2, v7, 0x1

    sub-int v17, p3, v2

    shr-int/lit8 v2, v25, 0x2

    add-int v2, v2, p4

    sub-int v18, v2, v22

    add-int v20, v6, v8

    move/from16 v19, v5

    move/from16 v21, v7

    move-object/from16 v23, p1

    invoke-static/range {v16 .. v23}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v9, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v2, v25, 0x1

    sub-int v10, p3, v2

    shr-int/lit8 v2, v15, 0x1

    sub-int v11, p4, v2

    const/4 v12, 0x0

    move v13, v6

    move-object/from16 v16, p1

    invoke-static/range {v9 .. v16}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    :goto_2
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->wuxingType:B

    move v3, v0

    mul-int/2addr v2, v3

    move v6, v2

    goto :goto_0

    :cond_2
    shr-int/lit8 v2, v25, 0x1

    sub-int v2, v2, v21

    div-int/lit8 v2, v2, 0x3

    shr-int/lit8 v3, v25, 0x2

    sub-int/2addr v3, v13

    div-int/lit8 v3, v3, 0x3

    shr-int/lit8 v4, v25, 0x2

    sub-int v4, v4, v24

    div-int/lit8 v4, v4, 0x3

    sget-object v7, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v5, v25, 0x1

    sub-int v5, p3, v5

    add-int v8, v5, v2

    shr-int/lit8 v5, v25, 0x2

    sub-int v5, p4, v5

    add-int v9, v5, v3

    const/4 v10, 0x0

    add-int v11, v6, v15

    move/from16 v12, v21

    move-object/from16 v14, p1

    invoke-static/range {v7 .. v14}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v7, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v5, v25, 0x1

    add-int v5, v5, p3

    sub-int/2addr v5, v2

    sub-int v8, v5, v21

    shr-int/lit8 v5, v25, 0x2

    sub-int v5, p4, v5

    add-int v9, v5, v3

    add-int v11, v6, v15

    move/from16 v10, v21

    move/from16 v12, v21

    move-object/from16 v14, p1

    invoke-static/range {v7 .. v14}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v16, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v3, v25, 0x1

    sub-int v3, p3, v3

    add-int v17, v3, v2

    shr-int/lit8 v3, v25, 0x2

    add-int v3, v3, p4

    sub-int/2addr v3, v4

    sub-int v18, v3, v24

    const/16 v19, 0x0

    add-int v3, v6, v15

    add-int v20, v3, v13

    move/from16 v22, v24

    move-object/from16 v23, p1

    invoke-static/range {v16 .. v23}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v18, Lcom/t4game/Defaults;->selectDownImg1:Ljavax/microedition/lcdui/Image;

    shr-int/lit8 v3, v25, 0x1

    add-int v3, v3, p3

    sub-int v2, v3, v2

    sub-int v19, v2, v21

    shr-int/lit8 v2, v25, 0x2

    add-int v2, v2, p4

    sub-int/2addr v2, v4

    sub-int v20, v2, v24

    add-int v2, v6, v15

    add-int v22, v2, v13

    move/from16 v23, v21

    move-object/from16 v25, p1

    invoke-static/range {v18 .. v25}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_2

    :cond_3
    move/from16 v2, p2

    goto/16 :goto_1
.end method

.method public drawSelectWuXing(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 8

    iget-byte v0, p0, Lcom/t4game/GSprite;->wuxingType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GSprite;->wuxingType:B

    if-ltz v0, :cond_1

    iget-byte v0, p0, Lcom/t4game/GSprite;->wuxingType:B

    const/4 v1, 0x6

    if-ne v0, v1, :cond_2

    :cond_1
    mul-int/lit8 v0, p2, 0x5

    move v3, v0

    :goto_1
    sget-object v0, Lcom/t4game/Defaults;->selectDownImg2:Ljavax/microedition/lcdui/Image;

    const/4 v4, 0x0

    move v1, p3

    move v2, p4

    move v5, p2

    move v6, p2

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto :goto_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GSprite;->wuxingType:B

    mul-int/2addr v0, p2

    move v3, v0

    goto :goto_1
.end method

.method public drawSelected(SSLjavax/microedition/lcdui/Graphics;)V
    .locals 22

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->initState:B

    move v5, v0

    sget-byte v6, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-eq v5, v6, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    add-int/lit8 v12, p1, 0x1e

    add-int/lit8 v13, p2, 0x13

    const/16 v16, 0x47

    const v5, 0x141414

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseHP:I

    move v5, v0

    mul-int v5, v5, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->maxHp:I

    move v6, v0

    div-int/2addr v5, v6

    const/4 v6, 0x4

    move-object/from16 v0, p3

    move v1, v12

    move v2, v13

    move v3, v5

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    sget-object v6, Lcom/t4game/Defaults;->hp:Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x13

    const/4 v10, 0x4

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseHP:I

    move v14, v0

    mul-int v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->maxHp:I

    move v15, v0

    div-int/2addr v14, v15

    const/4 v15, 0x4

    invoke-virtual/range {v5 .. v15}, Lcom/t4game/UIPainter;->fillTile(Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    const v5, 0x141414

    move-object/from16 v0, p3

    move v1, v5

    invoke-virtual {v0, v1}, Ljavax/microedition/lcdui/Graphics;->setColor(I)V

    add-int/lit8 v5, v13, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseMP:I

    move v6, v0

    mul-int v6, v6, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->maxMp:I

    move v7, v0

    div-int/2addr v6, v7

    const/4 v7, 0x4

    move-object/from16 v0, p3

    move v1, v12

    move v2, v5

    move v3, v6

    move v4, v7

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->fillRect(IIII)V

    invoke-static {}, Lcom/t4game/UIPainter;->getInstance()Lcom/t4game/UIPainter;

    move-result-object v5

    sget-object v6, Lcom/t4game/Defaults;->mp:Ljavax/microedition/lcdui/Image;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/16 v9, 0x13

    const/4 v10, 0x4

    const/4 v11, 0x0

    add-int/lit8 v13, v13, 0x9

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->attr_baseMP:I

    move v14, v0

    mul-int v14, v14, v16

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->maxMp:I

    move v15, v0

    div-int/2addr v14, v15

    const/4 v15, 0x4

    invoke-virtual/range {v5 .. v15}, Lcom/t4game/UIPainter;->fillTile(Ljavax/microedition/lcdui/Image;IIIIIIIII)V

    sget-object v5, Lcom/t4game/Defaults;->head_big:Ljavax/microedition/lcdui/Image;

    const/4 v6, 0x0

    move-object/from16 v0, p3

    move-object v1, v5

    move/from16 v2, p1

    move/from16 v3, p2

    move v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    add-int/lit8 v5, p1, 0xa

    add-int/lit8 v6, p2, 0xa

    const/16 v7, 0x10

    const/16 v8, 0x10

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v13, v0

    const/4 v15, 0x0

    add-int/lit8 v16, p1, 0x12

    add-int/lit8 v17, p2, 0x12

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->alpha:B

    move/from16 v21, v0

    move-object/from16 v14, p3

    move-object/from16 v20, p0

    invoke-virtual/range {v13 .. v21}, Lcom/t4game/GObjectData;->drawObjectFrame(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;B)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    sget v7, Lcom/t4game/Defaults;->CANVAS_W:I

    sget v8, Lcom/t4game/Defaults;->CANVAS_H:I

    move-object/from16 v0, p3

    move v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Ljavax/microedition/lcdui/Graphics;->setClip(IIII)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v6, v6, Lcom/t4game/GUser;->intId:I

    if-ne v5, v6, :cond_2

    add-int/lit8 v5, p1, 0x2e

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->grade:S

    move v7, v0

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    :goto_1
    int-to-short v5, v12

    add-int/lit8 v6, p2, 0x24

    int-to-short v6, v6

    move-object/from16 v0, p0

    move v1, v5

    move v2, v6

    move-object/from16 v3, p3

    invoke-direct {v0, v1, v2, v3}, Lcom/t4game/GSprite;->drawBuf(SSLjavax/microedition/lcdui/Graphics;)V

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->type:B

    move v5, v0

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v5, v5, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/t4game/GSprite;->intId:I

    move v6, v0

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/TeamRole;

    if-eqz p0, :cond_0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/TeamRole;->leader:B

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_0

    sget-object v5, Lcom/t4game/Defaults;->jobSmallImg:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v6, p1, 0x1

    add-int/lit8 v7, p2, 0x1

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x9

    const/4 v11, 0x7

    move-object/from16 v12, p3

    invoke-static/range {v5 .. v12}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_0

    :cond_2
    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->grade:S

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-short v6, v6, Lcom/t4game/GUser;->grade:S

    sub-int/2addr v5, v6

    const/16 v6, 0x14

    if-le v5, v6, :cond_3

    sget-object v13, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v14, p1, 0x2e

    add-int/lit8 v15, p2, 0x8

    const/16 v16, 0x32

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x7

    move-object/from16 v20, p3

    invoke-static/range {v13 .. v20}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    sget-object v13, Lcom/t4game/Defaults;->norMalNumImag:Ljavax/microedition/lcdui/Image;

    add-int/lit8 v14, p1, 0x34

    add-int/lit8 v15, p2, 0x8

    const/16 v16, 0x32

    const/16 v17, 0x0

    const/16 v18, 0x5

    const/16 v19, 0x7

    move-object/from16 v20, p3

    invoke-static/range {v13 .. v20}, Lcom/t4game/DraftingUtil;->showFr(Ljavax/microedition/lcdui/Image;IIIIIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1

    :cond_3
    add-int/lit8 v5, p1, 0x2e

    add-int/lit8 v6, p2, 0x8

    move-object/from16 v0, p0

    iget-short v0, v0, Lcom/t4game/GSprite;->grade:S

    move v7, v0

    move v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p3

    invoke-static {v0, v1, v2, v3}, Lcom/t4game/DraftingUtil;->showNumberNormal(IIILjavax/microedition/lcdui/Graphics;)V

    goto/16 :goto_1
.end method

.method public drawSpecialShow(Ljavax/microedition/lcdui/Graphics;III)V
    .locals 0

    return-void
.end method

.method protected drawSprite(Ljavax/microedition/lcdui/Graphics;IIIII)V
    .locals 21

    const/4 v2, -0x1

    move/from16 v0, p5

    move v1, v2

    if-eq v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v2, v2, p5

    add-int/lit8 v2, v2, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v4, v2, 0x1

    aget-byte v2, v3, v2

    if-gez p4, :cond_d

    const/4 v3, 0x0

    :goto_0
    if-lt v3, v2, :cond_c

    rem-int v2, v3, v2

    :goto_1
    shl-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GObjectData;->animDatas:[B

    aget-byte v4, v3, v2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GObjectData;->objectFrameDataOffsets:[S

    aget-short v3, v3, v4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    add-int/lit8 v6, v3, 0x1

    aget-byte v3, v5, v3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v5, v0

    iget-object v5, v5, Lcom/t4game/GObjectData;->objectFrameDatas:[B

    aget-byte v5, v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v7, v2, 0x1

    aget-byte v6, v6, v7

    and-int/lit8 v7, v6, 0x2

    if-lez v7, :cond_2

    const/4 v7, 0x1

    :goto_2
    and-int/lit8 v8, v6, 0x1

    if-lez v8, :cond_3

    const/4 v8, 0x1

    :goto_3
    if-eqz v7, :cond_0

    neg-int v3, v3

    :cond_0
    if-eqz v8, :cond_1

    neg-int v5, v5

    :cond_1
    and-int/lit8 v6, v6, 0x4

    if-lez v6, :cond_b

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v6, v0

    iget-object v6, v6, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v9, v2, 0x2

    aget-byte v6, v6, v9

    add-int v6, v6, p2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v10, v2, 0x3

    aget-byte v9, v9, v10

    add-int v9, v9, p3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v11, v2, 0x2

    aget-byte v10, v10, v11

    add-int/2addr v3, v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v2, v2, 0x3

    aget-byte v2, v10, v2

    add-int/2addr v2, v5

    move v5, v6

    move v6, v9

    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v9, v0

    iget-object v9, v9, Lcom/t4game/GObjectData;->animDataOffsets:[S

    aget-short v9, v9, p6

    add-int/lit8 v9, v9, 0x2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v9, v10, v9

    if-gez p4, :cond_a

    const/4 v10, 0x0

    :goto_5
    if-lt v10, v9, :cond_9

    rem-int v9, v10, v9

    :goto_6
    shl-int/lit8 v9, v9, 0x2

    add-int/2addr v9, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GObjectData;->animDatas:[B

    aget-byte v13, v10, v9

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v10, v0

    iget-object v10, v10, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v11, v9, 0x1

    aget-byte v10, v10, v11

    and-int/lit8 v11, v10, 0x2

    if-lez v11, :cond_4

    const/4 v11, 0x1

    move/from16 v16, v11

    :goto_7
    and-int/lit8 v11, v10, 0x1

    if-lez v11, :cond_5

    const/4 v11, 0x1

    move/from16 v17, v11

    :goto_8
    add-int v11, p2, v3

    add-int v12, p3, v2

    move v0, v3

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSprite;->offsetOX:I

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSprite;->offsetOY:I

    and-int/lit8 v2, v10, 0x4

    if-lez v2, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    iget-object v2, v2, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v3, v9, 0x2

    aget-byte v2, v2, v3

    add-int/2addr v2, v11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v3, v0

    iget-object v3, v3, Lcom/t4game/GObjectData;->animDatas:[B

    add-int/lit8 v9, v9, 0x3

    aget-byte v3, v3, v9

    add-int/2addr v3, v12

    move v15, v3

    move v14, v2

    :goto_9
    const/4 v2, 0x0

    move v10, v2

    :goto_a
    const/4 v2, 0x4

    if-ge v10, v2, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-virtual/range {v2 .. v11}, Lcom/t4game/GObjectData;->drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GObjectData;->resetClip()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v11, v0

    const/16 v20, 0x0

    move-object/from16 v12, p1

    move-object/from16 v18, p0

    move/from16 v19, v10

    invoke-virtual/range {v11 .. v20}, Lcom/t4game/GObjectData;->drawClipLayer(Ljavax/microedition/lcdui/Graphics;IIIZZLcom/t4game/GIRenderManager;IB)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GObjectData;->resetClip()V

    add-int/lit8 v2, v10, 0x1

    move v10, v2

    goto :goto_a

    :cond_2
    const/4 v7, 0x0

    goto/16 :goto_2

    :cond_3
    const/4 v8, 0x0

    goto/16 :goto_3

    :cond_4
    const/4 v11, 0x0

    move/from16 v16, v11

    goto/16 :goto_7

    :cond_5
    const/4 v11, 0x0

    move/from16 v17, v11

    goto/16 :goto_8

    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    iget-short v2, v2, Lcom/t4game/GObjectData;->boundY:S

    sub-int v3, v6, v15

    sub-int/2addr v2, v3

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSprite;->by1:I

    :goto_b
    return-void

    :cond_7
    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSprite;->offsetOX:I

    const/4 v2, 0x0

    move v0, v2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/t4game/GSprite;->offsetOY:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    move-object v3, v0

    invoke-virtual {v2, v3}, Lcom/t4game/GObjectData;->setClip(Lcom/t4game/GMap;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v0, p0

    iget-byte v0, v0, Lcom/t4game/GSprite;->alpha:B

    move v11, v0

    move-object/from16 v3, p1

    move/from16 v4, p6

    move/from16 v5, p4

    move/from16 v6, p2

    move/from16 v7, p3

    move-object/from16 v10, p0

    invoke-virtual/range {v2 .. v11}, Lcom/t4game/GObjectData;->drawAnimFrame(Ljavax/microedition/lcdui/Graphics;IIIIZZLcom/t4game/GIRenderManager;B)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    move-object v2, v0

    invoke-virtual {v2}, Lcom/t4game/GObjectData;->resetClip()V

    goto :goto_b

    :cond_8
    move v15, v12

    move v14, v11

    goto/16 :goto_9

    :cond_9
    move v9, v10

    goto/16 :goto_6

    :cond_a
    move/from16 v10, p4

    goto/16 :goto_5

    :cond_b
    move v2, v5

    move/from16 v6, p3

    move/from16 v5, p2

    goto/16 :goto_4

    :cond_c
    move v2, v3

    goto/16 :goto_1

    :cond_d
    move/from16 v3, p4

    goto/16 :goto_0
.end method

.method public getBuf(S)Lcom/t4game/Buf;
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/Buf;

    return-object p0
.end method

.method public getImageList()[Lcom/t4game/GImageData;
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/t4game/GSprite;->name:Ljava/lang/String;

    return-object v0
.end method

.method public final getNowActionTriggerFrame(I)B
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GSprite;->animDataIndex:B

    invoke-virtual {v0, v1, p1}, Lcom/t4game/GObjectData;->getAnimTriggerFrame(II)B

    move-result v0

    return v0
.end method

.method protected hitTest(II)I
    .locals 5

    const/4 v1, 0x2

    const/4 v4, 0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->map_w:I

    if-lt p1, v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    return v0

    :cond_1
    if-ltz p2, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->map_h:I

    if-lt p2, v0, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v1, p2}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v1

    iget-object v2, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v2, v0, v1}, Lcom/t4game/GScene;->getGridBlock(II)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_4

    move v0, v4

    goto :goto_0

    :cond_4
    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v1, p1}, Lcom/t4game/GScene;->getGridRemainderX(I)I

    move-result v1

    iget-object v2, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v2, p2}, Lcom/t4game/GScene;->getGridRemainderY(I)I

    move-result v2

    if-eqz v0, :cond_5

    add-int/lit8 v0, v0, -0x1

    sget-object v3, Lcom/t4game/GUtil;->HITMASK:[[B

    aget-object v0, v3, v0

    aget-byte v0, v0, v2

    sget-object v2, Lcom/t4game/GUtil;->BYTEMASK:[B

    shr-int/lit8 v1, v1, 0x1

    aget-byte v1, v2, v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_5

    move v0, v4

    goto :goto_0

    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final initImageDataList(I)V
    .locals 3

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v0, v0

    if-eq v0, p1, :cond_2

    :cond_0
    new-array v0, p1, [S

    iput-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    const/4 v2, -0x1

    aput-short v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    filled-new-array {v0, p1}, [I

    move-result-object v0

    const-class v1, Lcom/t4game/GImageData;

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    :cond_2
    return-void
.end method

.method protected isShowName()Z
    .locals 5

    const/4 v4, 0x4

    const/4 v3, 0x2

    const/4 v2, 0x1

    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v1, v1, Lcom/t4game/GScene;->choicedSpriteId:I

    if-ne v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v1, v1, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v0, v1, :cond_0

    move v0, v2

    :goto_0
    return v0

    :cond_0
    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    if-ne v0, v3, :cond_3

    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-ge v0, v2, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSprite;->relationState:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    iget-byte v0, p0, Lcom/t4game/GSprite;->relationState:B

    if-ne v0, v4, :cond_7

    :cond_2
    move v0, v2

    goto :goto_0

    :cond_3
    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_7

    iget-byte v0, p0, Lcom/t4game/GSprite;->relationState:B

    if-ne v0, v4, :cond_4

    move v0, v2

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-eq v0, v1, :cond_5

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->teamList:Ljava/util/Hashtable;

    iget-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    if-eq v0, v2, :cond_5

    iget-byte v0, p0, Lcom/t4game/GSprite;->playerRelation:B

    if-ne v0, v3, :cond_6

    :cond_5
    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-gt v0, v2, :cond_7

    move v0, v2

    goto :goto_0

    :cond_6
    sget-byte v0, Lcom/t4game/GameScreen;->screenQuilityIndex:B

    if-nez v0, :cond_7

    move v0, v2

    goto :goto_0

    :cond_7
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()V
    .locals 0

    return-void
.end method

.method protected final moveNPC()V
    .locals 5

    const/4 v3, 0x1

    const/4 v4, 0x0

    iget v0, p0, Lcom/t4game/GSprite;->leftStep:I

    if-nez v0, :cond_0

    iput-boolean v4, p0, Lcom/t4game/GSprite;->moved:Z

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/t4game/GSprite;->FP_destMapX:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSprite;->FP_destMapY:I

    iget v2, p0, Lcom/t4game/GSprite;->FP_mapY:I

    sub-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/GSprite;->leftStep:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/t4game/GSprite;->FP_nowSpeedX:I

    iget v0, p0, Lcom/t4game/GSprite;->leftStep:I

    div-int v0, v1, v0

    iput v0, p0, Lcom/t4game/GSprite;->FP_nowSpeedY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_nowSpeedX:I

    add-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    iget v2, p0, Lcom/t4game/GSprite;->FP_nowSpeedY:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/t4game/GSprite;->leftStep:I

    sub-int/2addr v2, v3

    iput v2, p0, Lcom/t4game/GSprite;->leftStep:I

    iput-boolean v3, p0, Lcom/t4game/GSprite;->moved:Z

    iget-object v2, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v2, v2, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v2, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-byte v2, p0, Lcom/t4game/GSprite;->controlType:B

    if-eq v2, v3, :cond_2

    shr-int/lit8 v2, v0, 0x4

    shr-int/lit8 v3, v1, 0x4

    invoke-virtual {p0, v2, v3}, Lcom/t4game/GSprite;->hitTest(II)I

    move-result v2

    if-nez v2, :cond_1

    iput v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iput v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    shr-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GSprite;->setPos1(II)V

    goto :goto_0

    :cond_1
    iput-boolean v4, p0, Lcom/t4game/GSprite;->moved:Z

    iput v4, p0, Lcom/t4game/GSprite;->leftStep:I

    goto :goto_0

    :cond_2
    iput v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iput v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    shr-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GSprite;->setPos1(II)V

    goto :goto_0

    :cond_3
    iput v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iput v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    shr-int/lit8 v0, v0, 0x4

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapY:I

    shr-int/lit8 v1, v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/t4game/GSprite;->setPos1(II)V

    goto :goto_0
.end method

.method public onLevelUp(SSS)V
    .locals 6

    const/4 v2, 0x4

    const/4 v3, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput p1, v0, v3

    const/4 v1, 0x1

    aput p2, v0, v1

    const/4 v1, 0x2

    aput p3, v0, v1

    const/4 v1, 0x3

    aput v3, v0, v1

    aput v2, v0, v2

    const/4 v1, 0x5

    const/4 v2, -0x1

    aput v2, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/16 v1, 0x2328

    const/16 v2, 0x16

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/t4game/GSprite;->addSpecialEffect(IIIII)Lcom/t4game/GSEObject;

    return-void
.end method

.method public release()V
    .locals 6

    const/4 v5, -0x1

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-super {p0}, Lcom/t4game/GMapObject;->release()V

    iput-object v2, p0, Lcom/t4game/GSprite;->distancenext:Lcom/t4game/GSprite;

    iput-object v2, p0, Lcom/t4game/GSprite;->distancepre:Lcom/t4game/GSprite;

    invoke-virtual {p0}, Lcom/t4game/GSprite;->releaseImageDataList()V

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v1, :cond_0

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v3, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-object v3, v3, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iput-object v2, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/GSprite;->cleanSpecialEffect()V

    iput-byte v5, p0, Lcom/t4game/GSprite;->animDataIndex:B

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v1, :cond_1

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v3, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-object v3, v3, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iput-object v2, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    :cond_1
    iput-byte v5, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iput-byte v5, p0, Lcom/t4game/GSprite;->actionType:B

    iput-byte v4, p0, Lcom/t4game/GSprite;->actionId:B

    iput v4, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    iget-object v1, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iget-object v1, p0, Lcom/t4game/GSprite;->clipAnimStateMap:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->clear()V

    iput-boolean v4, p0, Lcom/t4game/GSprite;->moved:Z

    iput-byte v4, p0, Lcom/t4game/GSprite;->alpha:B

    iget-object v1, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->removeAllElements()V

    iput v4, p0, Lcom/t4game/GSprite;->leftStep:I

    iput-byte v4, p0, Lcom/t4game/GSprite;->canCaiJi:B

    iput v4, p0, Lcom/t4game/GSprite;->caiJiTime:I

    iput-byte v5, p0, Lcom/t4game/GSprite;->caiJiType:B

    iput-object v2, p0, Lcom/t4game/GSprite;->caiJiFunctionEffectData:Lcom/t4game/RoleSkillEffectData;

    move-object v0, v2

    check-cast v0, [[S

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    iput-object v2, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    iget-object v1, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    invoke-virtual {v1}, Lcom/t4game/GFabao;->release()V

    :cond_2
    iput-object v2, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iput-boolean v4, p0, Lcom/t4game/GSprite;->canDeathRelive:Z

    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    if-eqz v1, :cond_3

    sget-byte v1, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v3, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    iget-object v3, v3, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iput-object v2, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    :cond_3
    return-void
.end method

.method protected final releaseImageDataAt(I)V
    .locals 4

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x2

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v0

    aget-object v1, v1, p1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/t4game/GSprite;->clipAnimStateMap:Ljava/util/Hashtable;

    iget-object v3, v1, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v1, v1, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v2, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v0

    const/4 v2, 0x0

    aput-object v2, v1, p1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected final releaseImageDataList()V
    .locals 8

    const/4 v2, 0x0

    const/4 v7, 0x0

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v1, v1

    move v3, v7

    :goto_1
    const/4 v4, 0x2

    if-ge v3, v4, :cond_3

    move v4, v7

    :goto_2
    if-ge v4, v1, :cond_2

    iget-object v5, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v5, v5, v3

    aget-object v5, v5, v4

    if-eqz v5, :cond_1

    sget-byte v6, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v5, v5, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v6, v5}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move-object v0, v2

    check-cast v0, [[Lcom/t4game/GImageData;

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    iput-object v2, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    goto :goto_0
.end method

.method public removeBuf(S)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->bufH:Ljava/util/Hashtable;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public removeSpecialEffect(I)V
    .locals 5

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    const/4 v1, 0x0

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    iget v3, v1, Lcom/t4game/GSEObject;->playType:I

    if-ne v3, p1, :cond_2

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_1
    invoke-virtual {v1}, Lcom/t4game/GSEObject;->release()V

    invoke-static {v1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_0
    return-void

    :cond_1
    iput-object v2, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public removeSpecialEffect(Lcom/t4game/GSEObject;)V
    .locals 4

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    const/4 v1, 0x0

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_0
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    if-ne v1, p1, :cond_2

    if-nez v0, :cond_1

    iput-object v2, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    :goto_1
    invoke-virtual {v1}, Lcom/t4game/GSEObject;->release()V

    invoke-static {v1}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_0
    return-void

    :cond_1
    iput-object v2, v0, Lcom/t4game/GSEObject;->nextSE:Lcom/t4game/GSEObject;

    goto :goto_1

    :cond_2
    move-object v0, v1

    move-object v1, v2

    goto :goto_0
.end method

.method public renderImageClip(Ljavax/microedition/lcdui/Graphics;Lcom/t4game/GImageData;IIIIIIB)V
    .locals 9

    invoke-virtual {p2}, Lcom/t4game/GImageData;->isReady()Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-nez v1, :cond_0

    and-int/lit8 v1, p9, 0x2

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    move v6, v1

    :goto_1
    and-int/lit8 v1, p9, 0x1

    if-eqz v1, :cond_4

    const/4 v1, 0x1

    move v7, v1

    :goto_2
    iget-object v1, p2, Lcom/t4game/GImageData;->clipAnimIndex:[B

    aget-byte v1, v1, p4

    const/4 v2, -0x1

    if-eq v1, v2, :cond_2

    iget-object v2, p2, Lcom/t4game/GImageData;->clipAnimDatas:[[B

    if-nez v2, :cond_a

    :cond_2
    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    if-nez p3, :cond_9

    const/4 v1, 0x2

    const/4 v2, 0x6

    invoke-static {v1, v2}, Lcom/t4game/Defaults;->testOpenSystemSet(BB)Z

    move-result v1

    if-nez v1, :cond_7

    move-object v0, p0

    check-cast v0, Lcom/t4game/GUser;

    move-object p3, v0

    iget-boolean v1, p3, Lcom/t4game/GUser;->isMainHero:Z

    if-eqz v1, :cond_5

    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    move v6, v1

    goto :goto_1

    :cond_4
    const/4 v1, 0x0

    move v7, v1

    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    if-eqz v1, :cond_6

    iget-byte v1, p0, Lcom/t4game/GSprite;->outlineType:B

    if-nez v1, :cond_6

    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    invoke-virtual {v1}, Lcom/t4game/GImageData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_0

    :cond_6
    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto :goto_0

    :cond_7
    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    if-eqz v1, :cond_8

    iget-byte v1, p0, Lcom/t4game/GSprite;->outlineType:B

    if-nez v1, :cond_8

    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    invoke-virtual {v1}, Lcom/t4game/GImageData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto/16 :goto_0

    :cond_8
    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto/16 :goto_0

    :cond_9
    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p2

    move-object v2, p1

    move v3, p4

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto/16 :goto_0

    :cond_a
    const/4 v2, 0x0

    iget-object v3, p2, Lcom/t4game/GImageData;->clipAnimDatas:[[B

    aget-object v4, v3, v1

    iget-object v3, p0, Lcom/t4game/GSprite;->clipAnimStateMap:Ljava/util/Hashtable;

    iget-object v5, p2, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [B

    check-cast p3, [B

    if-eqz p3, :cond_f

    aget-byte v2, p3, v1

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x4

    aget-byte v3, v4, v3

    if-lt v2, v3, :cond_b

    const/4 v2, 0x2

    aget-byte v2, v4, v2

    const/4 v3, 0x3

    aget-byte v3, v4, v3

    invoke-static {v2, v3}, Lcom/t4game/GUtil;->random(II)I

    move-result v2

    neg-int v2, v2

    :cond_b
    int-to-byte v3, v2

    aput-byte v3, p3, v1

    move v1, v2

    :goto_3
    if-gez v1, :cond_c

    const/4 v1, 0x0

    :cond_c
    mul-int/lit8 v1, v1, 0x2

    add-int/lit8 v1, v1, 0x5

    aget-byte v3, v4, v1

    add-int/lit8 v1, v1, 0x1

    aget-byte v1, v4, v1

    and-int/lit16 v2, v1, 0x80

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    :goto_4
    if-nez v2, :cond_0

    and-int/lit8 v2, v1, 0x2

    if-eqz v2, :cond_d

    if-nez v6, :cond_11

    const/4 v2, 0x1

    move v6, v2

    :cond_d
    :goto_5
    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_e

    if-nez v7, :cond_12

    const/4 v1, 0x1

    move v7, v1

    :cond_e
    :goto_6
    iget-byte v8, p0, Lcom/t4game/GSprite;->alpha:B

    move-object v1, p2

    move-object v2, p1

    move v4, p5

    move v5, p6

    invoke-virtual/range {v1 .. v8}, Lcom/t4game/GImageData;->drawClip(Ljavax/microedition/lcdui/Graphics;IIIZZB)V

    goto/16 :goto_0

    :cond_f
    iget-object v1, p2, Lcom/t4game/GImageData;->clipAnimDatas:[[B

    array-length v1, v1

    new-array v1, v1, [B

    iget-object v3, p0, Lcom/t4game/GSprite;->clipAnimStateMap:Ljava/util/Hashtable;

    iget-object v5, p2, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-virtual {v3, v5, v1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v2

    goto :goto_3

    :cond_10
    const/4 v2, 0x0

    goto :goto_4

    :cond_11
    const/4 v2, 0x0

    move v6, v2

    goto :goto_5

    :cond_12
    const/4 v1, 0x0

    move v7, v1

    goto :goto_6
.end method

.method public resetHpMp(II)V
    .locals 0

    iput p1, p0, Lcom/t4game/GSprite;->maxHp:I

    iput p1, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    iput p2, p0, Lcom/t4game/GSprite;->maxMp:I

    iput p2, p0, Lcom/t4game/GSprite;->attr_baseMP:I

    return-void
.end method

.method public final setActType(B)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v2, v0, Lcom/t4game/GameWorld;->stillMove:Z

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    if-eq v0, p1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    :cond_3
    iput-byte p1, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    if-nez v0, :cond_4

    iput v2, p0, Lcom/t4game/GSprite;->nowMoveTick:I

    iput v2, p0, Lcom/t4game/GSprite;->FP_nowSpeedY:I

    iput v2, p0, Lcom/t4game/GSprite;->FP_nowSpeedX:I

    iput v2, p0, Lcom/t4game/GSprite;->leftStep:I

    goto :goto_0

    :cond_4
    iput-byte v2, p0, Lcom/t4game/GSprite;->freeStandTick:B

    goto :goto_0
.end method

.method public final setAction(BB)V
    .locals 5

    const/4 v4, 0x0

    const/4 v2, -0x1

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GSprite;->actionId:B

    if-ne v0, p1, :cond_3

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    if-eq v0, p2, :cond_0

    :cond_3
    if-eq p1, v2, :cond_0

    iput-byte v2, p0, Lcom/t4game/GSprite;->nowFrame:B

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    if-eq v0, p2, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/t4game/GSprite;->rightHand:Z

    iput-byte p2, p0, Lcom/t4game/GSprite;->dir:B

    :cond_4
    iput-byte p1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget v1, p0, Lcom/t4game/GSprite;->actionState:I

    iget-byte v2, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v3, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->animDataIndex:B

    :cond_5
    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v4, v1, v2}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    :cond_6
    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v4}, Lcom/t4game/GFabao;->setAction(BBZ)V

    goto :goto_0
.end method

.method public setBaoJi(ISSI)V
    .locals 4

    const/4 v3, 0x2

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput p1, v0, v2

    const/4 v1, 0x1

    aput p2, v0, v1

    aput p3, v0, v3

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput p4, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setBooldUp(ISSBBI)V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput p1, v0, v1

    aput p2, v0, v3

    aput p3, v0, v4

    aput v1, v0, v5

    const/4 v1, 0x5

    aput p6, v0, v1

    if-nez p5, :cond_1

    aput p4, v0, v2

    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void

    :cond_1
    if-ne p5, v3, :cond_2

    const/4 v1, 0x5

    aput v1, v0, v2

    goto :goto_0

    :cond_2
    if-ne p5, v4, :cond_3

    const/4 v1, 0x6

    aput v1, v0, v2

    goto :goto_0

    :cond_3
    if-ne p5, v5, :cond_0

    const/16 v1, 0xb

    aput v1, v0, v2

    goto :goto_0
.end method

.method public setCrazy()V
    .locals 8

    const/16 v7, 0xa

    const/4 v6, 0x6

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x3

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/4 v1, 0x0

    iget-short v2, p0, Lcom/t4game/GSprite;->mapX:S

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapY:S

    aput-short v1, v0, v4

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    sub-int/2addr v1, v7

    int-to-short v1, v1

    aput-short v1, v0, v5

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapY:S

    aput-short v1, v0, v3

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/4 v1, 0x4

    iget-short v2, p0, Lcom/t4game/GSprite;->mapX:S

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/4 v1, 0x5

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    aput-short v1, v0, v6

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/4 v1, 0x7

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    add-int/lit8 v2, v2, 0xa

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/16 v1, 0x8

    iget-short v2, p0, Lcom/t4game/GSprite;->mapX:S

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    const/16 v1, 0x9

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    sub-int/2addr v2, v7

    int-to-short v2, v2

    aput-short v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    aget-short v0, v0, v5

    iget-object v1, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    aget-short v1, v1, v3

    invoke-virtual {p0, v0, v1, v3}, Lcom/t4game/GSprite;->setMoveDestPos(IIB)V

    iput v4, p0, Lcom/t4game/GSprite;->crazyMovePosIndex:I

    iput-byte v6, p0, Lcom/t4game/GSprite;->controlType:B

    return-void
.end method

.method public setDestPos(IIZ)V
    .locals 7

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-eqz p3, :cond_5

    invoke-static {p1}, Lcom/t4game/GMap;->worldX2SceneX(I)I

    move-result v0

    invoke-static {p2}, Lcom/t4game/GMap;->worldY2SceneY(I)I

    move-result v1

    move v6, v1

    move v1, v0

    move v0, v6

    :goto_0
    iget-short v2, p0, Lcom/t4game/GSprite;->mapX:S

    if-ne v2, v1, :cond_0

    iget-short v2, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne v2, v0, :cond_0

    invoke-virtual {p0, v3}, Lcom/t4game/GSprite;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v3, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    iput v3, p0, Lcom/t4game/GSprite;->leftStep:I

    :goto_1
    return-void

    :cond_0
    shl-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/t4game/GSprite;->FP_destMapX:I

    shl-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/GSprite;->FP_destMapY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_destMapX:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSprite;->FP_destMapY:I

    iget v2, p0, Lcom/t4game/GSprite;->FP_mapY:I

    sub-int/2addr v1, v2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GSprite;->FP_standardDistance2:I

    if-lt v2, v3, :cond_4

    iget-object v2, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-lez v2, :cond_3

    sget-byte v2, Lcom/t4game/GameScreen;->averageFPS:B

    iget-object v3, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    if-gtz v2, :cond_2

    iput v5, p0, Lcom/t4game/GSprite;->totalStep:I

    :cond_1
    :goto_2
    iget v2, p0, Lcom/t4game/GSprite;->totalStep:I

    iput v2, p0, Lcom/t4game/GSprite;->leftStep:I

    invoke-static {v0, v1}, Lcom/t4game/Util;->getFaceDirection(II)B

    move-result v0

    invoke-virtual {p0, v5}, Lcom/t4game/GSprite;->setActType(B)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    goto :goto_1

    :cond_2
    iput v2, p0, Lcom/t4game/GSprite;->totalStep:I

    goto :goto_2

    :cond_3
    sget-byte v2, Lcom/t4game/GameScreen;->averageFPS:B

    iput v2, p0, Lcom/t4game/GSprite;->totalStep:I

    goto :goto_2

    :cond_4
    sget v3, Lcom/t4game/GUtil;->MSPF:I

    mul-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GSprite;->FP_speed2:I

    sget v4, Lcom/t4game/GameScreen;->averageFrameTimeTaken:I

    mul-int/2addr v3, v4

    div-int/2addr v2, v3

    iput v2, p0, Lcom/t4game/GSprite;->totalStep:I

    iget v2, p0, Lcom/t4game/GSprite;->totalStep:I

    invoke-static {v2}, Lcom/t4game/Util;->quickSqrt(I)I

    move-result v2

    iput v2, p0, Lcom/t4game/GSprite;->totalStep:I

    iget v2, p0, Lcom/t4game/GSprite;->totalStep:I

    if-nez v2, :cond_1

    iput v5, p0, Lcom/t4game/GSprite;->totalStep:I

    goto :goto_2

    :cond_5
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method public setDiKang(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xd

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setExpUp(ISS)V
    .locals 3

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    const/4 v1, 0x5

    invoke-static {v0, v1}, Lcom/t4game/Defaults;->testOpenSystemSet(BB)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/t4game/ChatMessage;

    invoke-direct {v0}, Lcom/t4game/ChatMessage;-><init>()V

    const/4 v1, 0x7

    iput-byte v1, v0, Lcom/t4game/ChatMessage;->type:B

    const-string v1, ""

    iput-object v1, v0, Lcom/t4game/ChatMessage;->name:Ljava/lang/String;

    invoke-virtual {v0, v2, v2}, Lcom/t4game/ChatMessage;->initHightColorGoods(II)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u4f60\u83b7\u5f97\u4e86"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\u70b9\u7ecf\u9a8c"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/t4game/ChatMessage;->initMessage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, v0}, Lcom/t4game/GameWorld;->putCrossChatInto(Lcom/t4game/ChatMessage;)V

    :cond_0
    return-void
.end method

.method public setFabao(BS)V
    .locals 4

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    invoke-virtual {v0}, Lcom/t4game/GFabao;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    :cond_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_1

    :goto_0
    return-void

    :cond_1
    new-instance v0, Lcom/t4game/GFabao;

    invoke-direct {v0}, Lcom/t4game/GFabao;-><init>()V

    iput-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iput-object p0, v0, Lcom/t4game/GFabao;->sprite:Lcom/t4game/GSprite;

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iput-byte p1, v0, Lcom/t4game/GFabao;->quality:B

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    invoke-virtual {v0, p2}, Lcom/t4game/GFabao;->setObjectDataId(S)V

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    invoke-virtual {v0, v1, v3}, Lcom/t4game/GFabao;->setActType(BZ)V

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GFabao;->setAction(BBZ)V

    goto :goto_0
.end method

.method public setGeDang(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x8

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setHair(ILjava/lang/String;)V
    .locals 3

    iput-object p2, p0, Lcom/t4game/GSprite;->HairName:Ljava/lang/String;

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-object v0, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    iget-object v0, p0, Lcom/t4game/GSprite;->hair:Lcom/t4game/GImageData;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/t4game/GImageData;->isDelayRelease:Z

    goto :goto_0
.end method

.method public setHorse(BI)V
    .locals 5

    const/4 v2, -0x1

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->getIntId()I

    move-result v0

    if-ne v0, p2, :cond_0

    :goto_0
    return-void

    :cond_0
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iput-byte v2, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    iput v4, p0, Lcom/t4game/GSprite;->actionState:I

    :cond_1
    if-ne p2, v2, :cond_2

    iput v4, p0, Lcom/t4game/GSprite;->actionState:I

    invoke-virtual {p0}, Lcom/t4game/GSprite;->updateAnimData()V

    invoke-direct {p0}, Lcom/t4game/GSprite;->updateBounds()V

    goto :goto_0

    :cond_2
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    iput-boolean v3, v0, Lcom/t4game/GObjectData;->isDelayRelease:Z

    iput p1, p0, Lcom/t4game/GSprite;->horseType:I

    iget-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/t4game/GSprite;->onHorseDataLoaded()V

    :cond_3
    :goto_1
    invoke-virtual {p0}, Lcom/t4game/GSprite;->updateAnimData()V

    goto :goto_0

    :cond_4
    iput v3, p0, Lcom/t4game/GSprite;->actionState:I

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "1104"

    invoke-static {v0, v1, v3}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v4, v1, v2}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    iget v0, p0, Lcom/t4game/GSprite;->horseType:I

    if-ne v0, v3, :cond_3

    const/4 v0, 0x2

    iput v0, p0, Lcom/t4game/GSprite;->actionState:I

    goto :goto_1
.end method

.method public setHuoMian(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xc

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setImageData(SI)V
    .locals 1

    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v0, v0

    if-ge p2, v0, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/t4game/GSprite;->_setImageData(SI)V

    goto :goto_0
.end method

.method public setImageDataList([S)V
    .locals 3

    array-length v0, p1

    invoke-virtual {p0, v0}, Lcom/t4game/GSprite;->initImageDataList(I)V

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-short v2, p1, v1

    invoke-virtual {p0, v2, v1}, Lcom/t4game/GSprite;->setImageData(SI)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setMaxHp(I)V
    .locals 1

    iget v0, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/t4game/GSprite;->maxHp:I

    iput p1, p0, Lcom/t4game/GSprite;->attr_baseHP:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/t4game/GSprite;->maxHp:I

    goto :goto_0
.end method

.method public setMaxMp(I)V
    .locals 1

    iget v0, p0, Lcom/t4game/GSprite;->attr_baseMP:I

    if-le v0, p1, :cond_0

    iput p1, p0, Lcom/t4game/GSprite;->maxMp:I

    iput p1, p0, Lcom/t4game/GSprite;->attr_baseMP:I

    :goto_0
    return-void

    :cond_0
    iput p1, p0, Lcom/t4game/GSprite;->maxMp:I

    goto :goto_0
.end method

.method public setMianYi(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xe

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setMiss(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/4 v2, 0x7

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setMoveDestPos(IIB)V
    .locals 4

    const/4 v1, 0x0

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    if-ne v0, p1, :cond_0

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne v0, p2, :cond_0

    invoke-virtual {p0, v1}, Lcom/t4game/GSprite;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v1, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    iput v1, p0, Lcom/t4game/GSprite;->leftStep:I

    :goto_0
    return-void

    :cond_0
    shl-int/lit8 v0, p1, 0x4

    iput v0, p0, Lcom/t4game/GSprite;->FP_destMapX:I

    shl-int/lit8 v0, p2, 0x4

    iput v0, p0, Lcom/t4game/GSprite;->FP_destMapY:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_destMapX:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_mapX:I

    sub-int/2addr v0, v1

    iget v1, p0, Lcom/t4game/GSprite;->FP_destMapY:I

    iget v2, p0, Lcom/t4game/GSprite;->FP_mapY:I

    sub-int/2addr v1, v2

    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    iget v3, p0, Lcom/t4game/GSprite;->FP_speed2:I

    div-int/2addr v2, v3

    invoke-static {v2}, Lcom/t4game/Util;->quickSqrt(I)I

    move-result v2

    if-nez v2, :cond_1

    int-to-short v3, p1

    iput-short v3, p0, Lcom/t4game/GSprite;->mapX:S

    int-to-short v3, p2

    iput-short v3, p0, Lcom/t4game/GSprite;->mapY:S

    :cond_1
    iput v2, p0, Lcom/t4game/GSprite;->leftStep:I

    invoke-static {v0, v1}, Lcom/t4game/Util;->getFaceDirection(II)B

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/t4game/GSprite;->setActType(B)V

    invoke-virtual {p0, p3, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    goto :goto_0
.end method

.method public setObjectDataId(S)V
    .locals 3

    const/4 v2, 0x1

    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-static {}, Lcom/t4game/Util;->getTime()J

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->getIntId()I

    move-result v0

    if-eq v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/t4game/GSprite;->releaseImageDataList()V

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-object v1, v1, Lcom/t4game/GObjectData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    :cond_2
    iput-short p1, p0, Lcom/t4game/GSprite;->objectDataId:S

    sget-byte v0, Lcom/t4game/GSprite;->INIT_STATE_INITING0:B

    iput-byte v0, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iput-boolean v2, v0, Lcom/t4game/GObjectData;->isDelayRelease:Z

    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    sget v1, Lcom/t4game/GameWorld;->userIntId:I

    if-ne v0, v1, :cond_0

    sput-short p1, Lcom/t4game/GSprite;->heroObjDataId:S

    goto :goto_0
.end method

.method public setOutlineFlag(B)V
    .locals 1

    and-int/lit8 v0, p1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/t4game/GSprite;->supportChangeImage:Z

    shr-int/lit8 v0, p1, 0x1

    and-int/lit8 v0, v0, 0x1

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->outlineType:B

    return-void

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public setPos(IIZ)V
    .locals 3

    if-eqz p3, :cond_0

    invoke-static {p1}, Lcom/t4game/GMap;->worldX2SceneX(I)I

    move-result v0

    invoke-static {p2}, Lcom/t4game/GMap;->worldY2SceneY(I)I

    move-result v1

    move v2, v1

    move v1, v0

    move v0, v2

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/t4game/GSprite;->setPos1(II)V

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    shl-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    shl-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/t4game/GSprite;->FP_mapY:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/t4game/GSprite;->leftStep:I

    return-void

    :cond_0
    move v0, p2

    move v1, p1

    goto :goto_0
.end method

.method protected setPos1(II)V
    .locals 2

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/t4game/GSprite;->visible:Z

    if-eqz v0, :cond_1

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    if-lt p2, v0, :cond_0

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne p2, v0, :cond_2

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    if-gt p1, v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p0}, Lcom/t4game/GScene;->movePre(Lcom/t4game/GMapObject;)Z

    :cond_1
    :goto_0
    int-to-short v0, p1

    iput-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    int-to-short v0, p2

    iput-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GSprite;->mapX:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneX2GridX(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->gridX:S

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-short v1, p0, Lcom/t4game/GSprite;->mapY:S

    invoke-virtual {v0, v1}, Lcom/t4game/GScene;->sceneY2GridY(I)I

    move-result v0

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->gridY:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget v1, p0, Lcom/t4game/GSprite;->bx1:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundX1:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    iget v1, p0, Lcom/t4game/GSprite;->bx2:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundX2:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget v1, p0, Lcom/t4game/GSprite;->by1:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundY1:S

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    iget v1, p0, Lcom/t4game/GSprite;->by2:I

    add-int/2addr v0, v1

    int-to-short v0, v0

    iput-short v0, p0, Lcom/t4game/GSprite;->boundY2:S

    return-void

    :cond_2
    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v0, p0}, Lcom/t4game/GScene;->moveNext(Lcom/t4game/GMapObject;)Z

    goto :goto_0
.end method

.method public setShanBi(SSI)V
    .locals 4

    const/4 v3, 0x3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    aput v2, v0, v3

    const/4 v1, 0x4

    aput v3, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setSpecialState(I)V
    .locals 8

    const/4 v7, 0x5

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    const/16 v0, 0x1e

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    and-int/lit8 v1, p1, 0x1

    if-ne v1, v3, :cond_7

    move v1, v3

    :goto_0
    aput-boolean v1, v0, v4

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    shr-int/lit8 v1, p1, 0x1

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_8

    move v1, v3

    :goto_1
    aput-boolean v1, v0, v3

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    shr-int/lit8 v1, p1, 0x2

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_9

    move v1, v3

    :goto_2
    aput-boolean v1, v0, v5

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v1, 0x3

    shr-int/lit8 v2, p1, 0x3

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_a

    move v2, v3

    :goto_3
    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    shr-int/lit8 v1, p1, 0x4

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_b

    move v1, v3

    :goto_4
    aput-boolean v1, v0, v6

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    shr-int/lit8 v1, p1, 0x5

    and-int/lit8 v1, v1, 0x1

    if-ne v1, v3, :cond_c

    move v1, v3

    :goto_5
    aput-boolean v1, v0, v7

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v1, 0x6

    shr-int/lit8 v2, p1, 0x6

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_d

    move v2, v3

    :goto_6
    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/16 v1, 0x8

    shr-int/lit8 v2, p1, 0x8

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_e

    move v2, v3

    :goto_7
    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/16 v1, 0x9

    shr-int/lit8 v2, p1, 0x9

    and-int/lit8 v2, v2, 0x1

    if-ne v2, v3, :cond_f

    move v2, v3

    :goto_8
    aput-boolean v2, v0, v1

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v3

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v4}, Lcom/t4game/GameWorld;->stopLeadSkill(B)V

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v3}, Lcom/t4game/GameWorld;->stopLeadSkill(B)V

    :cond_1
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v4

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/t4game/GSprite;->clearCrazy()V

    invoke-virtual {p0, v4}, Lcom/t4game/GSprite;->setActType(B)V

    iget-byte v0, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v4, v0}, Lcom/t4game/GSprite;->setAction(BB)V

    :cond_2
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v6

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/t4game/GSprite;->setCrazy()V

    :goto_9
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v7

    if-eqz v0, :cond_3

    iput-byte v3, p0, Lcom/t4game/GSprite;->controlType:B

    :cond_3
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v1, 0x6

    aget-boolean v0, v0, v1

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v0, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget v1, p0, Lcom/t4game/GSprite;->intId:I

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v0, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    iput v1, v0, Lcom/t4game/GScene;->choicedSpriteId:I

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget-byte v1, v1, Lcom/t4game/GUser;->type:B

    iput-byte v1, v0, Lcom/t4game/GScene;->choicedSpriteType:B

    :cond_4
    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v3

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    aget-boolean v0, v0, v5

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v0, v0, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v4, v0, Lcom/t4game/GameWorld;->autoAttack:Z

    :cond_6
    return-void

    :cond_7
    move v1, v4

    goto/16 :goto_0

    :cond_8
    move v1, v4

    goto/16 :goto_1

    :cond_9
    move v1, v4

    goto/16 :goto_2

    :cond_a
    move v2, v4

    goto/16 :goto_3

    :cond_b
    move v1, v4

    goto/16 :goto_4

    :cond_c
    move v1, v4

    goto/16 :goto_5

    :cond_d
    move v2, v4

    goto/16 :goto_6

    :cond_e
    move v2, v4

    goto/16 :goto_7

    :cond_f
    move v2, v4

    goto/16 :goto_8

    :cond_10
    invoke-virtual {p0}, Lcom/t4game/GSprite;->clearCrazy()V

    goto :goto_9
.end method

.method public setSpeed(IZZ)V
    .locals 2

    iput p1, p0, Lcom/t4game/GSprite;->speed:I

    if-nez p3, :cond_0

    iput p1, p0, Lcom/t4game/GSprite;->nSpeed:I

    :cond_0
    if-eqz p2, :cond_1

    iget v0, p0, Lcom/t4game/GSprite;->speed:I

    shl-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Lcom/t4game/GMap;->worldX2SceneX(I)I

    move-result v0

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GSprite;->FP_speed:I

    :goto_0
    iget v0, p0, Lcom/t4game/GSprite;->FP_speed:I

    iget v1, p0, Lcom/t4game/GSprite;->FP_speed:I

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/t4game/GSprite;->FP_speed2:I

    iget v0, p0, Lcom/t4game/GSprite;->FP_speed2:I

    mul-int/lit8 v0, v0, 0x8

    mul-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/t4game/GSprite;->FP_standardDistance2:I

    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/GSprite;->speed:I

    shl-int/lit8 v0, v0, 0x4

    div-int/lit8 v0, v0, 0xa

    iput v0, p0, Lcom/t4game/GSprite;->FP_speed:I

    goto :goto_0
.end method

.method public setSpriteState(B)V
    .locals 0

    iput-byte p1, p0, Lcom/t4game/GSprite;->spriteState:B

    return-void
.end method

.method public final setState(B)V
    .locals 1

    iget-byte v0, p0, Lcom/t4game/GSprite;->state:B

    if-ne v0, p1, :cond_0

    :goto_0
    return-void

    :cond_0
    iput-byte p1, p0, Lcom/t4game/GSprite;->state:B

    goto :goto_0
.end method

.method public setXiShou(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0xa

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public setZhaoJia(SSI)V
    .locals 3

    const/4 v2, 0x0

    const/4 v0, 0x6

    new-array v0, v0, [I

    aput v2, v0, v2

    const/4 v1, 0x1

    aput p1, v0, v1

    const/4 v1, 0x2

    aput p2, v0, v1

    const/4 v1, 0x3

    aput v2, v0, v1

    const/4 v1, 0x4

    const/16 v2, 0x9

    aput v2, v0, v1

    const/4 v1, 0x5

    aput p3, v0, v1

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    return-void
.end method

.method public startCrazy()V
    .locals 3

    iget v0, p0, Lcom/t4game/GSprite;->crazyMovePosIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/t4game/GSprite;->crazyMovePosIndex:I

    rem-int/lit8 v0, v0, 0x5

    invoke-static {v0}, Lcom/t4game/Util;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    mul-int/lit8 v2, v0, 0x2

    aget-short v1, v1, v2

    iget-object v2, p0, Lcom/t4game/GSprite;->crazyMovePos:[S

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    aget-short v0, v2, v0

    const/4 v2, 0x3

    invoke-virtual {p0, v1, v0, v2}, Lcom/t4game/GSprite;->setMoveDestPos(IIB)V

    const/4 v0, 0x6

    iput-byte v0, p0, Lcom/t4game/GSprite;->controlType:B

    return-void
.end method

.method public testCanMovep2p(II)Z
    .locals 9

    const/4 v7, 0x1

    iget-short v0, p0, Lcom/t4game/GSprite;->mapX:S

    if-ne v0, p1, :cond_0

    iget-short v0, p0, Lcom/t4game/GSprite;->mapY:S

    if-ne v0, p2, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    shl-int/lit8 v0, p1, 0x4

    shl-int/lit8 v1, p2, 0x4

    iget v2, p0, Lcom/t4game/GSprite;->FP_mapX:I

    iget v3, p0, Lcom/t4game/GSprite;->FP_mapY:I

    sub-int v4, v0, v2

    sub-int v5, v1, v3

    mul-int/2addr v4, v4

    mul-int/2addr v5, v5

    add-int/2addr v4, v5

    iget v5, p0, Lcom/t4game/GSprite;->FP_speed2:I

    div-int/2addr v4, v5

    invoke-static {v4}, Lcom/t4game/Util;->quickSqrt(I)I

    move-result v4

    if-nez v4, :cond_3

    move v0, v7

    goto :goto_0

    :cond_1
    :goto_1
    if-lez v2, :cond_2

    sub-int v5, v0, v4

    sub-int v6, v1, v3

    div-int/2addr v5, v2

    div-int/2addr v6, v2

    add-int/2addr v4, v5

    add-int/2addr v3, v6

    add-int/lit8 v2, v2, -0x1

    shr-int/lit8 v5, v4, 0x4

    shr-int/lit8 v6, v3, 0x4

    invoke-virtual {p0, v5, v6}, Lcom/t4game/GSprite;->hitTest(II)I

    move-result v5

    if-eqz v5, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move v0, v7

    goto :goto_0

    :cond_3
    move v8, v4

    move v4, v2

    move v2, v8

    goto :goto_1
.end method

.method public testGSE()Z
    .locals 1

    iget-object v0, p0, Lcom/t4game/GSprite;->specialEffectHead:Lcom/t4game/GSEObject;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GSprite;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/t4game/GSprite;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected updataDestPos()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    iget-byte v0, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Lcom/t4game/GSprite;->leftStep:I

    if-eqz v0, :cond_2

    iput-byte v3, p0, Lcom/t4game/GSprite;->actionType:B

    :cond_2
    iget-byte v0, p0, Lcom/t4game/GSprite;->type:B

    const/4 v1, 0x3

    if-ne v0, v1, :cond_4

    iget v0, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v1, v1, Lcom/t4game/GUser;->intId:I

    if-ne v0, v1, :cond_4

    iget-byte v0, p0, Lcom/t4game/GSprite;->controlType:B

    if-eq v0, v3, :cond_3

    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->removeAllElements()V

    iput v2, p0, Lcom/t4game/GSprite;->leftStep:I

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/GSprite;->leftStep:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iget-object v1, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/t4game/GSprite;->setDestPos(IIZ)V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    iget v0, p0, Lcom/t4game/GSprite;->leftStep:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iget-object v1, p0, Lcom/t4game/GSprite;->DestPos:Ljava/util/Vector;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->removeElementAt(I)V

    aget v1, v0, v2

    aget v0, v0, v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/t4game/GSprite;->setDestPos(IIZ)V

    goto :goto_0
.end method

.method public update()B
    .locals 11

    const/4 v2, 0x0

    const/4 v10, 0x5

    const/4 v9, -0x1

    const/4 v8, 0x1

    const/4 v7, 0x0

    invoke-virtual {p0}, Lcom/t4game/GSprite;->updataDestPos()V

    iget v1, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    if-lez v1, :cond_0

    iget v1, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    sub-int/2addr v1, v8

    iput v1, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    :cond_0
    iget-object v1, p0, Lcom/t4game/GSprite;->xianZhiFlag:[Z

    const/4 v3, 0x4

    aget-boolean v1, v1, v3

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    if-nez v1, :cond_1

    invoke-virtual {p0}, Lcom/t4game/GSprite;->startCrazy()V

    iput v9, p0, Lcom/t4game/GSprite;->crazyStopTick:I

    :cond_1
    iget v1, p0, Lcom/t4game/GSprite;->renderFrame:I

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->renderFrame:I

    if-ne v1, v3, :cond_2

    move v1, v7

    :goto_0
    return v1

    :cond_2
    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    sget v1, Lcom/t4game/GameWorld;->tickCounter:I

    rem-int/lit8 v1, v1, 0x4

    const/4 v3, 0x2

    if-ge v1, v3, :cond_3

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    if-lez v1, :cond_3

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    iget-object v3, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v3, v7}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/t4game/GSprite;->bloodStor:Ljava/util/Vector;

    invoke-virtual {v1, v7}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_3
    invoke-super {p0}, Lcom/t4game/GMapObject;->update()B

    iget-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v3, Lcom/t4game/GSprite;->INIT_STATE_INITING0:B

    if-ne v1, v3, :cond_4

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v1}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/t4game/GSprite;->updateBounds()V

    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget v3, p0, Lcom/t4game/GSprite;->actionState:I

    iget-byte v4, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v5, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v1, v3, v4, v5}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/GSprite;->animDataIndex:B

    sget-byte v1, Lcom/t4game/GSprite;->INIT_STATE_INITING1:B

    iput-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    :cond_4
    iget-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v3, Lcom/t4game/GSprite;->INIT_STATE_INITING0:B

    if-ne v1, v3, :cond_5

    move v1, v7

    goto :goto_0

    :cond_5
    iget-short v1, p0, Lcom/t4game/GSprite;->boundX2:S

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->win_x:I

    if-lt v1, v3, :cond_6

    iget-short v1, p0, Lcom/t4game/GSprite;->boundX1:S

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->win_x2:I

    if-ge v1, v3, :cond_6

    iget-short v1, p0, Lcom/t4game/GSprite;->boundY2:S

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->win_y:I

    if-lt v1, v3, :cond_6

    iget-short v1, p0, Lcom/t4game/GSprite;->boundY1:S

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v3, v3, Lcom/t4game/GScene;->win_y2:I

    if-lt v1, v3, :cond_a

    :cond_6
    iget-boolean v1, p0, Lcom/t4game/GSprite;->visible:Z

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v1, p0}, Lcom/t4game/GScene;->removeFromView(Lcom/t4game/GMapObject;)V

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v1, v1

    move v3, v7

    :goto_1
    if-ge v3, v1, :cond_8

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    aget-short v4, v4, v3

    if-ne v4, v9, :cond_7

    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v3}, Lcom/t4game/GSprite;->releaseImageDataAt(I)V

    goto :goto_2

    :cond_8
    invoke-virtual {p0}, Lcom/t4game/GSprite;->cleanSpecialEffect()V

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v7, v1}, Lcom/t4game/GSprite;->setAction(BB)V

    :cond_9
    iget-boolean v1, p0, Lcom/t4game/GSprite;->visible:Z

    if-nez v1, :cond_d

    move v1, v7

    goto/16 :goto_0

    :cond_a
    iget-boolean v1, p0, Lcom/t4game/GSprite;->visible:Z

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    invoke-virtual {v1, p0, v8}, Lcom/t4game/GScene;->addToView(Lcom/t4game/GMapObject;Z)V

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v3, v1

    move v4, v7

    :goto_3
    if-ge v4, v3, :cond_9

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    aget-short v1, v1, v4

    if-ne v1, v9, :cond_c

    :cond_b
    :goto_4
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_3

    :cond_c
    iget-object v5, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v5, v5, v7

    aget-object v5, v5, v4

    if-nez v5, :cond_b

    iget-object v5, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v5, v5, v7

    sget-byte v6, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1, v8}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v1

    check-cast v1, Lcom/t4game/GImageData;

    aput-object v1, v5, v4

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v1, v1, v7

    aget-object v1, v1, v4

    iput-boolean v8, v1, Lcom/t4game/GImageData;->isDelayRelease:Z

    goto :goto_4

    :cond_d
    iget-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v3, Lcom/t4game/GSprite;->INIT_STATE_INITING1:B

    if-ne v1, v3, :cond_12

    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v1, v1

    move v3, v7

    :goto_5
    if-ge v3, v1, :cond_24

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    aget-short v4, v4, v3

    if-eq v4, v9, :cond_11

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v7

    aget-object v4, v4, v3

    if-eqz v4, :cond_e

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v7

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/t4game/GImageData;->isReady()Z

    move-result v4

    if-nez v4, :cond_11

    :cond_e
    move v1, v7

    :goto_6
    if-eqz v1, :cond_f

    sget-byte v1, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    iput-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    :cond_f
    iget-object v1, p0, Lcom/t4game/GSprite;->loadingHorseObjectData:Lcom/t4game/GObjectData;

    if-eqz v1, :cond_10

    invoke-direct {p0}, Lcom/t4game/GSprite;->onHorseDataLoading()V

    :cond_10
    iget-byte v1, p0, Lcom/t4game/GSprite;->initState:B

    sget-byte v3, Lcom/t4game/GSprite;->INIT_STATE_INITED:B

    if-eq v1, v3, :cond_15

    move v1, v7

    goto/16 :goto_0

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    :cond_12
    iget-object v1, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    array-length v1, v1

    move v3, v7

    :goto_7
    if-ge v3, v1, :cond_f

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataIdList:[S

    aget-short v4, v4, v3

    if-eq v4, v9, :cond_14

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v8

    aget-object v4, v4, v3

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v8

    aget-object v4, v4, v3

    invoke-virtual {v4}, Lcom/t4game/GImageData;->isReady()Z

    move-result v4

    if-eqz v4, :cond_14

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v7

    aget-object v4, v4, v3

    if-eqz v4, :cond_13

    sget-byte v4, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    iget-object v5, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v5, v5, v7

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/t4game/GImageData;->id:Ljava/lang/String;

    invoke-static {v4, v5}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    :cond_13
    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v7

    iget-object v5, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v5, v5, v8

    aget-object v5, v5, v3

    aput-object v5, v4, v3

    iget-object v4, p0, Lcom/t4game/GSprite;->imageDataList:[[Lcom/t4game/GImageData;

    aget-object v4, v4, v8

    aput-object v2, v4, v3

    :cond_14
    add-int/lit8 v3, v3, 0x1

    goto :goto_7

    :cond_15
    iget-object v1, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget-byte v3, p0, Lcom/t4game/GSprite;->animDataIndex:B

    invoke-virtual {v1, v3}, Lcom/t4game/GObjectData;->getAnimFrameNum(I)B

    move-result v1

    iget-object v3, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v3}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-byte v4, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    invoke-virtual {v3, v4}, Lcom/t4game/GObjectData;->getAnimFrameNum(I)B

    move-result v3

    if-ge v1, v3, :cond_23

    :goto_8
    iget-boolean v1, p0, Lcom/t4game/GSprite;->visibleReady:Z

    if-eqz v1, :cond_19

    iget-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    if-ne v1, v10, :cond_16

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    const/16 v4, 0xe

    if-ne v1, v4, :cond_1a

    iget-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    const/4 v4, 0x6

    if-ne v1, v4, :cond_16

    iget-object v1, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    aget-short v1, v1, v7

    iget-object v4, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    aget-short v4, v4, v8

    invoke-virtual {p0, v1, v4, v7}, Lcom/t4game/GSprite;->setPos(IIZ)V

    iput-object v2, p0, Lcom/t4game/GSprite;->sanxianDesXY:[S

    :cond_16
    :goto_9
    iget-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    if-lt v1, v3, :cond_18

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    if-ne v1, v10, :cond_1c

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v7, v1}, Lcom/t4game/GSprite;->setAction(BB)V

    :cond_17
    :goto_a
    iput-byte v7, p0, Lcom/t4game/GSprite;->nowFrame:B

    :cond_18
    iget-object v1, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v1, :cond_19

    iget-object v1, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    invoke-virtual {v1}, Lcom/t4game/GFabao;->update()V

    :cond_19
    invoke-virtual {p0}, Lcom/t4game/GSprite;->updateBloodUp()V

    invoke-direct {p0}, Lcom/t4game/GSprite;->updateSpecialEffect()V

    move v1, v8

    goto/16 :goto_0

    :cond_1a
    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    const/16 v4, 0xd

    if-ne v1, v4, :cond_16

    iget-object v1, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    if-eqz v1, :cond_16

    iget-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    iget-object v4, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    array-length v4, v4

    if-ge v1, v4, :cond_1b

    iget-object v1, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    iget-byte v2, p0, Lcom/t4game/GSprite;->nowFrame:B

    aget-object v1, v1, v2

    aget-short v1, v1, v7

    iget-object v2, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    iget-byte v4, p0, Lcom/t4game/GSprite;->nowFrame:B

    aget-object v2, v2, v4

    aget-short v2, v2, v8

    invoke-virtual {p0, v1, v2, v7}, Lcom/t4game/GSprite;->setPos(IIZ)V

    goto :goto_9

    :cond_1b
    sub-int v1, v3, v8

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/GSprite;->nowFrame:B

    move-object v0, v2

    check-cast v0, [[S

    move-object v1, v0

    iput-object v1, p0, Lcom/t4game/GSprite;->chongfengD:[[S

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v7, v1}, Lcom/t4game/GSprite;->setAction(BB)V

    invoke-virtual {p0, v10}, Lcom/t4game/GSprite;->setActType(B)V

    const/16 v1, 0x9

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v1, v2}, Lcom/t4game/GSprite;->setAction(BB)V

    goto :goto_9

    :cond_1c
    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1f

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1, p0}, Lcom/t4game/GameWorld;->isHero(Lcom/t4game/GSprite;)Z

    move-result v1

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v1}, Lcom/t4game/GameWorld;->setDeath()V

    :cond_1d
    :goto_b
    invoke-virtual {p0, v7}, Lcom/t4game/GSprite;->setActType(B)V

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v7, v1}, Lcom/t4game/GSprite;->setAction(BB)V

    goto :goto_a

    :cond_1e
    iput-boolean v7, p0, Lcom/t4game/GSprite;->visibleReady:Z

    iget v1, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v2, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget v2, v2, Lcom/t4game/GScene;->choicedSpriteId:I

    if-ne v1, v2, :cond_1d

    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    iget-object v2, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-byte v2, v2, Lcom/t4game/GScene;->choicedSpriteType:B

    if-ne v1, v2, :cond_1d

    iget-object v1, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v1, v1, Lcom/t4game/GScene;->gameWorld:Lcom/t4game/GameWorld;

    iput-boolean v7, v1, Lcom/t4game/GameWorld;->autoAttack:Z

    goto :goto_b

    :cond_1f
    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    if-nez v1, :cond_22

    iget-byte v1, p0, Lcom/t4game/GSprite;->type:B

    const/4 v2, 0x3

    if-ne v1, v2, :cond_17

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    if-nez v1, :cond_21

    iget v1, p0, Lcom/t4game/GSprite;->actionState:I

    if-nez v1, :cond_21

    iget-byte v1, p0, Lcom/t4game/GSprite;->spriteState:B

    if-nez v1, :cond_20

    iget-byte v1, p0, Lcom/t4game/GSprite;->freeStandTick:B

    add-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    iput-byte v1, p0, Lcom/t4game/GSprite;->freeStandTick:B

    :cond_20
    iget-byte v1, p0, Lcom/t4game/GSprite;->freeStandTick:B

    sget v2, Lcom/t4game/GSprite;->freeStandMaxTick:I

    if-le v1, v2, :cond_17

    const/16 v1, 0xa

    invoke-static {v1}, Lcom/t4game/Util;->rand(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x6

    sput v1, Lcom/t4game/GSprite;->freeStandMaxTick:I

    iput-byte v7, p0, Lcom/t4game/GSprite;->freeStandTick:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->freeStandActionId:B

    invoke-static {v1}, Lcom/t4game/Util;->getRoleFreeAction(B)B

    move-result v1

    iput-byte v1, p0, Lcom/t4game/GSprite;->freeStandActionId:B

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->freeStandActionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v1, v2}, Lcom/t4game/GSprite;->setAction(BB)V

    goto/16 :goto_a

    :cond_21
    iput-byte v7, p0, Lcom/t4game/GSprite;->freeStandTick:B

    iput-byte v7, p0, Lcom/t4game/GSprite;->actionType:B

    iget-byte v1, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {p0, v7, v1}, Lcom/t4game/GSprite;->setAction(BB)V

    goto/16 :goto_a

    :cond_22
    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    const/4 v2, 0x6

    if-eq v1, v2, :cond_17

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionType:B

    if-ne v1, v8, :cond_17

    goto/16 :goto_a

    :cond_23
    move v3, v1

    goto/16 :goto_8

    :cond_24
    move v1, v8

    goto/16 :goto_6
.end method

.method protected updateAnimData()V
    .locals 5

    const/4 v4, 0x0

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GSprite;->objectData:Lcom/t4game/GObjectData;

    iget v1, p0, Lcom/t4game/GSprite;->actionState:I

    iget-byte v2, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v3, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v3}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->animDataIndex:B

    :cond_0
    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    invoke-virtual {v0}, Lcom/t4game/GObjectData;->isReady()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GSprite;->horseObjectData:Lcom/t4game/GObjectData;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v4, v1, v2}, Lcom/t4game/GObjectData;->getActionAnimDataIndex(III)B

    move-result v0

    iput-byte v0, p0, Lcom/t4game/GSprite;->horseAnimDataIndex:B

    :cond_1
    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/t4game/GSprite;->fabao:Lcom/t4game/GFabao;

    iget-byte v1, p0, Lcom/t4game/GSprite;->actionId:B

    iget-byte v2, p0, Lcom/t4game/GSprite;->dir:B

    invoke-virtual {v0, v1, v2, v4}, Lcom/t4game/GFabao;->setAction(BBZ)V

    :cond_2
    return-void
.end method

.method public updateBloodUp()V
    .locals 9

    const/16 v8, 0x9

    const/4 v7, 0x4

    const/4 v6, 0x1

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_c

    iget-object v0, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    iget-byte v2, p0, Lcom/t4game/GSprite;->type:B

    if-ne v2, v5, :cond_b

    iget v2, p0, Lcom/t4game/GSprite;->intId:I

    iget-object v3, p0, Lcom/t4game/GSprite;->scene:Lcom/t4game/GScene;

    iget-object v3, v3, Lcom/t4game/GScene;->user:Lcom/t4game/GUser;

    iget v3, v3, Lcom/t4game/GUser;->intId:I

    if-ne v2, v3, :cond_b

    aget v2, v0, v7

    if-eq v2, v6, :cond_0

    aget v2, v0, v7

    const/4 v3, 0x5

    if-eq v2, v3, :cond_0

    aget v2, v0, v7

    const/4 v3, 0x6

    if-ne v2, v3, :cond_3

    :cond_0
    aget v2, v0, v5

    if-le v2, v4, :cond_2

    aget v2, v0, v5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    aget v2, v0, v6

    add-int/lit8 v2, v2, 0x6

    aput v2, v0, v6

    aget v2, v0, v5

    if-le v2, v8, :cond_1

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    :cond_1
    :goto_1
    aget v2, v0, v5

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v5

    iget-object v2, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v2, v0, v1}, Ljava/util/Vector;->setElementAt(Ljava/lang/Object;I)V

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    aget v2, v0, v6

    add-int/lit8 v2, v2, 0x6

    aput v2, v0, v6

    aget v2, v0, v4

    const/16 v3, 0xa

    sub-int/2addr v2, v3

    aput v2, v0, v4

    goto :goto_1

    :cond_3
    aget v2, v0, v7

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    aget v2, v0, v7

    const/16 v3, 0xb

    if-ne v2, v3, :cond_6

    :cond_4
    aget v2, v0, v5

    if-le v2, v4, :cond_5

    aget v2, v0, v5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    aget v2, v0, v6

    sub-int/2addr v2, v4

    aput v2, v0, v6

    aget v2, v0, v5

    if-le v2, v8, :cond_1

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    goto :goto_1

    :cond_5
    aget v2, v0, v6

    sub-int/2addr v2, v4

    aput v2, v0, v6

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    goto :goto_1

    :cond_6
    aget v2, v0, v7

    if-eq v2, v4, :cond_8

    aget v2, v0, v7

    if-eq v2, v5, :cond_8

    aget v2, v0, v7

    const/4 v3, 0x7

    if-lt v2, v3, :cond_7

    aget v2, v0, v7

    const/16 v3, 0xa

    if-le v2, v3, :cond_8

    :cond_7
    aget v2, v0, v7

    const/16 v3, 0xc

    if-eq v2, v3, :cond_8

    aget v2, v0, v7

    const/16 v3, 0xd

    if-ne v2, v3, :cond_a

    :cond_8
    aget v2, v0, v5

    if-le v2, v4, :cond_9

    aget v2, v0, v5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    aget v2, v0, v6

    sub-int/2addr v2, v4

    aput v2, v0, v6

    aget v2, v0, v5

    if-le v2, v8, :cond_1

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_9
    aget v2, v0, v6

    sub-int/2addr v2, v4

    aput v2, v0, v6

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_a
    aget v2, v0, v5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    aget v2, v0, v6

    add-int/lit8 v2, v2, 0x1

    aput v2, v0, v6

    aget v2, v0, v4

    add-int/lit8 v2, v2, 0xa

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_b
    aget v2, v0, v5

    rem-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_1

    aget v2, v0, v4

    const/4 v3, 0x6

    sub-int/2addr v2, v3

    aput v2, v0, v4

    goto/16 :goto_1

    :cond_c
    const/4 v0, 0x0

    move v1, v0

    :goto_2
    iget-object v0, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge v1, v0, :cond_e

    iget-object v0, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    check-cast v0, [I

    aget v0, v0, v5

    const/16 v2, 0xe

    if-lt v0, v2, :cond_d

    iget-object v0, p0, Lcom/t4game/GSprite;->bloodUp:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_2

    :cond_d
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_e
    return-void
.end method
