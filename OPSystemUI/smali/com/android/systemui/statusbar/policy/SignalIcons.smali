.class public Lcom/android/systemui/statusbar/policy/SignalIcons;
.super Ljava/lang/Object;
.source "SignalIcons.java"


# static fields
.field public static final HD_ICONS:[I

.field public static final VOLTE_ICONS:[I

.field public static final VOWIFI_ICONS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x3

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOLTE_ICONS:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/systemui/statusbar/policy/SignalIcons;->VOWIFI_ICONS:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/systemui/statusbar/policy/SignalIcons;->HD_ICONS:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f080ab1
        0x7f080ab3
        0x7f080ab2
    .end array-data

    :array_1
    .array-data 4
        0x7f080ab5
        0x7f080ab7
        0x7f080ab6
    .end array-data

    :array_2
    .array-data 4
        0x7f080867
        0x7f080869
        0x7f080868
    .end array-data
.end method
