.class public Lcom/android/server/preload/OneplusAppPreload;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/preload/OneplusAppPreload$PowerUnit;,
        Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;,
        Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;,
        Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;,
        Lcom/android/server/preload/OneplusAppPreload$FreezeTask;,
        Lcom/android/server/preload/OneplusAppPreload$PauseTask;,
        Lcom/android/server/preload/OneplusAppPreload$killUnusedTask;,
        Lcom/android/server/preload/OneplusAppPreload$PreloadHighUseTask;,
        Lcom/android/server/preload/OneplusAppPreload$SingleRecord;,
        Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;,
        Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;,
        Lcom/android/server/preload/OneplusAppPreload$PreloadSource;,
        Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;,
        Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;,
        Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;
    }
.end annotation


# static fields
.field public static final APPID:Ljava/lang/String; = "RHJ2VVOOTS"

.field private static final DEBUG_KILL_UNUSED_DELAY:I = 0x7530

.field private static final DEBUG_MDM:Z

.field private static final ENABLE_DEMO:Z

.field private static final FREEZE_DELAY:I = 0x3a98

.field private static final HIT_CRITERIA:J

.field private static final KILL_UNUSED_DELAY:I = 0xa4cb800

.field public static final MDM_ALL_EVENT:Ljava/lang/String; = "preload_all"

.field public static final MDM_FAIL_TIMES:Ljava/lang/String; = "fail_times"

.field public static final MDM_FAIL_USED_POWER:Ljava/lang/String; = "fail_used_power"

.field public static final MDM_HIT:Ljava/lang/String; = "hit"

.field public static final MDM_HIT_LABEL:Ljava/lang/String; = "hit_label"

.field public static final MDM_HIT_PRELOAD_TIMES:Ljava/lang/String; = "total_times"

.field public static final MDM_HIT_RATIO:Ljava/lang/String; = "hit_ratio"

.field public static final MDM_HIT_TIMES:Ljava/lang/String; = "hit_times"

.field public static final MDM_HIT_USED_POWER:Ljava/lang/String; = "hit_used_power"

.field public static final MDM_KEY_PRELOAD_TYPE_HIGHUSED:Ljava/lang/String; = "high_used"

.field public static final MDM_KEY_PRELOAD_TYPE_PREDICT:Ljava/lang/String; = "predict"

.field public static final MDM_PACKAGE_NAME:Ljava/lang/String; = "pkg"

.field public static final MDM_PRELOAD_TYPE:Ljava/lang/String; = "preload_type"

.field public static final MDM_SINGLE_EVENT:Ljava/lang/String; = "preload_single"

.field public static final MDM_SKIP_PREDICT_EVENT:Ljava/lang/String; = "preload_skip_predict"

.field public static final MDM_SKIP_PREDICT_REASON:Ljava/lang/String; = "skip_predict_reason"

.field public static final MDM_USED_POWER:Ljava/lang/String; = "used_power"

.field private static final PAUSE_DELAY:I = 0x2710

.field private static final POWER_FACTOR:F = 1.1f

.field private static final PRELOAD_INTEVAL:I = 0xea60

.field private static final PRE_CONSUME_DURATION:J

.field private static final REPORT_MDM_DURATION:J

.field private static final TAG:Ljava/lang/String; = "OneplusAppPreload"

.field private static mLocationManager:Lcom/android/server/LocationManagerService;

.field private static sBatteryLevel:I

.field private static sCPUCriteria:F

.field private static sDebug:Z

.field private static sDebugHit:Z

.field private static sDebugKillUnused:Z

.field private static sElectricCurrentFileName:Ljava/lang/String;

.field private static sEnableAllApp:Z

.field private static sEnableAllIm:Z

.field private static sImWhitelist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sIsAlphaRom:Z

.field private static sIsBetaRom:Z

.field private static sIsPortraitMode:Z

.field private static sMaxHighUsagePreloadNum:I

.field private static sMaxPreloadNum:I

.field private static sMinAvailMemory:J

.field private static sOnlyTestOneApp:Z

.field private static sPackageElectricCurrentTable:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sPolicyEnable:Z

.field private static sPowerSaveMode:Z

.field private static sPredictionConfidence:F

.field private static sPreloadAfterBoot:J

.field private static sPreloadDuration:J

.field private static sPreloadPredictNum:I

.field private static sRecordFileName:Ljava/lang/String;

.field private static sRecordPath:Ljava/lang/String;

.field private static sRemovedRecentTasks:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sSupportAppsPower:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/server/preload/OneplusAppPreload$PowerUnit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isRegisterPowerSave:Z

.field private isRegisterScreenState:Z

.field private isRegisterUserUnlock:Z

.field private mAppForceStopRecord:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPreloadHitRate:Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;

.field private mConorCallBack:Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

.field private mContext:Landroid/content/Context;

.field private mCurrentPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

.field private mFilterPowerSave:Landroid/content/IntentFilter;

.field private mFilterUnlock:Landroid/content/IntentFilter;

.field private mForegroundApp:Ljava/lang/String;

.field private mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

.field private mLastPreloadTime:J

.field private mLastReportMdmTime:J

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPowerManager:Landroid/os/PowerManager;

.field private final mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

.field private mPreloadCandidate:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;",
            ">;"
        }
    .end annotation
.end field

.field private mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

.field private mRecordDir:Ljava/io/File;

.field private mRecordFile:Landroid/util/AtomicFile;

.field private mScreenOn:Z

.field private mScreenStateFile:Landroid/content/IntentFilter;

.field private final mScreenStateReceiver:Landroid/content/BroadcastReceiver;

.field private mService:Lcom/android/server/am/ActivityManagerService;

.field private mSystemReady:Z

.field private mThread:Landroid/os/HandlerThread;

