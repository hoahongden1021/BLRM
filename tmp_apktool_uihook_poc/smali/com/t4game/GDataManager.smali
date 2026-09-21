.class public Lcom/t4game/GDataManager;
.super Ljava/lang/Object;


# static fields
.field public static final DATATYPE_CNAMES:[Ljava/lang/String;

.field public static DATATYPE_IMAGE:B = 0x0t

.field public static final DATATYPE_NAMES:[Ljava/lang/String;

.field public static final DATATYPE_NUM:I = 0x5

.field public static DATATYPE_OBJECT:B = 0x0t

.field public static DATATYPE_PNGGROUP:B = 0x0t

.field public static DATATYPE_SCENE:B = 0x0t

.field public static DATATYPE_WORLDMAP:B = 0x0t

.field private static final LOCAL:B = 0x0t

.field public static final MAX_M:I = 0x3e8

.field private static final NET:B = 0x2t

.field private static final NOVERSION:B = -0x63t

.field public static final POOL_ANIMOBJECT:B = 0x6t

.field public static final POOL_BUILDING:B = 0x10t

.field public static final POOL_COLLECTION:B = 0xet

.field public static final POOL_DOODADOBJECT:B = 0x1t

.field public static final POOL_IMAGEDATA:B = 0x7t

.field public static final POOL_NPCOBJECT:B = 0x2t

.field public static final POOL_NUM:B = 0x11t

.field public static final POOL_OBJECTDATA:B = 0x8t

.field public static final POOL_OUTSPRITEOBHECT:B = 0xct

.field public static final POOL_PET:B = 0xft

.field public static final POOL_PNGGROUPDATA:B = 0x9t

.field public static final POOL_SEITEMOBJECT:B = 0x5t

.field public static final POOL_SEOBJECT:B = 0x4t

.field public static final POOL_SINGLECLIPOBJECT:B = 0xdt

.field public static final POOL_SINGLETILEOBJECT:B = 0x0t

.field public static final POOL_TILEANIMDATA:B = 0xbt

.field public static final POOL_USEROBJECT:B = 0x3t

.field public static final POOL_WORLDMAPDATA:B = 0xat

.field private static final RMS:B = 0x1t

.field public static RMSDataNowSize:I

.field public static RMSDataTotalSize:I

.field public static RMS_MAXSIZE:I

.field public static SaveDateV:Ljava/util/Vector;

.field public static TimeState:B

.field static breakFlag1:Z

.field static breakFlag2:Z

.field public static final dataIndexInfos:[Ljava/util/Hashtable;

.field public static final dataModifyFlag:[B

.field public static gameWorld:Lcom/t4game/GameWorld;

.field public static inGameTime:I

.field public static indexRS:Ljavax/microedition/rms/RecordStore;

.field static listEnd:Lcom/t4game/GBaseData;

.field static listHead:Lcom/t4game/GBaseData;

.field public static mapBlockDataRS:Ljavax/microedition/rms/RecordStore;

.field public static final objectDatas:[Ljava/util/Hashtable;

.field public static poolHeads:[Lcom/t4game/AbstractPoolObject;

.field public static readResV:Ljava/util/Vector;

.field public static final rsList:[Ljavax/microedition/rms/RecordStore;

.field public static saving:Z

.field public static speedbit:B

.field private static standTime:I

.field public static totalM:I


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x5

    const/4 v3, 0x0

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    sput v3, Lcom/t4game/GDataManager;->totalM:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    sput-boolean v3, Lcom/t4game/GDataManager;->breakFlag1:Z

    sput-boolean v3, Lcom/t4game/GDataManager;->breakFlag2:Z

    sput-boolean v3, Lcom/t4game/GDataManager;->saving:Z

    sput v3, Lcom/t4game/GDataManager;->standTime:I

    sput v3, Lcom/t4game/GDataManager;->inGameTime:I

    const/16 v0, 0x11

    new-array v0, v0, [Lcom/t4game/AbstractPoolObject;

    sput-object v0, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    sput-byte v3, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    sput-byte v5, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    sput-byte v6, Lcom/t4game/GDataManager;->DATATYPE_SCENE:B

    sput-byte v7, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    const/4 v0, 0x4

    sput-byte v0, Lcom/t4game/GDataManager;->DATATYPE_WORLDMAP:B

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "img"

    aput-object v1, v0, v3

    const-string v1, "obj"

    aput-object v1, v0, v5

    const-string v1, "scn"

    aput-object v1, v0, v6

    const-string v1, "pgg"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "wmp"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/lang/String;

    const-string v1, "\u56fe\u5f62\u8d44\u6e90"

    aput-object v1, v0, v3

    const-string v1, "\u52a8\u753b\u8d44\u6e90"

    aput-object v1, v0, v5

    const-string v1, "\u573a\u666f\u6570\u636e"

    aput-object v1, v0, v6

    const-string v1, "\u56fe\u793a\u8d44\u6e90"

    aput-object v1, v0, v7

    const/4 v1, 0x4

    const-string v2, "\u4e16\u754c\u5730\u56fe"

    aput-object v2, v0, v1

    sput-object v0, Lcom/t4game/GDataManager;->DATATYPE_CNAMES:[Ljava/lang/String;

    new-array v0, v4, [Ljava/util/Hashtable;

    sput-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    new-array v0, v4, [Ljavax/microedition/rms/RecordStore;

    sput-object v0, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    new-array v0, v4, [Ljava/util/Hashtable;

    sput-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    new-array v0, v4, [B

    sput-object v0, Lcom/t4game/GDataManager;->dataModifyFlag:[B

    sput v3, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    sput v3, Lcom/t4game/GDataManager;->RMSDataTotalSize:I

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    const/4 v0, -0x1

    sput v0, Lcom/t4game/GDataManager;->RMS_MAXSIZE:I

    sput-byte v3, Lcom/t4game/GDataManager;->TimeState:B

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static LoadingSave()V
    .locals 3

    const/4 v2, 0x0

    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-byte v0, v0, Lcom/t4game/GameWorld;->gameScreenState:B

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    :goto_0
    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-boolean v0, Lcom/t4game/GDataManager;->saving:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/DataIndexInfo;

    invoke-static {v0}, Lcom/t4game/GDataManager;->saveDataToRMS(Lcom/t4game/DataIndexInfo;)V

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final SystemGC()V
    .locals 1

    :try_start_0
    const-string v0, "a"

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    invoke-static {}, Ljava/lang/System;->gc()V

    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static _saveDataToRS(Lcom/t4game/DataIndexInfo;)Z
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    const/4 v5, -0x1

    iget-object v0, p0, Lcom/t4game/DataIndexInfo;->bufferedData:[B

    if-nez v0, :cond_0

    move v0, v6

    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->getDataType()B

    move-result v1

    sget-object v2, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v2, v2, v1

    iget v3, p0, Lcom/t4game/DataIndexInfo;->index:I

    if-eq v3, v5, :cond_1

    iget v3, p0, Lcom/t4game/DataIndexInfo;->index:I

    invoke-static {v2, v3, v0}, Lcom/t4game/GDataManager;->updateRecordToRS(Ljavax/microedition/rms/RecordStore;I[B)I

    move-result v0

    if-eq v0, v7, :cond_4

    move v0, v6

    goto :goto_0

    :cond_1
    sget v3, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    array-length v4, v0

    add-int/2addr v3, v4

    sget v4, Lcom/t4game/GDataManager;->RMS_MAXSIZE:I

    if-eq v4, v5, :cond_2

    sget v4, Lcom/t4game/GDataManager;->RMS_MAXSIZE:I

    if-le v3, v4, :cond_2

    :cond_2
    invoke-static {v2, v0}, Lcom/t4game/GDataManager;->addRecordToRS(Ljavax/microedition/rms/RecordStore;[B)I

    move-result v0

    if-ne v0, v5, :cond_3

    move v0, v6

    goto :goto_0

    :cond_3
    int-to-short v0, v0

    iput v0, p0, Lcom/t4game/DataIndexInfo;->index:I

    :cond_4
    sget-object v0, Lcom/t4game/GDataManager;->dataModifyFlag:[B

    aput-byte v7, v0, v1

    move v0, v7

    goto :goto_0
.end method

.method public static final addDataIndexInfo(Lcom/t4game/DataIndexInfo;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/DataIndexInfo;->flag:B

    and-int/lit8 v0, v0, 0xf

    sget-object v1, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v1, v0

    iget-object v1, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v1, p0, Lcom/t4game/DataIndexInfo;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method private static addDataVersionToRms(BI)V
    .locals 6

    invoke-static {p0, p1}, Lcom/t4game/GDataManager;->ifVersionExistInRms(BI)I

    move-result v0

    invoke-static {p0, p1}, Lcom/t4game/GDataManager;->getDataNetVersion(BI)I

    move-result v1

    const/4 v2, 0x5

    :try_start_0
    new-array v2, v2, [B

    const/4 v3, 0x0

    sget-object v4, Lcom/t4game/GameWorld;->netDataVersion:[[S

    const/4 v5, 0x0

    aget-object v4, v4, v5

    aget-short v4, v4, v1

    int-to-byte v4, v4

    aput-byte v4, v2, v3

    const/4 v3, 0x1

    sget-object v4, Lcom/t4game/GameWorld;->netDataVersion:[[S

    const/4 v5, 0x1

    aget-object v4, v4, v5

    aget-short v4, v4, v1

    invoke-static {v2, v3, v4}, Lcom/t4game/GUtil;->writeShort([BII)V

    const/4 v3, 0x3

    sget-object v4, Lcom/t4game/GameWorld;->netDataVersion:[[S

    const/4 v5, 0x2

    aget-object v4, v4, v5

    aget-short v1, v4, v1

    invoke-static {v2, v3, v1}, Lcom/t4game/GUtil;->writeShort([BII)V

    const-string v1, "dataRs"

    const/4 v3, 0x1

    invoke-static {v1, v3}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    const/16 v3, -0x3e7

    if-eq v0, v3, :cond_0

    const/4 v3, 0x0

    array-length v4, v2

    invoke-virtual {v1, v0, v2, v3, v4}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    array-length v3, v2

    invoke-virtual {v1, v2, v0, v3}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static final declared-synchronized addRecordToRS(Ljavax/microedition/rms/RecordStore;[B)I
    .locals 3

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p1

    invoke-virtual {p0, p1, v1, v2}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    :goto_0
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreFullException;->printStackTrace()V

    const/4 v1, -0x2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static addToLink(Lcom/t4game/GBaseData;)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {p0, v0}, Lcom/t4game/GDataManager;->total(Lcom/t4game/GBaseData;Z)V

    sget-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    if-nez v0, :cond_0

    sput-object p0, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    sput-object p0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    iput-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    iput-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    sget-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    iput-object p0, v0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    sput-object p0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    goto :goto_0
.end method

.method private static checkNeedDownload(BLjava/lang/String;)B
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/16 v4, -0x63

    sget-object v0, Lcom/t4game/MainMenu;->versionData:[[S

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, p0, v1}, Lcom/t4game/GDataManager;->getDataVersion([[SBI)I

    move-result v0

    sget-object v1, Lcom/t4game/MainMenu;->verInRms:[[S

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v1, p0, v2}, Lcom/t4game/GDataManager;->getDataVersion([[SBI)I

    move-result v1

    sget-object v2, Lcom/t4game/GameWorld;->netDataVersion:[[S

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, p0, v3}, Lcom/t4game/GDataManager;->getDataVersion([[SBI)I

    move-result v2

    if-ne v2, v4, :cond_1

    if-ne v1, v4, :cond_0

    move v0, v7

    :goto_0
    return v0

    :cond_0
    move v0, v5

    goto :goto_0

    :cond_1
    if-ne v0, v4, :cond_3

    if-ne v1, v4, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    move v0, v5

    goto :goto_0

    :cond_3
    if-ne v0, v2, :cond_4

    move v0, v7

    goto :goto_0

    :cond_4
    if-eq v1, v2, :cond_5

    move v0, v6

    goto :goto_0

    :cond_5
    if-ne v1, v4, :cond_6

    move v0, v6

    goto :goto_0

    :cond_6
    move v0, v5

    goto :goto_0
.end method

.method public static final cleanOldRMS()V
    .locals 1

    invoke-static {}, Lcom/t4game/GDataManager;->cleanRMSData()V

    invoke-static {}, Lcom/t4game/GDataManager;->SystemGC()V

    invoke-static {}, Lcom/t4game/GDataManager;->init()V

    const-string v0, "2009-04-07-00"

    sput-object v0, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    return-void
.end method

.method public static final cleanRMSData()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_5

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GBaseData;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_2
    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_3
    sget-object v0, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    sget-object v0, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, v1

    invoke-static {v0}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    const-string v0, "index"

    invoke-static {v0}, Ljavax/microedition/rms/RecordStore;->deleteRecordStore(Ljava/lang/String;)V

    :cond_6
    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    sput v0, Lcom/t4game/GDataManager;->totalM:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static final cleanRMSDataBy(BLjava/lang/String;Z)V
    .locals 2

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v1, v0, p0

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    if-eqz v0, :cond_0

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/GBaseData;->state:B

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_0
    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/DataIndexInfo;

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    invoke-static {v0}, Lcom/t4game/GDataManager;->removeDataFromRS(Lcom/t4game/DataIndexInfo;)Z

    sget-object v1, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v1, v1, p0

    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/t4game/GDataManager;->delDataIndexInfoFromRMS(Lcom/t4game/DataIndexInfo;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    const/4 v1, 0x0

    iput-byte v1, v0, Lcom/t4game/DataIndexInfo;->state:B

    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    :cond_3
    if-nez p2, :cond_1

    const/4 v0, 0x0

    :try_start_1
    invoke-static {p0, p1, v0}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public static final delDataIndexInfo(BLjava/lang/String;)V
    .locals 2

    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/DataIndexInfo;

    if-eqz p0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    invoke-static {p0}, Lcom/t4game/GDataManager;->delDataIndexInfoFromRMS(Lcom/t4game/DataIndexInfo;)V

    :cond_0
    return-void
.end method

.method public static final delDataIndexInfoFromRMS(Lcom/t4game/DataIndexInfo;)V
    .locals 2

    iget v0, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    iget v1, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->deleteRecordFromRS(Ljavax/microedition/rms/RecordStore;I)Z

    :cond_0
    return-void
.end method

.method public static declared-synchronized deletFirstTimeInGame(I)V
    .locals 4

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "firstinfo"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x0

    invoke-static {v2, v1, p0, v3}, Lcom/t4game/GDataManager;->testFirstTimeInGame(ILjavax/microedition/rms/RecordStore;IZ)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    invoke-virtual {v1, v2}, Ljavax/microedition/rms/RecordStore;->deleteRecord(I)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_0
    move-exception v1

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_0
.end method

.method public static final declared-synchronized deleteRecordFromRS(Ljavax/microedition/rms/RecordStore;I)Z
    .locals 2

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->deleteRecord(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final getBufferedObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;
    .locals 1

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GBaseData;

    move-object v0, p0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getDataFromRS(BLjava/lang/String;)[B
    .locals 3

    const-class v1, Lcom/t4game/GDataManager;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/DataIndexInfo;

    sget-object v2, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v2, v2, p0

    iget v0, v0, Lcom/t4game/DataIndexInfo;->index:I

    invoke-static {v2, v0}, Lcom/t4game/GDataManager;->getRecordFromRS(Ljavax/microedition/rms/RecordStore;I)[B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static final getDataIndexInfo(BLjava/lang/String;)Lcom/t4game/DataIndexInfo;
    .locals 8

    const/4 v2, 0x0

    const/4 v3, -0x1

    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/DataIndexInfo;

    if-nez v0, :cond_1

    invoke-static {p0, p1}, Lcom/t4game/GDataManager;->isHaveFile(ILjava/lang/String;)Z

    move-result v6

    new-instance v0, Lcom/t4game/DataIndexInfo;

    move-object v1, p1

    move v4, v2

    move v5, p0

    move v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/t4game/DataIndexInfo;-><init>(Ljava/lang/String;IIIBZI)V

    invoke-static {v0}, Lcom/t4game/GDataManager;->addDataIndexInfo(Lcom/t4game/DataIndexInfo;)V

    if-eqz v6, :cond_0

    invoke-static {v0}, Lcom/t4game/GDataManager;->saveDataIndexInfo(Lcom/t4game/DataIndexInfo;)V

    :cond_0
    sget-object v1, Lcom/t4game/GDataManager;->dataModifyFlag:[B

    const/4 v2, 0x1

    aput-byte v2, v1, p0

    :cond_1
    return-object v0
.end method

.method private static getDataNetVersion(BI)I
    .locals 5

    const/16 v4, -0x63

    const/4 v3, 0x0

    sget-object v0, Lcom/t4game/GameWorld;->netDataVersion:[[S

    if-nez v0, :cond_1

    move v0, v4

    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v3

    :goto_1
    sget-object v1, Lcom/t4game/GameWorld;->netDataVersion:[[S

    aget-object v1, v1, v3

    array-length v1, v1

    if-ge v0, v1, :cond_3

    sget-object v1, Lcom/t4game/GameWorld;->netDataVersion:[[S

    aget-object v1, v1, v3

    aget-short v1, v1, v0

    if-ne p0, v1, :cond_2

    sget-object v1, Lcom/t4game/GameWorld;->netDataVersion:[[S

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-short v1, v1, v0

    if-eq p1, v1, :cond_0

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_3
    move v0, v4

    goto :goto_0
.end method

.method private static getDataVersion([[SBI)I
    .locals 4

    const/16 v3, -0x63

    const/4 v2, 0x0

    if-nez p0, :cond_0

    move v0, v3

    :goto_0
    return v0

    :cond_0
    move v0, v2

    :goto_1
    aget-object v1, p0, v2

    array-length v1, v1

    if-ge v0, v1, :cond_2

    aget-object v1, p0, v2

    aget-short v1, v1, v0

    if-ne v1, p1, :cond_1

    const/4 v1, 0x1

    aget-object v1, p0, v1

    aget-short v1, v1, v0

    if-ne v1, p2, :cond_1

    const/4 v1, 0x2

    aget-object v1, p0, v1

    aget-short v0, v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v3

    goto :goto_0
.end method

.method public static getFromPool(B)Lcom/t4game/AbstractPoolObject;
    .locals 4

    const/4 v3, 0x0

    const/16 v0, 0x11

    if-lt p0, v0, :cond_1

    move-object v0, v3

    :cond_0
    :goto_0
    return-object v0

    :cond_1
    sget-object v0, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    aget-object v0, v0, p0

    if-eqz v0, :cond_2

    sget-object v1, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    iget-object v2, v0, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    aput-object v2, v1, p0

    iput-object v3, v0, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    goto :goto_0

    :cond_2
    if-nez p0, :cond_3

    new-instance v0, Lcom/t4game/GSingleTileObject;

    invoke-direct {v0}, Lcom/t4game/GSingleTileObject;-><init>()V

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    if-ne p0, v1, :cond_4

    new-instance v0, Lcom/t4game/GDoodadObject;

    invoke-direct {v0}, Lcom/t4game/GDoodadObject;-><init>()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x2

    if-ne p0, v1, :cond_5

    new-instance v0, Lcom/t4game/GNPC;

    invoke-direct {v0}, Lcom/t4game/GNPC;-><init>()V

    goto :goto_0

    :cond_5
    const/4 v1, 0x3

    if-ne p0, v1, :cond_6

    new-instance v0, Lcom/t4game/GUser;

    invoke-direct {v0}, Lcom/t4game/GUser;-><init>()V

    goto :goto_0

    :cond_6
    const/4 v1, 0x4

    if-ne p0, v1, :cond_7

    new-instance v0, Lcom/t4game/GSEObject;

    invoke-direct {v0}, Lcom/t4game/GSEObject;-><init>()V

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    if-ne p0, v1, :cond_8

    new-instance v0, Lcom/t4game/GSEItemObject;

    invoke-direct {v0}, Lcom/t4game/GSEItemObject;-><init>()V

    goto :goto_0

    :cond_8
    const/4 v1, 0x6

    if-ne p0, v1, :cond_9

    new-instance v0, Lcom/t4game/GMapAnimObject;

    invoke-direct {v0}, Lcom/t4game/GMapAnimObject;-><init>()V

    goto :goto_0

    :cond_9
    const/4 v1, 0x7

    if-ne p0, v1, :cond_a

    new-instance v0, Lcom/t4game/GImageData;

    invoke-direct {v0}, Lcom/t4game/GImageData;-><init>()V

    goto :goto_0

    :cond_a
    const/16 v1, 0x8

    if-ne p0, v1, :cond_b

    new-instance v0, Lcom/t4game/GObjectData;

    invoke-direct {v0}, Lcom/t4game/GObjectData;-><init>()V

    goto :goto_0

    :cond_b
    const/16 v1, 0x9

    if-ne p0, v1, :cond_c

    new-instance v0, Lcom/t4game/GPNGGroupData;

    invoke-direct {v0}, Lcom/t4game/GPNGGroupData;-><init>()V

    goto :goto_0

    :cond_c
    const/16 v1, 0xa

    if-ne p0, v1, :cond_d

    new-instance v0, Lcom/t4game/GWorldMap;

    invoke-direct {v0}, Lcom/t4game/GWorldMap;-><init>()V

    goto :goto_0

    :cond_d
    const/16 v1, 0xc

    if-ne p0, v1, :cond_0

    new-instance v0, Lcom/t4game/GOuterSprite;

    invoke-direct {v0}, Lcom/t4game/GOuterSprite;-><init>()V

    goto :goto_0
.end method

.method public static getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;
    .locals 6

    const/4 v5, 0x0

    const/4 v4, 0x0

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    if-nez v0, :cond_b

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sget-object v1, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aput-object v0, v1, p0

    move-object v1, v0

    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    if-nez v0, :cond_9

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne p0, v2, :cond_3

    const/16 v0, 0x8

    invoke-static {v0}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    :cond_0
    :goto_1
    invoke-virtual {v0, p1}, Lcom/t4game/GBaseData;->setId(Ljava/lang/String;)V

    sget-object v2, Lcom/t4game/Defaults;->sysSetBoolean:[[Z

    aget-object v2, v2, v4

    const/4 v3, 0x6

    aget-boolean v2, v2, v3

    if-nez v2, :cond_a

    move v2, v4

    :goto_2
    sget-byte v3, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-eq p0, v3, :cond_1

    sget-byte v3, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne p0, v3, :cond_7

    :cond_1
    invoke-static {v0, v2}, Lcom/t4game/GDataManager;->initObjectData(Lcom/t4game/GBaseData;Z)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    :goto_3
    iget-short v1, v0, Lcom/t4game/GBaseData;->refCount:S

    add-int/lit8 v1, v1, 0x1

    int-to-short v1, v1

    iput-short v1, v0, Lcom/t4game/GBaseData;->refCount:S

    :goto_4
    return-object v0

    :cond_3
    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne p0, v2, :cond_4

    const/4 v0, 0x7

    invoke-static {v0}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    goto :goto_1

    :cond_4
    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_PNGGROUP:B

    if-ne p0, v2, :cond_5

    const/16 v0, 0x9

    invoke-static {v0}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    goto :goto_1

    :cond_5
    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_WORLDMAP:B

    if-ne p0, v2, :cond_0

    const/16 v0, 0xa

    invoke-static {v0}, Lcom/t4game/GDataManager;->getFromPool(B)Lcom/t4game/AbstractPoolObject;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    goto :goto_1

    :cond_6
    move-object v0, v5

    goto :goto_4

    :cond_7
    invoke-static {v0, v4}, Lcom/t4game/GDataManager;->initObjectData(Lcom/t4game/GBaseData;Z)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-virtual {v1, p1, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_8
    move-object v0, v5

    goto :goto_4

    :cond_9
    iget-short v1, v0, Lcom/t4game/GBaseData;->refCount:S

    if-gtz v1, :cond_2

    invoke-static {v0}, Lcom/t4game/GDataManager;->removeFromLink(Lcom/t4game/GBaseData;)V

    goto :goto_3

    :cond_a
    move v2, p2

    goto :goto_2

    :cond_b
    move-object v1, v0

    goto :goto_0
.end method

.method public static final declared-synchronized getRecordFromRS(Ljavax/microedition/rms/RecordStore;I)[B
    .locals 2

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :goto_0
    monitor-exit v0

    return-object v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static hasSameImage(Lcom/t4game/GImageData;)Z
    .locals 4

    const/4 v3, 0x0

    move v0, v3

    :goto_0
    sget-object v1, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v1, v1, Lcom/t4game/GUser;->imageDataIdList:[S

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-short v1, p0, Lcom/t4game/GImageData;->intId:S

    sget-object v2, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v2, v2, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-object v2, v2, Lcom/t4game/GUser;->imageDataIdList:[S

    aget-short v2, v2, v0

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    goto :goto_1
.end method

.method private static ifVersionExistInRms(BI)I
    .locals 5

    const/16 v4, -0x3e7

    const/4 v3, 0x0

    sget-object v0, Lcom/t4game/MainMenu;->verInRms:[[S

    if-nez v0, :cond_0

    move v0, v4

    :goto_0
    return v0

    :cond_0
    move v0, v3

    :goto_1
    sget-object v1, Lcom/t4game/MainMenu;->verInRms:[[S

    aget-object v1, v1, v3

    array-length v1, v1

    if-ge v0, v1, :cond_2

    sget-object v1, Lcom/t4game/MainMenu;->verInRms:[[S

    aget-object v1, v1, v3

    aget-short v1, v1, v0

    if-ne p0, v1, :cond_1

    sget-object v1, Lcom/t4game/MainMenu;->verInRms:[[S

    const/4 v2, 0x1

    aget-object v1, v1, v2

    aget-short v1, v1, v0

    if-ne p1, v1, :cond_1

    sget-object v1, Lcom/t4game/MainMenu;->verInRmsId:[I

    aget v0, v1, v0

    goto :goto_0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    move v0, v4

    goto :goto_0
.end method

.method public static init()V
    .locals 4

    const/4 v1, 0x0

    const/4 v0, 0x0

    :try_start_0
    sput v0, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    move v0, v1

    :goto_0
    const/4 v1, 0x5

    if-ge v0, v1, :cond_0

    sget-object v1, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    aput-object v2, v1, v0

    sget-object v1, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    aget-object v1, v1, v0

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    sget-object v2, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aput-object v1, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "index"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    sput-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Ljavax/microedition/rms/RecordStore;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljavax/microedition/rms/RecordEnumeration;->hasNextElement()Z

    move-result v1

    if-eqz v1, :cond_2

    new-instance v1, Lcom/t4game/DataIndexInfo;

    invoke-direct {v1}, Lcom/t4game/DataIndexInfo;-><init>()V

    invoke-interface {v0}, Ljavax/microedition/rms/RecordEnumeration;->nextRecordId()I

    move-result v2

    iput v2, v1, Lcom/t4game/DataIndexInfo;->infoIndex:I

    sget-object v2, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    iget v3, v1, Lcom/t4game/DataIndexInfo;->infoIndex:I

    invoke-virtual {v2, v3}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/t4game/DataIndexInfo;->init([B)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v1}, Lcom/t4game/GDataManager;->addDataIndexInfo(Lcom/t4game/DataIndexInfo;)V

    sget v2, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    iget-short v1, v1, Lcom/t4game/DataIndexInfo;->dataSize:S

    add-int/2addr v1, v2

    sput v1, Lcom/t4game/GDataManager;->RMSDataNowSize:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void

    :cond_2
    :try_start_1
    invoke-static {}, Lcom/t4game/GDataManager;->initDefaultData()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static initDefaultData()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    sput-object v0, Lcom/t4game/Defaults;->bufIcon:Lcom/t4game/GImageData;

    sget-object v0, Lcom/t4game/Defaults;->bufIcon:Lcom/t4game/GImageData;

    iput-byte v5, v0, Lcom/t4game/GImageData;->refType:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "9000"

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-byte v5, v0, Lcom/t4game/GObjectData;->refType:B

    sget-object v0, Lcom/t4game/CommonConstants;->DEFAULT_WEAPON_EFFECT_IMAGEID:[Ljava/lang/String;

    array-length v1, v0

    move v2, v4

    :goto_0
    if-ge v2, v1, :cond_0

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    sget-object v3, Lcom/t4game/CommonConstants;->DEFAULT_WEAPON_EFFECT_IMAGEID:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v0, v3, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GImageData;

    iput-byte v5, v0, Lcom/t4game/GImageData;->refType:B

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    :cond_0
    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "1"

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-byte v5, v0, Lcom/t4game/GObjectData;->refType:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "2"

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-byte v5, v0, Lcom/t4game/GObjectData;->refType:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "3"

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-byte v5, v0, Lcom/t4game/GObjectData;->refType:B

    sget-byte v0, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    const-string v1, "4"

    invoke-static {v0, v1, v4}, Lcom/t4game/GDataManager;->getObjectData(BLjava/lang/String;Z)Lcom/t4game/GBaseData;

    move-result-object v0

    check-cast v0, Lcom/t4game/GObjectData;

    iput-byte v5, v0, Lcom/t4game/GObjectData;->refType:B

    return-void
.end method

.method public static initObjectData(Lcom/t4game/GBaseData;Z)Z
    .locals 7

    const/4 v6, 0x0

    const/4 v5, 0x1

    iget-byte v0, p0, Lcom/t4game/GBaseData;->type:B

    iget-object v1, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->getDataIndexInfo(BLjava/lang/String;)Lcom/t4game/DataIndexInfo;

    move-result-object v2

    iget-byte v3, v2, Lcom/t4game/DataIndexInfo;->state:B

    if-nez v3, :cond_1

    const-string v0, "\u542f\u52a8\u7f51\u7edc\u66f4\u65b0"

    invoke-static {v0}, Lcom/t4game/Util;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    invoke-virtual {v0, v2}, Lcom/t4game/GameWorld;->requestUpdateResource(Lcom/t4game/DataIndexInfo;)V

    move v0, v5

    :goto_0
    return v0

    :cond_0
    move v0, v6

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v6

    goto :goto_0

    :cond_2
    if-ne v3, v5, :cond_3

    move v0, v5

    goto :goto_0

    :cond_3
    invoke-virtual {v2}, Lcom/t4game/DataIndexInfo;->isFile()Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz p1, :cond_5

    sget-object v0, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_4
    :goto_1
    move v0, v5

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/t4game/GBaseData;->initFromJar()Z

    goto :goto_1

    :cond_6
    if-eqz p1, :cond_7

    sget-object v0, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_1

    :cond_7
    iget-object v3, v2, Lcom/t4game/DataIndexInfo;->bufferedData:[B

    if-nez v3, :cond_8

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->getDataFromRS(BLjava/lang/String;)[B

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    invoke-virtual {p0, v0}, Lcom/t4game/GBaseData;->initFromBytes([B)Z

    invoke-static {v2}, Lcom/t4game/GDataManager;->updateDataIndexInfo(Lcom/t4game/DataIndexInfo;)V

    goto :goto_1

    :cond_8
    move-object v0, v3

    goto :goto_2
.end method

.method private static final isHaveFile(ILjava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/t4game/GDataManager;->DATATYPE_NAMES:[Ljava/lang/String;

    aget-object v0, v0, p0

    const-class v1, Lcom/t4game/GDataManager;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lcom/t4game/GUtil;->dataPath:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static final isVersionOlder(Ljava/lang/String;)Z
    .locals 1

    sget-object v0, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static final putToPool(Lcom/t4game/AbstractPoolObject;)V
    .locals 2

    iget-byte v0, p0, Lcom/t4game/AbstractPoolObject;->poolId:B

    const/16 v1, 0x11

    if-lt v0, v1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/AbstractPoolObject;->release()V

    sget-object v1, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    aget-object v1, v1, v0

    iput-object v1, p0, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    sget-object v1, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    aput-object p0, v1, v0

    goto :goto_0
.end method

.method public static declared-synchronized readFirstTimeInGame(I)V
    .locals 4

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "firstinfo"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    if-lez v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v2, v1, p0, v3}, Lcom/t4game/GDataManager;->testFirstTimeInGame(ILjavax/microedition/rms/RecordStore;IZ)I

    :cond_0
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    monitor-exit v0

    return-void

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static declared-synchronized readUserDataFromRMS()Z
    .locals 7

    const/4 v6, 0x1

    const/4 v5, 0x0

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "userinfo"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    if-ne v2, v6, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v1

    new-instance v2, Ljava/io/DataInputStream;

    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-virtual {v2}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v1

    sput-boolean v1, Lcom/t4game/Defaults;->remenber:Z

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x1

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x2

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x4

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x5

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x6

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    sget-object v1, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v3, 0x7

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->smsUrl:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    sput-byte v1, Lcom/t4game/Defaults;->getWhiteList:B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readByte()B

    move-result v1

    sput-byte v1, Lcom/t4game/Defaults;->RegistAgain:B

    invoke-virtual {v2}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcom/t4game/Defaults;->RegistName:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_0
    :try_start_3
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move v1, v6

    :goto_1
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :goto_2
    :try_start_5
    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_5
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    :try_start_6
    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :goto_3
    :try_start_7
    invoke-static {}, Ljava/lang/System;->gc()V

    throw v1
    :try_end_7
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catch_1
    move-exception v1

    move v1, v5

    goto :goto_1

    :cond_0
    move v1, v5

    goto :goto_1

    :catch_2
    move-exception v1

    move v1, v5

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0

    :catch_4
    move-exception v1

    goto :goto_2

    :catch_5
    move-exception v2

    goto :goto_3

    :catchall_1
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final release()V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_5

    :try_start_0
    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/t4game/GBaseData;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    invoke-static {}, Lcom/t4game/GDataManager;->SystemGC()V

    return-void

    :cond_1
    :try_start_1
    invoke-virtual {v2}, Ljava/util/Hashtable;->clear()V

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    const/4 v2, 0x0

    aput-object v2, v0, v1

    :cond_2
    sget-object v0, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v0, v0, v1

    if-eqz v0, :cond_3

    sget-object v0, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    :cond_3
    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, v1

    if-eqz v0, :cond_4

    sget-object v0, Lcom/t4game/GDataManager;->dataIndexInfos:[Ljava/util/Hashtable;

    aget-object v0, v0, v1

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    :cond_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_5
    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    if-eqz v0, :cond_6

    sget-object v0, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    :cond_6
    invoke-static {}, Lcom/t4game/GDataManager;->releasePools()V

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    sput-object v0, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    const/4 v0, 0x0

    sput v0, Lcom/t4game/GDataManager;->totalM:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method public static releaseDefaultData()V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/t4game/GDataManager;->releaseTemporaryData(I)V

    return-void
.end method

.method public static final releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;
    .locals 5

    const/4 v4, 0x1

    const/4 v3, 0x0

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v0, v0, p0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GBaseData;

    if-eqz p0, :cond_3

    iget-short v1, p0, Lcom/t4game/GBaseData;->refCount:S

    if-lez v1, :cond_3

    iget-short v1, p0, Lcom/t4game/GBaseData;->refCount:S

    sub-int/2addr v1, v4

    int-to-short v1, v1

    iput-short v1, p0, Lcom/t4game/GBaseData;->refCount:S

    iget-short v1, p0, Lcom/t4game/GBaseData;->refCount:S

    if-gtz v1, :cond_3

    iget-byte v1, p0, Lcom/t4game/GBaseData;->refType:B

    if-nez v1, :cond_3

    iget-byte v1, p0, Lcom/t4game/GBaseData;->type:B

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-eq v1, v2, :cond_1

    iget-byte v1, p0, Lcom/t4game/GBaseData;->type:B

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_OBJECT:B

    if-ne v1, v2, :cond_6

    :cond_1
    sget-object v1, Lcom/t4game/Defaults;->sysSetBoolean:[[Z

    aget-object v1, v1, v3

    const/4 v2, 0x6

    aget-boolean v1, v1, v2

    if-eqz v1, :cond_6

    move v1, v3

    :goto_1
    sget-object v2, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_7

    sget-object v2, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    if-ne p0, v2, :cond_4

    sget-object v2, Lcom/t4game/GDataManager;->readResV:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->removeElementAt(I)V

    move v1, v4

    :goto_2
    if-nez v1, :cond_2

    iget-boolean v2, p0, Lcom/t4game/GBaseData;->isDelayRelease:Z

    if-eqz v2, :cond_5

    invoke-static {p0}, Lcom/t4game/GDataManager;->addToLink(Lcom/t4game/GBaseData;)V

    :cond_2
    :goto_3
    if-eqz v1, :cond_3

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-byte v3, p0, Lcom/t4game/GBaseData;->state:B

    invoke-static {p0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    :cond_3
    move-object v0, p0

    goto :goto_0

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    move v1, v4

    goto :goto_3

    :cond_6
    move v1, v4

    goto :goto_3

    :cond_7
    move v1, v3

    goto :goto_2
.end method

.method public static final releaseObjectData(Lcom/t4game/GBaseData;)Lcom/t4game/GBaseData;
    .locals 2

    iget-byte v0, p0, Lcom/t4game/GBaseData;->type:B

    iget-object v1, p0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/t4game/GDataManager;->releaseObjectData(BLjava/lang/String;)Lcom/t4game/GBaseData;

    move-result-object v0

    return-object v0
.end method

.method public static final releasePools()V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    :goto_0
    const/16 v1, 0x11

    if-ge v0, v1, :cond_1

    sget-object v1, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    aget-object v1, v1, v0

    :goto_1
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    iput-object v3, v1, Lcom/t4game/AbstractPoolObject;->poolNext:Lcom/t4game/AbstractPoolObject;

    move-object v1, v2

    goto :goto_1

    :cond_0
    sget-object v1, Lcom/t4game/GDataManager;->poolHeads:[Lcom/t4game/AbstractPoolObject;

    aput-object v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public static final releaseTemporaryData(I)V
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v0, 0x5

    if-ge v1, v0, :cond_3

    sget-object v0, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    aget-object v2, v0, v1

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v3

    :cond_0
    :goto_1
    invoke-interface {v3}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/GBaseData;

    if-eqz v0, :cond_0

    iget-byte v4, v0, Lcom/t4game/GBaseData;->refType:B

    if-ne v4, p0, :cond_0

    const/4 v4, 0x3

    if-ne p0, v4, :cond_1

    iget-short v4, v0, Lcom/t4game/GBaseData;->intId:S

    sget-short v5, Lcom/t4game/GSprite;->heroObjDataId:S

    if-eq v4, v5, :cond_0

    :cond_1
    iget-object v4, v0, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_3
    return-void
.end method

.method private static declared-synchronized removeDataFromRS(Lcom/t4game/DataIndexInfo;)Z
    .locals 5

    const/4 v4, 0x0

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    if-nez p0, :cond_0

    move v1, v4

    :goto_0
    monitor-exit v0

    return v1

    :cond_0
    :try_start_0
    sget-object v1, Lcom/t4game/GDataManager;->rsList:[Ljavax/microedition/rms/RecordStore;

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->getDataType()B

    move-result v2

    aget-object v1, v1, v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    iget v2, p0, Lcom/t4game/DataIndexInfo;->index:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_1

    move v1, v4

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/t4game/DataIndexInfo;->index:I

    invoke-virtual {v1, v2}, Ljavax/microedition/rms/RecordStore;->deleteRecord(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move v1, v4

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private static removeFromLink(Lcom/t4game/GBaseData;)V
    .locals 2

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/t4game/GDataManager;->total(Lcom/t4game/GBaseData;Z)V

    iget-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    iget-object v1, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    iput-object v1, v0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    :goto_0
    iget-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    iget-object v1, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    iput-object v1, v0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    :goto_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    iput-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/t4game/GBaseData;->next:Lcom/t4game/GBaseData;

    sput-object v0, Lcom/t4game/GDataManager;->listHead:Lcom/t4game/GBaseData;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/t4game/GBaseData;->pre:Lcom/t4game/GBaseData;

    sput-object v0, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    goto :goto_1
.end method

.method public static saveAllReadyForSaveRes()V
    .locals 2

    const/4 v1, 0x0

    :goto_0
    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_0

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/t4game/DataIndexInfo;

    invoke-static {v0}, Lcom/t4game/GDataManager;->saveDataToRMS(Lcom/t4game/DataIndexInfo;)V

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->removeElementAt(I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static final saveDataIndexInfo(Lcom/t4game/DataIndexInfo;)V
    .locals 3

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->save()[B

    move-result-object v0

    iget v1, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    sget-object v1, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    invoke-static {v1, v0}, Lcom/t4game/GDataManager;->addRecordToRS(Ljavax/microedition/rms/RecordStore;[B)I

    move-result v0

    iput v0, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->isFile()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    iget-short v1, p0, Lcom/t4game/DataIndexInfo;->dataSize:S

    add-int/2addr v0, v1

    sput v0, Lcom/t4game/GDataManager;->RMSDataNowSize:I

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v1, Lcom/t4game/GDataManager;->indexRS:Ljavax/microedition/rms/RecordStore;

    iget v2, p0, Lcom/t4game/DataIndexInfo;->infoIndex:I

    invoke-static {v1, v2, v0}, Lcom/t4game/GDataManager;->updateRecordToRS(Ljavax/microedition/rms/RecordStore;I[B)I

    goto :goto_0
.end method

.method public static saveDataToRMS(Lcom/t4game/DataIndexInfo;)V
    .locals 1

    invoke-static {p0}, Lcom/t4game/GDataManager;->_saveDataToRS(Lcom/t4game/DataIndexInfo;)Z

    invoke-static {p0}, Lcom/t4game/GDataManager;->saveDataIndexInfo(Lcom/t4game/DataIndexInfo;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/t4game/DataIndexInfo;->bufferedData:[B

    return-void
.end method

.method public static saveDataToRS(Lcom/t4game/DataIndexInfo;)Z
    .locals 1

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, p0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    const/4 v0, 0x1

    return v0
.end method

.method public static final setNewResVersion(Ljava/lang/String;)V
    .locals 1

    invoke-static {p0}, Lcom/t4game/GDataManager;->isVersionOlder(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    sput-object p0, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-static {}, Lcom/t4game/GDataManager;->writeUserDataToRMS()V

    :cond_0
    return-void
.end method

.method public static startReadThread()V
    .locals 0

    return-void
.end method

.method private static declared-synchronized testFirstTimeInGame(ILjavax/microedition/rms/RecordStore;IZ)I
    .locals 11

    const/4 v10, 0x0

    const-class v1, Lcom/t4game/GDataManager;

    monitor-enter v1

    const/4 v2, -0x1

    const/4 v0, 0x3

    :try_start_0
    filled-new-array {p0, v0}, [I

    move-result-object v0

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    invoke-static {v3, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    :try_start_1
    invoke-virtual {p1, v3, v4, v5}, Ljavax/microedition/rms/RecordStore;->enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;

    move-result-object v3

    move v4, v10

    :goto_0
    invoke-interface {v3}, Ljavax/microedition/rms/RecordEnumeration;->hasNextElement()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljavax/microedition/rms/RecordEnumeration;->nextRecordId()I

    move-result v5

    invoke-virtual {p1, v5}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v6

    aget-object v7, v0, v4

    const/4 v8, 0x0

    invoke-static {v6}, Lcom/t4game/Util;->ByteToInt([B)I

    move-result v9

    aput v9, v7, v8

    aget-object v7, v0, v4

    const/4 v8, 0x1

    const/4 v9, 0x4

    aget-byte v6, v6, v9

    aput v6, v7, v8

    aget-object v6, v0, v4

    const/4 v7, 0x2

    aput v5, v6, v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :catch_0
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    if-eqz p3, :cond_3

    const/4 v3, 0x0

    sput-byte v3, Lcom/t4game/Defaults;->FIRST_TIME_IN_GAME:B

    move v3, v10

    :goto_1
    if-ge v3, p0, :cond_1

    aget-object v4, v0, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne p2, v4, :cond_2

    aget-object v0, v0, v3

    const/4 v3, 0x1

    aget v0, v0, v3

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/Defaults;->FIRST_TIME_IN_GAME:B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_1
    move v0, v2

    :goto_2
    monitor-exit v1

    return v0

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    move v3, v10

    :goto_3
    if-ge v3, p0, :cond_5

    :try_start_3
    aget-object v4, v0, v3

    const/4 v5, 0x0

    aget v4, v4, v5

    if-ne p2, v4, :cond_4

    aget-object v0, v0, v3

    const/4 v2, 0x2

    aget v0, v0, v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_5
    move v0, v2

    goto :goto_2
.end method

.method public static final testLoadFromServer(BS)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/t4game/GDataManager;->getDataIndexInfo(BLjava/lang/String;)Lcom/t4game/DataIndexInfo;

    move-result-object v0

    iget-byte v0, v0, Lcom/t4game/DataIndexInfo;->state:B

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static total(Lcom/t4game/GBaseData;Z)V
    .locals 5

    const/4 v4, 0x0

    iget-byte v1, p0, Lcom/t4game/GBaseData;->type:B

    sget-byte v2, Lcom/t4game/GDataManager;->DATATYPE_IMAGE:B

    if-ne v1, v2, :cond_1

    move-object v0, p0

    check-cast v0, Lcom/t4game/GImageData;

    move-object v1, v0

    iget v1, v1, Lcom/t4game/GImageData;->img_h:I

    check-cast p0, Lcom/t4game/GImageData;

    iget v2, p0, Lcom/t4game/GImageData;->img_w:I

    mul-int/2addr v1, v2

    shr-int/lit8 v1, v1, 0x9

    :goto_0
    sget v2, Lcom/t4game/GDataManager;->totalM:I

    if-eqz p1, :cond_2

    :goto_1
    add-int/2addr v1, v2

    sput v1, Lcom/t4game/GDataManager;->totalM:I

    if-eqz p1, :cond_0

    sget v1, Lcom/t4game/GDataManager;->totalM:I

    const/16 v2, 0x3e8

    if-lt v1, v2, :cond_0

    sget-object v1, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    sget-object v2, Lcom/t4game/GDataManager;->listEnd:Lcom/t4game/GBaseData;

    invoke-static {v2}, Lcom/t4game/GDataManager;->removeFromLink(Lcom/t4game/GBaseData;)V

    sget-object v2, Lcom/t4game/GDataManager;->objectDatas:[Ljava/util/Hashtable;

    iget-byte v3, v1, Lcom/t4game/GBaseData;->type:B

    aget-object v2, v2, v3

    if-nez v2, :cond_3

    :cond_0
    :goto_2
    return-void

    :cond_1
    const/16 v1, 0xa

    goto :goto_0

    :cond_2
    neg-int v1, v1

    goto :goto_1

    :cond_3
    iget-object v3, v1, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/GBaseData;

    if-eqz p0, :cond_0

    iput-short v4, p0, Lcom/t4game/GBaseData;->refCount:S

    iget-object v1, v1, Lcom/t4game/GBaseData;->id:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iput-byte v4, p0, Lcom/t4game/GBaseData;->state:B

    invoke-static {p0}, Lcom/t4game/GDataManager;->putToPool(Lcom/t4game/AbstractPoolObject;)V

    goto :goto_2
.end method

.method public static update(J)V
    .locals 3

    const/4 v2, 0x0

    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    sget v0, Lcom/t4game/GDataManager;->inGameTime:I

    const/16 v1, 0xd2

    if-ge v0, v1, :cond_1

    sget v0, Lcom/t4game/GDataManager;->inGameTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/GDataManager;->inGameTime:I

    goto :goto_0

    :cond_1
    const-wide/16 v0, 0x5

    cmp-long v0, p0, v0

    if-lez v0, :cond_3

    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/DataIndexInfo;

    invoke-static {p0}, Lcom/t4game/GDataManager;->saveDataToRMS(Lcom/t4game/DataIndexInfo;)V

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    :cond_2
    :goto_1
    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget v0, v0, Lcom/t4game/GameWorld;->speedtemp:I

    invoke-static {v0}, Lcom/t4game/Util;->Num_R2(I)B

    move-result v0

    sget-object v1, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v1, v1, Lcom/t4game/GameWorld;->screen:Lcom/t4game/GameScreen;

    iget v1, v1, Lcom/t4game/GameScreen;->userspeed:I

    if-eq v0, v1, :cond_6

    sget-byte v1, Lcom/t4game/GDataManager;->speedbit:B

    or-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/GDataManager;->speedbit:B

    :goto_2
    sget v1, Lcom/t4game/SoundPlayer;->UserSpeed:I

    if-eq v0, v1, :cond_7

    sget-byte v0, Lcom/t4game/GDataManager;->speedbit:B

    or-int/lit8 v0, v0, 0x2

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/GDataManager;->speedbit:B

    goto :goto_0

    :cond_3
    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->actionType:B

    if-eqz v0, :cond_4

    sget-object v0, Lcom/t4game/GDataManager;->gameWorld:Lcom/t4game/GameWorld;

    iget-object v0, v0, Lcom/t4game/GameWorld;->user:Lcom/t4game/GUser;

    iget-byte v0, v0, Lcom/t4game/GUser;->autoAttackGuaJi:B

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    :cond_4
    sget v0, Lcom/t4game/GDataManager;->standTime:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/t4game/GDataManager;->standTime:I

    sget v0, Lcom/t4game/GDataManager;->standTime:I

    const/16 v1, 0xf

    if-le v0, v1, :cond_2

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-lez v0, :cond_2

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/t4game/DataIndexInfo;

    invoke-static {p0}, Lcom/t4game/GDataManager;->saveDataToRMS(Lcom/t4game/DataIndexInfo;)V

    sget-object v0, Lcom/t4game/GDataManager;->SaveDateV:Ljava/util/Vector;

    invoke-virtual {v0, v2}, Ljava/util/Vector;->removeElementAt(I)V

    sput v2, Lcom/t4game/GDataManager;->standTime:I

    goto :goto_1

    :cond_5
    sput v2, Lcom/t4game/GDataManager;->standTime:I

    goto :goto_1

    :cond_6
    sget-byte v1, Lcom/t4game/GDataManager;->speedbit:B

    and-int/lit16 v1, v1, 0xfe

    int-to-byte v1, v1

    sput-byte v1, Lcom/t4game/GDataManager;->speedbit:B

    goto :goto_2

    :cond_7
    sget-byte v0, Lcom/t4game/GDataManager;->speedbit:B

    and-int/lit16 v0, v0, 0xfd

    int-to-byte v0, v0

    sput-byte v0, Lcom/t4game/GDataManager;->speedbit:B

    goto/16 :goto_0
.end method

.method public static final updateDataIndexInfo(Lcom/t4game/DataIndexInfo;)V
    .locals 1

    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/t4game/DataIndexInfo;->updateDate()V

    goto :goto_0
.end method

.method public static final declared-synchronized updateRecordToRS(Ljavax/microedition/rms/RecordStore;I[B)I
    .locals 3

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    array-length v2, p2

    invoke-virtual {p0, p1, p2, v1, v2}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreFullException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    :goto_0
    monitor-exit v0

    return v1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreFullException;->printStackTrace()V

    const/4 v1, -0x2

    goto :goto_0

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 v1, -0x1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized writeFirstTimeInGame(IB)V
    .locals 6

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "firstinfo"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    invoke-static {p0, p1}, Lcom/t4game/Util;->IntToByte(IB)[B

    move-result-object v3

    if-lez v2, :cond_1

    const/4 v4, 0x0

    invoke-static {v2, v1, p0, v4}, Lcom/t4game/GDataManager;->testFirstTimeInGame(ILjavax/microedition/rms/RecordStore;IZ)I

    move-result v2

    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    const/4 v2, 0x0

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I

    :goto_0
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :cond_0
    const/4 v4, 0x0

    :try_start_1
    array-length v5, v3

    invoke-virtual {v1, v2, v3, v4, v5}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    array-length v4, v3

    invoke-virtual {v1, v3, v2, v4}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_1
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v1

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized writeUserDataToRMS()V
    .locals 8

    const/4 v7, 0x1

    const-class v0, Lcom/t4game/GDataManager;

    monitor-enter v0

    :try_start_0
    const-string v1, "userinfo"

    const/4 v2, 0x1

    invoke-static {v1, v2}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getNumRecords()I

    move-result v2

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v4, Ljava/io/DataOutputStream;

    invoke-direct {v4, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    sget-boolean v5, Lcom/t4game/Defaults;->remenber:Z

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x1

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x2

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->ResVer:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-byte v5, Lcom/t4game/Defaults;->NetConnectTypeWap:B

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userInfo:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v5, v5, v6

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->userPhoneNum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-object v5, Lcom/t4game/Defaults;->smsUrl:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    sget-byte v5, Lcom/t4game/Defaults;->getWhiteList:B

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-byte v5, Lcom/t4game/Defaults;->RegistAgain:B

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeByte(I)V

    sget-object v5, Lcom/t4game/Defaults;->RegistName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/DataOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    if-ne v2, v7, :cond_0

    const/4 v2, 0x1

    const/4 v6, 0x0

    array-length v7, v5

    invoke-virtual {v1, v2, v5, v6, v7}, Ljavax/microedition/rms/RecordStore;->setRecord(I[BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_1
    :try_start_3
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_2
    monitor-exit v0

    return-void

    :cond_0
    const/4 v2, 0x0

    :try_start_4
    array-length v6, v5

    invoke-virtual {v1, v5, v2, v6}, Ljavax/microedition/rms/RecordStore;->addRecord([BII)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0

    :catch_0
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :try_start_6
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_3
    :try_start_7
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    invoke-static {}, Ljava/lang/System;->gc()V
    :try_end_7
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v1

    :try_start_8
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1

    :catchall_1
    move-exception v2

    :try_start_9
    invoke-virtual {v4}, Ljava/io/DataOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :goto_4
    :try_start_a
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->closeRecordStore()V

    invoke-static {}, Ljava/lang/System;->gc()V

    throw v2
    :try_end_a
    .catch Ljavax/microedition/rms/RecordStoreNotOpenException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljavax/microedition/rms/RecordStoreException; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    :catch_2
    move-exception v1

    :try_start_b
    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStoreException;->printStackTrace()V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_4

    :catch_4
    move-exception v2

    goto :goto_3

    :catch_5
    move-exception v2

    goto :goto_1
.end method
