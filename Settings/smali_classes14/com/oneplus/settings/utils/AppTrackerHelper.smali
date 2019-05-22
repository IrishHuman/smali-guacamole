.class public Lcom/oneplus/settings/utils/AppTrackerHelper;
.super Ljava/lang/Object;
.source "AppTrackerHelper.java"


# static fields
.field public static final APPTRACKER_ID:Ljava/lang/String; = "YLTI9SVG4L"

.field private static mContext:Landroid/content/Context;

.field private static mLock:Ljava/lang/Object;

.field private static sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;


# instance fields
.field private mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v1, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v1}, Landroid/app/Application;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "YLTI9SVG4L"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/utils/AppTrackerHelper;)Lnet/oneplus/odm/insight/tracker/AppTracker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    return-object v0
.end method

.method public static getInstance()Lcom/oneplus/settings/utils/AppTrackerHelper;
    .locals 2

    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v0, :cond_1

    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    if-nez v1, :cond_0

    new-instance v1, Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-direct {v1}, Lcom/oneplus/settings/utils/AppTrackerHelper;-><init>()V

    sput-object v1, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/oneplus/settings/utils/AppTrackerHelper;->sInstance:Lcom/oneplus/settings/utils/AppTrackerHelper;

    return-object v0
.end method


# virtual methods
.method public final putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/AppTrackerHelper$1;

    invoke-direct {v1, p0, p2, p3, p1}, Lcom/oneplus/settings/utils/AppTrackerHelper$1;-><init>(Lcom/oneplus/settings/utils/AppTrackerHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public final putAnalytics(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/oneplus/settings/utils/AppTrackerHelper$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/oneplus/settings/utils/AppTrackerHelper$2;-><init>(Lcom/oneplus/settings/utils/AppTrackerHelper;Ljava/lang/String;Ljava/util/Map;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_0
    return-void
.end method
