.class Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;
.super Ljava/lang/Object;
.source "BgOptimizeApps.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-void
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$1;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-void
.end method

.method private updateSummary(I)V
    .locals 6

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    const v2, 0x7f120a1e

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v1, p0, Lcom/oneplus/settings/backgroundoptimize/BgOptimizeApps$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100028

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 0

    return-void
.end method
