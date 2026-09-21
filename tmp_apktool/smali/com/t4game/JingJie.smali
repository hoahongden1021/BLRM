.class public Lcom/t4game/JingJie;
.super Ljava/lang/Object;


# static fields
.field public static final STATE_FINISH:B = 0x3t

.field public static final STATE_LOCK:B = 0x0t

.field public static final STATE_UNLOCK:B = 0x1t

.field public static final STATE_UPDATE:B = 0x2t

.field public static currentMoney:Ljava/lang/String;

.field public static dianjiInfo:[Ljava/lang/String;

.field public static dianjiInfoColor:[I

.field public static jjlastTime:J

.field public static jjtime:I

.field public static jjtimeLock:Z

.field public static jjtimeRate:I

.field public static otherValue:[S

.field public static timeCount:I


# instance fields
.field public JingJieInfo:[Ljava/lang/String;

.field public JingJieInfoFlag:B

.field public JingJieInfoFlag0:Z

.field dianjiState:[B

.field public iconId:I

.field id:B

.field public state:B


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v2, 0x0

    const-string v0, ""

    sput-object v0, Lcom/t4game/JingJie;->currentMoney:Ljava/lang/String;

    sput-boolean v2, Lcom/t4game/JingJie;->jjtimeLock:Z

    const-wide/16 v0, 0x0

    sput-wide v0, Lcom/t4game/JingJie;->jjlastTime:J

    const/16 v0, 0xdac

    sput v0, Lcom/t4game/JingJie;->jjtime:I

    sput v2, Lcom/t4game/JingJie;->timeCount:I

    const/4 v0, 0x1

    sput v0, Lcom/t4game/JingJie;->jjtimeRate:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static toAlertString([Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    const/4 v1, 0x0

    move v4, v1

    move-object v1, v0

    move v0, v4

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_1

    array-length v2, p0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    if-ne v0, v2, :cond_0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, p0, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_1
    return-object v1
.end method
