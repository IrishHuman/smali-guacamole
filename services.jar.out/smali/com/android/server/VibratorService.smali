.class public Lcom/android/server/VibratorService;
.super Landroid/os/IVibratorService$Stub;
.source "VibratorService.java"

# interfaces
.implements Landroid/hardware/input/InputManager$InputDeviceListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VibratorService$VibratorShellCommand;,
        Lcom/android/server/VibratorService$VibrateThread;,
        Lcom/android/server/VibratorService$SettingsObserver;,
        Lcom/android/server/VibratorService$ScaleLevel;,
        Lcom/android/server/VibratorService$VibrationInfo;,
        Lcom/android/server/VibratorService$Vibration;
    }
.end annotation


# static fields
.field private static final ACTION_VIBRATION_CANCEL:Ljava/lang/String; = "com.oem.intent.action.CANCEL_VIBRATION"

.field private static final DEBUG:Z

.field private static final DEBUG_DUMP:Z

.field private static final DEBUG_ONEPLUS:Z

.field private static final DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

.field private static final MAX_HAPTIC_FEEDBACK_DURATION:J = 0x1388L

.field private static final SCALE_HIGH:I = 0x1

.field private static final SCALE_HIGH_GAMMA:F = 0.5f

.field private static final SCALE_LOW:I = -0x1

.field private static final SCALE_LOW_GAMMA:F = 1.5f

.field private static final SCALE_LOW_MAX_AMPLITUDE:I = 0xc0

.field private static final SCALE_NONE:I = 0x0

.field private static final SCALE_NONE_GAMMA:F = 1.0f

.field private static final SCALE_VERY_HIGH:I = 0x2

.field private static final SCALE_VERY_HIGH_GAMMA:F = 0.25f

.field private static final SCALE_VERY_LOW:I = -0x2

.field private static final SCALE_VERY_LOW_GAMMA:F = 2.0f

.field private static final SCALE_VERY_LOW_MAX_AMPLITUDE:I = 0xa8

.field private static final SYSTEM_UI_PACKAGE:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "VibratorService"

.field private static durationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static effectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static enhanceDefaultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static maxDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static minDurationMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static setEffectMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final ATTR_DEFAULT:Ljava/lang/String;

.field private final ATTR_DURATION:Ljava/lang/String;

.field private final ATTR_EFFECT:Ljava/lang/String;

.field private final ATTR_MAX:Ljava/lang/String;

.field private final ATTR_MIN:Ljava/lang/String;

.field private final ATTR_PACKAGE_NAME:Ljava/lang/String;

.field private final ATTR_SCENE:Ljava/lang/String;

.field private final DURATION_MAP:Ljava/lang/String;

.field private final EFFECT_MAP:Ljava/lang/String;

.field private final ENHANCE_DEFAULT:Ljava/lang/String;

.field private final INPUTMETHOD_DURATION_MAP_PATH:Ljava/lang/String;

.field private final INTENSITY_MIDDLE:I

.field private final INTENSITY_STRONG:I

.field private final INTENSITY_WEAK:I

.field private final MOTOR_CALI_READ_PATH:Ljava/lang/String;

.field private final MOTOR_CALI_WRITE_PATH:Ljava/lang/String;

.field private final SET_EFFECT:Ljava/lang/String;

.field private final VIBRATOR_EFFECT_MAP_PATH:Ljava/lang/String;

.field private VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

.field private imPkg:Ljava/lang/String;

.field private intensityEffectType:I

.field private final intensityMiddle:I

.field private intensityStrengthType:I

.field private intensityStrong:I

.field private intensityWeak:I

.field private isEffectChanged:Z

.field private isVibrating:Z

.field private final mAllowPriorityVibrationsInLowPowerMode:Z

.field private final mAppOps:Landroid/app/AppOpsManager;

.field private final mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

.field final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;

.field private mCurVibUid:I

.field private mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mDefaultVibrationAmplitude:I

.field private final mFallbackEffects:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/os/VibrationEffect;",
            ">;"
        }
    .end annotation
.end field

.field private final mH:Landroid/os/Handler;

.field private mHapticFeedbackIntensity:I

.field private mIm:Landroid/hardware/input/InputManager;

.field private mInputDeviceListenerRegistered:Z

.field private final mInputDeviceVibrators:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/os/Vibrator;",
            ">;"
        }
    .end annotation
.end field

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mLidState:I

.field private final mLock:Ljava/lang/Object;

.field private mLowPowerMode:Z

.field private mNotificationIntensity:I

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field private final mPreviousVibrations:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/VibratorService$VibrationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreviousVibrationsLimit:I

.field private final mScaleLevels:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/VibratorService$ScaleLevel;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

.field private final mSupportsAmplitudeControl:Z

.field private volatile mThread:Lcom/android/server/VibratorService$VibrateThread;

.field private final mTmpWorkSource:Landroid/os/WorkSource;

.field private mVibrateInputDevicesSetting:Z

.field private mVibrateOnTouchIntensity:I

.field private final mVibrationEndRunnable:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private oldIntensityEffectType:I

