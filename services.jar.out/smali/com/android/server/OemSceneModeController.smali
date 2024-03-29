.class public Lcom/android/server/OemSceneModeController;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneModeController$CarModeContentObserver;,
        Lcom/android/server/OemSceneModeController$BreathModeContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;,
        Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;,
        Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_DISABLE_GAME_MODE:Ljava/lang/String; = "com.oem.intent.action.DISABLE_GAME_MODE"

.field private static final ACTION_SHOW_DIALOG:Ljava/lang/String; = "com.oem.intent.action.SHOW_DIALOG"

.field private static final ACTION_SWITCH_ESPORT:Ljava/lang/String; = "com.oem.intent.action.SWITCH_ESPORT"

.field private static DBG:Z = false

.field private static final ESPORT_MODE_NOTIFICATION_COLOR:Ljava/lang/String; = "#3b78e7"

.field private static final GAME_MODE_BATTERY_SAVER:Ljava/lang/String; = "game_mode_battery_saver"

.field private static final GAME_MODE_EVER_ENABLED_KEY:Ljava/lang/String; = "persist.sys.oem.gamemode_dirty"

.field private static final GAME_MODE_NOTIFICATION_CHANNEL_ID:Ljava/lang/String; = "scene_modes_game"

.field private static final GAMING_MODE_NORMAL_SHOW_DELAYED:I = 0x1f4

.field private static final GAMING_MODE_SILENT_SHOW_DELAYED:I = 0xea60

.field private static final HAS_HW_KEYS:Z

.field public static final MODE_GAMEING_NO_DISTURB:I = 0x1

.field public static final MODE_READING:I = 0x0

.field private static final MSG_BREATH_MODE_CHANGED:I = 0x8

.field private static final MSG_CAR_MODE_CHANGED:I = 0x9

.field private static final MSG_CLEAR_GAME_MODE_SILENTLY_SHOW_FLAG:I = 0xc

.field private static final MSG_GAME_AUTO_CHANGED:I = 0x3

.field private static final MSG_GAME_BATTERY_SAVER_CHANGED:I = 0xb

.field private static final MSG_GAME_MANUAL_CHANGED:I = 0x2

.field private static final MSG_GAME_MODE_ON_TACKER_APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final MSG_GAME_MODE_TACKER_ADDING:I = 0xd

.field private static final MSG_READ_AUTO_CHANGED:I = 0x1

.field private static final MSG_READ_MANUAL_CHANGED:I = 0x0

.field private static final MSG_START_MONITOR:I = 0x4

.field private static final MSG_START_MONITOR_PASSIVE:I = 0x7

.field private static final MSG_STOP_MONITOR_PASSIVE:I = 0x6

.field private static final NOTIFICATION_GAME_MODE_ENABLED:I = 0x15be

.field private static final NOTIFY_TAG:Ljava/lang/String; = "SceneModeController"

.field private static final PROP_BRICK_MODE_DISABLE_GESTURE:Ljava/lang/String; = "persist.sys.brickmode.disablegesture"

.field private static final PROP_BRICK_MODE_DISABLE_NFC:Ljava/lang/String; = "persist.sys.brickmode.disablenfc"

.field private static final PROP_GAME_MODE_SCALE_DEUBG_KEY:Ljava/lang/String; = "persist.sys.gamemodescale.debug"

.field public static final SWITCHER_PASSIVE:I = 0x1

.field public static final SWITCHER_PROACTIVE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OemSceneModeController"

.field public static final TOAST_WINDOW_TIMEOUT:I = 0x7d0

.field private static final URI_BREATH_MODE:Landroid/net/Uri;

.field private static final URI_CAR_MODE:Landroid/net/Uri;

.field private static final URI_ESPORT_STATUS:Landroid/net/Uri;

.field private static final URI_GAME_AUTO:Landroid/net/Uri;

.field private static final URI_GAME_MANUAL:Landroid/net/Uri;

.field private static final URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

.field private static final URI_READ_AUTO:Landroid/net/Uri;

