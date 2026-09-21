.class public Lcom/t4game/Data;
.super Ljava/lang/Object;


# static fields
.field public static final UIImage:[Ljavax/microedition/lcdui/Image;

.field public static final color:[I

.field public static final commandString:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    const v7, 0xa335ee

    const/16 v6, 0x70dd

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    const/16 v0, 0x1d

    new-array v0, v0, [I

    const v1, 0xffff00

    aput v1, v0, v3

    const/high16 v1, 0xff0000

    aput v1, v0, v4

    const v1, 0xffffff

    aput v1, v0, v5

    const/4 v1, 0x3

    const v2, 0xff0f00

    aput v2, v0, v1

    const/4 v1, 0x4

    const v2, 0x764e00

    aput v2, v0, v1

    const/4 v1, 0x5

    const v2, 0xf9df00

    aput v2, v0, v1

    const/4 v1, 0x6

    const v2, 0x300506

    aput v2, v0, v1

    const/4 v1, 0x7

    sget v2, Lcom/t4game/Defaults;->C_GREEN_FREE:I

    aput v2, v0, v1

    const/16 v1, 0x8

    sget v2, Lcom/t4game/Defaults;->C_BROWN_NORMAL:I

    aput v2, v0, v1

    const/16 v1, 0x9

    sget v2, Lcom/t4game/Defaults;->C_RED_BUSY:I

    aput v2, v0, v1

    const/16 v1, 0xa

    sget v2, Lcom/t4game/Defaults;->C_GRAY_FIX:I

    aput v2, v0, v1

    const/16 v1, 0xb

    const v2, 0x121212

    aput v2, v0, v1

    const/16 v1, 0xc

    const v2, 0xffc700

    aput v2, v0, v1

    const/16 v1, 0xd

    const v2, 0x3c3c3c

    aput v2, v0, v1

    const/16 v1, 0xe

    const v2, 0x897b09

    aput v2, v0, v1

    const/16 v1, 0xf

    aput v6, v0, v1

    const/16 v1, 0x10

    aput v7, v0, v1

    const/16 v1, 0x11

    const v2, 0xffc700

    aput v2, v0, v1

    const/16 v1, 0x12

    sget v2, Lcom/t4game/Defaults;->C_WORD_SELECT:I

    aput v2, v0, v1

    const/16 v1, 0x13

    sget v2, Lcom/t4game/Defaults;->C_KUANG_UPRIGHT_INTENAL:I

    aput v2, v0, v1

    const/16 v1, 0x14

    aput v3, v0, v1

    const/16 v1, 0x15

    const v2, 0xffffff

    aput v2, v0, v1

    const/16 v1, 0x16

    const v2, 0x1eff00

    aput v2, v0, v1

    const/16 v1, 0x17

    aput v6, v0, v1

    const/16 v1, 0x18

    aput v7, v0, v1

    const/16 v1, 0x19

    const/4 v2, -0x1

    aput v2, v0, v1

    const/16 v1, 0x1a

    sget v2, Lcom/t4game/Defaults;->C_GRAY_FIX:I

    aput v2, v0, v1

    const/16 v1, 0x1b

    const v2, 0xff4c21

    aput v2, v0, v1

    const/16 v1, 0x1c

    const v2, 0x2bff37

    aput v2, v0, v1

    sput-object v0, Lcom/t4game/Data;->color:[I

    const/16 v0, 0x1e

    new-array v0, v0, [Ljavax/microedition/lcdui/Image;

    sput-object v0, Lcom/t4game/Data;->UIImage:[Ljavax/microedition/lcdui/Image;

    new-array v0, v5, [Ljava/lang/String;

    const-string v1, "\u786e\u5b9a"

    aput-object v1, v0, v3

    const-string v1, "\u8fd4\u56de"

    aput-object v1, v0, v4

    sput-object v0, Lcom/t4game/Data;->commandString:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