.field private final mUserUnlockReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const-string/jumbo v0, "persist.sys.preload.demo"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->ENABLE_DEMO:Z

    const-string/jumbo v0, "persist.sys.preload.debugmdm"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->DEBUG_MDM:Z

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->DEBUG_MDM:Z

    if-eqz v0, :cond_0

    const-wide/32 v2, 0x2bf20

    goto :goto_0

    :cond_0
    const-wide/32 v2, 0x240c8400

    :goto_0
    sput-wide v2, Lcom/android/server/preload/OneplusAppPreload;->REPORT_MDM_DURATION:J

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->DEBUG_MDM:Z

    const-wide/32 v2, 0xea60

    if-eqz v0, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    const-wide/32 v4, 0x112a880

    :goto_1
    sput-wide v4, Lcom/android/server/preload/OneplusAppPreload;->PRE_CONSUME_DURATION:J

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->DEBUG_MDM:Z

    if-eqz v0, :cond_2

    goto :goto_2

    :cond_2
    const-wide/32 v2, 0x6ddd00

    :goto_2
    sput-wide v2, Lcom/android/server/preload/OneplusAppPreload;->HIT_CRITERIA:J

    const-string/jumbo v0, "persist.sys.preload.min_mem"

    const-wide/32 v2, 0x60000000

    invoke-static {v0, v2, v3}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sput-wide v2, Lcom/android/server/preload/OneplusAppPreload;->sMinAvailMemory:J

    const-string/jumbo v0, "persist.sys.preload.predict_num"

    const/4 v2, 0x1

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sPreloadPredictNum:I

    const-string/jumbo v0, "persist.sys.preload.preload_num"

    const/4 v3, -0x1

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    const-string/jumbo v0, "persist.sys.preload.highuse_num"

    const/4 v3, 0x3

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sMaxHighUsagePreloadNum:I

    const-string/jumbo v0, "persist.sys.preload.debugkill"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugKillUnused:Z

    const-string/jumbo v0, "persist.sys.preload.allim"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllIm:Z

    const/high16 v0, 0x3f000000    # 0.5f

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sCPUCriteria:F

    const-wide/16 v3, 0x1388

    sput-wide v3, Lcom/android/server/preload/OneplusAppPreload;->sPreloadDuration:J

    const-wide/16 v3, 0x7530

    sput-wide v3, Lcom/android/server/preload/OneplusAppPreload;->sPreloadAfterBoot:J

    const v0, 0x3f666666    # 0.9f

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F

    const-string/jumbo v0, "ro.build.alpha"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_3

    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsAlphaRom:Z

    const-string/jumbo v0, "ro.build.beta"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_4

    move v0, v2

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsBetaRom:Z

    const-string/jumbo v0, "persist.sys.preload.testoneapp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sOnlyTestOneApp:Z

    const-string/jumbo v0, "persist.sys.preload.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsBetaRom:Z

    if-nez v0, :cond_5

    goto :goto_5

    :cond_5
    move v0, v1

    goto :goto_6

    :cond_6
    :goto_5
    move v0, v2

    :goto_6
    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    const-string/jumbo v0, "persist.sys.preload.allapp"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllApp:Z

    sput-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    sput-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    sput-boolean v2, Lcom/android/server/preload/OneplusAppPreload;->sIsPortraitMode:Z

    sput-boolean v2, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    const/16 v0, 0x64

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sBatteryLevel:I

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    const-string v0, "/data/system/apppreload/"

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRecordPath:Ljava/lang/String;

    const-string/jumbo v0, "record.txt"

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRecordFileName:Ljava/lang/String;

    const-string v0, "electric_current.txt"

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sElectricCurrentFileName:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->sPackageElectricCurrentTable:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;Landroid/os/HandlerThread;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mForegroundApp:Ljava/lang/String;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mFilterUnlock:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mFilterPowerSave:Landroid/content/IntentFilter;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateFile:Landroid/content/IntentFilter;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;

    invoke-direct {v0}, Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mAppPreloadHitRate:Lcom/android/server/preload/OneplusAppPreload$AppPreloadHitRate;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mAppForceStopRecord:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterUserUnlock:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterPowerSave:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterScreenState:Z

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastPreloadTime:J

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mSystemReady:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenOn:Z

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-direct {v0, p0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    iput-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$6;

    invoke-direct {v0, p0}, Lcom/android/server/preload/OneplusAppPreload$6;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$7;

    invoke-direct {v0, p0}, Lcom/android/server/preload/OneplusAppPreload$7;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$8;

    invoke-direct {v0, p0}, Lcom/android/server/preload/OneplusAppPreload$8;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload;->mThread:Landroid/os/HandlerThread;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-virtual {p3}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v0, p0, v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;-><init>(Lcom/android/server/preload/OneplusAppPreload;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-direct {v0, p0, v3, v4}, Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/util/ArrayList;Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mConorCallBack:Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    const-string v4, "RHJ2VVOOTS"

    invoke-direct {v0, v3, v4}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/android/server/preload/OneplusAppPreload;->sRecordPath:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordDir:Ljava/io/File;

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->readOldRecord()V

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mRecordStartTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    return-object v0
.end method

.method static synthetic access$1100()Lcom/android/server/LocationManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/BroadcastReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/preload/OneplusAppPreload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterUserUnlock:Z

    return p1
.end method

.method static synthetic access$1500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    return v0
.end method

.method static synthetic access$1600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    return v0
.end method

.method static synthetic access$1602(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    return p0
.end method

.method static synthetic access$1700()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sOnlyTestOneApp:Z

    return v0
.end method

.method static synthetic access$1800()J
    .locals 2

    sget-wide v0, Lcom/android/server/preload/OneplusAppPreload;->sPreloadAfterBoot:J

    return-wide v0
.end method

.method static synthetic access$1900(Lcom/android/server/preload/OneplusAppPreload;)Landroid/os/PowerManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mConorCallBack:Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    return-object v0
.end method

.method static synthetic access$2100()F
    .locals 1

    sget v0, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/preload/OneplusAppPreload;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenOn:Z

    return p1
.end method

.method static synthetic access$2300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/preload/OneplusAppPreload;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    return-wide v0
.end method

.method static synthetic access$2402(Lcom/android/server/preload/OneplusAppPreload;J)J
    .locals 0

    iput-wide p1, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    return-wide p1
.end method

.method static synthetic access$2500()J
    .locals 2

    sget-wide v0, Lcom/android/server/preload/OneplusAppPreload;->REPORT_MDM_DURATION:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->reportAllMDM()V

    return-void
.end method

.method static synthetic access$2702(Lcom/android/server/preload/OneplusAppPreload;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload;->mCurrentPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-object p1
.end method

.method static synthetic access$2800()J
    .locals 2

    sget-wide v0, Lcom/android/server/preload/OneplusAppPreload;->HIT_CRITERIA:J

    return-wide v0
.end method

.method static synthetic access$2900()Ljava/util/Map;
    .locals 1

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3000()J
    .locals 2

    sget-wide v0, Lcom/android/server/preload/OneplusAppPreload;->PRE_CONSUME_DURATION:J

    return-wide v0
.end method

.method static synthetic access$3100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/preload/OneplusAppPreload;->getPreloadTask(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugKillUnused:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/preload/OneplusAppPreload;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastPreloadTime:J

    return-wide v0
.end method

.method static synthetic access$3400(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/preload/OneplusAppPreload;->isPreloadableApp(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3500(Lcom/android/server/preload/OneplusAppPreload;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$3600(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Z)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/preload/OneplusAppPreload;->isAlreadyAddToPreload(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$3700()I
    .locals 1

    sget v0, Lcom/android/server/preload/OneplusAppPreload;->sMaxHighUsagePreloadNum:I

    return v0
.end method

.method static synthetic access$3800()F
    .locals 1

    sget v0, Lcom/android/server/preload/OneplusAppPreload;->sCPUCriteria:F

    return v0
.end method

.method static synthetic access$3900(Lcom/android/server/preload/OneplusAppPreload;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mAppForceStopRecord:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;Z)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/preload/OneplusAppPreload;->reportSingleMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;Z)V

    return-void
.end method

.method static synthetic access$4000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    return v0
.end method

.method static synthetic access$4100(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/preload/OneplusAppPreload;->isAppInPreloadStack(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsPortraitMode:Z

    return v0
.end method

.method static synthetic access$4400(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/preload/OneplusAppPreload;->isLaunchablePackage(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->doWriteRecord()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/preload/OneplusAppPreload;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    return-object v0
.end method

.method private addCandidates([Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    array-length v1, p1

    const/4 v2, 0x2

    :goto_0
    if-ge v2, v1, :cond_0

    new-instance v3, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    aget-object v4, p1, v2

    sget-object v5, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->UNKNOWN:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    invoke-direct {v3, v4, v5}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;-><init>(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$PreloadSource;)V

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static addRemovedTaskPackage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addRemoveTaskPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private addSupportApps(Ljava/lang/String;Z)V
    .locals 7

    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_0

    aget-object v4, v0, v3

    const-string v5, "OneplusAppPreload"

    invoke-static {v5, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v1, v0

    const/4 v3, 0x3

    if-ne v1, v3, :cond_1

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    aget-object v3, v0, v2

    new-instance v4, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;

    const/4 v5, 0x1

    aget-object v5, v0, v5

    invoke-static {v5}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v5

    const/4 v6, 0x2

    aget-object v6, v0, v6

    invoke-static {v6}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v6

    invoke-direct {v4, v5, v6}, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;-><init>(FF)V

    invoke-interface {v1, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p2, :cond_1

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    aget-object v2, v0, v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method private cleanCandidate()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private cleanOldRecord()V
    .locals 3

    const-string v0, "OneplusAppPreload"

    const-string v1, "Clear all old records"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->clearAllResult()V

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload;->sRecordPath:Ljava/lang/String;

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload;->sRecordFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_0
    return-void
.end method

.method public static clearAppAlarms(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.clear.alarm"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method public static clearAppWakeLocks(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.oneplus.clear.wakelock"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "android.intent.extra.PACKAGES"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.permission.FORCE_STOP_PACKAGES"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_1
    return-void
.end method

.method private deleteOldData()V
    .locals 5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->cleanOldData()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v4}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->cleanOldData()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private doWriteRecord()V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    sget-object v3, Lcom/android/server/preload/OneplusAppPreload;->sRecordPath:Ljava/lang/String;

    sget-object v4, Lcom/android/server/preload/OneplusAppPreload;->sRecordFileName:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordFile:Landroid/util/AtomicFile;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v1

    move-object v0, v1

    new-instance v1, Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RecordStartTime   "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    new-instance v1, Ljava/lang/String;

    const-string v2, "Prediction Result\n"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {p0, v2, v5}, Lcom/android/server/preload/OneplusAppPreload;->getRecordBytes(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    new-instance v1, Ljava/lang/String;

    const-string v2, "High Usage Result\n"

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/FileOutputStream;->write([B)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {p0, v2, v5}, Lcom/android/server/preload/OneplusAppPreload;->getRecordBytes(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/io/FileOutputStream;->write([B)V

    goto :goto_3

    :cond_2
    goto :goto_2

    :cond_3
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v1, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    const-string v1, "OneplusAppPreload"

    const-string v2, "Finishing writting old record"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_4

    :catchall_0
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "OneplusAppPreload"

    const-string v3, "Error writing process statistics"

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordFile:Landroid/util/AtomicFile;

    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_4
    nop

    return-void

    :goto_5
    throw v1
.end method

.method private examineData()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->cleanStrangeData()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v4}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->cleanStrangeData()V

    goto :goto_1

    :cond_1
    return-void
.end method

.method private getAppMainIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 6

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.LAUNCHER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, p1, v3}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getAppMainIntent: pkg : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " classname "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_1
    const-string v2, "OneplusAppPreload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getAppMainIntent: pkg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " has no main activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    return-object v2
.end method

.method private getPreloadTask(Ljava/lang/String;)I
    .locals 8

    const/4 v0, -0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/4 v1, -0x1

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->getPreloadStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v3

    if-nez v3, :cond_1

    const-string v4, "OneplusAppPreload"

    const-string/jumbo v5, "getPreloadTask is null"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    if-ge v0, v4, :cond_5

    iget-object v4, v3, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v4, v4, v0

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_4

    const-string/jumbo v5, "unknown"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-nez v5, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    iget v6, v3, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v7, v3, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v7, v7, v0

    if-ne v6, v7, :cond_4

    iget-object v6, v3, Landroid/app/ActivityManager$StackInfo;->taskIds:[I

    aget v6, v6, v0

    return v6

    :cond_4
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private getPreloadTaskNum()I
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPreloadStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    iget-object v1, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v1, v1

    return v1
.end method

.method private getRecordBytes(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)[B
    .locals 4

    new-instance v0, Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private getRecordStartTime(Ljava/lang/String;)J
    .locals 5

    const-wide/16 v0, 0x0

    const-string v2, "\\s+"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :try_start_0
    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-wide v0
.end method

.method private initEssential()V
    .locals 7

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sget-object v3, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_2

    if-eqz v1, :cond_0

    const v3, 0x5020002

    goto :goto_0

    :cond_0
    const v3, 0x5020004

    :goto_0
    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_2

    array-length v5, v4

    if-lez v5, :cond_2

    move v5, v2

    :goto_1
    :try_start_0
    array-length v6, v4

    if-ge v5, v6, :cond_1

    aget-object v6, v4, v5

    invoke-direct {p0, v6, v2}, Lcom/android/server/preload/OneplusAppPreload;->addSupportApps(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_1
    goto :goto_2

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_2
    if-nez v1, :cond_4

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5020003

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    array-length v4, v3

    if-lez v4, :cond_4

    :try_start_1
    sget-object v4, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    nop

    :goto_3
    array-length v4, v3

    if-ge v2, v4, :cond_3

    aget-object v4, v3, v2

    invoke-direct {p0, v4, v0}, Lcom/android/server/preload/OneplusAppPreload;->addSupportApps(Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_3
    goto :goto_4

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_4
    :goto_4
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->updateMaxPreloadNum()V

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->registerReceivers()V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v2, Lcom/android/server/preload/OneplusAppPreload$3;

    invoke-direct {v2, p0}, Lcom/android/server/preload/OneplusAppPreload$3;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    invoke-virtual {v0, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v2, Lcom/android/server/preload/OneplusAppPreload$4;

    invoke-direct {v2, p0}, Lcom/android/server/preload/OneplusAppPreload$4;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    invoke-virtual {v0, v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->post(Ljava/lang/Runnable;)Z

    const-string/jumbo v0, "persist.sys.preload.confidence"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_5

    :try_start_2
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v2

    sput v2, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    :cond_5
    :goto_5
    const-string/jumbo v2, "persist.sys.preload.cpu"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_6

    :try_start_3
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v3

    sput v3, Lcom/android/server/preload/OneplusAppPreload;->sCPUCriteria:F
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    :catch_3
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :cond_6
    :goto_6
    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Now prediction confidence is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload;->mConorCallBack:Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    sget v5, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F

    invoke-virtual {v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->registerConnorConfCallback(Lcom/android/server/am/Connor$ConfCallbacks;F)V

    return-void
.end method

.method private initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v3, Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;

    invoke-direct {v3, p0}, Lcom/android/server/preload/OneplusAppPreload$OnlineConfigObserver;-><init>(Lcom/android/server/preload/OneplusAppPreload;)V

    const-string v4, "AppPreload"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mOnlineConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private isAlreadyAddToPreload(Ljava/lang/String;Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    invoke-static {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v0, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignore already add packages : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ALREADY_QUEUED:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_0
    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method

.method private isAppInPreloadStack(Ljava/lang/String;)Z
    .locals 7

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPreloadStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    move v2, v1

    :goto_0
    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_5

    iget-object v3, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    const-string/jumbo v4, "unknown"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_1

    :cond_2
    invoke-static {v3}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_3

    goto :goto_1

    :cond_3
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    iget v5, v0, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v6, v0, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v6, v6, v2

    if-ne v5, v6, :cond_4

    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    return v1
.end method

.method private isAppProtected(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/preload/ProtectedAppUtils;->getInstance()Lcom/android/server/preload/ProtectedAppUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/preload/ProtectedAppUtils;->isAppProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isAppRunning(Ljava/lang/String;)Z
    .locals 10

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService;->isAppRunning(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is running in getRunningAppProcesses."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getAllStackInfos()Ljava/util/List;

    move-result-object v1

    if-nez v1, :cond_2

    return v0

    :cond_2
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$StackInfo;

    if-nez v4, :cond_3

    goto :goto_0

    :cond_3
    move v5, v0

    :goto_1
    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_7

    iget-object v6, v4, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_6

    const-string/jumbo v7, "unknown"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    goto :goto_2

    :cond_4
    invoke-static {v6}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v7

    if-nez v7, :cond_5

    goto :goto_2

    :cond_5
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_6

    iget v8, v4, Landroid/app/ActivityManager$StackInfo;->userId:I

    iget-object v9, v4, Landroid/app/ActivityManager$StackInfo;->taskUserIds:[I

    aget v9, v9, v5

    if-ne v8, v9, :cond_6

    const-string v0, "OneplusAppPreload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " is running in stack "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/app/ActivityManager$StackInfo;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_7
    goto :goto_0

    :cond_8
    return v0
.end method

.method private isAvailMemory()Z
    .locals 6

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    new-instance v1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    const-string v2, "OneplusAppPreload"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "AppPreload get current availMem:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, v1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sget-wide v4, Lcom/android/server/preload/OneplusAppPreload;->sMinAvailMemory:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isLaunchablePackage(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager;->isLaunchablePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_LAUNCHABLE:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private isLocationServiceExist()Z
    .locals 2

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1

    :cond_1
    return v1
.end method

.method private isMainUserNow()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getCurrentUser()Landroid/content/pm/UserInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    if-nez v0, :cond_0

    const-string v0, "OneplusAppPreload"

    const-string v1, "Now is main user"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const-string v0, "OneplusAppPreload"

    const-string v1, "Now is other user"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private isPreloadableApp(Ljava/lang/String;Z)Z
    .locals 2

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload;->isRemovedTask(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->REMOVED_TASK:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_0
    return v1

    :cond_1
    invoke-static {}, Lcom/android/server/preload/AbnormalMonitor;->getInstance()Lcom/android/server/preload/AbnormalMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/preload/AbnormalMonitor;->getBlackApps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    if-eqz p2, :cond_2

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ABNORMAL_APP:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_2
    return v1

    :cond_3
    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllApp:Z

    if-nez v0, :cond_5

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    if-eqz p2, :cond_4

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_SOPPORT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_4
    return v1

    :cond_5
    const/4 v0, 0x1

    return v0
.end method

.method private static isRemovedTask(Ljava/lang/String;)Z
    .locals 3

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "This package is removed via recent tasks, discard preload : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private isScreenPortrait()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v1, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private readElectricCurrentFileContent(Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v1, v2

    nop

    :goto_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    if-eqz v2, :cond_1

    const-string v2, "\\s+"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    sget-object v5, Lcom/android/server/preload/OneplusAppPreload;->sPackageElectricCurrentTable:Ljava/util/HashMap;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v3, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    goto :goto_0

    :cond_1
    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_4
    throw v0
.end method

.method private readFileContent(Ljava/io/File;)V
    .locals 7

    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/FileReader;

    invoke-direct {v2, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    if-eqz v3, :cond_3

    const-string v3, "RecordStartTime"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v1}, Lcom/android/server/preload/OneplusAppPreload;->getRecordStartTime(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "RecordStartTime : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastReportMdmTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    const-string v3, "Prediction Result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    goto :goto_0

    :cond_1
    const-string v3, "High Usage Result"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v3, v2, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->addOldRecord(ZLjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_3
    nop

    :try_start_1
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_4

    :try_start_3
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    :cond_4
    :goto_2
    return-void

    :goto_3
    if-eqz v0, :cond_5

    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_4

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    :cond_5
    :goto_4
    throw v1
.end method

.method private readOldRecord()V
    .locals 3

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mRecordDir:Ljava/io/File;

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload;->sRecordFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->canRead()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->readFileContent(Ljava/io/File;)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private registerReceivers()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateFile:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateFile:Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mFilterUnlock:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterUserUnlock:Z

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mFilterPowerSave:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterPowerSave:Z

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateFile:Landroid/content/IntentFilter;

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterScreenState:Z

    return-void
.end method

.method public static removeRemovedTaskPackage(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0, p0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeRemovedTaskPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private reportAllMDM()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->examineData()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->sendMDMData(Z)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->sendMDMData(Z)V

    return-void
.end method

.method private reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V
    .locals 4

    const-string v0, "OneplusAppPreload"

    const-string v1, "Start reportPredictMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "skip_predict_reason"

    invoke-virtual {p2}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->getValue()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pkg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skip_predict_reason"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "skip_predict_reason"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v2, "preload_skip_predict"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const-string v0, "OneplusAppPreload"

    const-string v1, "End reportPredictMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private reportSingleMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;Z)V
    .locals 4

    const-string v0, "OneplusAppPreload"

    const-string v1, "Start reportSingleMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "pkg"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "preload_type"

    if-eqz p3, :cond_0

    const-string/jumbo v2, "predict"

    goto :goto_0

    :cond_0
    const-string/jumbo v2, "high_used"

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "hit"

    invoke-virtual {p2}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isHit()Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "hit_label"

    invoke-virtual {p2}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getHitLabel()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v1, "used_power"

    invoke-virtual {p2, p1}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getUsedPower(Ljava/lang/String;)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "pkg"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preload_type"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "preload_type"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hit"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hit"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hit_label"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "hit_label"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "used_power"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "used_power"

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    iput-boolean v1, p2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v2, "preload_single"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    const-string v0, "OneplusAppPreload"

    const-string v1, "End reportSingleMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private sendMDMData(Z)V
    .locals 19

    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    if-eqz p1, :cond_0

    iget-object v0, v1, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, v1, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    :goto_0
    move-object v4, v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, 0x0

    move v8, v0

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v4, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-virtual {v11}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->getRecords()Ljava/util/ArrayList;

    move-result-object v12

    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    :goto_2
    :try_start_1
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_4

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v14, v13, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v14, :cond_2

    add-int/lit8 v5, v5, 0x1

    :try_start_2
    invoke-virtual {v13}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isHit()Z

    move-result v14

    if-eqz v14, :cond_1

    add-int/lit8 v6, v6, 0x1

    invoke-static {v11}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getUsedPower(Ljava/lang/String;)F

    move-result v14

    add-float/2addr v7, v14

    goto :goto_3

    :cond_1
    invoke-static {v11}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getUsedPower(Ljava/lang/String;)F

    move-result v14
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    add-float/2addr v8, v14

    goto :goto_3

    :cond_2
    move v15, v6

    move/from16 v16, v7

    :try_start_3
    iget-wide v6, v13, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    sub-long v6, v2, v6

    sget-wide v17, Lcom/android/server/preload/OneplusAppPreload;->HIT_CRITERIA:J

    cmp-long v6, v6, v17

    if-lez v6, :cond_3

    add-int/lit8 v5, v5, 0x1

    invoke-static {v11}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v13, v6}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getUsedPower(Ljava/lang/String;)F

    move-result v6
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    add-float/2addr v8, v6

    :cond_3
    move v6, v15

    move/from16 v7, v16

    :goto_3
    goto :goto_2

    :catch_0
    move-exception v0

    move v6, v15

    move/from16 v7, v16

    goto/16 :goto_5

    :cond_4
    move v15, v6

    move/from16 v16, v7

    goto :goto_1

    :catch_1
    move-exception v0

    move v15, v6

    move/from16 v16, v7

    goto/16 :goto_5

    :cond_5
    if-nez v5, :cond_6

    :try_start_4
    const-string v9, "OneplusAppPreload"

    const-string v10, "No preload records, skip send MDM"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_6
    const-string/jumbo v9, "preload_type"

    if-eqz p1, :cond_7

    const-string/jumbo v10, "predict"

    goto :goto_4

    :cond_7
    const-string/jumbo v10, "high_used"

    :goto_4
    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "total_times"

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "hit_times"

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "fail_times"

    sub-int v10, v5, v6

    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "hit_ratio"

    int-to-float v10, v6

    int-to-float v11, v5

    div-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v9, "hit_used_power"

    const v10, 0x3f8ccccd    # 1.1f

    mul-float v11, v7, v10

    invoke-static {v11}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v9, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "fail_used_power"

    mul-float/2addr v10, v8

    invoke-static {v10}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v9, "OneplusAppPreload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "preload_type : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "preload_type"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "total_times"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "total_times"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_times"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_times"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "fail_times"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "fail_times"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_ratio"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_ratio"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_used_power"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v11, "hit_used_power"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "fail_used_power"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "fail_used_power"

    invoke-virtual {v0, v11}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, v1, Lcom/android/server/preload/OneplusAppPreload;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string/jumbo v10, "preload_all"

    invoke-virtual {v9, v10, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_6

    :catch_2
    move-exception v0

    :goto_5
    const-string v9, "OneplusAppPreload"

    const-string v10, "Error submit SDM"

    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_6
    return-void
.end method

.method private sendSingleMDMOnBoot()V
    .locals 2

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$1;

    const-string v1, "AppPreload"

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/OneplusAppPreload$1;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$1;->start()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public static setBatteryLevel(I)V
    .locals 3

    sput p0, Lcom/android/server/preload/OneplusAppPreload;->sBatteryLevel:I

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Battery Level : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private uninitEssential()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->unregisterReceivers()V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mConorCallBack:Lcom/android/server/preload/OneplusAppPreload$PredictCallBack;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService;->unregisterConnorConfCallback(Lcom/android/server/am/Connor$ConfCallbacks;)V

    return-void
.end method

.method private unregisterReceivers()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterUserUnlock:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mUserUnlockReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterUserUnlock:Z

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterPowerSave:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerSaveModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterPowerSave:Z

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterScreenState:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iput-boolean v1, p0, Lcom/android/server/preload/OneplusAppPreload;->isRegisterScreenState:Z

    :cond_2
    return-void
.end method

.method private updateMaxPreloadNum()V
    .locals 12

    sget v0, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "MAX_APP_IN_PRELOAD_STACK : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    iget-wide v1, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Total Memory : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v0, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-wide v3, 0x100000000L

    const-wide v5, 0x180000000L

    const-wide v7, 0x200000000L

    cmp-long v9, v1, v3

    if-gez v9, :cond_1

    const/4 v9, 0x4

    sput v9, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    goto :goto_0

    :cond_1
    cmp-long v9, v1, v3

    if-lez v9, :cond_2

    cmp-long v9, v1, v5

    if-gez v9, :cond_2

    const/4 v9, 0x6

    sput v9, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    goto :goto_0

    :cond_2
    cmp-long v9, v1, v5

    if-lez v9, :cond_3

    cmp-long v9, v1, v7

    if-gez v9, :cond_3

    const/16 v9, 0x8

    sput v9, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    goto :goto_0

    :cond_3
    const/16 v9, 0xa

    sput v9, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    :goto_0
    const-string v9, "OneplusAppPreload"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "MAX_APP_IN_PRELOAD_STACK : "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v11, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v9, "persist.sys.preload.preload_num"

    new-instance v10, Ljava/lang/Integer;

    sget v11, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    invoke-direct {v10, v11}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v10}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private writeRecord()V
    .locals 2

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$2;

    const-string v1, "AppPreload"

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/OneplusAppPreload$2;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$2;->start()V

    return-void
.end method


# virtual methods
.method public addForceStopPackage(Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Lcom/android/server/am/RestartProcessManager;->getInstance()Lcom/android/server/am/RestartProcessManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/RestartProcessManager;->isLaunchablePackage(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1, v1}, Landroid/content/pm/IPackageManager;->getPackageUid(Ljava/lang/String;II)I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/preload/OneplusAppPreload;->handleAppDie(Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addForceStopPackage : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public dump(Ljava/io/PrintWriter;)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enable App Preload : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PowerSaveMode : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PredictionConfidence : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/preload/OneplusAppPreload;->sPredictionConfidence:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CPU criteria : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/preload/OneplusAppPreload;->sCPUCriteria:F

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-enter p0

    :try_start_0
    const-string v0, "Hit statistics : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v0, p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->dump(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Current Candidates to preload : "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadCandidate:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;

    invoke-virtual {v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->dump()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Current preloaded app for ready to use :"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/android/server/preload/OneplusAppPreload;->printPreloadedApp(Ljava/io/PrintWriter;)V

    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Blacklist: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/preload/AbnormalMonitor;->getInstance()Lcom/android/server/preload/AbnormalMonitor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/preload/AbnormalMonitor;->getBlackApps()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Support Apps: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " : pre 5 minutes power unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mPrePowerUnit:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v4, " , later power unit: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v2, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mLaterPowerUnit:F

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "IM whitelist Apps: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    const-string v0, "Removed from recent task: "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sRemovedRecentTasks:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getCurrentPreloadSource()Lcom/android/server/preload/OneplusAppPreload$PreloadSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mCurrentPreloadSource:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    return-object v0
.end method

.method public getImWhitelist()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getPreloadApps()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPreloadStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v2

    if-eqz v2, :cond_3

    iget-object v3, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v3, v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v4, v4

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    iget-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v6, v6

    if-ge v5, v6, :cond_2

    iget-object v6, v2, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v6, v6, v5

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    array-length v8, v7

    if-lez v8, :cond_1

    aget-object v8, v7, v4

    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    return-object v3

    :cond_3
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public handleAppDie(Ljava/lang/String;I)V
    .locals 3

    invoke-static {}, Lcom/android/server/preload/PreloadUtils;->getInstance()Lcom/android/server/preload/PreloadUtils;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/preload/PreloadUtils;->isPreload(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v0, p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->notifyProcessDie(Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->writeRecord()V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->isLocationServiceExist()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/LocationManagerService;->delPendingRequest(Ljava/lang/String;I)V

    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "sys.nsaudio.disable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_2

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sys.nsaudio.disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-void
.end method

.method public handleCommnad([Ljava/lang/String;)V
    .locals 6

    const-string v0, "OneplusAppPreload"

    const-string v1, "Handle command :"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    const-string v3, "OneplusAppPreload"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    array-length v0, p1

    monitor-enter p0

    add-int/lit8 v1, v0, -0x1

    :try_start_0
    aget-object v1, p1, v1

    const-string v2, "cleanall"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->cleanCandidate()V

    goto :goto_1

    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x1

    if-ne v0, v2, :cond_2

    aget-object v4, p1, v3

    const-string/jumbo v5, "trigger"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    aget-object v1, p1, v1

    invoke-virtual {v2, v1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->triggerPreload(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v0, -0x1

    aget-object v4, p1, v4

    const-string v5, "cleanoldrecord"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->cleanOldRecord()V

    goto :goto_1

    :cond_3
    const/4 v4, 0x4

    if-ne v0, v4, :cond_4

    aget-object v3, p1, v3

    const-string/jumbo v4, "trigger_delay"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    aget-object v1, p1, v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    aget-object v2, p1, v2

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->triggerDelayPreload(Ljava/lang/String;J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_1
    goto :goto_2

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    monitor-exit p0

    return-void

    :goto_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public hitPreloadApp(Ljava/lang/String;Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->hitPreload(Ljava/lang/String;Z)V

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->writeRecord()V

    :cond_0
    return-void
.end method

.method public isImWhitelist(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is im whitelist "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllIm:Z

    if-nez v1, :cond_1

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public onEvent(ILandroid/content/ContentValues;)V
    .locals 4

    if-eqz p1, :cond_8

    const/4 v0, 0x2

    if-eq p1, v0, :cond_6

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v1, "ScreenMode"

    invoke-virtual {p2, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_1

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusAppPreload"

    const-string v2, "Do not preload when screen is landscape"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsPortraitMode:Z

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->stopPreload()V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    if-eqz v0, :cond_2

    const-string v0, "OneplusAppPreload"

    const-string v2, "Now is portrait, ready to preload"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsPortraitMode:Z

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->startPreload()V

    :goto_0
    return-void

    :pswitch_1
    iget-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mSystemReady:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sOnlyTestOneApp:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sIsPortraitMode:Z

    if-nez v0, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    if-eqz v1, :cond_4

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "PRELOAD_HIGH_USED_AFTER_DIE : pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    invoke-virtual {v1, v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->preloadHighUsedAfterDie(Ljava/lang/String;)V

    return-void

    :cond_5
    :goto_1
    return-void

    :pswitch_2
    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mAppForceStopRecord:Landroid/util/ArrayMap;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    const-string v0, "BattLevel"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sput v0, Lcom/android/server/preload/OneplusAppPreload;->sBatteryLevel:I

    nop

    :cond_7
    :goto_2
    return-void

    :cond_8
    const-string v0, "PackageName"

    invoke-virtual {p2, v0}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->removeRemovedTaskPackage(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload;->mForegroundApp:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    return-void

    :cond_9
    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mForegroundApp:Ljava/lang/String;

    sget-boolean v1, Lcom/android/server/preload/OneplusAppPreload;->sDebug:Z

    if-eqz v1, :cond_a

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "APP_EVENT_INDEX : pkg : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected preloadInner(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)V
    .locals 11

    if-nez p1, :cond_0

    const-string v0, "OneplusAppPreload"

    const-string v1, "Package is null "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mScreenOn:Z

    if-nez v0, :cond_2

    const-string v0, "OneplusAppPreload"

    const-string v1, "Currently screen is off "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_1

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->SCREEN_OFF:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_1
    return-void

    :cond_2
    sget v0, Lcom/android/server/preload/OneplusAppPreload;->sBatteryLevel:I

    const/16 v1, 0x14

    const/4 v2, 0x0

    if-ge v0, v1, :cond_5

    const-string v0, "OneplusAppPreload"

    const-string v1, "Currently battery is low "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllApp:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Currently battery is low at "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/preload/OneplusAppPreload;->sBatteryLevel:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_3
    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_4

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->BATTERY_LOW:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_4
    return-void

    :cond_5
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    if-nez v0, :cond_6

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    :cond_6
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->getPreloadTaskNum()I

    move-result v0

    sget v1, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    if-lt v0, v1, :cond_8

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/preload/OneplusAppPreload;->sMaxPreloadNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "app can be preload"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_7

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->OVER_MAX_PRELOAD:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_7
    return-void

    :cond_8
    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->isAppRunning(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package have been started "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_9

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->APP_RUNNING:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_9
    return-void

    :cond_a
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->isAvailMemory()Z

    move-result v0

    if-nez v0, :cond_d

    const-string v0, "OneplusAppPreload"

    const-string v1, "Have no availMem, please wait"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllApp:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    const-string v1, "Have no availMem, please wait!"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_b
    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_c

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->INSUFFICIENT_MEMORY:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_c
    return-void

    :cond_d
    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->isAppProtected(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_e

    const-string v0, "OneplusAppPreload"

    const-string v1, "Do not preload when protected"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_e
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->isMainUserNow()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v0, v1, :cond_f

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_MAIN_USER:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v0, v1}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_f
    return-void

    :cond_10
    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/preload/OneplusAppPreload;->getAppMainIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_12

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1200(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    move-result-object v1

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload$PreloadSource;->PREDICTION:Lcom/android/server/preload/OneplusAppPreload$PreloadSource;

    if-ne v1, v2, :cond_11

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NO_MAIN_INTENT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-direct {p0, v1, v2}, Lcom/android/server/preload/OneplusAppPreload;->reportPredictMDM(Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;)V

    :cond_11
    return-void

    :cond_12
    const/4 v1, 0x0

    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActivityOptions;->setLaunchDisplayId(I)Landroid/app/ActivityOptions;

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastPreloadTime:J

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppPreload really preload app "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", time : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, p0, Lcom/android/server/preload/OneplusAppPreload;->mLastPreloadTime:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v3, p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->addRecord(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)V

    sget-boolean v3, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-eqz v3, :cond_13

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->writeRecord()V

    :cond_13
    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;Landroid/os/Bundle;)V

    sget-boolean v3, Lcom/android/server/preload/OneplusAppPreload;->ENABLE_DEMO:Z

    if-nez v3, :cond_14

    sget-boolean v3, Lcom/android/server/preload/OneplusAppPreload;->sEnableAllApp:Z

    if-eqz v3, :cond_15

    :cond_14
    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "AppPreload: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    :cond_15
    const/4 v3, -0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getPackageUid(Ljava/lang/String;I)I

    move-result v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v3, 0x2710

    if-ge v2, v3, :cond_16

    return-void

    :cond_16
    nop

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sys.nsaudio.disable"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close audio of uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v10, Lcom/android/server/preload/OneplusAppPreload$PauseTask;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, v10

    move-object v5, p0

    move v6, v2

    invoke-direct/range {v4 .. v9}, Lcom/android/server/preload/OneplusAppPreload$PauseTask;-><init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;J)V

    const-wide/16 v4, 0x2710

    invoke-virtual {v3, v10, v4, v5}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload;->mHandler:Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;

    new-instance v10, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;

    invoke-static {p1}, Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;->access$1000(Lcom/android/server/preload/OneplusAppPreload$PreloadCandidate;)Ljava/lang/String;

    move-result-object v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    move-object v4, v10

    move-object v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/server/preload/OneplusAppPreload$FreezeTask;-><init>(Lcom/android/server/preload/OneplusAppPreload;ILjava/lang/String;J)V

    const-wide/16 v4, 0x3a98

    invoke-virtual {v3, v10, v4, v5}, Lcom/android/server/preload/OneplusAppPreload$PreloadHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :catch_0
    move-exception v2

    return-void
.end method

.method public printPreloadedApp(Ljava/io/PrintWriter;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPreloadStackInfo()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, v0, Landroid/app/ActivityManager$StackInfo;->taskNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {v2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    if-nez v3, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method public resetartPendingLocationRequest(Ljava/lang/String;I)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->isLocationServiceExist()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$5;

    const-string v1, "RestartPendingResuest"

    invoke-direct {v0, p0, v1, p1, p2}, Lcom/android/server/preload/OneplusAppPreload$5;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Ljava/lang/String;I)V

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$5;->start()V

    :cond_0
    return-void
.end method

.method public resolveOnlineConfig(Lorg/json/JSONArray;)V
    .locals 10

    if-nez p1, :cond_0

    const-string v0, "OneplusAppPreload"

    const-string v1, "[OnlineConfig] AppPreload jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_a

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "enable_policy"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    sget-boolean v5, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    if-eq v4, v5, :cond_2

    if-eqz v4, :cond_1

    const-string v5, "OneplusAppPreload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyEnable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", enable all preload app."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->initEssential()V

    sput-boolean v4, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    const-string/jumbo v5, "persist.sys.preload.enable"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v5, "OneplusAppPreload"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "PolicyEnable : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", disable all preload app."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->uninitEssential()V

    sput-boolean v4, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    const-string/jumbo v5, "persist.sys.preload.enable"

    const-string v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    goto/16 :goto_6

    :cond_3
    const-string/jumbo v4, "white_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget-object v5, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    move v5, v0

    :goto_2
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_4

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6, v0}, Lcom/android/server/preload/OneplusAppPreload;->addSupportApps(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    :cond_4
    sget-object v5, Lcom/android/server/preload/OneplusAppPreload;->sSupportAppsPower:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "OneplusAppPreload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get whitelist from online config : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_5
    goto :goto_6

    :cond_6
    const-string/jumbo v4, "im_white_list"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    sget-boolean v4, Lcom/android/server/preload/OneplusAppPreload;->sIsAlphaRom:Z

    if-nez v4, :cond_7

    const-string v4, "OneplusAppPreload"

    const-string v5, "Now only support IN in alpha ROM."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_7
    const-string/jumbo v4, "value"

    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    sget-object v5, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    move v5, v0

    :goto_4
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_8

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-direct {p0, v6, v7}, Lcom/android/server/preload/OneplusAppPreload;->addSupportApps(Ljava/lang/String;Z)V

    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    sget-object v5, Lcom/android/server/preload/OneplusAppPreload;->sImWhitelist:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const-string v7, "OneplusAppPreload"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Get IM whitelist from online config : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :cond_9
    :goto_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_a
    const-string v0, "OneplusAppPreload"

    const-string v1, "[OnlineConfig] AppPreload updated complete"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_7

    :catch_0
    move-exception v0

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] resolve error message:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_7
    return-void
.end method

.method public shutdown()V
    .locals 2

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sDebugHit:Z

    if-eqz v0, :cond_0

    const-string v0, "OneplusAppPreload"

    const-string v1, "Start to shutdown."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPreloadHitStatistics:Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->handleShutdown()V

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->doWriteRecord()V

    :cond_0
    return-void
.end method

.method public systemReady()V
    .locals 2

    const-string v0, "OneplusAppPreload"

    const-string v1, "AppPreload systemReady"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerManager:Landroid/os/PowerManager;

    const-string/jumbo v0, "location"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    check-cast v0, Lcom/android/server/LocationManagerService;

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload;->mLocationManager:Lcom/android/server/LocationManagerService;

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    sput-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPowerSaveMode:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload;->mSystemReady:Z

    invoke-virtual {p0}, Lcom/android/server/preload/OneplusAppPreload;->updateOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->initOnlineConfig()V

    sget-boolean v0, Lcom/android/server/preload/OneplusAppPreload;->sPolicyEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->initEssential()V

    invoke-direct {p0}, Lcom/android/server/preload/OneplusAppPreload;->sendSingleMDMOnBoot()V

    return-void
.end method

.method public updateOnlineConfig()V
    .locals 2

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$9;

    const-string v1, "AppPreload_OnlineConfig"

    invoke-direct {v0, p0, v1}, Lcom/android/server/preload/OneplusAppPreload$9;-><init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$9;->start()V

    return-void
.end method