.field private repeatVibrate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "persist.debug.vibrator.debugall"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sget-boolean v2, Lcom/android/server/VibratorService;->DEBUG:Z

    or-int/2addr v0, v2

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    const-string/jumbo v0, "persist.debug.vibrator.dump"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/VibratorService;->DEBUG_DUMP:Z

    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->effectMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->durationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->minDurationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->maxDurationMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->enhanceDefaultMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/VibratorService;->setEffectMap:Ljava/util/Map;

    return-void

    nop

    :array_0
    .array-data 8
        0x0
        0x1e
        0x64
        0x1e
    .end array-data
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Landroid/os/IVibratorService$Stub;-><init>()V

    new-instance v2, Landroid/os/WorkSource;

    invoke-direct {v2}, Landroid/os/WorkSource;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    const/4 v2, -0x1

    iput v2, v0, Lcom/android/server/VibratorService;->mCurVibUid:I

    const-string v3, "/persist/engineermode/vibrator_data"

    iput-object v3, v0, Lcom/android/server/VibratorService;->MOTOR_CALI_READ_PATH:Ljava/lang/String;

    const-string v3, "/sys/class/leds/vibrator/haptic_osc_data"

    iput-object v3, v0, Lcom/android/server/VibratorService;->MOTOR_CALI_WRITE_PATH:Ljava/lang/String;

    new-instance v3, Lcom/android/server/VibratorService$3;

    invoke-direct {v3, v0}, Lcom/android/server/VibratorService$3;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v3, v0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iput v2, v0, Lcom/android/server/VibratorService;->INTENSITY_WEAK:I

    const/4 v3, -0x2

    iput v3, v0, Lcom/android/server/VibratorService;->INTENSITY_MIDDLE:I

    const/4 v4, -0x3

    iput v4, v0, Lcom/android/server/VibratorService;->INTENSITY_STRONG:I

    const/16 v4, 0x244

    iput v4, v0, Lcom/android/server/VibratorService;->intensityWeak:I

    const/16 v4, 0x5e4

    iput v4, v0, Lcom/android/server/VibratorService;->intensityMiddle:I

    const/16 v4, 0x776

    iput v4, v0, Lcom/android/server/VibratorService;->intensityStrong:I

    iput v2, v0, Lcom/android/server/VibratorService;->oldIntensityEffectType:I

    const/4 v4, 0x0

    iput v4, v0, Lcom/android/server/VibratorService;->intensityEffectType:I

    const/4 v5, 0x1

    iput v5, v0, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    iput-boolean v4, v0, Lcom/android/server/VibratorService;->repeatVibrate:Z

    iput v4, v0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    iput-boolean v4, v0, Lcom/android/server/VibratorService;->isEffectChanged:Z

    iput-boolean v4, v0, Lcom/android/server/VibratorService;->isVibrating:Z

    const-string v6, ""

    iput-object v6, v0, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    const-string v6, "/sys/class/leds/vibrator/vmax_mv"

    iput-object v6, v0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    const-string v6, "/system/etc/vibrator_effect_map.xml"

    iput-object v6, v0, Lcom/android/server/VibratorService;->VIBRATOR_EFFECT_MAP_PATH:Ljava/lang/String;

    const-string v6, "/system/etc/inputmethod_duration_map.xml"

    iput-object v6, v0, Lcom/android/server/VibratorService;->INPUTMETHOD_DURATION_MAP_PATH:Ljava/lang/String;

    const-string v6, "effectmap"

    iput-object v6, v0, Lcom/android/server/VibratorService;->EFFECT_MAP:Ljava/lang/String;

    const-string/jumbo v6, "sceneId"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_SCENE:Ljava/lang/String;

    const-string v6, "effectId"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_EFFECT:Ljava/lang/String;

    const-string v6, "duration"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_DURATION:Ljava/lang/String;

    const-string v6, "durationmap"

    iput-object v6, v0, Lcom/android/server/VibratorService;->DURATION_MAP:Ljava/lang/String;

    const-string/jumbo v6, "packagename"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_PACKAGE_NAME:Ljava/lang/String;

    const-string/jumbo v6, "min"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_MIN:Ljava/lang/String;

    const-string/jumbo v6, "max"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_MAX:Ljava/lang/String;

    const-string v6, "enhancedefault"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ENHANCE_DEFAULT:Ljava/lang/String;

    const-string v6, "default"

    iput-object v6, v0, Lcom/android/server/VibratorService;->ATTR_DEFAULT:Ljava/lang/String;

    const-string/jumbo v6, "seteffect"

    iput-object v6, v0, Lcom/android/server/VibratorService;->SET_EFFECT:Ljava/lang/String;

    new-instance v6, Lcom/android/server/VibratorService$4;

    invoke-direct {v6, v0}, Lcom/android/server/VibratorService$4;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    iput v5, v0, Lcom/android/server/VibratorService;->mLidState:I

    new-instance v6, Lcom/android/server/VibratorService$5;

    invoke-direct {v6, v0}, Lcom/android/server/VibratorService$5;-><init>(Lcom/android/server/VibratorService;)V

    iput-object v6, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorInit()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->initCaliFile()V

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorSupportsAmplitudeControl()Z

    move-result v6

    iput-boolean v6, v0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    iput-object v1, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "power"

    invoke-virtual {v1, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/PowerManager;

    const-string v7, "*vibrator*"

    invoke-virtual {v6, v5, v7}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v7, v0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v7, v5}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    iget-object v7, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v8, Landroid/app/AppOpsManager;

    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManager;

    iput-object v7, v0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const-string v7, "batterystats"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v7

    iput-object v7, v0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget-object v7, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0089

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    iget-object v7, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0037

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    iput v7, v0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    iget-object v7, v0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x112000b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, v0, Lcom/android/server/VibratorService;->mAllowPriorityVibrationsInLowPowerMode:Z

    new-instance v7, Ljava/util/LinkedList;

    invoke-direct {v7}, Ljava/util/LinkedList;-><init>()V

    iput-object v7, v0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    new-instance v7, Landroid/content/IntentFilter;

    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    const-string v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v8, "android.intent.action.LID_SWITCH"

    invoke-virtual {v7, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v8, v0, Lcom/android/server/VibratorService;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v8, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const v8, 0x1070058

    invoke-direct {v0, v8}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v8

    sget-object v9, Lcom/android/server/VibratorService;->DOUBLE_CLICK_EFFECT_FALLBACK_TIMINGS:[J

    invoke-static {v9, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v9

    const v10, 0x1070033

    invoke-direct {v0, v10}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v10

    const v11, 0x107001e

    invoke-direct {v0, v11}, Lcom/android/server/VibratorService;->createEffectFromResource(I)Landroid/os/VibrationEffect;

    move-result-object v11

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    iget-object v12, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v12, v4, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v12, v5, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v13, 0x2

    invoke-virtual {v12, v13, v11}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v12, v0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    const/4 v14, 0x5

    invoke-virtual {v12, v14, v10}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    new-instance v12, Landroid/util/SparseArray;

    invoke-direct {v12}, Landroid/util/SparseArray;-><init>()V

    iput-object v12, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    iget-object v12, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v14, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v15, 0x40000000    # 2.0f

    const/16 v13, 0xa8

    invoke-direct {v14, v15, v13}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v12, v3, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v3, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v12, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v13, 0x3fc00000    # 1.5f

    const/16 v14, 0xc0

    invoke-direct {v12, v13, v14}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(FI)V

    invoke-virtual {v3, v2, v12}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v12, 0x3f800000    # 1.0f

    invoke-direct {v3, v12}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v4, 0x3f000000    # 0.5f

    invoke-direct {v3, v4}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    invoke-virtual {v2, v5, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v2, v0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    new-instance v3, Lcom/android/server/VibratorService$ScaleLevel;

    const/high16 v4, 0x3e800000    # 0.25f

    invoke-direct {v3, v4}, Lcom/android/server/VibratorService$ScaleLevel;-><init>(F)V

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const-string v2, "dumpling"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cheeseburger"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string v2, "/sys/class/timed_output/vibrator/vmax_mv"

    iput-object v2, v0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    :cond_1
    const-string v2, "/system/etc/vibrator_effect_map.xml"

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    const-string v2, "/system/etc/inputmethod_duration_map.xml"

    invoke-direct {v0, v2}, Lcom/android/server/VibratorService;->getVibratorEffectMap(Ljava/lang/String;)V

    return-void
.end method

.method private WriteNodeValue(I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x70

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/VibratorService;->VIBRATOR_INTENSITY_PATH:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v0}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/server/VibratorService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$Vibration;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/VibratorService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    return-void
.end method

.method static synthetic access$1102(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/VibratorService;)Lcom/android/server/VibratorService$VibrateThread;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/VibratorService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/VibratorService;->mLidState:I

    return v0
.end method

.method static synthetic access$1302(Lcom/android/server/VibratorService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/VibratorService;->mLidState:I

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/VibratorService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VibratorService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method static synthetic access$400()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/VibratorService;)Landroid/os/WorkSource;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mTmpWorkSource:Landroid/os/WorkSource;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/VibratorService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/VibratorService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->repeatVibrate:Z

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/VibratorService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/VibratorService;->repeatVibrate:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/server/VibratorService;JIII)V
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    return-void
.end method

.method private addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrationsLimit:I

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    const-string v0, "VibratorService"

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V
    .locals 6

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    invoke-static {p2}, Lcom/android/server/VibratorService;->intensityToEffectStrength(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/VibrationEffect$Prebaked;->setEffectStrength(I)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    goto :goto_1

    :cond_2
    return-void

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v0

    :goto_1
    nop

    iget-object v1, p0, Lcom/android/server/VibratorService;->mScaleLevels:Landroid/util/SparseArray;

    sub-int v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/VibratorService$ScaleLevel;

    if-nez v1, :cond_4

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No configured scaling level! (current="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", default= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const/4 v2, 0x0

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_5

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v3, Landroid/os/VibrationEffect$OneShot;

    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect$OneShot;->resolve(I)Landroid/os/VibrationEffect$OneShot;

    move-result-object v3

    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v3, v4, v5}, Landroid/os/VibrationEffect$OneShot;->scale(FI)Landroid/os/VibrationEffect;

    move-result-object v2

    goto :goto_2

    :cond_5
    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v3, v3, Landroid/os/VibrationEffect$Waveform;

    if-eqz v3, :cond_6

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v3, Landroid/os/VibrationEffect$Waveform;

    iget v4, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    invoke-virtual {v3, v4}, Landroid/os/VibrationEffect$Waveform;->resolve(I)Landroid/os/VibrationEffect$Waveform;

    move-result-object v3

    iget v4, v1, Lcom/android/server/VibratorService$ScaleLevel;->gamma:F

    iget v5, v1, Lcom/android/server/VibratorService$ScaleLevel;->maxAmplitude:I

    invoke-virtual {v3, v4, v5}, Landroid/os/VibrationEffect$Waveform;->scale(FI)Landroid/os/VibrationEffect;

    move-result-object v2

    goto :goto_2

    :cond_6
    const-string v3, "VibratorService"

    const-string v4, "Unable to apply intensity scaling, unknown VibrationEffect type"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    if-eqz v2, :cond_7

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    iput-object v3, p1, Lcom/android/server/VibratorService$Vibration;->originalEffect:Landroid/os/VibrationEffect;

    iput-object v2, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    :cond_7
    return-void
.end method

.method private createEffectFromResource(I)Landroid/os/VibrationEffect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/VibratorService;->getLongIntArray(Landroid/content/res/Resources;I)[J

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/VibratorService;->createEffectFromTimings([J)Landroid/os/VibrationEffect;

    move-result-object v1

    return-object v1
.end method

.method private static createEffectFromTimings([J)Landroid/os/VibrationEffect;
    .locals 3

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    const/4 v2, -0x1

    if-ne v0, v1, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1, v2}, Landroid/os/VibrationEffect;->createOneShot(JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_1
    invoke-static {p0, v2}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private doCancelVibrateLocked()V
    .locals 5
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "vibration"

    const-wide/32 v1, 0x800000

    const/4 v3, 0x0

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    const-string v0, "doCancelVibrateLocked"

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v0}, Lcom/android/server/VibratorService$VibrateThread;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorOff()V

    invoke-direct {p0}, Lcom/android/server/VibratorService;->reportFinishVibrationLocked()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->isVibrating:Z

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->isEffectChanged:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    iget-object v4, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_3
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->isVibrating:Z

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->isEffectChanged:Z

    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0

    :catchall_2
    move-exception v0

    :try_start_4
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v0
.end method

.method private doVibratorExists()Z
    .locals 1

    invoke-static {}, Lcom/android/server/VibratorService;->vibratorExists()Z

    move-result v0

    return v0
.end method

.method private doVibratorOff()V
    .locals 6

    const-string v0, "doVibratorOff"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_0

    const-string v3, "VibratorService"

    const-string v4, "Turning vibrator off."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->noteVibratorOffLocked()V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_2

    iget-object v5, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Vibrator;

    invoke-virtual {v5}, Landroid/os/Vibrator;->cancel()V

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/VibratorService;->vibratorOff()V

    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorOn(JIII)V
    .locals 9

    const-string v0, "doVibratorOn"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, -0x1

    if-ne p3, v3, :cond_0

    :try_start_1
    iget v3, p0, Lcom/android/server/VibratorService;->mDefaultVibrationAmplitude:I

    move p3, v3

    goto :goto_0

    :catchall_0
    move-exception v3

    goto/16 :goto_4

    :cond_0
    :goto_0
    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Turning vibrator on for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " ms with amplitude "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0, p4, p1, p2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_3

    new-instance v5, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v5}, Landroid/media/AudioAttributes$Builder;-><init>()V

    invoke-virtual {v5, p5}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v5

    nop

    :goto_1
    if-ge v4, v3, :cond_2

    iget-object v6, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Vibrator;

    invoke-virtual {v6, p1, p2, v5}, Landroid/os/Vibrator;->vibrate(JLandroid/media/AudioAttributes;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_2
    goto/16 :goto_3

    :cond_3
    const/4 v5, 0x1

    new-array v5, v5, [I

    const/16 v6, 0x70

    aput v6, v5, v4

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_6

    const-wide/16 v4, 0x2710

    mul-long/2addr v4, p1

    iget v6, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    mul-int/lit8 v6, v6, 0xa

    int-to-long v6, v6

    add-long/2addr v4, v6

    iget v6, p0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    int-to-long v6, v6

    add-long/2addr v4, v6

    sget-boolean v6, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v6, :cond_4

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doVibratorOn: millis = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doVibratorOn: intensityEffectType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doVibratorOn: intensityStrengthType = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v6, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_5

    const-string v6, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "doVibratorOn: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {v4, v5}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    goto :goto_2

    :cond_6
    const-string/jumbo v4, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    :cond_7
    invoke-static {p1, p2}, Lcom/android/server/VibratorService;->vibratorOn(J)V

    :goto_2
    invoke-direct {p0, p3}, Lcom/android/server/VibratorService;->doVibratorSetAmplitude(I)V

    :goto_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :goto_4
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J
    .locals 18
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    const-string v0, "doVibratorPrebakedEffectLocked"

    const-wide/32 v11, 0x800000

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v10, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Prebaked;

    move-object v13, v0

    iget-object v1, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v0, v9, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    xor-int/2addr v0, v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const-wide/16 v14, 0x0

    if-nez v0, :cond_3

    :try_start_2
    const-string/jumbo v1, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget v1, v9, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x8d

    aput v4, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0xb

    iget v3, v10, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    if-ne v2, v3, :cond_0

    const/16 v2, 0x71

    invoke-static {v2}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v2

    move v1, v2

    :cond_0
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v2

    int-to-long v2, v2

    int-to-long v4, v1

    invoke-static {v2, v3, v4, v5}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v2

    sget-boolean v4, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_1

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "guacamoleb: mVibrateOnTouchIntensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", vibStrength = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", mVibrateOnTouchIntensity = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v9, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    goto :goto_0

    :cond_2
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getEffectStrength()I

    move-result v3

    int-to-long v3, v3

    invoke-static {v1, v2, v3, v4}, Lcom/android/server/VibratorService;->vibratorPerformEffect(JJ)J

    move-result-wide v2

    :goto_0
    move-wide v1, v2

    cmp-long v3, v1, v14

    if-lez v3, :cond_3

    iget v3, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-direct {v9, v3, v1, v2}, Lcom/android/server/VibratorService;->noteVibratorOnLocked(IJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v1

    :cond_3
    :try_start_3
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->shouldFallback()Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v1, :cond_4

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :cond_4
    :try_start_4
    invoke-virtual {v13}, Landroid/os/VibrationEffect$Prebaked;->getId()I

    move-result v1

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getFallbackEffect(I)Landroid/os/VibrationEffect;

    move-result-object v1

    move-object/from16 v16, v1

    if-nez v16, :cond_5

    const-string v1, "VibratorService"

    const-string v2, "Failed to play prebaked effect, no fallback"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :cond_5
    :try_start_5
    new-instance v17, Lcom/android/server/VibratorService$Vibration;

    iget-object v3, v10, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    iget v5, v10, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v6, v10, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v7, v10, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v8, 0x0

    move-object/from16 v1, v17

    move-object v2, v9

    move-object/from16 v4, v16

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object/from16 v1, v17

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v2

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v9, v1, v2}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    nop

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    return-wide v14

    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v11, v12}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private doVibratorSetAmplitude(I)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v0, :cond_3

    const-string v0, "VibratorService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OP config vibrate strength! (amplitude="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", intensityStrengthType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "guacamoleb"

    invoke-static {}, Landroid/util/OpFeatures;->getProductName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    const/16 v0, 0x2b

    invoke-static {v0}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/VibratorService;->intensityStrengthType:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    const/16 v0, 0x93

    invoke-static {v0}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x71

    invoke-static {v0}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/android/server/VibratorService;->vibratorSetAmplitude(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method private getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v1, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/app/AppOpsManager;->checkAudioOpNoThrow(IIILjava/lang/String;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v3, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v1, v4, v2, v3}, Landroid/app/AppOpsManager;->startOpNoThrow(IILjava/lang/String;)I

    move-result v0

    :cond_0
    return v0
.end method

.method private getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I
    .locals 1

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isNotification()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    return v0

    :cond_1
    const/4 v0, 0x2

    return v0

    :cond_2
    :goto_0
    iget v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return v0
.end method

.method private getFallbackEffect(I)Landroid/os/VibrationEffect;
    .locals 1

    iget-object v0, p0, Lcom/android/server/VibratorService;->mFallbackEffects:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/VibrationEffect;

    return-object v0
.end method

.method private static getLongIntArray(Landroid/content/res/Resources;I)[J
    .locals 5

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    :cond_0
    array-length v1, v0

    new-array v1, v1, [J

    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method

.method private getVibratorEffectMap(Ljava/lang/String;)V
    .locals 10

    if-nez p1, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x0

    move-object v2, v1

    :try_start_0
    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    move-object v2, v3

    nop

    :try_start_1
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    invoke-interface {v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_8

    if-eqz v4, :cond_6

    const/4 v5, 0x2

    if-eq v4, v5, :cond_1

    goto/16 :goto_1

    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v5

    const-string v6, "effectmap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    sget-object v6, Lcom/android/server/VibratorService;->effectMap:Ljava/util/Map;

    const-string/jumbo v7, "sceneId"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    const-string v8, "effectId"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v6, "duration"

    invoke-interface {v3, v1, v6}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_2

    sget-object v7, Lcom/android/server/VibratorService;->durationMap:Ljava/util/Map;

    const-string/jumbo v8, "sceneId"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v7, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    goto/16 :goto_1

    :cond_3
    const-string v6, "durationmap"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    sget-object v6, Lcom/android/server/VibratorService;->minDurationMap:Ljava/util/Map;

    const-string/jumbo v7, "packagename"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "min"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v6, Lcom/android/server/VibratorService;->maxDurationMap:Ljava/util/Map;

    const-string/jumbo v7, "packagename"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "max"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_4
    const-string v6, "enhancedefault"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    sget-object v6, Lcom/android/server/VibratorService;->enhanceDefaultMap:Ljava/util/Map;

    const-string/jumbo v7, "packagename"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "default"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_5
    const-string/jumbo v6, "seteffect"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    sget-object v6, Lcom/android/server/VibratorService;->setEffectMap:Ljava/util/Map;

    const-string/jumbo v7, "packagename"

    invoke-interface {v3, v1, v7}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v8, "duration"

    invoke-interface {v3, v1, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    :cond_6
    nop

    :cond_7
    :goto_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v4, v5

    goto/16 :goto_0

    :cond_8
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    const-string v3, "VibratorService"

    const-string v4, "Got execption close permReader."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    :try_start_3
    const-string v3, "VibratorService"

    const-string v4, "Got execption parsing permissions."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    nop

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_2

    :catch_2
    move-exception v1

    :try_start_5
    const-string v3, "VibratorService"

    const-string v4, "Got execption parsing permissions."

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Lorg/xmlpull/v1/XmlPullParserException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    nop

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    nop

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_5

    :catch_3
    move-exception v3

    const-string v4, "VibratorService"

    const-string v5, "Got execption close permReader."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_5
    throw v1

    :catch_4
    move-exception v1

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->printStackTrace()V

    return-void
.end method

.method private initCaliFile()V
    .locals 3

    const-string v0, "VibratorService"

    const-string v1, "/persist/engineermode/vibrator_data"

    invoke-static {v0, v1}, Lcom/android/server/VibratorService;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    if-eqz v0, :cond_1

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "VibratorService"

    const-string v2, "/sys/class/leds/vibrator/haptic_osc_data"

    invoke-static {v1, v2, v0}, Lcom/android/server/VibratorService;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return-void
.end method

.method private static intensityToEffectStrength(I)I
    .locals 4

    const/4 v0, 0x2

    packed-switch p0, :pswitch_data_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Got unexpected vibration intensity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :pswitch_0
    return v0

    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_2
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Create package context fail from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p1, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    :goto_0
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-static {v1, v2}, Lcom/oneplus/util/OemSceneCallBlocker;->isUsageMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "VibratorService"

    const-string v3, "Skip vibrating on gaming mode"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v3, 0x1

    if-nez v2, :cond_1

    return v3

    :cond_1
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x6

    if-ne v2, v4, :cond_2

    return v3

    :cond_2
    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x4

    if-eq v2, v4, :cond_4

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/16 v4, 0xb

    if-eq v2, v4, :cond_4

    iget v2, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    const/4 v4, 0x7

    if-ne v2, v4, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    return v3
.end method

.method private static isRepeatingVibration(Landroid/os/VibrationEffect;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v0

    const-wide v2, 0x7fffffffffffffffL

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private linkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    return-void

    :cond_0
    :goto_0
    return-void
.end method

.method private noteVibratorOffLocked()V
    .locals 2

    iget v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    if-ltz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    iget v1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOff(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/VibratorService;->mCurVibUid:I

    :cond_0
    return-void
.end method

.method private noteVibratorOnLocked(IJ)V
    .locals 1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mBatteryStatsService:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/internal/app/IBatteryStats;->noteVibratorOn(IJ)V

    iput p1, p0, Lcom/android/server/VibratorService;->mCurVibUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private static readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "VibratorService"

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile file not exists : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io close exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io close exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    move-object v0, v3

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readStringFromFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readStringFromFile io close exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    throw v0

    :cond_5
    :goto_6
    const-string/jumbo v1, "readStringFromFile invalid file path"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private reportFinishVibrationLocked()V
    .locals 6
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "reportFinishVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/VibratorService;->mAppOps:Landroid/app/AppOpsManager;

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget v4, v4, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget-object v5, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v5, v5, Lcom/android/server/VibratorService$Vibration;->opPkg:Ljava/lang/String;

    invoke-virtual {v0, v3, v4, v5}, Landroid/app/AppOpsManager;->finishOp(IILjava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-direct {p0, v0}, Lcom/android/server/VibratorService;->unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private shouldVibrateForRingtone()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/media/AudioManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v1

    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "vibrate_when_ringing"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    return v3

    :cond_1
    if-ne v1, v3, :cond_2

    goto :goto_1

    :cond_2
    move v3, v4

    :goto_1
    return v3
.end method

.method private startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 9
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "startVibrationInnerLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iput-object p1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v6

    iget v7, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v8, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    move-object v3, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/server/VibratorService;->doVibratorOn(JIII)V

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_1

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v0, Landroid/os/VibrationEffect$Waveform;

    new-instance v3, Lcom/android/server/VibratorService$VibrateThread;

    iget v4, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    iget v5, p1, Lcom/android/server/VibratorService$Vibration;->usageHint:I

    invoke-direct {v3, p0, v0, v4, v5}, Lcom/android/server/VibratorService$VibrateThread;-><init>(Lcom/android/server/VibratorService;Landroid/os/VibrationEffect$Waveform;II)V

    iput-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mThread:Lcom/android/server/VibratorService$VibrateThread;

    invoke-virtual {v3}, Lcom/android/server/VibratorService$VibrateThread;->start()V

    goto :goto_0

    :cond_1
    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Prebaked;

    if-eqz v0, :cond_3

    const-string/jumbo v0, "vibration"

    invoke-static {v1, v2, v0, v3}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->doVibratorPrebakedEffectLocked(Lcom/android/server/VibratorService$Vibration;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mVibrationEndRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    goto :goto_0

    :cond_3
    const-string v0, "VibratorService"

    const-string v3, "Unknown vibration type, ignoring"

    invoke-static {v0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V
    .locals 7
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation

    const-string/jumbo v0, "startVibrationLocked"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v3, 0x1

    :try_start_1
    iput-boolean v3, p0, Lcom/android/server/VibratorService;->isVibrating:Z

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->isAllowedToVibrateLocked(Lcom/android/server/VibratorService$Vibration;)Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-nez v0, :cond_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_3
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getCurrentIntensityLocked(Lcom/android/server/VibratorService$Vibration;)I

    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez v0, :cond_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_4
    invoke-virtual {p1}, Lcom/android/server/VibratorService$Vibration;->isRingtone()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->shouldVibrateForRingtone()Z

    move-result v3

    if-nez v3, :cond_3

    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "VibratorService"

    const-string v4, "Vibrate ignored, not vibrating for ringtones"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_5
    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->getAppOpMode(Lcom/android/server/VibratorService$Vibration;)I

    move-result v3

    if-eqz v3, :cond_5

    const/4 v4, 0x2

    if-ne v3, v4, :cond_4

    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Would be an error: vibrate from uid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p1, Lcom/android/server/VibratorService$Vibration;->uid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5
    :try_start_6
    invoke-direct {p0, p1, v0}, Lcom/android/server/VibratorService;->applyVibrationIntensityScalingLocked(Lcom/android/server/VibratorService$Vibration;I)V

    invoke-direct {p0, p1}, Lcom/android/server/VibratorService;->startVibrationInnerLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :try_start_8
    throw v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :catchall_1
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method private unlinkVibration(Lcom/android/server/VibratorService$Vibration;)V
    .locals 2

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$Waveform;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    :cond_0
    return-void
.end method

.method private updateInputDeviceVibratorsLocked()Z
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "vibrate_input_devices"

    const/4 v6, -0x2

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-lez v4, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v4

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eq v2, v4, :cond_1

    const/4 v0, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    :cond_1
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-nez v4, :cond_3

    iput-boolean v3, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v4, p0, v5}, Landroid/hardware/input/InputManager;->registerInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;Landroid/os/Handler;)V

    goto :goto_2

    :cond_2
    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    if-eqz v4, :cond_3

    iput-boolean v1, p0, Lcom/android/server/VibratorService;->mInputDeviceListenerRegistered:Z

    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4, p0}, Landroid/hardware/input/InputManager;->unregisterInputDeviceListener(Landroid/hardware/input/InputManager$InputDeviceListener;)V

    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    iget-boolean v4, p0, Lcom/android/server/VibratorService;->mVibrateInputDevicesSetting:Z

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    invoke-virtual {v4}, Landroid/hardware/input/InputManager;->getInputDeviceIds()[I

    move-result-object v4

    nop

    :goto_3
    array-length v5, v4

    if-ge v1, v5, :cond_5

    iget-object v5, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    aget v6, v4, v1

    invoke-virtual {v5, v6}, Landroid/hardware/input/InputManager;->getInputDevice(I)Landroid/view/InputDevice;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/InputDevice;->getVibrator()Landroid/os/Vibrator;

    move-result-object v6

    invoke-virtual {v6}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v7

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v7, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_5
    return v3

    :cond_6
    return v0
.end method

.method private updateLowPowerModeLocked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->getLowPowerState(I)Landroid/os/PowerSaveState;

    move-result-object v0

    iget-boolean v0, v0, Landroid/os/PowerSaveState;->batterySaverEnabled:Z

    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    const/4 v1, 0x1

    return v1

    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private updateVibrationIntensityLocked()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "haptic_feedback_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v2

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "notification_vibration_intensity"

    iget-object v2, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v2}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    return-void
.end method

.method private updateVibrators()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "default_input_method"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aget-object v4, v2, v4

    iput-object v4, p0, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    :cond_0
    iget-object v2, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v4, "vibrate_on_touch_intensity"

    const/4 v5, 0x1

    invoke-static {v2, v4, v5, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateInputDeviceVibratorsLocked()Z

    move-result v2

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateLowPowerModeLocked()Z

    move-result v3

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrationIntensityLocked()V

    if-nez v2, :cond_1

    if-eqz v3, :cond_2

    :cond_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private verifyIncomingUid(I)V
    .locals 5

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_APP_OPS_STATS"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    return-void
.end method

.method private static verifyVibrationEffect(Landroid/os/VibrationEffect;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    const-string v1, "VibratorService"

    const-string v2, "effect must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/os/VibrationEffect;->validate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v1

    const-string v2, "VibratorService"

    const-string v3, "Encountered issue when verifying VibrationEffect."

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v0
.end method

.method static native vibratorExists()Z
.end method

.method static native vibratorInit()V
.end method

.method static native vibratorOff()V
.end method

.method static native vibratorOn(J)V
.end method

.method static native vibratorPerformEffect(JJ)J
.end method

.method static native vibratorSetAmplitude(I)V
.end method

.method static native vibratorSupportsAmplitudeControl()Z
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/FileWriter;

    invoke-direct {v4, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    move-object v1, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile Write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string v4, "close wrong"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile sorry write wrong:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "writeStringToFile Write"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "to"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :goto_2
    return v0

    :goto_3
    nop

    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedWriter;->close()V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile Write"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "to"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "close wrong"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    throw v2
.end method


# virtual methods
.method public cancelVibrate(Landroid/os/IBinder;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.VIBRATE"

    const-string v2, "cancelVibrate"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v1, v1, Lcom/android/server/VibratorService$Vibration;->token:Landroid/os/IBinder;

    if-ne v1, p1, :cond_1

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    const-string v3, "Canceling vibration."

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    iput v2, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->repeatVibrate:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    goto :goto_0

    :catchall_0
    move-exception v1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v1

    :cond_1
    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-nez v1, :cond_2

    iput v2, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    :cond_2
    :goto_0
    monitor-exit v0

    return-void

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v1, "VibratorService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Vibrator Service:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "  mCurrentVibration="

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v1}, Lcom/android/server/VibratorService$Vibration;->toInfo()Lcom/android/server/VibratorService$VibrationInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mLowPowerMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/VibratorService;->mLowPowerMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mHapticFeedbackIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mHapticFeedbackIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mNotificationIntensity="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/VibratorService;->mNotificationIntensity:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, ""

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v1, "  Previous vibrations:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/VibratorService;->mPreviousVibrations:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/VibratorService$VibrationInfo;

    const-string v3, "    "

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/android/server/VibratorService$VibrationInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasAmplitudeControl()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/VibratorService;->mSupportsAmplitudeControl:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/VibratorService;->mInputDeviceVibrators:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public hasVibrator()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/VibratorService;->doVibratorExists()Z

    move-result v0

    return v0
.end method

.method public onInputDeviceAdded(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceChanged(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onInputDeviceRemoved(I)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V

    return-void
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/VibratorService$VibratorShellCommand;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/VibratorService$VibratorShellCommand;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Lcom/android/server/VibratorService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/VibratorService$VibratorShellCommand;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onVibrationFinished()V
    .locals 2

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "VibratorService"

    const-string v1, "Vibration finished, cleaning up"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVibratorEffect(I)I
    .locals 7

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setVibratorEffect from ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ") : sceneType = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v1, Lcom/android/server/VibratorService;->DEBUG_DUMP:Z

    if-eqz v1, :cond_1

    const-string v1, "VibratorService"

    const-string/jumbo v2, "setVibratorEffect calling stack: "

    new-instance v3, Ljava/lang/Throwable;

    invoke-direct {v3}, Ljava/lang/Throwable;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    sget-object v1, Lcom/android/server/VibratorService;->effectMap:Ljava/util/Map;

    const/4 v2, -0x1

    if-eqz v1, :cond_9

    sget-object v1, Lcom/android/server/VibratorService;->durationMap:Ljava/util/Map;

    if-nez v1, :cond_2

    goto/16 :goto_2

    :cond_2
    sget-object v1, Lcom/android/server/VibratorService;->effectMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    sget-object v3, Lcom/android/server/VibratorService;->durationMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    if-eqz v1, :cond_8

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v4, v4, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {v4}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget v2, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    iput v2, p0, Lcom/android/server/VibratorService;->oldIntensityEffectType:I

    goto :goto_0

    :cond_4
    iput v2, p0, Lcom/android/server/VibratorService;->oldIntensityEffectType:I

    :goto_0
    sget-boolean v2, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_5

    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVibratorEffect : effectType = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-boolean v2, Lcom/android/server/VibratorService;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_6

    const-string v2, "VibratorService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "setVibratorEffect : duration = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget-object v4, p0, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget-boolean v2, p0, Lcom/android/server/VibratorService;->isVibrating:Z

    if-nez v2, :cond_7

    iget v2, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-eq v2, v5, :cond_7

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/VibratorService;->isEffectChanged:Z

    :cond_7
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, p0, Lcom/android/server/VibratorService;->intensityEffectType:I

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    return v2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_8
    :goto_1
    const-string v4, "VibratorService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "the effectMap or durationMap do not contains the sceneType : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_9
    :goto_2
    const-string v1, "VibratorService"

    const-string v3, "effectMap is null"

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public systemReady()V
    .locals 8

    const-string v0, "VibratorService#systemReady"

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/hardware/input/InputManager;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/input/InputManager;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mIm:Landroid/hardware/input/InputManager;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-class v3, Landroid/os/Vibrator;

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mVibrator:Landroid/os/Vibrator;

    new-instance v0, Lcom/android/server/VibratorService$SettingsObserver;

    iget-object v3, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/server/VibratorService$SettingsObserver;-><init>(Lcom/android/server/VibratorService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const-class v0, Landroid/os/PowerManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManagerInternal;

    iput-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    iget-object v0, p0, Lcom/android/server/VibratorService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    new-instance v3, Lcom/android/server/VibratorService$1;

    invoke-direct {v3, p0}, Lcom/android/server/VibratorService$1;-><init>(Lcom/android/server/VibratorService;)V

    invoke-virtual {v0, v3}, Landroid/os/PowerManagerInternal;->registerLowPowerModeObserver(Landroid/os/PowerManagerInternal$LowPowerModeListener;)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vibrate_input_devices"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    const/4 v5, -0x1

    const/4 v6, 0x1

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "haptic_feedback_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "notification_vibration_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_input_method"

    invoke-static {v3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "vibrate_on_touch_intensity"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/VibratorService;->mSettingObserver:Lcom/android/server/VibratorService$SettingsObserver;

    invoke-virtual {v0, v3, v6, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "default_input_method"

    const/4 v4, -0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "/"

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aget-object v5, v3, v5

    iput-object v5, p0, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    :cond_0
    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "vibrate_on_touch_intensity"

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iput v3, p0, Lcom/android/server/VibratorService;->mVibrateOnTouchIntensity:I

    iget-object v3, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    new-instance v4, Lcom/android/server/VibratorService$2;

    invoke-direct {v4, p0}, Lcom/android/server/VibratorService$2;-><init>(Lcom/android/server/VibratorService;)V

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.USER_SWITCHED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/android/server/VibratorService;->mH:Landroid/os/Handler;

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v3, Landroid/content/IntentFilter;

    invoke-direct {v3}, Landroid/content/IntentFilter;-><init>()V

    const-string v4, "com.oem.intent.action.CANCEL_VIBRATION"

    invoke-virtual {v3, v4}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/server/VibratorService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v4, v5, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/VibratorService;->updateVibrators()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method

.method public vibrate(ILjava/lang/String;Landroid/os/VibrationEffect;ILandroid/os/IBinder;)V
    .locals 21

    move-object/from16 v9, p0

    move-object/from16 v10, p2

    move-object/from16 v1, p3

    move/from16 v11, p4

    const-string/jumbo v0, "vibrate"

    const-wide/32 v12, 0x800000

    invoke-static {v12, v13, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    :try_start_0
    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.VIBRATE"

    invoke-virtual {v0, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1f

    if-nez p5, :cond_0

    const-string v0, "VibratorService"

    const-string/jumbo v2, "token must not be null"

    invoke-static {v0, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_5

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_0
    :try_start_1
    invoke-direct/range {p0 .. p1}, Lcom/android/server/VibratorService;->verifyIncomingUid(I)V

    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->verifyVibrationEffect(Landroid/os/VibrationEffect;)Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    if-nez v0, :cond_1

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_1
    :try_start_2
    const-string v0, "VibratorService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "vibrate from \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\', usageHint = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v10}, Lcom/android/server/OemSceneVibrationController;->canVibrationGo(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored by OemSceneVibrationController."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_2
    :try_start_3
    iget-object v0, v9, Lcom/android/server/VibratorService;->mContext:Landroid/content/Context;

    invoke-static {v0, v11}, Lcom/oneplus/util/OemSceneCallBlocker;->isVibratorUsageMutedByCallBlocker(Landroid/content/Context;I)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "VibratorService"

    const-string v2, "Vibrating is ignored on gaming mode."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_3
    :try_start_4
    iget-object v14, v9, Lcom/android/server/VibratorService;->mLock:Ljava/lang/Object;

    monitor-enter v14
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_5

    :try_start_5
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_5

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    instance-of v0, v0, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_5

    move-object v0, v1

    check-cast v0, Landroid/os/VibrationEffect$OneShot;

    iget-object v2, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v2, v2, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    iget-object v3, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getDuration()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/android/server/VibratorService$Vibration;->hasTimeoutLongerThan(J)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-virtual {v0}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v3

    invoke-virtual {v2}, Landroid/os/VibrationEffect$OneShot;->getAmplitude()I

    move-result v4

    if-ne v3, v4, :cond_5

    sget-boolean v3, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "VibratorService"

    const-string v4, "Ignoring incoming vibration in favor of current vibration"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v14
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_5
    :try_start_6
    invoke-static/range {p3 .. p3}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    if-eqz v0, :cond_8

    iget-object v0, v9, Lcom/android/server/VibratorService;->mCurrentVibration:Lcom/android/server/VibratorService$Vibration;

    iget-object v0, v0, Lcom/android/server/VibratorService$Vibration;->effect:Landroid/os/VibrationEffect;

    invoke-static {v0}, Lcom/android/server/VibratorService;->isRepeatingVibration(Landroid/os/VibrationEffect;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/VibratorService;->DEBUG:Z

    if-eqz v0, :cond_6

    const-string v0, "VibratorService"

    const-string v2, "Ignoring incoming vibration in favor of alarm vibration"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iget v0, v9, Lcom/android/server/VibratorService;->oldIntensityEffectType:I

    const/4 v2, -0x1

    if-eq v0, v2, :cond_7

    iget v0, v9, Lcom/android/server/VibratorService;->oldIntensityEffectType:I

    iput v0, v9, Lcom/android/server/VibratorService;->intensityEffectType:I

    :cond_7
    monitor-exit v14
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    invoke-static {v12, v13}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_8
    :try_start_7
    instance-of v0, v1, Landroid/os/VibrationEffect$Waveform;

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v0, :cond_d

    const-string v0, "Middle"

    move-object v6, v1

    check-cast v6, Landroid/os/VibrationEffect$Waveform;

    iget-object v7, v6, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    iget v8, v6, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    aget-wide v15, v7, v5

    const-wide/16 v17, -0x1

    cmp-long v15, v15, v17

    if-nez v15, :cond_9

    const-string/jumbo v15, "weak"

    move-object v0, v15

    iget v12, v9, Lcom/android/server/VibratorService;->intensityWeak:I

    invoke-direct {v9, v12}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    iput v4, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I

    aget-wide v12, v7, v5

    invoke-static {v7, v12, v13}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v12

    move-object v7, v12

    :goto_0
    move-object v12, v0

    goto :goto_1

    :cond_9
    aget-wide v12, v7, v5

    const-wide/16 v15, -0x2

    cmp-long v12, v12, v15

    if-nez v12, :cond_a

    const/16 v12, 0x5e4

    invoke-direct {v9, v12}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    iput v3, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I

    aget-wide v12, v7, v5

    invoke-static {v7, v12, v13}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v12

    move-object v7, v12

    goto :goto_0

    :cond_a
    aget-wide v12, v7, v5

    const-wide/16 v15, -0x3

    cmp-long v12, v12, v15

    if-nez v12, :cond_b

    const-string v12, "Strong"

    move-object v0, v12

    iget v12, v9, Lcom/android/server/VibratorService;->intensityStrong:I

    invoke-direct {v9, v12}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    iput v2, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I

    aget-wide v12, v7, v5

    invoke-static {v7, v12, v13}, Lcom/android/internal/util/ArrayUtils;->removeLong([JJ)[J

    move-result-object v12

    move-object v7, v12

    goto :goto_0

    :cond_b
    iget-boolean v12, v9, Lcom/android/server/VibratorService;->isEffectChanged:Z

    if-nez v12, :cond_c

    iput v5, v9, Lcom/android/server/VibratorService;->intensityEffectType:I

    :cond_c
    const/16 v12, 0x4fc

    invoke-direct {v9, v12}, Lcom/android/server/VibratorService;->WriteNodeValue(I)V

    iput v3, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_0

    :goto_1
    :try_start_8
    invoke-static {v7, v8}, Landroid/os/VibrationEffect;->createWaveform([JI)Landroid/os/VibrationEffect;

    move-result-object v0
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    nop

    nop

    move-object v12, v0

    goto :goto_2

    :catch_0
    move-exception v0

    move-object v2, v0

    :try_start_9
    const-string v2, "VibratorService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error creating vibration waveform with pattern: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v14
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    return-void

    :cond_d
    :try_start_a
    instance-of v0, v1, Landroid/os/VibrationEffect$OneShot;

    if-eqz v0, :cond_e

    iput v3, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :cond_e
    move-object v12, v1

    :goto_2
    const/16 v0, 0x2710

    const-wide/16 v6, 0x0

    move/from16 v13, p1

    if-lt v13, v0, :cond_16

    const-wide/16 v0, 0x0

    :try_start_b
    instance-of v8, v12, Landroid/os/VibrationEffect$Waveform;

    if-eqz v8, :cond_10

    move-object v8, v12

    check-cast v8, Landroid/os/VibrationEffect$Waveform;

    iget-object v2, v8, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v2, v2

    if-ne v2, v3, :cond_f

    iget-object v2, v8, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    aget-wide v15, v2, v4

    move-wide v0, v15

    :cond_f
    goto :goto_3

    :cond_10
    instance-of v2, v12, Landroid/os/VibrationEffect$OneShot;

    if-eqz v2, :cond_11

    move-object v2, v12

    check-cast v2, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v12}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v15

    move-wide v0, v15

    :cond_11
    :goto_3
    cmp-long v2, v0, v6

    if-lez v2, :cond_12

    const-wide/16 v15, 0x32

    cmp-long v2, v0, v15

    if-gtz v2, :cond_12

    iput v4, v9, Lcom/android/server/VibratorService;->intensityEffectType:I

    :cond_12
    sget-object v2, Lcom/android/server/VibratorService;->setEffectMap:Ljava/util/Map;

    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    if-eqz v2, :cond_16

    const-wide/16 v15, 0x0

    instance-of v8, v12, Landroid/os/VibrationEffect$Waveform;

    if-eqz v8, :cond_14

    move-object v8, v12

    check-cast v8, Landroid/os/VibrationEffect$Waveform;

    iget-object v6, v8, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    array-length v6, v6

    if-lt v6, v3, :cond_13

    iget-object v3, v8, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    aget-wide v6, v3, v4

    move-wide v15, v6

    :cond_13
    goto :goto_4

    :cond_14
    instance-of v3, v12, Landroid/os/VibrationEffect$OneShot;

    if-eqz v3, :cond_15

    move-object v3, v12

    check-cast v3, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v12}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v6

    move-wide v15, v6

    :cond_15
    :goto_4
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v3

    int-to-long v6, v3

    cmp-long v3, v15, v6

    if-nez v3, :cond_16

    const/4 v3, 0x4

    iput v3, v9, Lcom/android/server/VibratorService;->intensityEffectType:I

    :cond_16
    sget-object v0, Lcom/android/server/VibratorService;->minDurationMap:Ljava/util/Map;

    invoke-interface {v0, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    sget-object v1, Lcom/android/server/VibratorService;->maxDurationMap:Ljava/util/Map;

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    if-eqz v0, :cond_17

    if-nez v1, :cond_18

    :cond_17
    iget-object v2, v9, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    if-eqz v2, :cond_1e

    iget-object v2, v9, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    :cond_18
    iget-object v2, v9, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    if-eqz v2, :cond_19

    iget-object v2, v9, Lcom/android/server/VibratorService;->imPkg:Ljava/lang/String;

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    if-nez v0, :cond_19

    if-nez v1, :cond_19

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v0, v2

    const/16 v2, 0x64

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    move-object v1, v2

    :cond_19
    const-wide/16 v2, 0x0

    instance-of v5, v12, Landroid/os/VibrationEffect$Waveform;

    if-eqz v5, :cond_1a

    move-object v5, v12

    check-cast v5, Landroid/os/VibrationEffect$Waveform;

    iget-object v6, v5, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    aget-wide v6, v6, v4

    move-wide v2, v6

    goto :goto_5

    :cond_1a
    instance-of v5, v12, Landroid/os/VibrationEffect$OneShot;

    if-eqz v5, :cond_1b

    move-object v5, v12

    check-cast v5, Landroid/os/VibrationEffect$OneShot;

    invoke-virtual {v12}, Landroid/os/VibrationEffect;->getDuration()J

    move-result-wide v6

    move-wide v2, v6

    :cond_1b
    :goto_5
    const-wide/16 v5, 0x0

    cmp-long v5, v2, v5

    if-eqz v5, :cond_1e

    const-wide/16 v5, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-gtz v7, :cond_1c

    const-wide/16 v5, 0x1

    goto :goto_6

    :cond_1c
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-ltz v7, :cond_1d

    const-wide/16 v5, 0xa

    goto :goto_6

    :cond_1d
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    sub-long v7, v2, v7

    const-wide/16 v15, 0xa

    mul-long/2addr v7, v15

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v15

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v16

    sub-int v4, v15, v16

    move-wide/from16 v19, v5

    int-to-long v4, v4

    div-long/2addr v7, v4

    const-wide/16 v4, 0x1

    add-long/2addr v4, v7

    move-wide v5, v4

    :goto_6
    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "currentDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "maxDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "minDuration: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "VibratorService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "intensity: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    long-to-int v4, v5

    const/4 v7, 0x1

    sub-int/2addr v4, v7

    iput v4, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I

    const/16 v4, 0x3e7

    iput v4, v9, Lcom/android/server/VibratorService;->intensityEffectType:I

    sget-object v4, Lcom/android/server/VibratorService;->enhanceDefaultMap:Ljava/util/Map;

    invoke-interface {v4, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1e

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-long v7, v7

    cmp-long v7, v2, v7

    if-nez v7, :cond_1e

    const/4 v7, 0x3

    iput v7, v9, Lcom/android/server/VibratorService;->intensityStrengthType:I

    :cond_1e
    move-object v15, v0

    move-object/from16 v16, v1

    new-instance v0, Lcom/android/server/VibratorService$Vibration;

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p5

    move-object v4, v12

    move v5, v11

    move v6, v13

    move-object v7, v10

    invoke-direct/range {v1 .. v8}, Lcom/android/server/VibratorService$Vibration;-><init>(Lcom/android/server/VibratorService;Landroid/os/IBinder;Landroid/os/VibrationEffect;IILjava/lang/String;Lcom/android/server/VibratorService$1;)V

    move-object v1, v0

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->linkVibration(Lcom/android/server/VibratorService$Vibration;)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    :try_start_c
    invoke-direct/range {p0 .. p0}, Lcom/android/server/VibratorService;->doCancelVibrateLocked()V

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->startVibrationLocked(Lcom/android/server/VibratorService$Vibration;)V

    invoke-direct {v9, v1}, Lcom/android/server/VibratorService;->addToPreviousVibrationsLocked(Lcom/android/server/VibratorService$Vibration;)V
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    :try_start_d
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    monitor-exit v14
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    const-wide/32 v1, 0x800000

    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    nop

    return-void

    :catchall_0
    move-exception v0

    :try_start_e
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    :catchall_1
    move-exception v0

    move/from16 v13, p1

    move-object v12, v1

    :goto_7
    monitor-exit v14
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v0
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_2

    :catchall_2
    move-exception v0

    move-object v1, v12

    goto :goto_8

    :catchall_3
    move-exception v0

    goto :goto_7

    :cond_1f
    move/from16 v13, p1

    :try_start_10
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Requires VIBRATE permission"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :catchall_4
    move-exception v0

    goto :goto_8

    :catchall_5
    move-exception v0

    move/from16 v13, p1

    :goto_8
    const-wide/32 v2, 0x800000

    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    throw v0
.end method
