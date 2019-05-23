.class public Lcom/oneplus/screenshot/longshot/util/Events;
.super Ljava/lang/Object;
.source "Events.java"


# static fields
.field public static final STOPLONGSHOT_REASON_SHOW_ALARM_ALERT:I = 0x3

.field public static final STOPLONGSHOT_REASON_SHOW_GLOBALACTION:I = 0x2

.field public static final STOPLONGSHOT_REASON_TAKE_LONGSHOT:I = 0x1

.field public static final STOPLONGSHOT_REASON_UNKNOW:I

.field public static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Events"

    sput-object v0, Lcom/oneplus/screenshot/longshot/util/Events;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getToastString(Landroid/content/Context;I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const v0, 0x7f0d004a

    nop

    :goto_0
    if-lez v0, :cond_2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_1

    :cond_2
    const-string v1, ""

    :goto_1
    return-object v1
.end method
