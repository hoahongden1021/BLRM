.class public interface abstract Ljavax/microedition/pim/PIMItem;
.super Ljava/lang/Object;


# static fields
.field public static final ATTR_NONE:I = 0x0

.field public static final BINARY:I = -0x1

.field public static final BOOLEAN:I = -0x2

.field public static final DATE:I = -0x3

.field public static final EXTENDED_ATTRIBUTE_MIN_VALUE:I = -0x4

.field public static final EXTENDED_FIELD_MIN_VALUE:I = -0x5

.field public static final INT:I = -0x6

.field public static final STRING:I = -0x7

.field public static final STRING_ARRAY:I = -0x8


# virtual methods
.method public abstract countValues(I)I
.end method

.method public abstract getAttributes(II)I
.end method

.method public abstract getDate(II)J
.end method

.method public abstract getString(II)Ljava/lang/String;
.end method

.method public abstract getStringArray(II)[Ljava/lang/String;
.end method
