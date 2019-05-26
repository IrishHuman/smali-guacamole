.class public Lcom/android/systemui/power/OverHeatProtector;
.super Ljava/lang/Object;
.source "OverHeatProtector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field private static ENABLE:Z

.field private static ENABLE_ANTI_FALSE:Z

.field private static ENABLE_SKIN:Z

.field private static mInstance:Lcom/android/systemui/power/OverHeatProtector;


# instance fields
.field private ANTI_FALSE_COUNT:I

.field private final DELAY_TIME:I

.field private final DELAY_TIME_TO_SHUTDOWN:I

.field private INTERVAL_ORANGE:J

.field private INTERVAL_RED:J

.field private TEMPERATURE_ORANGE:I

.field private TEMPERATURE_PURPLE:I

.field private TEMPERATURE_RED:I

.field private TEMPERATURE_SKIN:I

.field private TEMPERATURE_SKIN_PATH:Ljava/lang/String;

.field final mAlertRunnable:Ljava/lang/Runnable;

.field private mBatteryReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCoolProcessingLocked:I

.field private mCurrentChangeTrendLocked:I

.field private mCurrentCount:I

.field private final mDefaultBacklight:I

.field private mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

.field private final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

.field private final mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

.field private final mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLastBatteryTemperatureLocked:I

.field private mLastOrangeTime:J

.field private mLastRedTime:J

.field private mLastResumeUnderOrangeTime:J

.field private mLastResumeUnderRedTime:J

.field private final mLock:Ljava/lang/Object;

.field private final mPowerManager:Landroid/os/PowerManager;

.field private mTimer:Landroid/os/CountDownTimer;

.field private final mUiHandler:Landroid/os/Handler;