.field private static final URI_READ_MANUAL:Landroid/net/Uri;

.field private static final VALUE_CLEAN:I = 0x1

.field private static final VALUE_CLEAN_EXEC:I = 0x2

.field private static final VALUE_CLOSE_POWERSAVE:Ljava/lang/String; = "0_0"

.field private static final VALUE_EXEC:I = 0x0

.field private static final VALUE_FORCE_OFF:Ljava/lang/String; = "force-off"

.field private static final VALUE_FORCE_ON:Ljava/lang/String; = "force-on"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static final VALUE_ON_INT:I = 0x1

.field private static sOemSceneModeController:Lcom/android/server/OemSceneModeController;


# instance fields
.field private IS_GESTURE_BUTTON_ENABLED:Z

.field private mAm:Landroid/app/ActivityManager;

.field private mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

.field private mBreathModeStatus:Z

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCarModeObserver:Lcom/android/server/OemSceneModeController$CarModeContentObserver;

.field private mCarModeStatus:Z

.field private mContext:Landroid/content/Context;

.field private mCurProcessName:Ljava/lang/String;

.field private mDisableGestureButton:Z

.field private mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

.field private mFlinger:Landroid/os/IBinder;

.field private mGameModeAuto:Z

.field private mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

.field private mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

.field private mGameModeManual:Z

.field private mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

.field private mGameModeShowUISilently:Z

.field private mGameModeStatus:Z

.field private mGamingModeMsgView:Landroid/view/View;

.field private mHandler:Landroid/os/Handler;

.field private mIsMonitoringPassiveProvider:Z

.field private mIsMonitoringProactiveProvider:Z

.field private mIsToastShowing:Z

.field mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mNeedExecPowerSavePolicy:Z

.field private mNeedRecoverCachedFuncs:Z

.field private mNeedToHandlerGameModeUIAfterScreenOn:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

.field private mOldPid:I

.field private mOldProcessName:Ljava/lang/String;

.field private mPowerSaveExecThread:Ljava/lang/Thread;

.field private mPowerSaverFeature:Z

.field private mReadModeAuto:Z

.field private mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

.field private mReadModeManual:Z

.field private mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

.field private mReadModeStatus:Z

.field private mResolver:Landroid/content/ContentResolver;

.field private mResumedPID:I

.field private mSaveParam:Ljava/lang/String;

.field private mShowGamingModeUIRunnable:Ljava/lang/Runnable;

.field private mShowingEnabledToast:Z

