.class public Ljavax/microedition/lcdui/Command;
.super Ljava/lang/Object;


# static fields
.field public static final BACK:I = 0x1

.field public static final CANCEL:I = 0x2

.field public static final EXIT:I = 0x3

.field public static final HELP:I = 0x4

.field public static final ITEM:I = 0x5

.field public static final OK:I = 0x6

.field public static final SCREEN:I = 0x7

.field public static final STOP:I = 0x8


# instance fields
.field private commandType:I

.field private item:Landroid/view/MenuItem;

.field private label:Ljava/lang/String;

.field private longLabel:Ljava/lang/String;

.field private priority:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2, p3}, Ljavax/microedition/lcdui/Command;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/microedition/lcdui/Command;->label:Ljava/lang/String;

    iput-object p2, p0, Ljavax/microedition/lcdui/Command;->longLabel:Ljava/lang/String;

    iput p3, p0, Ljavax/microedition/lcdui/Command;->commandType:I

    iput p4, p0, Ljavax/microedition/lcdui/Command;->priority:I

    return-void
.end method


# virtual methods
.method public getCommandType()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Command;->commandType:I

    return v0
.end method

.method public getItem()Landroid/view/MenuItem;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->item:Landroid/view/MenuItem;

    return-object v0
.end method

.method public getLabel()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/Command;->label:Ljava/lang/String;

    return-object v0
.end method

.method public getPriority()I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/Command;->priority:I

    return v0
.end method

.method public setItem(Landroid/view/MenuItem;)V
    .locals 0

    iput-object p1, p0, Ljavax/microedition/lcdui/Command;->item:Landroid/view/MenuItem;

    return-void
.end method