.field private obs:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x8a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    new-array v1, v0, [I

    const/16 v3, 0x8b

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    sput-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    const/16 v0, 0x1c2

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const/16 v0, 0x1e0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    const-string v0, "/sys/class/thermal/thermal_zone68/temp"

    iput-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    const v0, 0xbb80

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    const-wide/32 v1, 0x1d4c0

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    const-wide/32 v1, 0xea60

    iput-wide v1, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    const/16 v1, 0x2904

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME:I

    const/16 v1, 0x157c

    iput v1, p0, Lcom/android/systemui/power/OverHeatProtector;->DELAY_TIME_TO_SHUTDOWN:I

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$2;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$2;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$3;

    invoke-direct {v1, p0}, Lcom/android/systemui/power/OverHeatProtector$3;-><init>(Lcom/android/systemui/power/OverHeatProtector;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mAlertRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-class v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/HotspotController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const-class v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/policy/FlashlightController;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const-class v2, Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    const-class v2, Landroid/os/PowerManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->getDefaultScreenBrightnessSetting()I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    const-string v2, "keyguard"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/KeyguardManager;

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$1;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v2, p0, v3, v1}, Lcom/android/systemui/power/OverHeatProtector$1;-><init>(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const-string v2, "op_temperature_orange"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v2, "op_temperature_red"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mBatteryReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10e0083

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    const v4, 0x10e0085

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    const v5, 0x10e0084

    invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v5

    if-lez v3, :cond_0

    if-lez v4, :cond_0

    if-lez v5, :cond_0

    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    iput v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    iput v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    goto :goto_0

    :cond_0
    const-string v6, "OverHeatProtector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "can\'t find resources...[o="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", r="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", p="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v6, "op_temperature_orange"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const-string v6, "op_temperature_red"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    const-string v6, "op_temperature_purple"

    iget v7, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    iput v6, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    sget-boolean v6, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v6, :cond_1

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    invoke-static {p1}, Lcom/android/systemui/power/OverHeatProtectorUtils;->init(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    return p1
.end method

.method static synthetic access$1100(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    return v0
.end method

.method static synthetic access$1200(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->redAlertLocked()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/systemui/power/OverHeatProtector;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->purpleAlertLocked()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->dismissDialogOrNotification(I)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/systemui/power/OverHeatProtector;)Landroid/app/KeyguardManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mKeyguardManager:Landroid/app/KeyguardManager;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/systemui/power/OverHeatProtector;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showAlertDialog(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/systemui/power/OverHeatProtector;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/systemui/power/OverHeatProtector;)Lcom/android/systemui/power/OverHeatAlertDialog;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/systemui/power/OverHeatProtector;)Landroid/os/CountDownTimer;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object v0
.end method

.method static synthetic access$2102(Lcom/android/systemui/power/OverHeatProtector;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    return-object p1
.end method

.method static synthetic access$300(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    return p1
.end method

.method static synthetic access$400(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    return p1
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/power/OverHeatProtector;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/systemui/power/OverHeatProtector;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/systemui/power/OverHeatProtector;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/power/OverHeatProtector;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/systemui/power/OverHeatProtector;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->antiFalsePositiveDetector(I)Z

    move-result v0

    return v0
.end method

.method private antiFalsePositiveDetector(I)Z
    .locals 4

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OverHeatProtector"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "antiFalsePositiveDetector  ANTI_FALSE_COUNT="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrent="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    const/4 v3, 0x0

    if-lt v0, v2, :cond_3

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_2

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_0

    :cond_2
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    :goto_0
    return v1

    :cond_3
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    if-lt p1, v0, :cond_4

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    goto :goto_1

    :cond_4
    iput v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    :goto_1
    return v3
.end method

.method private applyPolicy(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mUiHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/power/OverHeatProtector$4;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/power/OverHeatProtector$4;-><init>(Lcom/android/systemui/power/OverHeatProtector;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private checkIfSkinTemperatureAlert()Z
    .locals 6

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->readFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkIfSkinTemperatureAlert  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is null!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sget-boolean v3, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "OverHeatProtector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkIfSkinTemperatureAlert   ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ",  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    if-lt v2, v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private clearAllRunningProcessesLocked()V
    .locals 2

    const-string v0, "OverHeatProtector"

    const-string v1, "clearAllRunningProcesses"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/power/OverHeatProtectorUtils;->killAllRunningProcesses()V

    return-void
.end method

.method private computeCurrentTrendLocked(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-le p1, v0, :cond_0

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    if-ge p1, v0, :cond_1

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    :goto_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "computeCurrentTrendLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private disableFlashLightLocked()V
    .locals 2

    const-string v0, "OverHeatProtector"

    const-string v1, "disableFlashLight"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mFlashlightController:Lcom/android/systemui/statusbar/policy/FlashlightController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/FlashlightController;->setFlashlight(Z)V

    return-void
.end method

.method private disableHotspotLocked()V
    .locals 2

    const-string v0, "OverHeatProtector"

    const-string v1, "disableHotspot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mHotspotController:Lcom/android/systemui/statusbar/policy/HotspotController;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/policy/HotspotController;->setHotspotEnabled(Z)V

    return-void
.end method

.method private dismissDialogOrNotification(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    :cond_1
    return-void
.end method

.method public static final getInstance(Landroid/content/Context;)Lcom/android/systemui/power/OverHeatProtector;
    .locals 1

    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/power/OverHeatProtector;

    invoke-direct {v0, p0}, Lcom/android/systemui/power/OverHeatProtector;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    :cond_0
    sget-object v0, Lcom/android/systemui/power/OverHeatProtector;->mInstance:Lcom/android/systemui/power/OverHeatProtector;

    return-object v0
.end method

.method private initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V
    .locals 5

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string v1, "initSkinPolicy."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "op_temperature_skin"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string v0, "op_temperature_skinpath"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->obs:Landroid/database/ContentObserver;

    invoke-virtual {p1, v0, v3, v1, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const v0, 0x10e0086

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const v1, 0x1040175

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    if-lez v0, :cond_1

    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v2, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "can\'t find resources...[ s="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", path="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {p1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    const-string v2, "op_temperature_skinpath"

    invoke-static {p1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method public static isEnable()Z
    .locals 1

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    return v0
.end method

.method private notifyCurrentOverHeatStateLocked(I)V
    .locals 3

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_overheat_temperature_type"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private orangeAlertLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_orange_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableHotspotLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->reduceBrightnessLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->disableFlashLightLocked()V

    return-void
.end method

.method private purpleAlertLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_purple_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "OverHeatProtector trigger..."

    invoke-virtual {v1, v0, v2, v0}, Landroid/os/PowerManager;->shutdown(ZLjava/lang/String;Z)V

    return-void
.end method

.method private readFile(Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "readFile path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "OverHeatProtector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "readFile path:   "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " does not exist!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-object v2

    :cond_1
    const/4 v1, 0x0

    const/4 v3, 0x0

    nop

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    move-object v3, v4

    new-instance v4, Ljava/io/BufferedReader;

    invoke-direct {v4, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v4

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_0

    :catch_0
    move-exception v4

    goto :goto_1

    :goto_0
    nop

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_2
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v4

    goto :goto_4

    :catch_1
    move-exception v4

    :try_start_2
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    :cond_3
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_3
    return-object v1

    :goto_4
    nop

    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileReader;->close()V

    goto :goto_5

    :catch_2
    move-exception v5

    goto :goto_6

    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_5
    :goto_7
    throw v4
.end method

.method private redAlertLocked()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "overheat_protector_red_alert"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v0, v1, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->orangeAlertLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->clearAllRunningProcessesLocked()V

    return-void
.end method

.method private reduceBrightnessLocked()V
    .locals 5

    const-string v0, "OverHeatProtector"

    const-string v1, "reduceBrightness"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    if-le v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness"

    iget v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mDefaultBacklight:I

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "screen_brightness_mode"

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_0
    return-void
.end method

.method private showAlertDialog(I)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    if-nez v0, :cond_4

    if-gtz p1, :cond_0

    goto/16 :goto_1

    :cond_0
    new-instance v0, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/power/OverHeatProtector$AlertDialogClickListener;-><init>(Lcom/android/systemui/power/OverHeatProtector;Lcom/android/systemui/power/OverHeatProtector$1;)V

    new-instance v1, Lcom/android/systemui/power/OverHeatAlertDialog;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f0807b3

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setIcon(I)V

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCanceledOnTouchOutside(Z)V

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setCancelable(Z)V

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v2, 0x7f110481

    invoke-virtual {v1, v2}, Lcom/android/systemui/power/OverHeatAlertDialog;->setTitle(I)V

    const/4 v1, 0x1

    const v2, 0x7f11047c

    if-ne p1, v1, :cond_1

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11047d

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$5;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$5;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$5;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne p1, v1, :cond_2

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v3, v2, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f110480

    invoke-virtual {v2, v3}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(I)V

    new-instance v2, Lcom/android/systemui/power/OverHeatProtector$6;

    const-wide/16 v5, 0x2904

    const-wide/16 v7, 0x3e8

    move-object v3, v2

    move-object v4, p0

    move-object v9, v1

    invoke-direct/range {v3 .. v9}, Lcom/android/systemui/power/OverHeatProtector$6;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/systemui/power/OverHeatProtector$6;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    goto :goto_0

    :cond_2
    const/4 v1, 0x3

    if-ne p1, v1, :cond_3

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v2, 0x7f11047f

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v2, v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    const v3, 0x7f11047e

    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/power/OverHeatAlertDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)V

    new-instance v9, Lcom/android/systemui/power/OverHeatProtector$7;

    const-wide/16 v4, 0x157c

    const-wide/16 v6, 0x3e8

    move-object v2, v9

    move-object v3, p0

    move-object v8, v1

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/power/OverHeatProtector$7;-><init>(Lcom/android/systemui/power/OverHeatProtector;JJLjava/lang/String;)V

    invoke-virtual {v9}, Lcom/android/systemui/power/OverHeatProtector$7;->start()Landroid/os/CountDownTimer;

    move-result-object v2

    iput-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mTimer:Landroid/os/CountDownTimer;

    nop

    :goto_0
    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mDialog:Lcom/android/systemui/power/OverHeatAlertDialog;

    invoke-virtual {v1}, Lcom/android/systemui/power/OverHeatAlertDialog;->show()V

    return-void

    :cond_3
    return-void

    :cond_4
    :goto_1
    return-void
.end method

.method private showNotification(I)V
    .locals 11

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v1, "notification"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    new-instance v1, Landroid/support/v4/app/NotificationCompat$Builder;

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;)V

    new-instance v2, Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    invoke-direct {v2}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;-><init>()V

    const-string v3, "1"

    const-string v4, "channel_name"

    if-nez p1, :cond_0

    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f110483

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v5, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const v6, 0x7f110482

    invoke-virtual {v5, v6}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :goto_0
    invoke-virtual {v2, v5}, Landroid/support/v4/app/NotificationCompat$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$BigTextStyle;

    new-instance v6, Landroid/app/NotificationChannel;

    const/4 v7, 0x4

    invoke-direct {v6, v3, v4, v7}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    invoke-virtual {v0, v6}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    invoke-virtual {v1, v5}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const v8, 0x7f0807b3

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setDefaults(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setAutoCancel(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setShowWhen(Z)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setStyle(Landroid/support/v4/app/NotificationCompat$Style;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v8}, Landroid/support/v4/app/NotificationCompat$Builder;->setVisibility(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v7

    invoke-virtual {v7, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setChannelId(Ljava/lang/String;)Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v7, "overheat"

    const/16 v8, 0xa

    invoke-virtual {v1}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v9

    sget-object v10, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8, v9, v10}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void
.end method

.method private triggerOrangeDownLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderOrangeTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->showNotification(I)V

    return-void
.end method

.method private triggerOrangeUpLocked()Z
    .locals 8

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerOrangeUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby ORANGE!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastOrangeTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    return v0
.end method

.method private triggerPurpleDownLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    return-void
.end method

.method private triggerPurpleUpLocked()Z
    .locals 2

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerPurpleUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private triggerRedDownLocked()V
    .locals 2

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastResumeUnderRedTime:J

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    return-void
.end method

.method private triggerRedUpLocked()Z
    .locals 8

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    const-string/jumbo v1, "triggerRedUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->checkIfSkinTemperatureAlert()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    iget-wide v6, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-gez v0, :cond_2

    const-string v0, "OverHeatProtector"

    const-string v4, "Temperature fluctuation nearby RED!"

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastRedTime:J

    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->notifyCurrentOverHeatStateLocked(I)V

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->applyPolicy(I)V

    const/4 v0, 0x1

    return v0
.end method

.method private updatePolicy(I)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/systemui/power/OverHeatProtector;->computeCurrentTrendLocked(I)V

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-ge p1, v2, :cond_3

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-nez v2, :cond_0

    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "OverHeatProtector"

    const-string v3, "Thanks God. Everything is okay."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_0
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v5, :cond_1

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    :cond_1
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_2

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    :cond_2
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeDownLocked()V

    goto/16 :goto_0

    :cond_3
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    if-ge p1, v2, :cond_7

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_4

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v5, :cond_4

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerOrangeUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_4
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    sget-boolean v2, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v2, :cond_5

    const-string v2, "OverHeatProtector"

    const-string v5, "Yep, now the temperature has dropped into orange"

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v4, :cond_6

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedDownLocked()V

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    :cond_7
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    if-ge p1, v2, :cond_9

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-ne v2, v5, :cond_8

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ge v2, v4, :cond_8

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerRedUpLocked()Z

    move-result v2

    move v1, v2

    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentChangeTrendLocked:I

    if-gtz v2, :cond_a

    iget v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mCoolProcessingLocked:I

    if-ne v2, v3, :cond_a

    const-string v2, "OverHeatProtector"

    const-string v3, "Yeh, this couldn\'t happend!"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleDownLocked()V

    goto :goto_0

    :cond_9
    const-string v2, "OverHeatProtector"

    const-string v3, "Okay, this could be real dangerous."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/power/OverHeatProtector;->triggerPurpleUpLocked()Z

    move-result v2

    move v1, v2

    :cond_a
    :goto_0
    if-eqz v1, :cond_b

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->mLastBatteryTemperatureLocked:I

    :cond_b
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public setAntiFalseCount(I)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAntiFalseCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-lez p1, :cond_1

    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->ANTI_FALSE_COUNT:I

    :cond_1
    return-void
.end method

.method public setAntiFalseEnable(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setAntiFalseEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_ANTI_FALSE:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mCurrentCount:I

    :cond_1
    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-eq v0, p1, :cond_1

    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE:Z

    if-nez v0, :cond_1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/systemui/power/OverHeatProtector;->updatePolicy(I)V

    :cond_1
    return-void
.end method

.method public setOrangeInterval(I)V
    .locals 8

    if-gtz p1, :cond_0

    return-void

    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_orange_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_ORANGE:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setOrangeTemp(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_orange"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_ORANGE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setPurpleTemp(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_purple"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_PURPLE:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setRedInterval(I)V
    .locals 8

    if-gtz p1, :cond_0

    return-void

    :cond_0
    mul-int/lit16 v0, p1, 0x3e8

    int-to-long v0, v0

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v2

    :try_start_0
    iput-wide v0, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v2, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    const-string v3, "overheat_protector_red_interval"

    iget-wide v4, p0, Lcom/android/systemui/power/OverHeatProtector;->INTERVAL_RED:J

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    long-to-int v4, v4

    invoke-static {v2, v3, v4}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    return-void

    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3
.end method

.method public setRedTemp(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_red"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_RED:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinEnable(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OverHeatProtector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setSkinEnable: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eq v0, p1, :cond_1

    sput-boolean p1, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    sget-boolean v0, Lcom/android/systemui/power/OverHeatProtector;->ENABLE_SKIN:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/power/OverHeatProtector;->initSkinPolicy(Landroid/content/ContentResolver;Landroid/content/res/Resources;)V

    :cond_1
    return-void
.end method

.method public setSkinPath(Ljava/lang/String;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput-object p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skinpath"

    iget-object v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN_PATH:Ljava/lang/String;

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setSkinTemp(I)V
    .locals 4

    if-gtz p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/power/OverHeatProtector;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iput p1, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    iget-object v1, p0, Lcom/android/systemui/power/OverHeatProtector;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_temperature_skin"

    iget v3, p0, Lcom/android/systemui/power/OverHeatProtector;->TEMPERATURE_SKIN:I

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