.field private mWManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OemSceneModeController;->HAS_HW_KEYS:Z

    const-string/jumbo v0, "reading_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    const-string/jumbo v0, "rading_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    const-string v0, "game_mode_status_manual"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    const-string v0, "game_mode_status_auto"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    const-string v0, "game_mode_battery_saver"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    const-string/jumbo v0, "op_breath_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_BREATH_MODE:Landroid/net/Uri;

    const-string/jumbo v0, "oneplus_carmode_switch"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneModeController;->URI_CAR_MODE:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mCarModeStatus:Z

    const-string/jumbo v1, "true"

    const-string/jumbo v2, "persist.sys.brickmode.disablegesture"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mDisableGestureButton:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsToastShowing:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mShowingEnabledToast:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    const-string v4, ""

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const-string v4, "0_0"

    iput-object v4, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->IS_GESTURE_BUTTON_ENABLED:Z

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGamingModeMsgView:Landroid/view/View;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mWManager:Landroid/view/WindowManager;

    iput v3, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    new-instance v2, Lcom/android/server/OemSceneModeController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$1;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OemSceneModeController$4;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$4;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    new-instance v2, Lcom/android/server/OemSceneModeController$5;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneModeController$5;-><init>(Lcom/android/server/OemSceneModeController;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string v4, "activity"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    new-array v2, v1, [I

    const/16 v4, 0x44

    aput v4, v2, v0

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    new-array v1, v1, [I

    const/16 v2, 0x35

    aput v2, v1, v0

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->IS_GESTURE_BUTTON_ENABLED:Z

    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$BreathModeContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    new-instance v1, Lcom/android/server/OemSceneModeController$CarModeContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v4}, Lcom/android/server/OemSceneModeController$CarModeContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneModeController;->mCarModeObserver:Lcom/android/server/OemSceneModeController$CarModeContentObserver;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v4, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeManualObserver:Lcom/android/server/OemSceneModeController$ReadModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeAutoObserver:Lcom/android/server/OemSceneModeController$ReadModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeManualObserver:Lcom/android/server/OemSceneModeController$GameModeManualContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeAutoObserver:Lcom/android/server/OemSceneModeController$GameModeAutoContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mEsportStatusContentObserver:Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_BREATH_MODE:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mBreathModeObserver:Lcom/android/server/OemSceneModeController$BreathModeContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_CAR_MODE:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mCarModeObserver:Lcom/android/server/OemSceneModeController$CarModeContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "notification"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v2, :cond_0

    new-instance v2, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;-><init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/server/OemSceneModeController;->URI_GAME_MODE_BATTERY_SAVER:Landroid/net/Uri;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mGameModeBatterySaverObserver:Lcom/android/server/OemSceneModeController$GameModeBatterySaverContentObserver;

    invoke-virtual {v2, v4, v0, v5, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    :cond_0
    new-instance v0, Lcom/android/server/OemSceneGameModePanel;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v2, v3}, Lcom/android/server/OemSceneGameModePanel;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_1

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string v3, "RBS8PPYT2W"

    invoke-direct {v0, v2, v3}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameManualChanged()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameAutoChanged()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleGameBatterySaverChanged()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/OemSceneModeController;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/OemSceneModeController;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Z)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->executePowerSavePolicy(Ljava/lang/String;Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/OemSceneModeController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneModeController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2000(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    return v0
.end method

.method static synthetic access$2100(Lcom/android/server/OemSceneModeController;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneModeController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/OemSceneModeController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/OemSceneModeController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadManualChanged()V

    return-void
.end method

.method static synthetic access$900(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->handleReadAutoChanged()V

    return-void
.end method

.method private clearSilentlyShowGameUIFlags()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "clearSilentlyShowGameUIFlags"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    return-void
.end method

.method private disableNfc()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string/jumbo v2, "true"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->disable()Z

    return-void

    :cond_1
    :goto_0
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is disable already."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private enableNfc()V
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is null!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "OemSceneModeController"

    const-string/jumbo v2, "nfcAdapter is enable already!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v1, "persist.sys.brickmode.disablenfc"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->enable()Z

    :cond_2
    return-void
.end method

.method private executePowerSavePolicy(Ljava/lang/String;Z)V
    .locals 11

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] executePowerSavePolicy optimize:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_15

    if-eqz p1, :cond_13

    const-string v2, ""

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v2, ""

    iput-object v2, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_2

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |save_Param:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v3, 0x1

    if-eq v2, v0, :cond_10

    const-string v0, ""

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_5

    :cond_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    if-nez v0, :cond_4

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    :cond_4
    const-string v0, "_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    const/4 v5, 0x2

    if-eq v4, v5, :cond_6

    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format A"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    aget-object v4, v0, v1

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_e

    aget-object v4, v0, v3

    invoke-virtual {p0, v4}, Lcom/android/server/OemSceneModeController;->isNumeric(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_4

    :cond_7
    aget-object v4, v0, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aget-object v3, v0, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v4, :cond_8

    const/16 v5, 0x64

    if-le v4, v5, :cond_9

    :cond_8
    const/16 v4, 0x64

    :cond_9
    if-eqz v3, :cond_b

    const/16 v5, 0x3c

    if-le v3, v5, :cond_a

    goto :goto_1

    :cond_a
    :goto_0
    move v9, v3

    goto :goto_2

    :cond_b
    :goto_1
    const/16 v3, 0x3c

    goto :goto_0

    :goto_2
    const/16 v3, 0x50

    if-ne v4, v3, :cond_c

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->isGameModeScaleDebug()Z

    move-result v3

    if-eqz v3, :cond_c

    const/16 v3, 0xf

    move v10, v3

    goto :goto_3

    :cond_c
    move v10, v4

    :goto_3
    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_d

    const-string v3, "OemSceneModeController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[gameMode PowerSavePolicy] executePowerSavePolicy, pid:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |mCurProcessName:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " |scale:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " |fps:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    move-object v3, p0

    move v5, v2

    move v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    goto/16 :goto_7

    :cond_e
    :goto_4
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_f

    const-string v1, "OemSceneModeController"

    const-string v3, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param wrong format B"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    return-void

    :cond_10
    :goto_5
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_11

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, current pid process is not right"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_11
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_12

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    :cond_12
    return-void

    :cond_13
    :goto_6
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_14

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] executePowerSavePolicy, save_Param is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_14
    return-void

    :cond_15
    iget v2, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    if-eq v2, v0, :cond_17

    const-string v2, ""

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_17

    sget-boolean v2, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v2, :cond_16

    const-string v2, "OemSceneModeController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[gameMode PowerSavePolicy] executePowerSavePolicy, mOldPid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |mOldProcessName:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " |scale:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " |fps:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_16
    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mFlinger:Landroid/os/IBinder;

    iget v5, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    const/16 v7, 0x64

    const/16 v8, 0x3c

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/OemSceneModeController;->sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    :cond_17
    :goto_7
    return-void
.end method

.method private getBreathModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "op_breath_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getCarModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "oneplus_carmode_switch"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getFgApp(Landroid/app/ActivityManager;)I
    .locals 7

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez v5, :cond_0

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object v1, v4

    iget v0, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v3, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iput-object v3, p0, Lcom/android/server/OemSceneModeController;->mCurProcessName:Ljava/lang/String;

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[gameMode PowerSavePolicy] executePowerSavePolicy, app.processName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " |pid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return v0
.end method

.method private getGameModeAuto()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getGameModeButtonBlocked()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeHeadUpBlocked()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_block_notification"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameModeManual()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getGameModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneModeController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneModeController;->sOemSceneModeController:Lcom/android/server/OemSceneModeController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneModeController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneModeController;->sOemSceneModeController:Lcom/android/server/OemSceneModeController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneModeController;->sOemSceneModeController:Lcom/android/server/OemSceneModeController;

    return-object v0
.end method

.method private getReadModeAuto()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "rading_mode_status_auto"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getReadModeManual()Z
    .locals 4

    const-string v0, "force-on"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status_manual"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private getReadModeStatus()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "reading_mode_status"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getSaveParam()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_battery_saver"

    const/4 v2, -0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v0, "0_0"

    :cond_1
    return-object v0
.end method

.method private handleGameAutoChanged()V
    .locals 11

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setGameModeAuto(Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    :goto_0
    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const/4 v5, 0x0

    if-eq v0, v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v5

    :goto_1
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const-string v6, "1"

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v8, "esport_mode_enabled"

    const/4 v9, -0x2

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const-string v7, "GameMode"

    iget-boolean v8, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const/4 v9, 0x2

    if-eqz v8, :cond_2

    move v8, v3

    goto :goto_2

    :cond_2
    move v8, v9

    :goto_2
    invoke-virtual {p0, v7, v8}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v7, :cond_7

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v7}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    if-eqz v4, :cond_4

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-nez v7, :cond_3

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v8, 0xc

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const-wide/32 v9, 0xea60

    invoke-virtual {v7, v8, v9, v10}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v6, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    sget-boolean v7, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v7, :cond_3

    const-string v7, "OemSceneModeController"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mNeedRecoverCachedFuncs = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v8, p0, Lcom/android/server/OemSceneModeController;->mGameModeShowUISilently:Z

    invoke-direct {p0, v7, v8}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    :cond_4
    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v7, :cond_5

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    if-eqz v7, :cond_5

    invoke-direct {p0, v3, v5}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    iput-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mNeedToHandlerGameModeUIAfterScreenOn:Z

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_6

    const-string v3, "OemSceneModeController"

    const-string v5, "add auto start game mode tracker data"

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v5, "type"

    const-string v7, "1"

    invoke-virtual {v3, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v5, "gmode_start"

    invoke-direct {p0, v5, v3}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    goto :goto_3

    :cond_7
    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v3, :cond_a

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_8

    const-string v3, "OemSceneModeController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[gameMode PowerSavePolicy] mOldPid:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " |mOldProcessName:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " |mNeedExecPowerSavePolicy:"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v3, p0, Lcom/android/server/OemSceneModeController;->mOldPid:I

    const/4 v5, -0x1

    if-ne v3, v5, :cond_9

    const-string v3, ""

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mOldProcessName:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    if-eqz v3, :cond_a

    :cond_9
    invoke-direct {p0, v9}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    :cond_a
    :goto_3
    return-void
.end method

.method private handleGameBatterySaverChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getSaveParam()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameBatterySaverChanged, mSaveParam:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedExecPowerSavePolicy:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private handleGameManualChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getGameModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setGameModeManual(Z)V

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    const-string v3, "GameMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eq v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->notifyGameModeUI(ZZ)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v3, :cond_2

    sget-boolean v3, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v3, :cond_1

    const-string v3, "OemSceneModeController"

    const-string v4, "add manual start game mode tracker data"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v4, "type"

    const-string v5, "0"

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v4, "gmode_start"

    invoke-direct {p0, v4, v3}, Lcom/android/server/OemSceneModeController;->submit(Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_2
    return-void
.end method

.method private handleGameModePowerSavePolicy(I)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] handleGameModePowerSavePolicy code:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |mSaveParam: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/server/OemSceneModeController$2;

    invoke-direct {v1, p0, p1}, Lcom/android/server/OemSceneModeController$2;-><init>(Lcom/android/server/OemSceneModeController;I)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const-string v0, "0_0"

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mSaveParam:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaveExecThread:Ljava/lang/Thread;

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    :cond_2
    return-void
.end method

.method private handleReadAutoChanged()V
    .locals 6

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->setReadModeAuto(Z)V

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    iput-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    goto :goto_0

    :cond_0
    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    :goto_0
    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    const-string v4, "ReadMode"

    iget-boolean v5, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v5, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x2

    :goto_1
    invoke-virtual {p0, v4, v3}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    :cond_2
    return-void
.end method

.method private handleReadManualChanged()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeManual()Z

    move-result v1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeStatus()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->setReadModeManual(Z)V

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    const-string v3, "ReadMode"

    iget-boolean v4, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    :goto_0
    invoke-virtual {p0, v3, v4}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    if-eq v2, v3, :cond_1

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v3}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    :cond_1
    return-void
.end method

.method private isGameModeEverEnabled()Z
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.oem.gamemode_dirty"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isGameModeScaleDebug()Z
    .locals 3

    const-string/jumbo v0, "true"

    const-string/jumbo v1, "persist.sys.gamemodescale.debug"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private notifyBreathMode(Z)V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->IS_GESTURE_BUTTON_ENABLED:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x2

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_navigation_bar_type"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mDisableGestureButton:Z

    const-string/jumbo v2, "persist.sys.brickmode.disablegesture"

    const-string/jumbo v3, "true"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_navigation_bar_type"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] disable gesture button by brick mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mDisableGestureButton:Z

    if-eqz v3, :cond_1

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mDisableGestureButton:Z

    const-string/jumbo v2, "persist.sys.brickmode.disablegesture"

    const-string v3, "false"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "op_navigation_bar_type"

    invoke-static {v2, v3, v1, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] resume gesture button by brick mode!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->disableNfc()V

    goto :goto_1

    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->enableNfc()V

    :goto_1
    return-void
.end method

.method private notifyGameMode(Z)V
    .locals 13

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    const/16 v1, 0x15be

    if-eqz p1, :cond_4

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    new-instance v3, Landroid/app/NotificationChannel;

    const-string/jumbo v4, "scene_modes_game"

    iget-object v5, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v6, 0x50d0055

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    invoke-direct {v3, v4, v5, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    const-string v2, "1"

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "esport_mode_enabled"

    const/4 v5, -0x2

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iget-object v3, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-static {v3, v0, v4, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v4, v0, v7, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    iget-object v7, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    new-instance v8, Landroid/content/Intent;

    const-string v9, "com.oem.intent.action.SHOW_DIALOG"

    invoke-direct {v8, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v7, v0, v8, v5}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    new-instance v7, Landroid/app/Notification$Action$Builder;

    if-eqz v2, :cond_0

    iget-object v8, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v9, 0x50d0034

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    goto :goto_0

    :cond_0
    iget-object v8, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v9, 0x50d0038

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    :goto_0
    const v9, 0x108033e

    invoke-direct {v7, v9, v8, v4}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v7}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v7

    new-instance v8, Landroid/app/Notification$Action$Builder;

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v11, 0x50d003b

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v9, v10, v3}, Landroid/app/Notification$Action$Builder;-><init>(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)V

    invoke-virtual {v8}, Landroid/app/Notification$Action$Builder;->build()Landroid/app/Notification$Action;

    move-result-object v8

    new-instance v9, Landroid/app/Notification$Builder;

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const-string/jumbo v11, "scene_modes_game"

    invoke-direct {v9, v10, v11}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    if-eqz v2, :cond_1

    const v10, 0x5060038

    goto :goto_1

    :cond_1
    const v10, 0x5060051

    :goto_1
    invoke-virtual {v9, v10}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v9

    if-eqz v2, :cond_2

    iget-object v6, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    const v10, 0x50d0050

    invoke-virtual {v6, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    :cond_2
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    :goto_2
    invoke-virtual {v9, v6}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v9, 0x1

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    const/4 v10, 0x0

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setPriority(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/app/Notification$Builder;->addAction(Landroid/app/Notification$Action;)Landroid/app/Notification$Builder;

    move-result-object v6

    const v9, 0x50d003c

    if-eqz v2, :cond_3

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v6, v10}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    new-instance v10, Landroid/app/Notification$BigTextStyle;

    invoke-direct {v10}, Landroid/app/Notification$BigTextStyle;-><init>()V

    iget-object v11, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v11, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v10, v9}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    goto :goto_3

    :cond_3
    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mContext:Landroid/content/Context;

    invoke-virtual {v10, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    :goto_3
    invoke-virtual {v6}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v11, "SceneModeController"

    sget-object v12, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v10, v11, v1, v9, v12}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    goto :goto_4

    :cond_4
    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mNotificationManager:Landroid/app/NotificationManager;

    const-string v3, "SceneModeController"

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v3, v1, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    :goto_4
    return-void
.end method

.method private notifyGameModeUI(ZZ)V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyGameModeUI enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "/ silent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_4

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mResumedPID = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "/ getFgApp() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz p2, :cond_3

    iget v0, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v1

    if-ne v0, v1, :cond_3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mNeedRecoverCachedFuncs = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mNeedRecoverCachedFuncs:Z

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->silentShow(Z)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->clearSilentlyShowGameUIFlags()V

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mAm:Landroid/app/ActivityManager;

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->getFgApp(Landroid/app/ActivityManager;)I

    move-result v0

    iput v0, p0, Lcom/android/server/OemSceneModeController;->mResumedPID:I

    goto :goto_1

    :cond_4
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mShowGamingModeUIRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    :goto_1
    return-void
.end method

.method private notifyReadMode(Z)V
    .locals 0

    return-void
.end method

.method private sendCmd(Landroid/os/IBinder;ILjava/lang/String;II)V
    .locals 4

    if-eqz p3, :cond_3

    const-string v0, ""

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_3

    :cond_0
    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode PowerSavePolicy] processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_1

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    :try_start_0
    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v1, 0xfa5

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    nop

    goto :goto_2

    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    throw v1

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] sendCmd, sf is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string v0, "OemSceneModeController"

    const-string v1, "[gameMode PowerSavePolicy] processName is wrong"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setBreathModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_breath_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[breathMode] setBreathModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private setCarModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oneplus_carmode_switch"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[carMode] setCarModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return p1
.end method

.method private setGameModeAuto(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGameModeEverEnabled()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] setGameModeEverEnabled was called"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "persist.sys.oem.gamemode_dirty"

    const-string/jumbo v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private setGameModeManual(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setGameModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "game_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[gameMode] setGameModeStatus, status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mPowerSaverFeature:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->handleGameModePowerSavePolicy(I)V

    :cond_2
    return p1
.end method

.method private setReadModeAuto(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "rading_mode_status_auto"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setReadModeManual(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status_manual"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private setReadModeStatus(Z)Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "reading_mode_status"

    if-eqz p1, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    return p1
.end method

.method private showStatusLog()V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[scene] Read Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\t Game Manual: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Auto: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeAuto:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Read Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Game Status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Proactive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\t Passive monitoring: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Breath Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] Car Mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mCarModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[scene] -----------"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OemSceneModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] values: \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private submit(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz p2, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v2, "hashmap"

    invoke-virtual {v1, v2, p2}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V

    const-string v2, "appId"

    const-string v3, "RBS8PPYT2W"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private validateNetWorkACCValue(I)Z
    .locals 1

    const/4 v0, 0x1

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method private validateValue(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "force-on"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force-off"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method


# virtual methods
.method public handleBreathModeChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getBreathModeStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[breathMode] handleBreathModeChanged, mBreathModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "BrickMode"

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mBreathModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyBreathMode(Z)V

    return-void
.end method

.method public handleCarModeChanged()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getCarModeStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mCarModeStatus:Z

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[carMode] handleCarModeChanged, mCarModeStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mCarModeStatus:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "CarMode"

    iget-boolean v1, p0, Lcom/android/server/OemSceneModeController;->mCarModeStatus:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    return-void
.end method

.method public handleStartMonitor()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] start monitoring, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_READ_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_MANUAL:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/OemSceneModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringProactiveProvider:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    return-void
.end method

.method public handleStartMonitorPassive()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] start monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    iget-object v1, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public handleStopMonitorPassive()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] stop monitoring passive switcher"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mReadModeManual:Z

    if-nez v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setReadModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyReadMode(Z)V

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mReadModeStatus:Z

    const-string v0, "ReadMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/OemSceneModeController;->mGameModeManual:Z

    if-nez v0, :cond_2

    invoke-direct {p0, v2}, Lcom/android/server/OemSceneModeController;->setGameModeStatus(Z)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneModeController;->notifyGameMode(Z)V

    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mGameModeStatus:Z

    const-string v0, "GameMode"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/OemSceneModeController;->updateOimcStatus(Ljava/lang/String;I)V

    :cond_2
    iput-boolean v2, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    return-void
.end method

.method public hideGameModeUI()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneModeController$3;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneModeController$3;-><init>(Lcom/android/server/OemSceneModeController;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public isGameModeUIShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->isGameModeUIShowing()Z

    move-result v0

    return v0
.end method

.method public isNumeric(Ljava/lang/String;)Z
    .locals 3

    const-string v0, "[0-9]*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x0

    return v2

    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public preEvaluateModeStatus(II)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_2

    const/4 v1, 0x1

    if-ne p2, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->getReadModeAuto()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-boolean v3, p0, Lcom/android/server/OemSceneModeController;->mIsMonitoringPassiveProvider:Z

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    sget-boolean v1, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "OemSceneModeController"

    const-string v2, "[scene] Not yet supported"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/OemSceneModeController;->showStatusLog()V

    return v0
.end method

.method public startMonitor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public startMonitorPassive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public stopMonitorPassive()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method updateOimcStatus(Ljava/lang/String;I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_0

    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController;->mMyLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/oneplus/server/OIMCService$LocalService;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/OemSceneModeController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneModeController"

    const-string v1, "[scene] Error while updating OIMC modes"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method
