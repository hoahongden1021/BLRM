.class public Ljavax/microedition/rms/RecordStore;
.super Ljava/lang/Object;


# static fields
.field public static final AUTHMODE_ANY:I = 0x1

.field public static final AUTHMODE_PRIVATE:I

.field private static openedRecordStores:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljavax/microedition/rms/RecordStore;",
            ">;"
        }
    .end annotation
.end field

.field private static sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;


# instance fields
.field private authMode:I

.field private lastModified:J

.field private listeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavax/microedition/rms/RecordListener;",
            ">;"
        }
    .end annotation
.end field

.field private name:Ljava/lang/String;

.field private nextRecordID:I

.field private numRecords:I

.field private openCount:I

.field recordStorePk:J

.field private size:I

.field private sizeAvailable:J

.field private version:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/32 v0, 0x400000

    iput-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    const/4 v0, 0x1

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    const/4 v0, 0x0

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    iput-object p1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    iput-wide p2, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    return-void
.end method

.method private static cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V
    .locals 1

    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p1, Ljavax/microedition/rms/RecordStore;->openCount:I

    return-void
.end method

.method private closeChachedRecordStore()Z
    .locals 3

    const/4 v2, 0x1

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    sub-int/2addr v0, v2

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    if-lez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move v0, v2

    goto :goto_0
.end method

