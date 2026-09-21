.class public abstract Ljavax/microedition/lcdui/game/GameCanvas;
.super Ljavax/microedition/lcdui/Canvas;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavax/microedition/lcdui/game/GameCanvas$KeyAccess;
    }
.end annotation


# static fields
.field public static final DOWN_PRESSED:I = 0x100000

.field public static final FIRE_PRESSED:I = 0x800000

.field public static final GAME_A_PRESSED:I = 0x40000

.field public static final GAME_B_PRESSED:I = 0x20000

.field public static final GAME_C_PRESSED:I = 0x100

.field public static final GAME_D_PRESSED:I = 0x400

.field public static final LEFT_PRESSED:I = 0x200000

.field public static final RIGHT_PRESSED:I = 0x400000

.field public static final UP_PRESSED:I = 0x80000


# instance fields
.field private actualKeyState:I

.field private latchedKeyState:I

.field offscreenBuffer:Ljavax/microedition/lcdui/Image;

.field private suppressKeyEvents:Z


# direct methods
.method protected constructor <init>(Z)V
    .locals 2

    invoke-direct {p0}, Ljavax/microedition/lcdui/Canvas;-><init>()V

    iput-boolean p1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->suppressKeyEvents:Z

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Ljavax/microedition/lcdui/Image;->createImage(II)Ljavax/microedition/lcdui/Image;

    move-result-object v0

    iput-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    return-void
.end method

.method static synthetic access$000(Ljavax/microedition/lcdui/game/GameCanvas;)Z
    .locals 1

    iget-boolean v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->suppressKeyEvents:Z

    return v0
.end method

.method static synthetic access$176(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    or-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    return v0
.end method

.method static synthetic access$202(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 0

    iput p1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return p1
.end method

.method static synthetic access$272(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    and-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return v0
.end method

.method static synthetic access$276(Ljavax/microedition/lcdui/game/GameCanvas;I)I
    .locals 1

    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    or-int/2addr v0, p1

    iput v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    return v0
.end method


# virtual methods
.method public flushGraphics()V
    .locals 0

    invoke-virtual {p0}, Ljavax/microedition/lcdui/game/GameCanvas;->repaint()V

    return-void
.end method

.method public flushGraphics(IIII)V
    .locals 0

    invoke-virtual {p0, p1, p2, p3, p4}, Ljavax/microedition/lcdui/game/GameCanvas;->repaint(IIII)V

    return-void
.end method

.method protected getGraphics()Ljavax/microedition/lcdui/Graphics;
    .locals 1

    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    invoke-virtual {v0}, Ljavax/microedition/lcdui/Image;->getGraphics()Ljavax/microedition/lcdui/Graphics;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStates()I
    .locals 2

    monitor-enter p0

    :try_start_0
    iget v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    iget v1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->actualKeyState:I

    iput v1, p0, Ljavax/microedition/lcdui/game/GameCanvas;->latchedKeyState:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public paint(Ljavax/microedition/lcdui/Graphics;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Ljavax/microedition/lcdui/game/GameCanvas;->offscreenBuffer:Ljavax/microedition/lcdui/Image;

    const/16 v1, 0x14

    invoke-virtual {p1, v0, v2, v2, v1}, Ljavax/microedition/lcdui/Graphics;->drawImage(Ljavax/microedition/lcdui/Image;III)V

    return-void
.end method
