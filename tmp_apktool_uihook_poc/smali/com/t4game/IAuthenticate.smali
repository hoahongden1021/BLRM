.class public interface abstract Lcom/t4game/IAuthenticate;
.super Ljava/lang/Object;


# static fields
.field public static final Channel_D_CN:B = 0x1t

.field public static final Channel_Mobile:B = 0x3t

.field public static final Channel_Other:B = -0x1t

.field public static final Channel_RenRen:B = 0x4t

.field public static final Channel_T4game:B = 0x0t

.field public static final Channel_TW:B = 0x2t

.field public static final Channel_Tencent:B = 0x5t

.field public static final RESULT_CODE_OK:B = 0x1t

.field public static final RESULT_CODE_REG_USER_EXISTING:B = 0x4t

.field public static final Result_Code_Error:B = 0x0t

.field public static final Result_Code_No_QME_TW:B = 0x5t

.field public static final Result_Code_must_update_version:B = 0x3t

.field public static final Result_Code_warning_update_version:B = 0x2t


# virtual methods
.method public abstract InitDefaultState()V
.end method

.method public abstract LoginGame()V
.end method

.method public abstract draw(Ljavax/microedition/lcdui/Graphics;)V
.end method

.method public abstract getSendBuffer()[B
.end method

.method public abstract isNoTimeOut()Z
.end method

.method public abstract keyPressed(I)V
.end method

.method public abstract pointer(II)V
.end method

.method public abstract processMessage(B)V
.end method

.method public abstract release()V
.end method