.method public static deleteRecordStore(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The record store \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' is not closed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {v0, p0}, Ljavax/microedition/rms/RecordStoreSqlLite;->deleteRecordStore(Ljava/lang/String;)V

    return-void
.end method

.method private fireRecordAddedEvent(I)V
    .locals 3

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v0, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordAdded(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private fireRecordChangedEvent(I)V
    .locals 3

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v0, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordChanged(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private fireRecordDeletedEvent(I)V
    .locals 3

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v1

    :try_start_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/microedition/rms/RecordListener;

    invoke-interface {v0, p0, p1}, Ljavax/microedition/rms/RecordListener;->recordDeleted(Ljavax/microedition/rms/RecordStore;I)V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void
.end method

.method private static getOpenedRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1

    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/rms/RecordStore;

    return-object p0
.end method

.method private static init()V
    .locals 1

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    if-nez v0, :cond_0

    invoke-static {}, Ljavax/microedition/rms/RecordStoreSqlLite;->getInstance()Ljavax/microedition/rms/RecordStoreSqlLite;

    move-result-object v0

    sput-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    :cond_0
    return-void
.end method

.method public static listRecordStores()[Ljava/lang/String;
    .locals 2

    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStoreSqlLite;->listRecordStores()[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method public static openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    invoke-static {}, Ljavax/microedition/rms/RecordStore;->init()V

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'recordStoreName\' must not be null or empty."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x20

    if-le v0, v1, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter \'recordStoreName\' must have a length between 1 and 32."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-static {p0}, Ljavax/microedition/rms/RecordStore;->openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    if-eqz v0, :cond_3

    :goto_0
    return-object v0

    :cond_3
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {v0, p0}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0

    :cond_4
    if-nez p1, :cond_5

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No record store with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' found."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {v0, p0}, Ljavax/microedition/rms/RecordStoreSqlLite;->createRecordStore(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    if-nez v0, :cond_6

    new-instance v0, Ljavax/microedition/rms/RecordStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create record store with name \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'. Reason: The method \'SqlDao.createRecordStore\' returned null although it is not allowed to do so."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_6
    invoke-static {p0, v0}, Ljavax/microedition/rms/RecordStore;->cacheRecordStore(Ljava/lang/String;Ljavax/microedition/rms/RecordStore;)V

    goto :goto_0
.end method

.method public static openRecordStore(Ljava/lang/String;ZIZ)Ljavax/microedition/rms/RecordStore;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;,
            Ljavax/microedition/rms/RecordStoreNotFoundException;
        }
    .end annotation

    invoke-static {p0, p1}, Ljavax/microedition/rms/RecordStore;->openRecordStore(Ljava/lang/String;Z)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    return-object v0
.end method

.method private static openRecordStoreFromCache(Ljava/lang/String;)Ljavax/microedition/rms/RecordStore;
    .locals 1

    sget-object v0, Ljavax/microedition/rms/RecordStore;->openedRecordStores:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljavax/microedition/rms/RecordStore;

    if-eqz p0, :cond_0

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I

    :cond_0
    return-object p0
.end method

.method public static setApplicationName(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method private updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    iget-object v0, p1, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    iput-object v0, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->numRecords:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->size:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->size:I

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->version:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->version:I

    iget-wide v0, p1, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    iput-wide v0, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    iget v0, p1, Ljavax/microedition/rms/RecordStore;->authMode:I

    iput v0, p0, Ljavax/microedition/rms/RecordStore;->authMode:I

    return-void
.end method


# virtual methods
.method public addRecord([BII)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    const/4 v3, 0x0

    const-string v6, "The offset \'"

    const-string v5, "\' must not be negative."

    const-string v4, "\'"

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, "The record store is not open because it was closed. This RecordStore object is invalid and will stay so."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p1, :cond_5

    new-array v0, v3, [B

    :goto_0
    array-length v1, v0

    if-eqz v1, :cond_1

    array-length v1, v0

    if-lt p2, v1, :cond_1

    new-instance v1, Ljavax/microedition/rms/RecordStoreException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The offset \'"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' is beyond the size of the data array of \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v0, v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\'"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1
    if-gez p3, :cond_2

    new-instance v0, Ljavax/microedition/rms/RecordStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The number of bytes \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must not be negative."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-gez p2, :cond_3

    new-instance v0, Ljavax/microedition/rms/RecordStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The offset \'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' must not be negative."

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int v1, p2, p3

    array-length v2, v0

    if-le v1, v2, :cond_4

    new-instance v0, Ljavax/microedition/rms/RecordStoreException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "The Parameter numBytes with value \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' exceeds the number of available bytes if counted from offset \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4
    new-array v1, p3, [B

    invoke-static {v0, p2, v1, v3, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, v1}, Ljavax/microedition/rms/RecordStoreSqlLite;->addRecord(J[B)I

    move-result v0

    sget-object v1, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v1

    invoke-direct {p0, v1}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    invoke-direct {p0, v0}, Ljavax/microedition/rms/RecordStore;->fireRecordAddedEvent(I)V

    return v0

    :cond_5
    move-object v0, p1

    goto/16 :goto_0
.end method

.method public addRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public closeRecordStore()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-direct {p0}, Ljavax/microedition/rms/RecordStore;->closeChachedRecordStore()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public deleteRecord(I)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v0}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljavax/microedition/rms/RecordStoreSqlLite;->removeRecord(JI)V

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordDeletedEvent(I)V

    return-void
.end method

.method public enumerateRecords(Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)Ljavax/microedition/rms/RecordEnumeration;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    new-instance v0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;

    invoke-direct {v0, p0, p1, p2, p3}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;-><init>(Ljavax/microedition/rms/RecordStore;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V

    return-object v0
.end method

.method public getLastModified()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->lastModified:J

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getNextRecordID()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, ""

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    return v0
.end method

.method public getNumRecords()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    return v0
.end method

.method protected getPk()J
    .locals 2

    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->recordStorePk:J

    return-wide v0
.end method

.method public getRecord(I[BI)I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    const/4 v1, 0x0

    array-length v2, v0

    invoke-static {v0, v1, p2, p3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    array-length v0, v0

    sub-int/2addr v0, p3

    return v0
.end method

.method public getRecord(I)[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    invoke-direct {v0}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>()V

    throw v0

    :cond_1
    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p1}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public getRecordSize(I)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-virtual {p0, p1}, Ljavax/microedition/rms/RecordStore;->getRecord(I)[B

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    array-length v0, v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->size:I

    return v0
.end method

.method public getSizeAvailable()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    const-wide/32 v2, 0x7fffffff

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const v0, 0x7fffffff

    :goto_0
    return v0

    :cond_0
    iget-wide v0, p0, Ljavax/microedition/rms/RecordStore;->sizeAvailable:J

    long-to-int v0, v0

    goto :goto_0
.end method

.method public getVersion()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;
        }
    .end annotation

    iget v0, p0, Ljavax/microedition/rms/RecordStore;->version:I

    return v0
.end method

.method protected declared-synchronized isClosed()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/microedition/rms/RecordStore;->openCount:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public removeRecordListener(Ljavax/microedition/rms/RecordListener;)V
    .locals 2

    iget-object v0, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Ljavax/microedition/rms/RecordStore;->listeners:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setMode(IZ)V
    .locals 0

    return-void
.end method

.method setNextId(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/rms/RecordStore;->nextRecordID:I

    return-void
.end method

.method setNumberOfRecords(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/rms/RecordStore;->numRecords:I

    return-void
.end method

.method public setRecord(I[BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreException;,
            Ljavax/microedition/rms/RecordStoreFullException;
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    invoke-direct {v0}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>()V

    throw v0

    :cond_0
    if-gez p1, :cond_1

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v1, "The parameter \'recordId\' must not be negative."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-nez p2, :cond_2

    new-array v0, v2, [B

    :goto_0
    new-array v1, p4, [B

    invoke-static {v0, p3, v1, v2, p4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3, p1, v1}, Ljavax/microedition/rms/RecordStoreSqlLite;->setRecord(JI[B)V

    sget-object v0, Ljavax/microedition/rms/RecordStore;->sqlLite:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecordStore(J)Ljavax/microedition/rms/RecordStore;

    move-result-object v0

    invoke-direct {p0, v0}, Ljavax/microedition/rms/RecordStore;->updateRecordStoreInstance(Ljavax/microedition/rms/RecordStore;)V

    invoke-direct {p0, p1}, Ljavax/microedition/rms/RecordStore;->fireRecordChangedEvent(I)V

    return-void

    :cond_2
    move-object v0, p2

    goto :goto_0
.end method

.method setSize(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/rms/RecordStore;->size:I

    return-void
.end method

.method setVersion(I)V
    .locals 0

    iput p1, p0, Ljavax/microedition/rms/RecordStore;->version:I

    return-void
.end method
