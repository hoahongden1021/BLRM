.class public Lj2ab/android/alipay/ResultChecker;
.super Ljava/lang/Object;


# static fields
.field public static final RESULT_CHECK_SIGN_FAILED:I = 0x1

.field public static final RESULT_CHECK_SIGN_SUCCEED:I = 0x2

.field public static final RESULT_INVALID_PARAM:I = 0x0

.field public static final RSA_ALIPAY_PUBLIC:Ljava/lang/String; = "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrx9phANCUmNYE02Q+Mnrz0zjYey6Z4cKGWDzxXHPUtDLct++6IOZZiKlyYOqDUWOIX0KqZU8RKlAIa91pWwlcLGV+YEGbd68MgX9CSOaoJyYUJn2FD3jbhUc3c+GO8ZH5l7cZOkkAK9RN8AQnOWAF6QZ4vJbEyFQaBAn5cDE1/QIDAQAB"


# instance fields
.field mContent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lj2ab/android/alipay/ResultChecker;->mContent:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkSign()I
    .locals 8

    const/4 v7, 0x0

    const/4 v6, 0x1

    const-string v0, "\""

    const-string v0, ""

    const/4 v0, 0x2

    :try_start_0
    iget-object v1, p0, Lj2ab/android/alipay/ResultChecker;->mContent:Ljava/lang/String;

    const-string v2, ";"

    invoke-static {v1, v2}, Lj2ab/android/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v2, "result"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v6

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    const-string v2, "&sign_type="

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "&"

    invoke-static {v1, v3}, Lj2ab/android/alipay/BaseHelper;->string2JSON(Ljava/lang/String;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v3, "sign_type"

    invoke-virtual {v1, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "sign"

    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "\""

    const-string v5, ""

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "RSA"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCrx9phANCUmNYE02Q+Mnrz0zjYey6Z4cKGWDzxXHPUtDLct++6IOZZiKlyYOqDUWOIX0KqZU8RKlAIa91pWwlcLGV+YEGbd68MgX9CSOaoJyYUJn2FD3jbhUc3c+GO8ZH5l7cZOkkAK9RN8AQnOWAF6QZ4vJbEyFQaBAn5cDE1/QIDAQAB"

    invoke-static {v2, v1, v3}, Lj2ab/android/alipay/Rsa;->doCheck(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    move v0, v6

    :cond_0
    :goto_0
    return v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    move v0, v7

    goto :goto_0
.end method
