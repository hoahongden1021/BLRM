.class public Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;
.super Ljava/lang/Object;

# interfaces
.implements Ljavax/microedition/rms/RecordEnumeration;


# instance fields
.field private final comparator:Ljavax/microedition/rms/RecordComparator;

.field private destroyed:Z

.field private final filter:Ljavax/microedition/rms/RecordFilter;

.field private keepUpdated:Z

.field private lastRecordIndex:I

.field private recordIds:[I

.field private final recordStore:Ljavax/microedition/rms/RecordStore;

.field private sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;


# direct methods
.method public constructor <init>(Ljavax/microedition/rms/RecordStore;Ljavax/microedition/rms/RecordFilter;Ljavax/microedition/rms/RecordComparator;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    iput-object p2, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    iput-object p3, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->comparator:Ljavax/microedition/rms/RecordComparator;

    iput-boolean p4, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    invoke-static {}, Ljavax/microedition/rms/RecordStoreSqlLite;->getInstance()Ljavax/microedition/rms/RecordStoreSqlLite;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;

    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->rebuild()V

    return-void
.end method

.method private filter()V
    .locals 9

    const/4 v8, -0x1

    const/4 v7, 0x0

    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    if-nez v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v0, v0

    move v1, v7

    move v2, v7

    :goto_1
    if-ge v1, v0, :cond_3

    iget-object v3, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v3, v3, v1

    iget-object v4, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;

    iget-object v5, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v5}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6, v3}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v3

    iget-object v4, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->filter:Ljavax/microedition/rms/RecordFilter;

    invoke-interface {v4, v3}, Ljavax/microedition/rms/RecordFilter;->matches([B)Z

    move-result v3

    if-nez v3, :cond_2

    iget-object v3, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aput v8, v3, v1

    add-int/lit8 v2, v2, 0x1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    if-lez v2, :cond_0

    sub-int v1, v0, v2

    new-array v1, v1, [I

    move v2, v7

    move v3, v7

    :goto_2
    if-ge v2, v0, :cond_5

    iget-object v4, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v4, v4, v2

    if-eq v4, v8, :cond_4

    aput v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_5
    iput-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    goto :goto_0
.end method

.method private isDestroyed()Z
    .locals 1

    iget-boolean v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->destroyed:Z

    return v0
.end method

.method private sort()V
    .locals 1

    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->comparator:Ljavax/microedition/rms/RecordComparator;

    if-nez v0, :cond_0

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->destroyed:Z

    return-void
.end method

.method public hasNextElement()Z
    .locals 3

    const/4 v2, 0x1

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v1, v1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_1

    move v0, v2

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasPreviousElement()Z
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isKeptUpdated()Z
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-boolean v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    return v0
.end method

.method public keepUpdated(Z)V
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-boolean p1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->keepUpdated:Z

    return-void
.end method

.method public nextRecord()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, "The record store which is enumerated is closed."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_2

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v1, "The end of the enumeration is reached."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v1, v0

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;

    iget-object v2, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v2}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public nextRecordId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    add-int/lit8 v0, v0, 0x1

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v1, v1

    if-lt v0, v1, :cond_1

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v1, "No more records in this enumeration."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v1, v0

    return v0
.end method

.method public numRecords()I
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    array-length v0, v0

    return v0
.end method

.method public previousRecord()[B
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;,
            Ljavax/microedition/rms/RecordStoreNotOpenException;,
            Ljavax/microedition/rms/RecordStoreException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v0}, Ljavax/microedition/rms/RecordStore;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Ljavax/microedition/rms/RecordStoreNotOpenException;

    const-string v1, "The record store which is enumerated is closed."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/RecordStoreNotOpenException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-gez v0, :cond_2

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v1, "The start of the enumeration is reached."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    iput v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v1, v0

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;

    iget-object v2, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v2}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3, v0}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecord(JI)[B

    move-result-object v0

    return-object v0
.end method

.method public previousRecordId()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/microedition/rms/InvalidRecordIDException;
        }
    .end annotation

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iget v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    if-gez v1, :cond_1

    new-instance v0, Ljavax/microedition/rms/InvalidRecordIDException;

    const-string v1, "The start of the enumeration is reached."

    invoke-direct {v0, v1}, Ljavax/microedition/rms/InvalidRecordIDException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    aget v0, v1, v0

    return v0
.end method

.method public rebuild()V
    .locals 3

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    invoke-virtual {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->reset()V

    iget-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sqlDao:Ljavax/microedition/rms/RecordStoreSqlLite;

    iget-object v1, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordStore:Ljavax/microedition/rms/RecordStore;

    invoke-virtual {v1}, Ljavax/microedition/rms/RecordStore;->getPk()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljavax/microedition/rms/RecordStoreSqlLite;->getRecordIdsForRecordStore(J)[I

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->recordIds:[I

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->filter()V

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->sort()V

    return-void
.end method

.method public reset()V
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->isDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "RecordEnumeration instance is destroyed."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    const/4 v0, -0x1

    iput v0, p0, Ljavax/microedition/rms/RecordStoreSqlLiteEnumeration;->lastRecordIndex:I

    return-void
.end method
