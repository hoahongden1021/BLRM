.class public interface abstract Lcom/t4game/IAuthenticateForm;
.super Ljava/lang/Object;


# static fields
.field public static final FORM_TYPE_ACCOUNT_FROZEN:B = -0x8t

.field public static final FORM_TYPE_ACCOUNT_UNFREEZE:B = -0xbt

.field public static final FORM_TYPE_IDENTITY_BINDING:B = -0x7t

.field public static final FORM_TYPE_LOGIN:B = -0xct

.field public static final FORM_TYPE_MAIL_BINDING:B = -0x5t

.field public static final FORM_TYPE_MAIL_SLACKING:B = -0x6t

.field public static final FORM_TYPE_MODIFY_PASSWORD:B = -0xdt

.field public static final FORM_TYPE_MODIFY_SECURITY_PW:B = -0xat

.field public static final FORM_TYPE_PHONE_BINDING:B = -0x3t

.field public static final FORM_TYPE_PHONE_SLACKING:B = -0x4t

.field public static final FORM_TYPE_SEEK_PASSWORD:B = -0x2t

.field public static final FORM_TYPE_SET_SECURITY_PW:B = -0x9t

.field public static final FORM_TYPE_USER_REGIST:B = -0x1t


# virtual methods
.method public abstract getUserInfo()[Ljava/lang/String;
.end method

.method public abstract setAccountFrozen(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setAccountUnfreeze(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setIdentityBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
.end method

.method public abstract setLogin(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMailBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setMailSlacking(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setModifyPassWord(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setModifySercurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end method

.method public abstract setPhoneBinding(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setPhoneSlacking(Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setSeekPassWord(Ljava/lang/String;B)V
.end method

.method public abstract setSetSecurityPW(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract setUserRegist(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;BLjava/lang/String;)V
.end method

.method public abstract showCanvas()V
.end method
