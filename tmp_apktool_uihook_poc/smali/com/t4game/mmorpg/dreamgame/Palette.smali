.class public Lcom/t4game/mmorpg/dreamgame/Palette;
.super Ljava/lang/Object;


# static fields
.field public static final Aqua:B = 0xft

.field public static final Black:B = 0x0t

.field public static final Blue:B = 0xct

.field public static final BlueGod:B = 0x20t

.field public static final COLORS:[I

.field public static final DeepSkyBlue:B = 0x11t

.field public static final DodgerBlue:B = 0x12t

.field public static final Fuchsia:B = 0x7t

.field public static final Gold:B = 0x1at

.field public static final Goldenrod:B = 0x1bt

.field public static final Gray:B = 0x1t

.field public static final Green:B = 0x8t

.field public static final GreenGod:B = 0x22t

.field public static final GreenYellow:B = 0x16t

.field public static final Khaki:B = 0x1ct

.field public static final LightBlue:B = 0x1et

.field public static final LightSkyBlue:B = 0x1ft

.field public static final LightYellow:B = 0x1dt

.field public static final Lime:B = 0x9t

.field public static final LimeGreen:B = 0x15t

.field public static final Maroon:B = 0x5t

.field public static final Navy:B = 0xdt

.field public static final Olive:B = 0xat

.field public static final Orange:B = 0x19t

.field public static final OrangeRed:B = 0x18t

.field public static final Purple:B = 0x6t

.field public static final PurpleGod:B = 0x21t

.field public static final Red:B = 0x4t

.field public static final RoyalBlue:B = 0x13t

.field public static final Silver:B = 0x2t

.field public static final SkyBlue:B = 0x10t

.field public static final SpringGreen:B = 0x14t

.field public static final Teal:B = 0xet

.field public static final Tomato:B = 0x17t

.field public static final White:B = 0x3t

.field public static final Yellow:B = 0xbt

.field public static qualityColor:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x23

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->qualityColor:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x808080
        0xc0c0c0
        0xffffff
        0xff0000
        0x800000
        0x800080
        0xff00ff
        0x8000
        0xff00
        0x808000
        0xffff00
        0xff
        0x80
        0x8080
        0xffff
        0x87ceeb
        0xbfff
        0x1e90ff
        0x4169e1
        0xff7f
        0x32cd32
        0xadff2f
        0xff6347
        0xff4500
        0xffa500
        0xffd700
        0xdaa520
        0xf0e68c
        0xffff8c
        0xadd8e6
        0x87cefa
        0x70dd
        0xfe05aa
        0xff7f00
    .end array-data

    :array_1
    .array-data 4
        0xffffff
        0xff00
        0x90ff
        0xc018c0
        0xffa500
        0xff0000
        0xffc0df
        0xffff00
    .end array-data
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final getColor(B)I
    .locals 1

    sget-object v0, Lcom/t4game/mmorpg/dreamgame/Palette;->COLORS:[I

    aget v0, v0, p0

    return v0
.end method
