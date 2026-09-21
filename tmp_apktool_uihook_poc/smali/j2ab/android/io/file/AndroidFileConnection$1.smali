.class Lj2ab/android/io/file/AndroidFileConnection$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lj2ab/android/io/file/AndroidFileConnection;->list(Ljava/lang/String;Z)Ljava/util/Enumeration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lj2ab/android/io/file/AndroidFileConnection;

.field final synthetic val$filterPattern:Ljava/util/regex/Pattern;


# direct methods
.method constructor <init>(Lj2ab/android/io/file/AndroidFileConnection;Ljava/util/regex/Pattern;)V
    .locals 0

    iput-object p1, p0, Lj2ab/android/io/file/AndroidFileConnection$1;->this$0:Lj2ab/android/io/file/AndroidFileConnection;

    iput-object p2, p0, Lj2ab/android/io/file/AndroidFileConnection$1;->val$filterPattern:Ljava/util/regex/Pattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lj2ab/android/io/file/AndroidFileConnection$1;->val$filterPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    return v0
.end method
