.class public final Lcom/android/server/oneplus/display/ColorBalanceService;
.super Lcom/android/server/SystemService;
.source "ColorBalanceService.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;,
        Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CMH;,
        Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;,
        Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    }
.end annotation


# static fields
.field private static final ADAPTION_ADJUSTMENT_SHADING_TIME:I = 0x12c

.field private static final ADAPTION_INIT_COLOR:I = 0x2b

.field private static final AUTO_ADJUSTMENT_SHADING_TIME:I = 0x0

.field private static COLOR_DELTA:I = 0x0

.field private static final COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

.field private static final COLOR_MATRIX_FACTOR_DELTA:F = 0.0125f

.field private static final COLOR_MATRIX_FACTOR_DELTA_SHADING_DELAY:I = 0xf

.field private static CUSTOM_DEFAULT_COLORBALANCE:I = 0x0

.field private static final DEBUG:Z = false

.field private static final DEFAULT_BRIGHTNESS_VALUE:F = 1.0f

.field private static final DEFAULT_COLORBALANCE:I = 0x2b

.field private static final IS_QCOM_SAVE_MODE_USED:Z = false

.field private static final KEY_NIGHT_MODE_BRIGHTNESS:Ljava/lang/String; = "oem_nightmode_brightness_progress"

.field private static final MATRIX_IDENTITY:[F

.field private static final MAX_NIGHT_COLORBALANCE:I = 0x9

.field private static final MINCUSTOMCOLORBALANCE:I = 0x2c

.field private static final MODE_CREATE_ING:I = 0x1

.field private static final MODE_CREATE_NONE:I = 0x0

.field private static final MODE_DEFAULT:I = 0xb

.field private static final MODE_DEFAULT_NOCOLORBALANCE:I = 0x12

.field private static final MODE_DISPLAYP3:I = 0x13

.field private static final MODE_ICCAUTOSWITCH:I = 0x10

.field private static final MODE_ICCAUTOSWITCH_NOCOLORBALANCE:I = 0x14

.field private static final MODE_NIGHT:I = 0x1

.field private static final MODE_NIGHT_OFF:I = 0x3

.field private static final MODE_NTSC:I = 0xe

.field private static final MODE_NTSC_NOCOLORBALANCE:I = 0x15

.field private static final MODE_NULL:I = 0x0

.field private static final MODE_READING:I = 0x2

.field private static final MODE_READING_OFF:I = 0x4

.field private static final MODE_READING_OFF_AUTO:I = 0x5

.field private static final MODE_SRGB:I = 0xa

.field private static final MSG_ACTIVE_MODE:I = 0x5

.field private static final MSG_AUTOCHANGE_ENVIRONMENT_CHANGED:I = 0x14

.field private static final MSG_CHECK_LIGHT:I = 0x10

.field private static final MSG_CHECK_SRGBSEN:I = 0xf

.field private static final MSG_CLOSEPTOPETIES:I = 0x18

.field private static final MSG_DEFAULT_MODE:I = 0x6

.field private static final MSG_DISABLECOLOR:I = 0x17

.field private static final MSG_MEDIAPLAYEREND:I = 0x1a

.field private static final MSG_MEDIAPLAYERSTART:I = 0x19

.field private static final MSG_NIGHT2READING:I = 0xd

.field private static final MSG_NIGHT2READMODE:I = 0x16

.field private static final MSG_NIGHT_ACTIVATED:I = 0x13

.field private static final MSG_NIGHT_ENVIRONMENT_CHANGED:I = 0x8

.field private static final MSG_NIGHT_SWITCH:I = 0xa

.field private static final MSG_READ2NIGHTMODE:I = 0x15

.field private static final MSG_READING2NIGHT:I = 0xe

.field private static final MSG_READING_ACTIVATED:I = 0x12

.field private static final MSG_READING_ENVIRONMENT_CHANGED:I = 0x9

.field private static final MSG_READING_SWITCH:I = 0xb

.field private static final MSG_REVERT_STATUS:I = 0xc

.field private static final MSG_SAVE_MODE:I = 0x4

.field private static final MSG_SCREEN_AFTER_ON:I = 0x7

.field private static final MSG_SCREEN_OFF:I = 0x2

.field private static final MSG_SCREEN_ON:I = 0x1

.field private static final MSG_SCREEN_ON_BY_FINGERPRINT:I = 0x1b

.field private static final MSG_SET_COLORBALANCE:I = 0x3

.field private static NIGHT_MODE_SEEKBAR_DEFAULT:I = 0x0

.field private static NIGHT_MODE_SEEKBAR_MAX:I = 0x0

.field private static final NIGHT_STAGE_CLOSED:I = 0x4

.field private static final NIGHT_STAGE_CLOSING:I = 0x3

.field private static final NIGHT_STAGE_OPENED:I = 0x2

.field private static final NIGHT_STAGE_OPENING:I = 0x1

.field private static final OP_AUTO_COLOR_MODE:I = 0x4

.field private static final OP_DCIP3_MODE:I = 0x2

.field private static final OP_DC_ENABLE:I = 0x16

.field private static final OP_DEFAULT_COLOR_MODE:I = 0x5

.field private static final OP_DISPLAY_HALSRGB_COLOR_MODE:I = 0x12

.field private static final OP_DISPLAY_P3_COLOR_MODE:I = 0x10

.field private static final OP_DISPLAY_WIDE_COLOR_MODE:I = 0x11

.field private static final OP_NATIVE_CUSTOMER_P3_MODE:I = 0x15

.field private static final OP_NATIVE_CUSTOMER_SRGB_MODE:I = 0x14

.field private static final OP_NATIVE_LOADING_EFFECT_MODE:I = 0x13

.field private static final OP_NIGHT_MODE:I = 0x3

.field private static final OP_SRGB_MODE:I = 0x1

.field private static final OP_SYS_Auto_Color_PROPERTY:Ljava/lang/String; = "sys.automode"

.field private static final OP_SYS_DCIP3_PROPERTY:Ljava/lang/String; = "sys.dci3p"

.field private static final OP_SYS_Default_Color_PROPERTY:Ljava/lang/String; = "sys.default_mode"

.field private static final OP_SYS_NIGHT_MODE:Ljava/lang/String; = "sys.night_mode"

.field private static final OP_SYS_SRGB_PROPERTY:Ljava/lang/String; = "sys.srgb"

.field private static final READING_MODE_ANIMTOR_PERIOD:I = 0x10

.field private static final READING_MODE_ANIM_FACTOR_DELTA:F = 0.02f

.field private static final READING_MODE_CB_ANIM_DURATION:I = 0x3e8

.field private static final READING_MODE_CM_ANIM_DURATION:I = 0x320

.field private static final READING_STAGE_CLOSED:I = 0x8

.field private static final READING_STAGE_CLOSING:I = 0x7

.field private static final READING_STAGE_OPENED:I = 0x6

.field private static final READING_STAGE_OPENING:I = 0x5

.field private static final RESET_NODE_DELAY:I = 0x11

.field private static RGBSENSOR_Dither:I = 0x0

.field private static SENSOR_TYPE_RGB:I = 0x0

.field private static final STAGE_NULL:I = 0x0

.field private static final STATUS_CUSTOMIZE_MODE:I = 0x3

.field private static final STATUS_DEFAULT_MODE:I = 0x1

.field private static final STATUS_DISPLAYP3_MODE:I = 0x2

.field private static final STATUS_NATURE_MODE:I = 0xa

.field private static final STATUS_NTSC_MODE:I = 0x0

.field private static final STATUS_SRGB_MODE:I = 0x1

.field private static final SUBTRACTED_COLORBALANCE:I = 0x2a

.field private static final TAG:Ljava/lang/String; = "ColorBalanceService"

.field private static final TYPICAL_PROXIMITY_THRESHOLD:F = 5.0f

.field private static config_colorbalance_oneplus_mode_adaption:[I

.field private static config_colorbalance_reading_mode:[I

.field private static config_colorbalance_reading_mode_SRGB_and_P3:[I

.field public static mIsScreenOn:Ljava/lang/Boolean;


# instance fields
.field private READING_INIT_COLOR:I

.field private canWhiteBrightnessBeSet:Z

.field colorbalance_stop:Z

.field colortemprature:[I

.field config_autocolortemp:[I

.field config_autoseekbar:[I

.field config_colorbalance:[[I

.field private dtm:Lcom/android/server/display/DisplayTransformManager;

.field flinger:Landroid/os/IBinder;

.field has_fingerprint:Z

.field private isColorBalanceDisableByHdr:Z

.field private isScreenOnByFingerprint:Z

.field private mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

.field private mAutoSensor:Ljava/lang/Boolean;

.field private mAutoState:Ljava/lang/Boolean;

.field private mAverageColor:I

.field private mBootColorStatus:Ljava/lang/Boolean;

.field private mBootCompleted:Z

.field private mBootPhase:I

.field private mBootStatus:Ljava/lang/Boolean;

.field private final mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

.field private mColorBalanceChangeStep:I

.field private mColorBalanceThread:Landroid/os/HandlerThread;

.field private mColorDisableStatus:Ljava/lang/Boolean;

.field private mColorMatrix:[F

.field private mColorMatrixAnimator:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mCreateModeState:I

.field private mCurrentAdaptionColorbalance:I

.field private mCurrentColorBalance:I

.field private mCurrentCustomColorBalance:I

.field private mCurrentNightColorbalance:I

.field private mCurrentReadingColorbalance:I

.field private mCurrentSrgbSensorAverageColor:I

.field private mCurrentUser:I

.field private mCurrentWhiteBrightness:F

.field private mDisableStatus:I

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mDozeColorStatus:I

.field private mFactor:F

.field private mFpm:Landroid/hardware/fingerprint/FingerprintManager;

.field private mGeneration:I

.field private mGraySsaleColorMatrixIsSet:Z

.field private final mHandler:Landroid/os/Handler;

.field private final mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private mInversionColorMatrixIsSet:Z

.field private mIsAutoModeActivated:Ljava/lang/Boolean;

.field private mIsColorManagerConnected:Ljava/lang/Boolean;

.field private mIsDisableByApp:Ljava/lang/Boolean;

.field private mIsNightModeActivated:Ljava/lang/Boolean;

.field private mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingModeActivated:Ljava/lang/Boolean;

.field private mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

.field private mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

.field private mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

.field private mIsSupportReadingMode:Ljava/lang/Boolean;

.field private mIsTimeActivated:Ljava/lang/Boolean;

.field private mKeyguardManager:Landroid/app/KeyguardManager;

.field private mLightBrightness:I

.field private mLightGeneration:I

.field private mLightSensorListener:Landroid/hardware/SensorEventListener;

.field private final mLock:Ljava/lang/Object;

.field private mLowLightCount:I

.field private mMode:I

.field private mModeEnable:I

.field private mModeId:I

.field private mModeStage:I

.field private mNight2ReadingModeStage:I

.field private mNightDisplayMoede:I

.field private mNightModeAutoStatus:I

.field private mNightModeClosingStage:I

.field private mNightModeOpingStage:I

.field private mNightModeStatus:Ljava/lang/Boolean;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mPreColorTemp:I

.field private mPretNightColorbalance:I

.field private mReading2NightModeStage:I

.field private mReadingModeClosingStage:I

.field private mReadingModeOpingStage:I

.field private mReadingModeStatus:Ljava/lang/Boolean;

.field private mSDM:Lcom/oneplus/display/SDManager;

.field private mSRGBSensorEnabled:Z

.field private mSRGBSensorListener:Landroid/hardware/SensorEventListener;

.field private mScreenOff_Quick:Ljava/lang/Boolean;

.field private mScreenOn_Quick:Ljava/lang/Boolean;

.field private mSensorColortemperature:I

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mSrgbSensorGeneration:I

.field private mStableColor:I

.field private mStableCount:I

.field private mStartSetCount:I

.field private mStopSetCount:I

.field private mSwitchUser:Ljava/lang/Boolean;

.field private mUserSetupObserver:Landroid/database/ContentObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    const/16 v0, 0x67

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    const/16 v0, 0x2b

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    const v1, 0x1fa2639

    sput v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const/16 v1, 0x10

    new-array v1, v1, [F

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    sget-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->MATRIX_IDENTITY:[F

    invoke-static {v1, v0}, Landroid/opengl/Matrix;->setIdentityM([FI)V

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_MATRIX_EVALUATOR:Lcom/android/server/oneplus/display/ColorBalanceService$ColorMatrixEvaluator;

    const/4 v0, 0x6

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    new-array v1, v0, [I

    fill-array-data v1, :array_1

    sput-object v1, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    return-void

    :array_0
    .array-data 4
        0x23
        0x2a
        0x3c
        0x45
        0x4e
        0x55
    .end array-data

    :array_1
    .array-data 4
        0x36
        0x3d
        0x4e
        0x57
        0x5d
        0x63
    .end array-data

    :array_2
    .array-data 4
        0x66
        0x70
        0x7a
        0x80
        0x86
        0x8a
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 12

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mInversionColorMatrixIsSet:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGraySsaleColorMatrixIsSet:Z

    const/16 v2, -0xa

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    const/16 v2, 0x2e

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCreateModeState:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v3, -0x2710

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsColorManagerConnected:Ljava/lang/Boolean;

    const/4 v4, -0x1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeId:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    const/16 v4, 0xa

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDozeColorStatus:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    const/4 v5, 0x0

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isColorBalanceDisableByHdr:Z

    const/16 v6, 0x10

    new-array v7, v6, [F

    fill-array-data v7, :array_0

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIgnoreAllColorMatrixChanges:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/16 v0, 0x84

    new-array v7, v0, [I

    fill-array-data v7, :array_1

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colortemprature:[I

    const/16 v7, 0x36

    new-array v8, v7, [I

    fill-array-data v8, :array_2

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autocolortemp:[I

    new-array v8, v7, [I

    fill-array-data v8, :array_3

    iput-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    new-array v7, v7, [[I

    const/4 v8, 0x7

    new-array v9, v8, [I

    fill-array-data v9, :array_4

    aput-object v9, v7, v1

    new-array v9, v8, [I

    fill-array-data v9, :array_5

    aput-object v9, v7, v3

    new-array v9, v8, [I

    fill-array-data v9, :array_6

    const/4 v10, 0x2

    aput-object v9, v7, v10

    const/4 v9, 0x6

    new-array v10, v9, [I

    fill-array-data v10, :array_7

    const/4 v11, 0x3

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_8

    const/4 v11, 0x4

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_9

    const/4 v11, 0x5

    aput-object v10, v7, v11

    new-array v10, v9, [I

    fill-array-data v10, :array_a

    aput-object v10, v7, v9

    new-array v10, v9, [I

    fill-array-data v10, :array_b

    aput-object v10, v7, v8

    new-array v8, v9, [I

    fill-array-data v8, :array_c

    const/16 v10, 0x8

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_d

    const/16 v10, 0x9

    aput-object v8, v7, v10

    new-array v8, v9, [I

    fill-array-data v8, :array_e

    aput-object v8, v7, v4

    new-array v4, v9, [I

    fill-array-data v4, :array_f

    const/16 v8, 0xb

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_10

    const/16 v8, 0xc

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_11

    const/16 v8, 0xd

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_12

    const/16 v8, 0xe

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_13

    const/16 v8, 0xf

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_14

    aput-object v4, v7, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_15

    const/16 v6, 0x11

    aput-object v4, v7, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_16

    const/16 v6, 0x12

    aput-object v4, v7, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_17

    const/16 v6, 0x13

    aput-object v4, v7, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_18

    const/16 v6, 0x14

    aput-object v4, v7, v6

    new-array v4, v9, [I

    fill-array-data v4, :array_19

    const/16 v8, 0x15

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1a

    const/16 v8, 0x16

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1b

    const/16 v8, 0x17

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1c

    const/16 v8, 0x18

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1d

    const/16 v8, 0x19

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1e

    const/16 v8, 0x1a

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_1f

    const/16 v8, 0x1b

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_20

    const/16 v8, 0x1c

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_21

    const/16 v8, 0x1d

    aput-object v4, v7, v8

    new-array v4, v9, [I

    fill-array-data v4, :array_22

    const/16 v10, 0x1e

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_23

    const/16 v10, 0x1f

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_24

    const/16 v10, 0x20

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_25

    const/16 v10, 0x21

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_26

    const/16 v10, 0x22

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_27

    const/16 v10, 0x23

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_28

    const/16 v10, 0x24

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_29

    const/16 v10, 0x25

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2a

    const/16 v10, 0x26

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2b

    const/16 v10, 0x27

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2c

    const/16 v10, 0x28

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2d

    const/16 v10, 0x29

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2e

    const/16 v10, 0x2a

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_2f

    const/16 v10, 0x2b

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_30

    const/16 v10, 0x2c

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_31

    const/16 v10, 0x2d

    aput-object v4, v7, v10

    new-array v4, v9, [I

    fill-array-data v4, :array_32

    aput-object v4, v7, v2

    new-array v2, v9, [I

    fill-array-data v2, :array_33

    const/16 v4, 0x2f

    aput-object v2, v7, v4

    new-array v2, v9, [I

    fill-array-data v2, :array_34

    const/16 v4, 0x30

    aput-object v2, v7, v4

    new-array v2, v9, [I

    fill-array-data v2, :array_35

    const/16 v4, 0x31

    aput-object v2, v7, v4

    new-array v2, v9, [I

    fill-array-data v2, :array_36

    const/16 v4, 0x32

    aput-object v2, v7, v4

    new-array v2, v9, [I

    fill-array-data v2, :array_37

    const/16 v10, 0x33

    aput-object v2, v7, v10

    new-array v2, v9, [I

    fill-array-data v2, :array_38

    const/16 v10, 0x34

    aput-object v2, v7, v10

    new-array v2, v9, [I

    fill-array-data v2, :array_39

    const/16 v11, 0x35

    aput-object v2, v7, v11

    iput-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceChangeStep:I

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isScreenOnByFingerprint:Z

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$3;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$3;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$4;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$4;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    new-instance v2, Ljava/lang/Object;

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, v5}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    new-instance v2, Landroid/os/HandlerThread;

    const-string v5, "ColorBalanceThread"

    invoke-direct {v2, v5}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->start()V

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceThread:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v5, "display"

    invoke-virtual {v2, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/display/DisplayManager;

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string/jumbo v5, "oem.read_mode.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v2, 0x5a

    sput v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    new-array v0, v3, [I

    const/16 v2, 0x80

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    sput v10, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    const/16 v0, 0x3d

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    sput v8, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    sput v6, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    goto :goto_0

    :cond_0
    const/16 v0, 0x50

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    const/16 v0, 0x82

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    :cond_1
    :goto_0
    new-array v0, v3, [I

    aput v4, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x1fa2639

    sput v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    sput v9, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    :cond_2
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/oneplus/display/ColorBalanceService$1;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$1;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        0x0
        0x3f410625    # 0.754f
        0x0
        0x0
        0x0
        0x0
        0x3f041893    # 0.516f
        0x0
        0x0
        0x0
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0xba3
        0xba5
        0xc20
        0xc20
        0xc64
        0xc64
        0xc63
        0xce1
        0xce0
        0xd4e
        0xd4f
        0xd4d
        0xdd0
        0xdcd
        0xe39
        0xe39
        0xe38
        0xece
        0xecd
        0xf14
        0xf17
        0xf16
        0xfa8
        0xfa9
        0xfd4
        0xfd4
        0xfd4
        0x104d
        0x104d
        0x10af
        0x10af
        0x10af
        0x1111
        0x1110
        0x116d
        0x116c
        0x116c
        0x11c9
        0x11c9
        0x121d
        0x121c
        0x121b
        0x1260
        0x1261
        0x12ba
        0x12ba
        0x12b8
        0x1327
        0x1325
        0x136f
        0x1370
        0x1370
        0x13d7
        0x13d7
        0x1437
        0x1437
        0x1437
        0x149c
        0x149d
        0x14eb
        0x14ea
        0x14e9
        0x1528
        0x1528
        0x15b2
        0x15b2
        0x15b3
        0x15fd
        0x15fd
        0x1657
        0x1656
        0x1656
        0x168c
        0x168b
        0x16ef
        0x16f0
        0x175d
        0x175d
        0x17a9
        0x17a9
        0x17a8
        0x17d1
        0x17c4
        0x1811
        0x1810
        0x1810
        0x1845
        0x1846
        0x18ab
        0x18ab
        0x18aa
        0x18da
        0x18da
        0x192a
        0x1929
        0x1928
        0x196a
        0x1969
        0x19a3
        0x19a3
        0x19a2
        0x19f9
        0x19fa
        0x1a51
        0x1a52
        0x1a51
        0x1aa8
        0x1aa8
        0x1ad6
        0x1ad4
        0x1ad4
        0x1b3f
        0x1b40
        0x1b5e
        0x1b5f
        0x1b5e
        0x1ba0
        0x1ba0
        0x1bc2
        0x1bbf
        0x1bc0
        0x1c00
        0x1c00
        0x1c32
        0x1c2f
        0x1c2e
        0x1c81
        0x1c81
        0x1ce3
        0x1ce6
        0x1ce3
        0x1d08
    .end array-data

    :array_2
    .array-data 4
        0xba3
        0xc20
        0xc64
        0xce0
        0xd4f
        0xdd0
        0xe39
        0xece
        0xf17
        0xfa8
        0xfd4
        0x104d
        0x10af
        0x1111
        0x116d
        0x11c9
        0x121c
        0x1260
        0x12ba
        0x1327
        0x136f
        0x13d7
        0x1437
        0x149c
        0x14eb
        0x1528
        0x15b2
        0x15fd
        0x1657
        0x168c
        0x16ef
        0x175d
        0x17a9
        0x17d1
        0x1811
        0x1845
        0x18ab
        0x18da
        0x192a
        0x196a
        0x19a3
        0x19f9
        0x1a51
        0x1aa8
        0x1ad6
        0x1b3f
        0x1b5e
        0x1ba0
        0x1bc2
        0x1c00
        0x1c32
        0x1c81
        0x1ce6
        0x1d08
    .end array-data

    :array_3
    .array-data 4
        0x1
        0x3
        0x5
        0x8
        0xa
        0xd
        0x10
        0x12
        0x15
        0x17
        0x19
        0x1c
        0x1e
        0x21
        0x23
        0x26
        0x28
        0x2b
        0x2d
        0x30
        0x32
        0x35
        0x37
        0x3a
        0x3c
        0x3f
        0x41
        0x44
        0x46
        0x49
        0x4b
        0x4e
        0x50
        0x53
        0x55
        0x58
        0x5a
        0x5d
        0x5f
        0x62
        0x64
        0x67
        0x69
        0x6c
        0x6e
        0x71
        0x73
        0x76
        0x78
        0x7b
        0x7d
        0x80
        0x82
        0x84
    .end array-data

    :array_4
    .array-data 4
        0x1
        0x1
        0x1
        0x1
        0x3
        0xa
        0xd
    .end array-data

    :array_5
    .array-data 4
        0x1
        0x3
        0x3
        0x3
        0x8
        0xd
        0x10
    .end array-data

    :array_6
    .array-data 4
        0x1
        0x3
        0x5
        0x5
        0xa
        0xd
        0x10
    .end array-data

    :array_7
    .array-data 4
        0x3
        0x5
        0x8
        0x8
        0xd
        0x12
    .end array-data

    :array_8
    .array-data 4
        0x3
        0x5
        0x8
        0xa
        0x10
        0x15
    .end array-data

    :array_9
    .array-data 4
        0x5
        0x8
        0xa
        0xd
        0x12
        0x17
    .end array-data

    :array_a
    .array-data 4
        0x5
        0x8
        0xd
        0x10
        0x15
        0x19
    .end array-data

    :array_b
    .array-data 4
        0x8
        0xa
        0x10
        0x12
        0x17
        0x1c
    .end array-data

    :array_c
    .array-data 4
        0xa
        0xd
        0x12
        0x15
        0x19
        0x1e
    .end array-data

    :array_d
    .array-data 4
        0xa
        0xd
        0x12
        0x17
        0x1c
        0x21
    .end array-data

    :array_e
    .array-data 4
        0xd
        0x10
        0x15
        0x19
        0x1e
        0x23
    .end array-data

    :array_f
    .array-data 4
        0xd
        0x12
        0x17
        0x1c
        0x21
        0x26
    .end array-data

    :array_10
    .array-data 4
        0xd
        0x15
        0x19
        0x1e
        0x23
        0x28
    .end array-data

    :array_11
    .array-data 4
        0xd
        0x17
        0x1c
        0x21
        0x26
        0x2b
    .end array-data

    :array_12
    .array-data 4
        0xd
        0x19
        0x1e
        0x21
        0x28
        0x2d
    .end array-data

    :array_13
    .array-data 4
        0xd
        0x17
        0x1e
        0x21
        0x2b
        0x30
    .end array-data

    :array_14
    .array-data 4
        0xd
        0x14
        0x19
        0x23
        0x2d
        0x32
    .end array-data

    :array_15
    .array-data 4
        0x10
        0x14
        0x1c
        0x26
        0x30
        0x35
    .end array-data

    :array_16
    .array-data 4
        0x12
        0x17
        0x1e
        0x28
        0x32
        0x37
    .end array-data

    :array_17
    .array-data 4
        0x12
        0x19
        0x23
        0x2d
        0x35
        0x3a
    .end array-data

    :array_18
    .array-data 4
        0x12
        0x1c
        0x26
        0x30
        0x37
        0x3c
    .end array-data

    :array_19
    .array-data 4
        0x15
        0x1e
        0x28
        0x32
        0x3a
        0x3f
    .end array-data

    :array_1a
    .array-data 4
        0x17
        0x21
        0x2b
        0x35
        0x3c
        0x41
    .end array-data

    :array_1b
    .array-data 4
        0x19
        0x23
        0x2d
        0x37
        0x3f
        0x44
    .end array-data

    :array_1c
    .array-data 4
        0x1c
        0x26
        0x30
        0x3a
        0x41
        0x46
    .end array-data

    :array_1d
    .array-data 4
        0x1e
        0x28
        0x32
        0x3c
        0x44
        0x49
    .end array-data

    :array_1e
    .array-data 4
        0x21
        0x2b
        0x35
        0x3f
        0x46
        0x4b
    .end array-data

    :array_1f
    .array-data 4
        0x23
        0x2d
        0x37
        0x41
        0x49
        0x4e
    .end array-data

    :array_20
    .array-data 4
        0x26
        0x30
        0x3a
        0x44
        0x4b
        0x50
    .end array-data

    :array_21
    .array-data 4
        0x28
        0x32
        0x3c
        0x46
        0x4e
        0x53
    .end array-data

    :array_22
    .array-data 4
        0x2b
        0x35
        0x3f
        0x49
        0x50
        0x55
    .end array-data

    :array_23
    .array-data 4
        0x2d
        0x37
        0x41
        0x4b
        0x53
        0x58
    .end array-data

    :array_24
    .array-data 4
        0x30
        0x3a
        0x44
        0x4e
        0x55
        0x5a
    .end array-data

    :array_25
    .array-data 4
        0x32
        0x3c
        0x46
        0x50
        0x58
        0x5d
    .end array-data

    :array_26
    .array-data 4
        0x35
        0x3f
        0x49
        0x53
        0x5a
        0x5f
    .end array-data

    :array_27
    .array-data 4
        0x2d
        0x3f
        0x49
        0x55
        0x5d
        0x62
    .end array-data

    :array_28
    .array-data 4
        0x30
        0x41
        0x4b
        0x58
        0x5f
        0x64
    .end array-data

    :array_29
    .array-data 4
        0x32
        0x44
        0x4e
        0x5a
        0x62
        0x67
    .end array-data

    :array_2a
    .array-data 4
        0x35
        0x46
        0x50
        0x5d
        0x64
        0x69
    .end array-data

    :array_2b
    .array-data 4
        0x37
        0x49
        0x53
        0x5f
        0x67
        0x6c
    .end array-data

    :array_2c
    .array-data 4
        0x3a
        0x4b
        0x55
        0x62
        0x69
        0x6e
    .end array-data

    :array_2d
    .array-data 4
        0x3c
        0x4e
        0x58
        0x64
        0x6c
        0x71
    .end array-data

    :array_2e
    .array-data 4
        0x3f
        0x50
        0x5a
        0x67
        0x6e
        0x73
    .end array-data

    :array_2f
    .array-data 4
        0x41
        0x53
        0x5d
        0x69
        0x71
        0x76
    .end array-data

    :array_30
    .array-data 4
        0x44
        0x55
        0x5f
        0x6c
        0x73
        0x78
    .end array-data

    :array_31
    .array-data 4
        0x46
        0x58
        0x62
        0x6e
        0x76
        0x7b
    .end array-data

    :array_32
    .array-data 4
        0x49
        0x5a
        0x64
        0x71
        0x78
        0x7d
    .end array-data

    :array_33
    .array-data 4
        0x4b
        0x5d
        0x67
        0x73
        0x7b
        0x80
    .end array-data

    :array_34
    .array-data 4
        0x4e
        0x5f
        0x69
        0x76
        0x7d
        0x82
    .end array-data

    :array_35
    .array-data 4
        0x50
        0x5f
        0x6c
        0x78
        0x80
        0x84
    .end array-data

    :array_36
    .array-data 4
        0x53
        0x62
        0x6e
        0x7b
        0x80
        0x84
    .end array-data

    :array_37
    .array-data 4
        0x55
        0x64
        0x71
        0x7d
        0x82
        0x84
    .end array-data

    :array_38
    .array-data 4
        0x58
        0x67
        0x73
        0x82
        0x84
        0x84
    .end array-data

    :array_39
    .array-data 4
        0x5a
        0x69
        0x76
        0x84
        0x84
        0x84
    .end array-data
.end method

.method private ResetNode()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    const-string v0, "ColorBalanceService"

    const-string v1, "already disable color mode"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    const/4 v0, 0x1

    new-array v2, v0, [I

    const/16 v3, 0x80

    aput v3, v2, v1

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    invoke-static {v1, v2, v0, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v2, v0, :cond_3

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_0

    :cond_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x2

    if-ne v2, v0, :cond_6

    if-ne v1, v4, :cond_4

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    :cond_4
    if-ne v1, v3, :cond_5

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_5
    if-eq v1, v4, :cond_9

    if-eq v1, v3, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    goto :goto_0

    :cond_6
    if-ne v1, v4, :cond_7

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    :cond_7
    if-ne v1, v3, :cond_8

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_8
    const/4 v2, 0x5

    if-ne v1, v2, :cond_9

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :cond_9
    :goto_0
    return-void
.end method

.method private accelerateInterpolator(F)F
    .locals 5

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float v1, v0, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4000000000000000L    # 2.0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    double-to-float v1, v1

    sub-float/2addr v0, v1

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return v0
.end method

.method static synthetic access$1902(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorColortemperature:I

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return v0
.end method

.method static synthetic access$2002(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    return p1
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    return v0
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return v0
.end method

.method static synthetic access$2202(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightBrightness:I

    return p1
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    return v0
.end method

.method static synthetic access$2400(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$2500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->handleSRGBSensorEvent(I)V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2602(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return p1
.end method

.method static synthetic access$2604(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLowLightCount:I

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2704(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightGeneration:I

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/oneplus/display/SDManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$2802(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/oneplus/display/SDManager;)Lcom/oneplus/display/SDManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    return-object p1
.end method

.method static synthetic access$2900(Lcom/android/server/oneplus/display/ColorBalanceService;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processScreenOn(Z)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/display/ColorBalanceService;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->nightModeSwitch(ZI)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$3200(Lcom/android/server/oneplus/display/ColorBalanceService;ZII)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/display/ColorBalanceService;->readingModeSwitch(ZII)V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeReading2NightMode(II)V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/display/ColorBalanceService;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->changeNight2ReadingMode(II)V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processSetColorBalance(I)V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    return-void
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    return-void
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Message;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V

    return-void
.end method

.method static synthetic access$4102(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$4200(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSrgbSensorGeneration:I

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->ResetNode()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/display/ColorBalanceService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closePropeties()V

    return-void
.end method

.method static synthetic access$4802(Lcom/android/server/oneplus/display/ColorBalanceService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isScreenOnByFingerprint:Z

    return p1
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/display/ColorBalanceService;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgInternal(I)V

    return-void
.end method

.method static synthetic access$5000(Lcom/android/server/oneplus/display/ColorBalanceService;)Ljava/lang/Boolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$5104(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    return v0
.end method

.method static synthetic access$5200(Lcom/android/server/oneplus/display/ColorBalanceService;)Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    return-object v0
.end method

.method static synthetic access$5300(Lcom/android/server/oneplus/display/ColorBalanceService;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/hardware/fingerprint/FingerprintManager;)Landroid/hardware/fingerprint/FingerprintManager;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    return-object p1
.end method

.method static synthetic access$5402(Lcom/android/server/oneplus/display/ColorBalanceService;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$5502(Lcom/android/server/oneplus/display/ColorBalanceService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/display/ColorBalanceService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    return v0
.end method

.method static synthetic access$700(Landroid/content/ContentResolver;I)Z
    .locals 1

    invoke-static {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/database/ContentObserver;)Landroid/database/ContentObserver;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/server/oneplus/display/ColorBalanceService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    return v0
.end method

.method private changeNight2ReadingMode(II)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_1a

    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v5, 0x6

    const/4 v6, 0x3

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    const/16 v9, 0x80

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_0

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    invoke-direct {v1, v0, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v10

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    new-array v0, v10, [I

    aput v9, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1a

    invoke-virtual {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto/16 :goto_d

    :cond_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-wide v12, 0x3fefff2e48e8a71eL    # 0.9999

    const/16 v15, 0xd

    if-nez v0, :cond_6

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "changeNight2ReadingMode mFactor should be 1 :"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    cmpl-double v0, v9, v12

    if-lez v0, :cond_1

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_1
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v5

    if-gtz v0, :cond_2

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeNight2ReadingMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v5, 0x80

    aput v5, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    :goto_1
    goto :goto_2

    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v5, 0x7d0

    if-le v0, v5, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v6, 0x1f40

    if-ge v0, v6, :cond_4

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_1

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    if-le v0, v5, :cond_5

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v5, 0x1f40

    if-ge v0, v5, :cond_5

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v0

    goto :goto_1

    :cond_5
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    :goto_2
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mStableColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0x2710

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-string v5, "ColorBalanceService"

    const-string v6, "changeNight2ReadingMode 0 --> 10000,init"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v5, 0xf

    invoke-virtual {v1, v15, v2, v0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_d

    :cond_6
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v9, 0x2710

    if-ne v0, v9, :cond_12

    const/4 v0, 0x0

    const/4 v7, 0x1

    new-array v9, v7, [I

    const/16 v7, 0x80

    aput v7, v9, v11

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_7

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v9, 0x37

    if-lt v7, v9, :cond_7

    const/16 v7, 0x37

    goto :goto_3

    :cond_7
    move v7, v3

    :goto_3
    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v9, v7, :cond_9

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v10, v7, :cond_8

    const/4 v10, -0x1

    goto :goto_4

    :cond_8
    const/4 v10, 0x1

    :goto_4
    add-int/2addr v9, v10

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v9, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    add-int/lit8 v0, v0, 0x1

    :cond_9
    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v10, 0x3c3c6a7f    # 0.0115f

    cmpl-float v9, v9, v10

    if-lez v9, :cond_f

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v10, 0x3c4ccccd    # 0.0125f

    sub-float/2addr v9, v10

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/4 v9, 0x1

    new-array v9, v9, [I

    const/16 v10, 0x80

    aput v10, v9, v11

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_a

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->accelerateInterpolator(F)F

    move-result v9

    goto :goto_5

    :cond_a
    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    :goto_5
    const-wide v12, 0x3fe6666666666666L    # 0.7

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    move/from16 v18, v7

    float-to-double v6, v10

    sub-double/2addr v12, v6

    const-wide/16 v6, 0x0

    cmpl-double v10, v12, v6

    const-wide v12, 0x3f899999a0000000L    # 0.012500000186264515

    if-lez v10, :cond_b

    const-wide v16, 0x3fe6666666666666L    # 0.7

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v10

    sub-double v16, v16, v6

    cmpg-double v6, v16, v12

    if-gtz v6, :cond_b

    const/4 v6, 0x5

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNight2ReadingMode value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    move v7, v9

    goto/16 :goto_6

    :cond_b
    const-wide v5, 0x3fd999999999999aL    # 0.4

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    move/from16 v19, v9

    float-to-double v8, v7

    sub-double/2addr v5, v8

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-lez v5, :cond_c

    const-wide v5, 0x3fd999999999999aL    # 0.4

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v7, v7

    sub-double/2addr v5, v7

    cmpg-double v5, v5, v12

    if-gtz v5, :cond_c

    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNight2ReadingMode value:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v19

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_c
    move/from16 v7, v19

    const-wide v5, 0x3fc999999999999aL    # 0.2

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v8

    sub-double/2addr v5, v8

    const-wide/16 v8, 0x0

    cmpl-double v5, v5, v8

    if-lez v5, :cond_d

    const-wide v5, 0x3fc999999999999aL    # 0.2

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v8, v8

    sub-double/2addr v5, v8

    cmpg-double v5, v5, v12

    if-gtz v5, :cond_d

    const/16 v5, 0x8

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v5, 0x9

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode value:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_d
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v5

    const-wide v8, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v5, v5, v8

    if-gez v5, :cond_e

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v5, 0x0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_e
    :goto_6
    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    add-int/lit8 v0, v0, 0x2

    goto :goto_7

    :cond_f
    move/from16 v18, v7

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_10

    const/4 v5, 0x3

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNight2ReadingMode mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    add-int/lit8 v0, v0, 0x2

    :cond_10
    :goto_7
    if-lez v0, :cond_11

    const/16 v5, 0xf

    invoke-virtual {v1, v15, v2, v3, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_8

    :cond_11
    const/16 v5, 0x3a98

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "changeNight2ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, v18

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, "  mFactor:"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "ColorBalanceService"

    const-string v6, "changeNight2ReadingMode 10000 --> 15000,be B & W,and set colorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v15, v2, v3, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_8
    goto/16 :goto_d

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v6, 0x3a98

    const/16 v8, 0x4e20

    if-ne v0, v6, :cond_16

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v0

    cmpl-double v0, v5, v12

    if-lez v0, :cond_14

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v5, 0x80

    aput v5, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_13

    const/16 v0, 0xb

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    goto :goto_9

    :cond_13
    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    :goto_9
    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode 15000 --> 20000,turn off Matrix(shading)"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x20

    invoke-virtual {v1, v15, v2, v11, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_d

    :cond_14
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v5, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v5, 0x80

    aput v5, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_15

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->accelerateInterpolator(F)F

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    goto :goto_a

    :cond_15
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    :goto_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0xf

    invoke-virtual {v1, v15, v2, v11, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_d

    :cond_16
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/16 v6, 0xb

    if-ne v0, v6, :cond_19

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    const-wide v9, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v5, v9

    if-gtz v0, :cond_17

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    goto :goto_c

    :cond_17
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    float-to-double v5, v0

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_18

    const-wide v7, -0x40af9db22d0e5604L    # -0.001

    goto :goto_b

    :cond_18
    const-wide v7, 0x3f50624dd2f1a9fcL    # 0.001

    :goto_b
    add-double/2addr v5, v7

    double-to-float v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    :goto_c
    const/4 v0, 0x2

    invoke-virtual {v1, v15, v2, v11, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_d

    :cond_19
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    if-ne v0, v8, :cond_1a

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "changeNight2ReadingMode done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v5, 0x80

    aput v5, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_1a
    :goto_d
    monitor-exit v4

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private changeReading2NightMode(II)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p1

    const/4 v0, 0x0

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/16 v5, 0x80

    const/4 v6, 0x0

    aput v5, v4, v6

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v8, -0x2

    if-eqz v4, :cond_0

    iget-object v4, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v9, "oem_nightmode_brightness_progress"

    invoke-static {v4, v9, v7, v8}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    :cond_0
    move v4, v0

    iget-object v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v9

    :try_start_0
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_27

    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v11, 0x15

    const/4 v12, 0x3

    const/16 v13, 0xb

    const/16 v14, 0xa

    if-nez v0, :cond_7

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v15, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v15, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const-string v7, "ColorBalanceService"

    const-string v15, "Screen off,changeReading2NightMode done!"

    invoke-static {v7, v15}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v7, v3, [I

    aput v5, v7, v6

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_6

    if-ne v0, v3, :cond_1

    invoke-direct {v1, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v14, :cond_2

    const/16 v5, 0x10

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v12, :cond_5

    if-nez v10, :cond_3

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_3
    if-ne v10, v3, :cond_4

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_4
    const/4 v5, 0x2

    if-ne v10, v5, :cond_5

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_5
    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto :goto_1

    :cond_6
    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "oem_nightmode_progress_status"

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v7, v11, v12, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v5, v7

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    invoke-direct {v1, v5, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const/4 v7, 0x2

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v6, v3

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    goto/16 :goto_d

    :cond_7
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v10, 0xf

    const/16 v15, 0xe

    if-nez v0, :cond_a

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v7, v0

    const-wide v11, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v7, v11

    if-gez v0, :cond_8

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    invoke-virtual {v1, v15, v2, v6, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    const-string v3, "changeReading2NightMode: 0 --> 5000,be B & W"

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v7, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v7

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    new-array v0, v3, [I

    aput v5, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_9

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->decelerateInterpolator(F)F

    move-result v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    goto :goto_2

    :cond_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    :goto_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    invoke-virtual {v1, v15, v2, v6, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_d

    :cond_a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v7, 0x1388

    if-ne v0, v7, :cond_12

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "oem_nightmode_progress_status"

    sget v13, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v7, v10, v13, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v0, v7

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v7

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v7, v10, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const-string v10, "ColorBalanceService"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "changeReading2NightMode:"

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v13, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v10, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    new-array v10, v3, [I

    aput v5, v10, v6

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_f

    if-ne v7, v3, :cond_b

    const/16 v3, 0x12

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_b
    if-ne v7, v14, :cond_c

    const/16 v3, 0x14

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_c
    if-ne v7, v12, :cond_10

    if-nez v8, :cond_d

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_d
    if-ne v8, v3, :cond_e

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_e
    const/4 v3, 0x2

    if-ne v8, v3, :cond_10

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_f
    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_10
    :goto_3
    iget v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v10, v3

    const-wide v12, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v3, v10, v12

    if-gez v3, :cond_11

    const/16 v3, 0x9

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v3, 0x8

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_11
    const/16 v3, 0x2710

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v3, 0xe

    invoke-virtual {v1, v3, v2, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v3, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 5000 --> 10000,init target colorbalance"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_d

    :cond_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v7, 0x2710

    if-ne v0, v7, :cond_1e

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "oem_nightmode_progress_status"

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v7, v11, v12, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v0, v7

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v7

    const/4 v7, 0x0

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v11, 0x3f7fbe77    # 0.999f

    cmpl-float v8, v8, v11

    if-lez v8, :cond_15

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-eq v8, v0, :cond_14

    const/4 v7, 0x1

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v11, v0, :cond_13

    const/4 v11, -0x1

    goto :goto_4

    :cond_13
    move v11, v3

    :goto_4
    add-int/2addr v8, v11

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v8, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_5

    :cond_14
    const/4 v7, 0x0

    goto :goto_5

    :cond_15
    add-int/2addr v7, v3

    :goto_5
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v11, 0x3f7fbe77    # 0.999f

    cmpg-float v8, v8, v11

    if-gez v8, :cond_1a

    new-array v8, v3, [I

    aput v5, v8, v6

    invoke-static {v8}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_16

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->decelerateInterpolator(F)F

    move-result v8

    goto :goto_6

    :cond_16
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    :goto_6
    const-wide v11, 0x3fc999999999999aL    # 0.2

    iget v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v14, v14

    sub-double/2addr v11, v14

    const-wide/16 v14, 0x0

    cmpl-double v11, v11, v14

    const-wide v16, 0x3f899999a0000000L    # 0.012500000186264515

    if-lez v11, :cond_17

    const-wide v11, 0x3fc999999999999aL    # 0.2

    iget v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v5, v13

    sub-double/2addr v11, v5

    cmpg-double v5, v11, v16

    if-gtz v5, :cond_17

    const/4 v5, 0x7

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode value:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_17
    const-wide v5, 0x3fd999999999999aL    # 0.4

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v11

    sub-double/2addr v5, v11

    cmpl-double v5, v5, v14

    if-lez v5, :cond_18

    const-wide v5, 0x3fd999999999999aL    # 0.4

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v11

    sub-double/2addr v5, v11

    cmpg-double v5, v5, v16

    if-gtz v5, :cond_18

    const/4 v5, 0x6

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v5, 0x5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMod value:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    :cond_18
    const-wide v5, 0x3fe6666666666666L    # 0.7

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v11

    sub-double/2addr v5, v11

    cmpl-double v5, v5, v14

    if-lez v5, :cond_19

    const-wide v5, 0x3fe6666666666666L    # 0.7

    iget v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v11

    sub-double/2addr v5, v11

    cmpg-double v5, v5, v16

    if-gtz v5, :cond_19

    const/4 v5, 0x4

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v5, 0x2

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "changeReading2NightMode value:"

    invoke-virtual {v6, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_19
    :goto_7
    add-int/lit8 v7, v7, 0x2

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    add-float/2addr v5, v6

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMatrixNight2Reading(F)V

    :cond_1a
    const/4 v5, 0x2

    if-lt v7, v5, :cond_1b

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2, v0, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_9

    :cond_1b
    const/16 v5, 0xe

    if-ne v7, v3, :cond_1c

    invoke-virtual {v1, v5, v2, v0, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_9

    :cond_1c
    new-array v3, v3, [I

    const/4 v5, 0x0

    const/16 v6, 0x80

    aput v6, v3, v5

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1d

    const/16 v3, 0xb

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    goto :goto_8

    :cond_1d
    const/16 v3, 0x4e20

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    :goto_8
    const-string v3, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "changeReading2NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v3, "ColorBalanceService"

    const-string v5, "changeReading2NightMode:stage 10000 --> 20000,to be colors and set colorbalance"

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v3, 0x0

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2, v0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_9
    goto/16 :goto_d

    :cond_1e
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v5, 0xb

    if-ne v0, v5, :cond_21

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    sub-float/2addr v0, v4

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    const-wide v7, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v5, v7

    if-gtz v0, :cond_1f

    const/16 v0, 0x4e20

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    goto :goto_b

    :cond_1f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    float-to-double v5, v0

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    cmpl-float v0, v0, v4

    if-lez v0, :cond_20

    const-wide v7, -0x409f9db22d0e5604L    # -0.002

    goto :goto_a

    :cond_20
    const-wide v7, 0x3f60624dd2f1a9fcL    # 0.002

    :goto_a
    add-double/2addr v5, v7

    double-to-float v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    :goto_b
    const/4 v0, 0x5

    const/4 v3, 0x0

    const/16 v5, 0xe

    invoke-virtual {v1, v5, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_d

    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    const/16 v5, 0x4e20

    if-ne v0, v5, :cond_27

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v0, v5, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "screen_color_mode_advanced_settings_value"

    invoke-static {v5, v6, v3, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    new-array v6, v3, [I

    const/4 v7, 0x0

    const/16 v8, 0x80

    aput v8, v6, v7

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_26

    if-ne v0, v3, :cond_22

    const/16 v3, 0x12

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_c

    :cond_22
    if-ne v0, v14, :cond_23

    const/16 v3, 0x14

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_c

    :cond_23
    if-ne v0, v12, :cond_26

    if-nez v5, :cond_24

    invoke-direct {v1, v11}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_c

    :cond_24
    if-ne v5, v3, :cond_25

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_c

    :cond_25
    const/4 v3, 0x2

    if-ne v5, v3, :cond_26

    const/16 v3, 0x13

    invoke-direct {v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_26
    :goto_c
    const/high16 v3, 0x3f800000    # 1.0f

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const/4 v3, 0x2

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v3, "ColorBalanceService"

    const-string v6, "changeReading2NightMode done(20000 -> 30000)!"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_27
    :goto_d
    monitor-exit v9

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private closeMatrix()V
    .locals 7

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_daltonizer_enabled"

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v0, v6, :cond_0

    if-eq v2, v6, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    const-string v0, "ColorBalanceService"

    const-string v2, "close matrix!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const/16 v0, 0x18

    const/16 v2, 0x20

    invoke-virtual {p0, v0, v1, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    return-void
.end method

.method private closePropeties()V
    .locals 7

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_daltonizer_enabled"

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v0, v6, :cond_0

    if-eq v2, v6, :cond_0

    if-nez v3, :cond_2

    :cond_0
    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v4, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v4, "0"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    :cond_2
    const-string v0, "ColorBalanceService"

    const-string v2, "close Propeties!"

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v2, "0"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v4, 0x3f7

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v5, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :cond_3
    const-string v0, "ColorBalanceService"

    const-string v1, "close Propeties flinger is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "read flinger 1015 is fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private decelerateInterpolator(F)F
    .locals 4

    float-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method private getBalanceByTemprature(I)I
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p1

    const/4 v2, 0x0

    const/16 v3, 0x36

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    const/16 v8, 0x42

    const/4 v9, 0x0

    const/16 v10, 0x39

    const/16 v11, 0x2f

    const/16 v12, 0x24

    const/16 v13, 0x1a

    const/4 v14, 0x1

    if-ne v6, v14, :cond_8

    const-string v6, "ColorBalanceService"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, " when open the reading mode the enviroment color temperature         == "

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_0

    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_0
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    if-lt v4, v13, :cond_2

    if-ge v4, v12, :cond_2

    const/4 v4, 0x1

    goto :goto_0

    :cond_2
    if-lt v4, v12, :cond_3

    if-ge v4, v11, :cond_3

    const/4 v4, 0x2

    goto :goto_0

    :cond_3
    if-lt v4, v11, :cond_4

    if-ge v4, v10, :cond_4

    const/4 v4, 0x3

    goto :goto_0

    :cond_4
    if-lt v4, v10, :cond_5

    if-ge v4, v8, :cond_5

    const/4 v4, 0x4

    goto :goto_0

    :cond_5
    const/4 v4, 0x5

    :goto_0
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in reading mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eq v6, v14, :cond_7

    const/4 v7, 0x3

    if-ne v6, v7, :cond_6

    goto :goto_1

    :cond_6
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode_SRGB_and_P3:[I

    aget v5, v7, v4

    goto :goto_2

    :cond_7
    :goto_1
    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_reading_mode:[I

    aget v5, v7, v4

    :goto_2
    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    goto/16 :goto_7

    :cond_8
    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-ne v6, v14, :cond_f

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-nez v6, :cond_f

    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, " when open the adaption mode the enviroment color temperature         == "

    invoke-virtual {v7, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_9

    const-string v6, "ColorBalanceService"

    const-string v7, " The RGB sensor output negative data this is error !  "

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_9
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_a

    const/4 v4, 0x0

    goto :goto_3

    :cond_a
    if-lt v4, v13, :cond_b

    if-ge v4, v12, :cond_b

    const/4 v4, 0x1

    goto :goto_3

    :cond_b
    if-lt v4, v12, :cond_c

    if-ge v4, v11, :cond_c

    const/4 v4, 0x2

    goto :goto_3

    :cond_c
    if-lt v4, v11, :cond_d

    if-ge v4, v10, :cond_d

    const/4 v4, 0x3

    goto :goto_3

    :cond_d
    if-lt v4, v10, :cond_e

    if-ge v4, v8, :cond_e

    const/4 v4, 0x4

    goto :goto_3

    :cond_e
    const/4 v4, 0x5

    :goto_3
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " when in adaption mode the enviroment_step = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v6, v7, v14, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    sget-object v7, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance_oneplus_mode_adaption:[I

    aget v7, v7, v4

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v5, v7, v8

    goto/16 :goto_7

    :cond_f
    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v14, "oem_nightmode_progress_status"

    sget v15, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    const/4 v8, -0x2

    invoke-static {v7, v14, v15, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    sub-int/2addr v6, v7

    const/4 v2, 0x0

    :goto_4
    if-ge v2, v3, :cond_12

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    aget v7, v7, v2

    if-gt v6, v7, :cond_10

    goto :goto_5

    :cond_10
    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_autoseekbar:[I

    add-int/lit8 v8, v3, -0x1

    aget v7, v7, v8

    if-lt v6, v7, :cond_11

    add-int/lit8 v2, v3, -0x1

    goto :goto_5

    :cond_11
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    :cond_12
    :goto_5
    if-ltz v2, :cond_1a

    const/16 v7, 0x35

    if-le v2, v7, :cond_13

    goto/16 :goto_8

    :cond_13
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, " when open the night mode the enviroment color temperature         == "

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-gez v1, :cond_14

    const-string v7, "ColorBalanceService"

    const-string v8, " The RGB sensor output negative data this is error !  "

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9

    :cond_14
    div-int/lit8 v4, v1, 0x64

    if-ge v4, v13, :cond_15

    const/4 v4, 0x0

    goto :goto_6

    :cond_15
    if-lt v4, v13, :cond_16

    if-ge v4, v12, :cond_16

    const/4 v4, 0x1

    goto :goto_6

    :cond_16
    if-lt v4, v12, :cond_17

    if-ge v4, v11, :cond_17

    const/4 v4, 0x2

    goto :goto_6

    :cond_17
    if-lt v4, v11, :cond_18

    if-ge v4, v10, :cond_18

    const/4 v4, 0x3

    goto :goto_6

    :cond_18
    if-lt v4, v10, :cond_19

    const/16 v7, 0x42

    if-ge v4, v7, :cond_19

    const/4 v4, 0x4

    goto :goto_6

    :cond_19
    const/4 v4, 0x5

    :goto_6
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, " when in night mode the enviroment_step = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->config_colorbalance:[[I

    aget-object v7, v7, v2

    aget v5, v7, v4

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v5, v7

    :goto_7
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getBalanceByTemprature:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v5

    :cond_1a
    :goto_8
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Out of range elemIndex: "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v9
.end method

.method public static getDateTimeAfter(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isBefore(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->plusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public static getDateTimeBefore(Ljava/time/LocalTime;Ljava/time/LocalDateTime;)Ljava/time/LocalDateTime;
    .locals 5

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getYear()I

    move-result v0

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getMonth()Ljava/time/Month;

    move-result-object v1

    invoke-virtual {p1}, Ljava/time/LocalDateTime;->getDayOfMonth()I

    move-result v2

    invoke-virtual {p0}, Ljava/time/LocalTime;->getHour()I

    move-result v3

    invoke-virtual {p0}, Ljava/time/LocalTime;->getMinute()I

    move-result v4

    invoke-static {v0, v1, v2, v3, v4}, Ljava/time/LocalDateTime;->of(ILjava/time/Month;III)Ljava/time/LocalDateTime;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/time/LocalDateTime;->isAfter(Ljava/time/chrono/ChronoLocalDateTime;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/time/LocalDateTime;->minusDays(J)Ljava/time/LocalDateTime;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method private handleSRGBSensorEvent(I)V
    .locals 5

    const/16 v0, 0x7d0

    if-le p1, v0, :cond_8

    const/16 v0, 0x1f40

    if-ge p1, v0, :cond_8

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    :cond_1
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ge v0, v2, :cond_6

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0xc8

    if-ge v0, v2, :cond_4

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    add-int/2addr v2, p1

    div-int/lit8 v2, v2, 0x2

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->RGBSENSOR_Dither:I

    if-ne v2, v3, :cond_5

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    if-nez v2, :cond_2

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x320

    if-ge v0, v2, :cond_3

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ignored,Stable color is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_3
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->processEnvironmentChange()V

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "adjusted,Stable color is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    goto :goto_0

    :cond_4
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    :cond_5
    :goto_0
    goto :goto_1

    :cond_6
    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/16 v2, 0x64

    if-ge v0, v2, :cond_7

    return-void

    :cond_7
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    :cond_8
    :goto_1
    return-void
.end method

.method private isScreenOn()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mPowerManager is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0
.end method

.method private static isUserSetupCompleted(Landroid/content/ContentResolver;I)Z
    .locals 3

    const-string/jumbo v0, "user_setup_complete"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    nop

    :cond_0
    return v1
.end method

.method private nightModeSwitch(ZI)V
    .locals 19

    move-object/from16 v1, p0

    move/from16 v2, p2

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int v3, v0, v3

    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v7, v5, [I

    const/16 v8, 0x80

    const/4 v9, 0x0

    aput v8, v7, v9

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    const/high16 v10, 0x3f800000    # 1.0f

    if-eqz v7, :cond_0

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "oem_nightmode_brightness_progress"

    invoke-static {v7, v11, v10, v6}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v11, "oem_screen_better_value"

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v12, v12, 0x64

    invoke-static {v7, v11, v12, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    rsub-int/lit8 v4, v7, 0x64

    :cond_0
    move v7, v0

    iget-object v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v11

    :try_start_0
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v15, 0xb

    const/4 v14, 0x3

    const/16 v12, 0xa

    if-nez v0, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_4e

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    new-array v10, v5, [I

    aput v8, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_5

    if-ne v0, v5, :cond_1

    invoke-direct {v1, v15}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_1
    if-ne v0, v12, :cond_2

    const/16 v10, 0x10

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_2
    if-ne v0, v14, :cond_6

    if-nez v6, :cond_3

    const/16 v10, 0x15

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_3
    if-ne v6, v5, :cond_4

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_4
    const/4 v10, 0x2

    if-ne v6, v10, :cond_6

    const/16 v10, 0x13

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_0

    :cond_5
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_6
    :goto_0
    invoke-direct {v1, v3, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    new-array v5, v5, [I

    aput v8, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v5, :cond_7

    invoke-virtual {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_7
    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const/4 v5, 0x4

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_8

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_8
    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v5, "ColorBalanceService"

    const-string v8, "Screen off,nightModeSwitch ON done!"

    invoke-static {v5, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_9
    new-array v0, v5, [I

    aput v8, v0, v9

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_a
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v5, "Screen off,nightModeSwitch OFF done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_4e

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v17, -0x1

    if-eqz v0, :cond_2f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/4 v10, 0x2

    if-eq v0, v10, :cond_4e

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_27

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-nez v0, :cond_15

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const/4 v13, 0x5

    if-ne v0, v13, :cond_c

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v13

    iput-object v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_c
    if-eq v0, v14, :cond_10

    new-array v6, v5, [I

    aput v8, v6, v9

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_f

    if-ne v0, v5, :cond_d

    invoke-direct {v1, v15}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_1

    :cond_d
    if-ne v0, v12, :cond_e

    const/16 v6, 0x10

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_e
    :goto_1
    const/16 v6, 0x2b

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_2

    :cond_f
    const/16 v6, 0x2b

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_2
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 3,default!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_10
    const/4 v13, 0x2

    iput v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iget-object v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v13}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v13

    const-string/jumbo v14, "oem_screen_better_value"

    sget v15, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v15, v15, 0x64

    invoke-static {v13, v14, v15, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    new-array v6, v5, [I

    aput v8, v6, v9

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_14

    if-nez v10, :cond_11

    const/16 v5, 0x15

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_11
    if-ne v10, v5, :cond_12

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_12
    const/4 v5, 0x2

    if-ne v10, v5, :cond_13

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_13
    :goto_3
    const/16 v5, 0xc

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 12,status 3, directly set to progress"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    :cond_14
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 0 --> 2,status 3,setting customer to default"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    invoke-virtual {v1, v12, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_21

    :cond_15
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/16 v6, 0xc

    if-ne v0, v6, :cond_18

    const/16 v0, 0x2c

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v6, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v6, v0, :cond_16

    const/16 v5, 0xd

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/16 v5, 0x9

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 12 --> 13, status 3, having set the lowest customcolorbalance, continue to set nightclorbalance"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_16
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v8, v0, :cond_17

    goto :goto_5

    :cond_17
    move/from16 v17, v5

    :goto_5
    add-int v6, v6, v17

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_6
    const/16 v5, 0x14

    invoke-virtual {v1, v12, v2, v9, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_18
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/16 v6, 0xd

    if-ne v0, v6, :cond_1b

    move v0, v3

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v6, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v6, v3, :cond_19

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 13 --> 11, status 3, colorbalance has set completely, continue to set brightness"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_19
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v8, v3, :cond_1a

    goto :goto_7

    :cond_1a
    move/from16 v17, v5

    :goto_7
    add-int v6, v6, v17

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_8
    const/16 v5, 0x14

    invoke-virtual {v1, v12, v2, v9, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_1b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/4 v6, 0x2

    if-ne v0, v6, :cond_1f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v6, 0x2b

    if-ne v0, v6, :cond_1d

    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch ON: 2 --> 3,default!"

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v0, v5, [I

    aput v8, v0, v9

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_1c

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_1c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    goto :goto_a

    :cond_1d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v8, 0x2b

    if-le v6, v8, :cond_1e

    goto :goto_9

    :cond_1e
    move/from16 v17, v5

    :goto_9
    add-int v0, v0, v17

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_a
    const/16 v0, 0xf

    invoke-virtual {v1, v12, v2, v9, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_1f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v14, :cond_23

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v0, v3, :cond_21

    new-array v0, v5, [I

    aput v8, v0, v9

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_20

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    goto :goto_b

    :cond_20
    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    :goto_b
    const-string v0, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "nightModeSwitch ON: 3 --> 4, SET Balance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_d

    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v0, v3, :cond_22

    goto :goto_c

    :cond_22
    move/from16 v17, v5

    :goto_c
    move/from16 v0, v17

    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v5, v0

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :goto_d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v0, 0xf

    invoke-virtual {v1, v12, v2, v9, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_23
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    if-ne v0, v15, :cond_26

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    sub-float/2addr v0, v7

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    const-wide v13, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v5, v13

    if-gtz v0, :cond_24

    const/4 v0, 0x4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON: 11 --> 4, brightness set finished"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_24
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    float-to-double v5, v0

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    cmpl-float v0, v0, v7

    if-lez v0, :cond_25

    const-wide v13, -0x409f9db22d0e5604L    # -0.002

    goto :goto_e

    :cond_25
    const-wide v13, 0x3f60624dd2f1a9fcL    # 0.002

    :goto_e
    add-double/2addr v5, v13

    double-to-float v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    :goto_f
    const/4 v0, 0x5

    invoke-virtual {v1, v12, v2, v9, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_26
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    const/4 v6, 0x4

    if-ne v0, v6, :cond_4e

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const/4 v0, 0x2

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch ON done!"

    invoke-static {v0, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_21

    :cond_27
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    const-string v0, "ColorBalanceService"

    const-string v10, "#2 night mode had been opened!"

    invoke-static {v0, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    new-array v10, v5, [I

    aput v8, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v10

    if-eqz v10, :cond_2c

    if-ne v0, v5, :cond_28

    invoke-direct {v1, v15}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_10

    :cond_28
    if-ne v0, v12, :cond_29

    const/16 v10, 0x10

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_10

    :cond_29
    if-ne v0, v14, :cond_2d

    if-nez v6, :cond_2a

    const/16 v10, 0x15

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_10

    :cond_2a
    if-ne v6, v5, :cond_2b

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_10

    :cond_2b
    const/4 v10, 0x2

    if-ne v6, v10, :cond_2d

    const/16 v10, 0x13

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_10

    :cond_2c
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_2d
    :goto_10
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-direct {v1, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {v1, v3, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    new-array v10, v5, [I

    aput v8, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_2e

    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v8, :cond_2e

    invoke-virtual {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_2e
    const/4 v8, 0x2

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_21

    :cond_2f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/4 v10, 0x4

    if-eq v0, v10, :cond_4e

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_4e

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-nez v0, :cond_3a

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v10

    new-array v13, v5, [I

    aput v8, v13, v9

    invoke-static {v13}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_37

    if-ne v0, v14, :cond_37

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v8, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v13, 0x9

    if-eq v8, v13, :cond_31

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v13, 0x9

    if-le v8, v13, :cond_30

    goto :goto_11

    :cond_30
    move/from16 v17, v5

    :goto_11
    add-int v6, v6, v17

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    goto :goto_13

    :cond_31
    iget v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v13, 0x9

    if-ne v8, v13, :cond_36

    iget-object v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v13, "oem_screen_better_value"

    sget v14, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v14, v14, 0x64

    invoke-static {v8, v13, v14, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-nez v10, :cond_32

    const/16 v5, 0x15

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_12

    :cond_32
    if-ne v10, v5, :cond_33

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_12

    :cond_33
    const/4 v5, 0x2

    if-ne v10, v5, :cond_34

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_34
    :goto_12
    iget v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    add-int/lit8 v5, v5, -0x23

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v5, v6, :cond_35

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/16 v5, 0x2c

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 0 --> 11,colorBalance  set finished, go to set brightness"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_13

    :cond_35
    const/16 v5, 0xc

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/16 v5, 0x2c

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 0 --> 12, go to continue to set custom colorBalance "

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_36
    :goto_13
    const/16 v5, 0x14

    invoke-virtual {v1, v12, v2, v9, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_15

    :cond_37
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v8, 0x2b

    if-ne v8, v6, :cond_38

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    invoke-virtual {v1, v12, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 0 --> 1,colorBalance default!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_38
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/16 v8, 0x2b

    if-le v6, v8, :cond_39

    goto :goto_14

    :cond_39
    move/from16 v17, v5

    :goto_14
    move/from16 v5, v17

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v6, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v6, 0xf

    invoke-virtual {v1, v12, v2, v9, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_15
    goto/16 :goto_21

    :cond_3a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/16 v10, 0xc

    if-ne v0, v10, :cond_3d

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    invoke-direct {v1, v0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-ne v0, v4, :cond_3b

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 12 --> 11,colorBalance  set finished, go to set brightness"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    :cond_3b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-le v6, v4, :cond_3c

    goto :goto_16

    :cond_3c
    move/from16 v17, v5

    :goto_16
    add-int v0, v0, v17

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    :goto_17
    const/16 v0, 0x14

    invoke-virtual {v1, v12, v2, v9, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_3d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v5, :cond_44

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v13, "screen_color_mode_advanced_settings_value"

    invoke-static {v10, v13, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    if-eq v0, v14, :cond_3f

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    new-array v5, v5, [I

    aput v8, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_3e

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    goto :goto_18

    :cond_3e
    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    :goto_18
    const-string v5, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF:1 --> 3, revertStatus"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1a

    :cond_3f
    const/high16 v10, 0x3f800000    # 1.0f

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    new-array v10, v5, [I

    aput v8, v10, v9

    invoke-static {v10}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v8

    if-eqz v8, :cond_42

    if-nez v6, :cond_40

    const/16 v5, 0x15

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_19

    :cond_40
    if-ne v6, v5, :cond_41

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_19

    :cond_41
    const/4 v5, 0x2

    if-ne v6, v5, :cond_43

    const/16 v5, 0x13

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_19

    :cond_42
    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_43
    :goto_19
    const/16 v5, 0x2b

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    const/4 v5, 0x2

    iput v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v8, "nightModeSwitch OFF:1 --> 2,be status 3"

    invoke-static {v5, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1a
    invoke-virtual {v1, v12, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_21

    :cond_44
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/4 v10, 0x2

    if-ne v0, v10, :cond_48

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "oem_screen_better_value"

    sget v13, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v13, v13, 0x64

    invoke-static {v0, v10, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v0, v0, 0x64

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-ne v6, v0, :cond_46

    new-array v5, v5, [I

    aput v8, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_45

    iput v15, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 2 --> 11,colorBalance  set finished, go to set brightness"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1b

    :cond_45
    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF 2 --> 3,brightness  set finished,brightness,go to finish"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1b
    invoke-virtual {v1, v12, v2, v9, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "nightModeSwitch OFF:2 --> 3,status 3 done!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d

    :cond_46
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v6, v0, :cond_47

    goto :goto_1c

    :cond_47
    move/from16 v17, v5

    :goto_1c
    move/from16 v5, v17

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {v1, v6, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v6, 0xf

    invoke-virtual {v1, v12, v2, v9, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    :goto_1d
    goto/16 :goto_21

    :cond_48
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v15, :cond_4b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v0, v5

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v5, v0

    const-wide v15, 0x3f847ae147ae147bL    # 0.01

    cmpg-double v0, v5, v15

    if-gtz v0, :cond_49

    iput v14, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v5, "nightModeSwitch OFF 11 --> 3,brightness  set finished, go to finish"

    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1f

    :cond_49
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    float-to-double v5, v0

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v0, v0, v8

    if-lez v0, :cond_4a

    const-wide v13, -0x40af9db22d0e5604L    # -0.001

    goto :goto_1e

    :cond_4a
    const-wide v13, 0x3f50624dd2f1a9fcL    # 0.001

    :goto_1e
    add-double/2addr v5, v13

    double-to-float v0, v5

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    :goto_1f
    const/4 v0, 0x2

    invoke-virtual {v1, v12, v2, v9, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_21

    :cond_4b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    if-ne v0, v14, :cond_4e

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v10, "screen_color_mode_settings_value"

    invoke-static {v0, v10, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v10, 0x5

    if-eq v0, v10, :cond_4c

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_20

    :cond_4c
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iput-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :goto_20
    const-string v10, "ColorBalanceService"

    const-string/jumbo v12, "nightModeSwitch OFF done!"

    invoke-static {v10, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v10, 0x4

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget-object v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    const-string/jumbo v12, "oem_screen_better_value"

    sget v13, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v13, v13, 0x64

    invoke-static {v10, v12, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    new-array v5, v5, [I

    aput v8, v5, v9

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_4d

    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_4d
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    :cond_4e
    :goto_21
    monitor-exit v11

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v11
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private notifyColorBalanceToSurfaceFlinger(DDD)V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    if-nez v0, :cond_0

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "notifyColorBalanceToSurfaceFlinger: handle of surfaceflinger is null."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    const-string v1, "android.ui.ISurfaceComposer"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p3, p4}, Landroid/os/Parcel;->writeDouble(D)V

    invoke-virtual {v0, p5, p6}, Landroid/os/Parcel;->writeDouble(D)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->flinger:Landroid/os/IBinder;

    const/16 v2, 0x8a4

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ColorBalanceService"

    const-string v2, "Failed to set color balance to surfaceflinger."

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onUserChanged(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->tearDown()V

    :cond_1
    :goto_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-eq v1, v2, :cond_3

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->isUserSetupCompleted(Landroid/content/ContentResolver;I)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$2;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$2;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Landroid/os/Handler;Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    const-string/jumbo v1, "user_setup_complete"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    goto :goto_1

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    :cond_3
    :goto_1
    return-void
.end method

.method private oneplusSetColorBalance(II)V
    .locals 44

    move-object/from16 v8, p0

    move/from16 v9, p1

    move/from16 v10, p2

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/16 v1, 0x0

    const-wide/16 v3, 0x0

    int-to-double v13, v9

    int-to-double v6, v10

    const-wide/high16 v15, 0x3ff0000000000000L    # 1.0

    iget-object v5, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_b

    move-wide/from16 v17, v1

    const-wide v21, 0x3fc999999999999aL    # 0.2

    const-wide v25, 0x3ee4f8b580000000L    # 9.999999747378752E-6

    const-wide v27, 0x4045800000000000L    # 43.0

    const/4 v2, 0x0

    if-eqz v0, :cond_14

    :try_start_1
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_5

    const v1, 0x1fa264c

    if-eq v0, v1, :cond_1

    :try_start_2
    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v1, 0x1fa2639

    if-ne v0, v1, :cond_0

    goto :goto_1

    :cond_0
    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    goto/16 :goto_13

    :catchall_0
    move-exception v0

    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    :goto_0
    move-wide/from16 v1, v17

    goto/16 :goto_23

    :cond_1
    :goto_1
    const/16 v0, 0x64

    if-le v9, v0, :cond_2

    const/16 v0, -0x64

    if-ge v9, v0, :cond_2

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    return-void

    :cond_2
    const/4 v1, 0x1

    :try_start_3
    new-array v0, v1, [I

    const/16 v19, 0x80

    aput v19, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_7

    double-to-int v0, v13

    iput v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_5

    const-wide v0, 0x4053c00000000000L    # 79.0

    cmpg-double v2, v13, v0

    const-wide v19, 0x4041800000000000L    # 35.0

    if-ltz v2, :cond_4

    cmpl-double v2, v13, v27

    if-nez v2, :cond_3

    goto :goto_2

    :cond_3
    sub-double v13, v13, v19

    :try_start_4
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorbalance is set by line two setColorBalance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    const-wide v0, 0x3ef4f8b580000000L    # 1.9999999494757503E-5

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    const-wide v19, -0x408cbfb14c000000L    # -0.004700000223238021

    mul-double v19, v19, v13

    add-double v0, v0, v19

    const-wide v19, 0x3ff2a5e353f7ced9L    # 1.1655

    add-double v0, v0, v19

    mul-double v25, v25, v13

    mul-double v25, v25, v13

    const-wide v11, -0x4094f765e8000000L    # -0.0033000001567415893

    mul-double/2addr v11, v13

    add-double v25, v25, v11

    const-wide v11, 0x3ff1e703afb7e910L    # 1.1189

    add-double v25, v25, v11

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    move-wide v11, v0

    move-wide/from16 v17, v2

    move-wide/from16 v42, v13

    move-wide/from16 v13, v25

    move-wide/from16 v26, v42

    goto :goto_3

    :cond_4
    :goto_2
    cmpg-double v0, v13, v0

    if-gez v0, :cond_5

    const-wide/high16 v0, 0x4046000000000000L    # 44.0

    cmpl-double v0, v13, v0

    if-ltz v0, :cond_5

    sub-double v13, v13, v19

    :cond_5
    :try_start_5
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "colorbalance is set by line one  setColorBalance:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_5

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    const-wide v11, -0x41008aefc0000000L    # -2.9999999242136255E-5

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    const-wide v19, 0x3f60624de0000000L    # 0.0020000000949949026

    mul-double v19, v19, v13

    add-double v11, v11, v19

    const-wide v19, 0x3fee71de69ad42c4L    # 0.9514

    add-double v11, v11, v19

    const-wide v17, -0x410b074a80000000L    # -1.9999999494757503E-5

    mul-double v17, v17, v13

    mul-double v17, v17, v13

    const-wide v19, 0x3f7758e22c000000L    # 0.0057000002707354724

    mul-double v19, v19, v13

    add-double v17, v17, v19

    const-wide v19, 0x3fe9ced916872b02L    # 0.8065

    add-double v17, v17, v19

    move-wide/from16 v26, v13

    move-wide v13, v11

    move-wide v11, v0

    :goto_3
    move-object v1, v8

    move-wide v2, v11

    move-object/from16 v29, v5

    move-wide v4, v13

    move-wide/from16 v30, v6

    move-wide/from16 v6, v17

    :try_start_6
    invoke-direct/range {v1 .. v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->notifyColorBalanceToSurfaceFlinger(DDD)V

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_6

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v19, v0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v13

    move-wide/from16 v24, v17

    invoke-virtual/range {v19 .. v25}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_6
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_6
    goto :goto_4

    :catchall_1
    move-exception v0

    move-wide v1, v13

    move-wide/from16 v3, v17

    move-wide/from16 v13, v26

    goto/16 :goto_23

    :catch_0
    move-exception v0

    :try_start_7
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    monitor-exit v29
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    return-void

    :cond_7
    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    cmpg-double v0, v13, v27

    if-ltz v0, :cond_e

    cmpl-double v0, v13, v27

    if-nez v0, :cond_8

    goto/16 :goto_e

    :cond_8
    const-wide v5, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    if-nez v10, :cond_b

    :try_start_8
    iput v9, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_6

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    const-wide v20, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    mul-double v20, v20, v13

    add-double v5, v5, v20

    const-wide v20, 0x3ff0958debe66d88L    # 1.0365123

    add-double v5, v5, v20

    const-wide v11, -0x41554c77250726f2L    # -7.9576095929934E-7

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    const-wide v20, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v20, v20, v13

    add-double v11, v11, v20

    const-wide v20, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v20

    :try_start_9
    new-array v0, v1, [I

    aput v19, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    if-eqz v0, :cond_9

    const-wide v0, 0x3f658ed2307ef0a5L    # 0.0026315789473

    mul-double/2addr v0, v13

    const-wide v17, 0x3fef9435e50d73b5L    # 0.986842105263

    add-double v0, v0, v17

    :goto_5
    move-wide v1, v0

    goto :goto_6

    :cond_9
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    goto :goto_5

    :goto_6
    :try_start_a
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_a

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v22, v0

    move-wide/from16 v23, v5

    move-wide/from16 v25, v11

    move-wide/from16 v27, v1

    invoke-virtual/range {v22 .. v28}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_a
    .catch Ljava/lang/NullPointerException; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    :cond_a
    :goto_7
    goto :goto_8

    :catchall_2
    move-exception v0

    move-wide v3, v1

    goto :goto_9

    :catch_1
    move-exception v0

    :try_start_b
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_2

    goto :goto_7

    :goto_8
    move-wide v3, v1

    move-wide v1, v11

    goto/16 :goto_16

    :catchall_3
    move-exception v0

    :goto_9
    move-wide v1, v11

    goto/16 :goto_15

    :cond_b
    move v0, v2

    :goto_a
    move v7, v0

    const/4 v2, 0x5

    if-ge v7, v2, :cond_1a

    sub-double v15, v15, v21

    int-to-double v1, v9

    mul-double v25, v30, v15

    sub-double v13, v1, v25

    mul-double v0, v5, v13

    mul-double/2addr v0, v13

    const-wide v25, -0x40b292b87d9c6930L    # -8.980368773136797E-4

    mul-double v25, v25, v13

    add-double v0, v0, v25

    const-wide v25, 0x3ff0958debe66d88L    # 1.0365123

    add-double v1, v0, v25

    const-wide v11, -0x41554c77250726f2L    # -7.9576095929934E-7

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    const-wide v25, -0x40c1bac3ee4437c5L    # -4.6189037833166733E-4

    mul-double v25, v25, v13

    add-double v11, v11, v25

    const-wide v25, 0x3ff04461f9f01b86L    # 1.016695

    add-double v11, v11, v25

    const/4 v5, 0x1

    :try_start_c
    new-array v0, v5, [I

    const/4 v5, 0x0

    aput v19, v0, v5

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_4

    if-eqz v0, :cond_c

    const-wide v5, 0x3f658ed2307ef0a5L    # 0.0026315789473

    mul-double/2addr v5, v13

    const-wide v17, 0x3fef9435e50d73b5L    # 0.986842105263

    add-double v5, v5, v17

    move-wide v3, v5

    goto :goto_b

    :cond_c
    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :goto_b
    :try_start_d
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_d

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v34, v0

    move-wide/from16 v35, v1

    move-wide/from16 v37, v11

    move-wide/from16 v39, v3

    invoke-virtual/range {v34 .. v40}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_d
    .catch Ljava/lang/NullPointerException; {:try_start_d .. :try_end_d} :catch_2
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    :cond_d
    goto :goto_c

    :catch_2
    move-exception v0

    :try_start_e
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    :goto_c
    const-wide/16 v5, 0xf

    :try_start_f
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_f
    .catch Ljava/lang/InterruptedException; {:try_start_f .. :try_end_f} :catch_3
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_d

    :catch_3
    move-exception v0

    move-object v5, v0

    :try_start_10
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    :goto_d
    add-int/lit8 v0, v7, 0x1

    move-wide/from16 v17, v11

    const-wide v5, 0x3eb315b4cbbda110L    # 1.1375421271279822E-6

    move-wide v11, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    goto/16 :goto_a

    :catchall_4
    move-exception v0

    move-wide/from16 v42, v1

    move-wide v1, v11

    move-wide/from16 v11, v42

    goto/16 :goto_23

    :cond_e
    :goto_e
    if-nez v10, :cond_11

    :try_start_11
    iput v9, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const/4 v1, 0x1

    new-array v0, v1, [I

    const/4 v1, 0x0

    aput v19, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0
    :try_end_11
    .catchall {:try_start_11 .. :try_end_11} :catchall_6

    if-eqz v0, :cond_f

    const-wide v0, 0x3f527a6b04fc135dL    # 0.0011278195488

    mul-double/2addr v0, v13

    const-wide v5, 0x3fee72b8031455b6L    # 0.951503759398

    add-double v11, v0, v5

    :cond_f
    const-wide v0, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    const-wide v5, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double/2addr v5, v13

    add-double/2addr v0, v5

    const-wide v5, 0x3feec8d01dba252aL    # 0.9620133

    add-double v1, v0, v5

    const-wide v5, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    const-wide v17, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v17, v17, v13

    add-double v5, v5, v17

    const-wide v17, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v3, v5, v17

    :try_start_12
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_10

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v19, v0

    move-wide/from16 v20, v11

    move-wide/from16 v22, v1

    move-wide/from16 v24, v3

    invoke-virtual/range {v19 .. v25}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_12
    .catch Ljava/lang/NullPointerException; {:try_start_12 .. :try_end_12} :catch_4
    .catchall {:try_start_12 .. :try_end_12} :catchall_c

    :cond_10
    :goto_f
    goto/16 :goto_22

    :catch_4
    move-exception v0

    :try_start_13
    const-string v5, "ColorBalanceService"

    const-string/jumbo v6, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_11
    move-wide/from16 v1, v17

    const/4 v0, 0x0

    :goto_10
    move v5, v0

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1f

    sub-double v15, v15, v21

    int-to-double v6, v9

    mul-double v17, v30, v15

    sub-double v13, v6, v17

    const/4 v6, 0x1

    new-array v0, v6, [I

    const/4 v7, 0x0

    aput v19, v0, v7

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0
    :try_end_13
    .catchall {:try_start_13 .. :try_end_13} :catchall_c

    if-eqz v0, :cond_12

    const-wide v17, 0x3f527a6b04fc135dL    # 0.0011278195488

    mul-double v17, v17, v13

    const-wide v25, 0x3fee72b8031455b6L    # 0.951503759398

    add-double v17, v17, v25

    move-wide/from16 v11, v17

    :cond_12
    const-wide v17, -0x410fdff91c3781e2L    # -1.5378098611516543E-5

    mul-double v17, v17, v13

    mul-double v17, v17, v13

    const-wide v25, 0x3f56bea8aee1b08aL    # 0.001388230065937387

    mul-double v25, v25, v13

    add-double v17, v17, v25

    const-wide v25, 0x3feec8d01dba252aL    # 0.9620133

    add-double v1, v17, v25

    const-wide v17, -0x4104f970a5924d0aL    # -2.577364434890296E-5

    mul-double v17, v17, v13

    mul-double v17, v17, v13

    const-wide v25, 0x3f68eb30a5a8effeL    # 0.0030418348444793955

    mul-double v25, v25, v13

    add-double v17, v17, v25

    const-wide v25, 0x3feca2ef9e88eca3L    # 0.89488965

    add-double v3, v17, v25

    :try_start_14
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_13

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v11

    move-wide/from16 v35, v1

    move-wide/from16 v37, v3

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_14
    .catch Ljava/lang/NullPointerException; {:try_start_14 .. :try_end_14} :catch_5
    .catchall {:try_start_14 .. :try_end_14} :catchall_c

    :cond_13
    goto :goto_11

    :catch_5
    move-exception v0

    :try_start_15
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v6, v7}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_15
    .catchall {:try_start_15 .. :try_end_15} :catchall_c

    :goto_11
    const-wide/16 v6, 0xf

    :try_start_16
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_16
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_16} :catch_6
    .catchall {:try_start_16 .. :try_end_16} :catchall_c

    goto :goto_12

    :catch_6
    move-exception v0

    move-object v6, v0

    :try_start_17
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_17
    .catchall {:try_start_17 .. :try_end_17} :catchall_c

    :goto_12
    add-int/lit8 v0, v5, 0x1

    goto/16 :goto_10

    :catchall_5
    move-exception v0

    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    move-wide/from16 v1, v17

    goto/16 :goto_23

    :cond_14
    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    :goto_13
    const/16 v0, 0x64

    if-le v9, v0, :cond_15

    const/16 v0, -0x64

    if-ge v9, v0, :cond_15

    :try_start_18
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oneplusSetColorBalance ERROR:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v29
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_6

    return-void

    :catchall_6
    move-exception v0

    goto/16 :goto_0

    :cond_15
    cmpg-double v0, v13, v27

    const-wide v19, 0x3e7ad7f2a0000000L    # 1.0000000116860974E-7

    if-ltz v0, :cond_1b

    cmpl-double v0, v13, v27

    if-nez v0, :cond_16

    goto/16 :goto_1a

    :cond_16
    const-wide v1, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    if-nez v10, :cond_18

    const-wide v5, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    mul-double v5, v5, v19

    const-wide v19, 0x3ff02d0e56041893L    # 1.011

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    mul-double v19, v19, v1

    add-double v5, v5, v19

    const-wide v19, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v19, v19, v13

    add-double v5, v5, v19

    const-wide v19, 0x3ff63126e978d4feL    # 1.387

    add-double v5, v5, v19

    const-wide v11, 0x3ff553f7ced91687L    # 1.333

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    const-wide v19, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v11, v11, v19

    const-wide v19, -0x3fffeb851eb851ecL    # -2.01

    mul-double v19, v19, v13

    mul-double v19, v19, v13

    mul-double v19, v19, v1

    add-double v11, v11, v19

    const-wide v0, 0x3f7c0767d34df04eL    # 0.006843

    mul-double/2addr v0, v13

    add-double/2addr v11, v0

    const-wide v0, 0x3feef765fd8adabaL    # 0.9677

    add-double v1, v11, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :try_start_19
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_17

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v21, v0

    move-wide/from16 v22, v5

    move-wide/from16 v24, v1

    move-wide/from16 v26, v3

    invoke-virtual/range {v21 .. v27}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_19
    .catch Ljava/lang/NullPointerException; {:try_start_19 .. :try_end_19} :catch_7
    .catchall {:try_start_19 .. :try_end_19} :catchall_7

    :cond_17
    :goto_14
    goto :goto_16

    :catchall_7
    move-exception v0

    :goto_15
    move-wide v11, v5

    goto/16 :goto_23

    :catch_7
    move-exception v0

    :try_start_1a
    const-string v7, "ColorBalanceService"

    const-string/jumbo v11, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v7, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_7

    goto :goto_14

    :goto_16
    move-wide v11, v5

    goto/16 :goto_22

    :cond_18
    const/16 v41, 0x0

    :goto_17
    move/from16 v5, v41

    const/4 v6, 0x5

    if-ge v5, v6, :cond_1a

    sub-double v15, v15, v21

    int-to-double v6, v9

    mul-double v25, v30, v15

    sub-double v13, v6, v25

    const-wide v6, -0x3ff6978d4fdf3b64L    # -3.176

    mul-double/2addr v6, v13

    mul-double/2addr v6, v13

    mul-double/2addr v6, v13

    mul-double v6, v6, v19

    const-wide v25, 0x3ff02d0e56041893L    # 1.011

    mul-double v25, v25, v13

    mul-double v25, v25, v13

    mul-double v25, v25, v1

    add-double v6, v6, v25

    const-wide v25, -0x4075bea0ba1f4b1fL    # -0.01282

    mul-double v25, v25, v13

    add-double v6, v6, v25

    const-wide v25, 0x3ff63126e978d4feL    # 1.387

    add-double v6, v6, v25

    const-wide v11, 0x3ff553f7ced91687L    # 1.333

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    mul-double/2addr v11, v13

    const-wide v25, 0x3eb0c6f7a0000000L    # 9.999999974752427E-7

    mul-double v11, v11, v25

    const-wide v25, -0x3fffeb851eb851ecL    # -2.01

    mul-double v25, v25, v13

    mul-double v25, v25, v13

    mul-double v25, v25, v1

    add-double v11, v11, v25

    const-wide v25, 0x3f7c0767d34df04eL    # 0.006843

    mul-double v25, v25, v13

    add-double v11, v11, v25

    const-wide v25, 0x3feef765fd8adabaL    # 0.9677

    add-double v11, v11, v25

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    :try_start_1b
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_19

    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-object/from16 v32, v0

    move-wide/from16 v33, v6

    move-wide/from16 v35, v11

    move-wide/from16 v37, v3

    invoke-virtual/range {v32 .. v38}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1b
    .catch Ljava/lang/NullPointerException; {:try_start_1b .. :try_end_1b} :catch_8
    .catchall {:try_start_1b .. :try_end_1b} :catchall_8

    :cond_19
    goto :goto_18

    :catchall_8
    move-exception v0

    move-wide v1, v11

    move-wide v11, v6

    goto/16 :goto_23

    :catch_8
    move-exception v0

    :try_start_1c
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_8

    :goto_18
    const-wide/16 v1, 0xf

    :try_start_1d
    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_1d .. :try_end_1d} :catch_9
    .catchall {:try_start_1d .. :try_end_1d} :catchall_8

    goto :goto_19

    :catch_9
    move-exception v0

    move-object/from16 v17, v0

    :try_start_1e
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_1e
    .catchall {:try_start_1e .. :try_end_1e} :catchall_8

    :goto_19
    add-int/lit8 v41, v5, 0x1

    move-wide/from16 v17, v11

    const-wide v1, 0x3f1a36e2e0000000L    # 9.999999747378752E-5

    move-wide v11, v6

    goto/16 :goto_17

    :cond_1a
    move-wide/from16 v1, v17

    goto/16 :goto_22

    :cond_1b
    :goto_1a
    const-wide/16 v1, 0xf

    if-nez v10, :cond_1d

    const-wide v0, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double v0, v0, v19

    const-wide v5, -0x400522d0e5604189L    # -1.679

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    mul-double v5, v5, v25

    add-double/2addr v0, v5

    const-wide v5, 0x3f66feb4a66559f7L    # 0.002807

    mul-double/2addr v5, v13

    add-double/2addr v0, v5

    const-wide v5, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v17, v0, v5

    const-wide v0, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double v0, v0, v19

    const-wide v5, -0x3fff9db22d0e5604L    # -2.048

    mul-double/2addr v5, v13

    mul-double/2addr v5, v13

    mul-double v5, v5, v25

    add-double/2addr v0, v5

    const-wide v5, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double/2addr v5, v13

    add-double/2addr v0, v5

    const-wide v5, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v19, v0, v5

    :try_start_1f
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_1c

    iget-object v1, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    move-wide v2, v11

    move-wide/from16 v4, v17

    move-wide/from16 v6, v19

    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_1f
    .catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_1f} :catch_a
    .catchall {:try_start_1f .. :try_end_1f} :catchall_9

    :cond_1c
    :goto_1b
    goto :goto_1c

    :catchall_9
    move-exception v0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    goto/16 :goto_23

    :catch_a
    move-exception v0

    :try_start_20
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_20
    .catchall {:try_start_20 .. :try_end_20} :catchall_9

    goto :goto_1b

    :goto_1c
    move-wide/from16 v1, v17

    move-wide/from16 v3, v19

    goto/16 :goto_22

    :cond_1d
    const/16 v41, 0x0

    :goto_1d
    move/from16 v6, v41

    const/4 v5, 0x5

    if-ge v6, v5, :cond_1a

    sub-double v15, v15, v21

    int-to-double v1, v9

    mul-double v23, v30, v15

    sub-double v13, v1, v23

    const-wide v0, 0x3ff072b020c49ba6L    # 1.028

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double v0, v0, v19

    const-wide v23, -0x400522d0e5604189L    # -1.679

    mul-double v23, v23, v13

    mul-double v23, v23, v13

    mul-double v23, v23, v25

    add-double v0, v0, v23

    const-wide v23, 0x3f66feb4a66559f7L    # 0.002807

    mul-double v23, v23, v13

    add-double v0, v0, v23

    const-wide v23, 0x3fecb6ae7d566cf4L    # 0.8973

    add-double v17, v0, v23

    const-wide v0, -0x4009b22d0e560419L    # -1.394

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double/2addr v0, v13

    mul-double v0, v0, v19

    const-wide v23, -0x3fff9db22d0e5604L    # -2.048

    mul-double v23, v23, v13

    mul-double v23, v23, v13

    mul-double v23, v23, v25

    add-double v0, v0, v23

    const-wide v23, 0x3f7a5fc7e6b3fea0L    # 0.006439

    mul-double v23, v23, v13

    add-double v0, v0, v23

    const-wide v23, 0x3fe81a36e2eb1c43L    # 0.7532

    add-double v23, v0, v23

    :try_start_21
    iget-object v0, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_1e

    iget-object v1, v8, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;
    :try_end_21
    .catch Ljava/lang/NullPointerException; {:try_start_21 .. :try_end_21} :catch_c
    .catchall {:try_start_21 .. :try_end_21} :catchall_a

    move/from16 v27, v5

    const-wide/16 v4, 0xf

    move-wide v2, v11

    move-wide v8, v4

    move-wide/from16 v4, v17

    move/from16 v28, v6

    move-wide/from16 v6, v23

    :try_start_22
    invoke-virtual/range {v1 .. v7}, Lcom/oneplus/display/SDManager;->SetUsrColorBalanceConfig(DDD)V
    :try_end_22
    .catch Ljava/lang/NullPointerException; {:try_start_22 .. :try_end_22} :catch_b
    .catchall {:try_start_22 .. :try_end_22} :catchall_a

    goto :goto_1e

    :catch_b
    move-exception v0

    goto :goto_1f

    :cond_1e
    move/from16 v27, v5

    move/from16 v28, v6

    const-wide/16 v8, 0xf

    :goto_1e
    goto :goto_20

    :catchall_a
    move-exception v0

    move-wide/from16 v1, v17

    move-wide/from16 v3, v23

    goto :goto_23

    :catch_c
    move-exception v0

    move/from16 v27, v5

    move/from16 v28, v6

    const-wide/16 v8, 0xf

    :goto_1f
    :try_start_23
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "mSDM.SetUsrColorBalanceConfig error!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_23
    .catchall {:try_start_23 .. :try_end_23} :catchall_a

    :goto_20
    :try_start_24
    invoke-static {v8, v9}, Ljava/lang/Thread;->sleep(J)V
    :try_end_24
    .catch Ljava/lang/InterruptedException; {:try_start_24 .. :try_end_24} :catch_d
    .catchall {:try_start_24 .. :try_end_24} :catchall_a

    goto :goto_21

    :catch_d
    move-exception v0

    move-object v1, v0

    :try_start_25
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_25
    .catchall {:try_start_25 .. :try_end_25} :catchall_a

    :goto_21
    add-int/lit8 v41, v28, 0x1

    move-wide v1, v8

    move-wide/from16 v3, v23

    move-object/from16 v8, p0

    move/from16 v9, p1

    goto/16 :goto_1d

    :cond_1f
    :goto_22
    :try_start_26
    monitor-exit v29

    return-void

    :catchall_b
    move-exception v0

    move-wide/from16 v17, v1

    move-object/from16 v29, v5

    move-wide/from16 v30, v6

    :goto_23
    monitor-exit v29
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_c

    throw v0

    :catchall_c
    move-exception v0

    goto :goto_23
.end method

.method private opSetActiveModesId(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "opSetActiveModesId: mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    :cond_1
    return-void
.end method

.method private opSetColorBalance(II)V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/display/ColorBalanceService;->oneplusSetColorBalance(II)V

    :cond_1
    return-void
.end method

.method private opSetDefaultModesId(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/display/SDManager;->SetDefaultModesId(I)V

    :cond_0
    return-void
.end method

.method private processEnvironmentChange()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x8

    iput v2, v0, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_0

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "NightMode mCurrentNightColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v2, 0x9

    iput v2, v0, Landroid/os/Message;->what:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v2

    iput v2, v0, Landroid/os/Message;->arg1:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v2, v0, Landroid/os/Message;->arg2:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " target:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    if-eq v2, v3, :cond_2

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "ReadingMode mCurrentReadingColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " delay:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    goto/16 :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    const/16 v1, 0x14

    iput v1, v0, Landroid/os/Message;->what:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, v0, Landroid/os/Message;->arg2:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AutoMode mCurrenAdaptionColorbalance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " target:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v2, v0, Landroid/os/Message;->arg1:I

    if-eq v1, v2, :cond_4

    const/16 v1, 0x12c

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v3, v0, Landroid/os/Message;->arg1:I

    sub-int/2addr v2, v3

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    div-int/2addr v1, v2

    int-to-long v1, v1

    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    const-string v4, "delay"

    invoke-virtual {v3, v4, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v0, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutoMode mCurrentAdaptionColorbalance:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " target:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Landroid/os/Message;->arg1:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private processEnvironmentColorChangeAtAdaptionMode(Landroid/os/Message;)V
    .locals 10

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "processEnvironmentColorChangeAtAdaptionMode:++++mIsAutoModeActivated = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "screen_color_mode_settings_value"

    const/4 v6, 0x1

    const/4 v7, -0x2

    invoke-static {v4, v5, v6, v7}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-nez v5, :cond_0

    if-ne v4, v6, :cond_0

    const/16 v5, 0x2b

    const/4 v7, 0x0

    invoke-direct {p0, v5, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    new-array v5, v6, [I

    const/16 v8, 0x80

    aput v8, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-nez v5, :cond_0

    invoke-direct {p0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_0
    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v7, :cond_3

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_3

    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode mCurrentAdaptionColorbalance: == "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-le v7, v3, :cond_1

    const/4 v6, -0x1

    nop

    :cond_1
    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    add-int/2addr v7, v6

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v7, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    if-eq v7, v3, :cond_2

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v7, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->what:I

    iput v8, v7, Landroid/os/Message;->what:I

    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    iget v9, p1, Landroid/os/Message;->arg1:I

    iput v9, v7, Landroid/os/Message;->arg1:I

    iget v9, p1, Landroid/os/Message;->arg2:I

    iput v9, v7, Landroid/os/Message;->arg2:I

    const-string v9, "delay"

    invoke-virtual {v8, v9, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v7, v8}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v9, v7, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    const-string v7, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "AdaptionMode shading done,mCurrentaAdaptionColorbalance:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " target:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_0
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v6
.end method

.method private processEnvironmentColorChangeAtNightMode(Landroid/os/Message;)V
    .locals 9

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_nightmode_progress_status"

    sget v7, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    const/4 v8, -0x2

    invoke-static {v5, v6, v7, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v4, v5

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v5

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    if-ne v4, v5, :cond_2

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    if-le v5, v3, :cond_0

    const/4 v5, -0x1

    goto :goto_0

    :cond_0
    const/4 v5, 0x1

    :goto_0
    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    add-int/2addr v6, v5

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v6, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget v7, p1, Landroid/os/Message;->arg1:I

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v6, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    iput v7, v6, Landroid/os/Message;->what:I

    new-instance v7, Landroid/os/Bundle;

    invoke-direct {v7}, Landroid/os/Bundle;-><init>()V

    iget v8, p1, Landroid/os/Message;->arg1:I

    iput v8, v6, Landroid/os/Message;->arg1:I

    iget v8, p1, Landroid/os/Message;->arg2:I

    iput v8, v6, Landroid/os/Message;->arg2:I

    const-string v8, "delay"

    invoke-virtual {v7, v8, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v6, v7}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v8, v6, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const-string v6, "ColorBalanceService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shading done,mCurrentNightColorbalance:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " target:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    return-void
.end method

.method private processEnvironmentColorChangeAtReadingMode(Landroid/os/Message;)V
    .locals 8

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "delay"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    iget v2, p1, Landroid/os/Message;->arg2:I

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v2, v4, :cond_2

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v4, v3, :cond_0

    const/4 v4, -0x1

    goto :goto_0

    :cond_0
    const/4 v4, 0x1

    :goto_0
    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v5, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v5, v3, :cond_1

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v5, :cond_2

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v5

    iget v6, p1, Landroid/os/Message;->what:I

    iput v6, v5, Landroid/os/Message;->what:I

    new-instance v6, Landroid/os/Bundle;

    invoke-direct {v6}, Landroid/os/Bundle;-><init>()V

    iget v7, p1, Landroid/os/Message;->arg1:I

    iput v7, v5, Landroid/os/Message;->arg1:I

    iget v7, p1, Landroid/os/Message;->arg2:I

    iput v7, v5, Landroid/os/Message;->arg2:I

    const-string v7, "delay"

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    invoke-virtual {v5, v6}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v7, v5, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_1
    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "shading done,mCurrentReadingColorbalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " target:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private processScreenOn(Z)V
    .locals 9

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "processScreenOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_f

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "keyguard"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/KeyguardManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    if-nez v3, :cond_1

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "mKeyguardManager is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mKeyguardManager:Landroid/app/KeyguardManager;

    invoke-virtual {v3}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v3

    move v2, v3

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "isKeyguard =  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string v4, "android.hardware.fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v4, "fingerprint"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    const/4 v4, -0x1

    const/4 v5, 0x1

    if-eqz v3, :cond_4

    new-array v3, v5, [I

    const/16 v6, 0x48

    aput v6, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFpm:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const/16 v6, 0x8

    if-eq v3, v6, :cond_3

    sget v3, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    if-eq v3, v4, :cond_3

    if-eqz v2, :cond_3

    move v3, v5

    goto :goto_1

    :cond_3
    move v3, v1

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    goto :goto_2

    :cond_4
    const-string v3, "ColorBalanceService"

    const-string/jumbo v6, "mFpm == null"

    invoke-static {v3, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    sput v4, Lcom/android/server/power/PowerManagerService;->mGo_to_sleep_Reason:I

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "has_fingerprint = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    const/16 v4, 0x80

    const/4 v6, 0x2

    if-nez v3, :cond_5

    const-string v3, "ColorDisable"

    invoke-static {v3}, Lcom/oneplus/oimc/OIMCManager;->getRemoteFuncStatus(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_7

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    const-string v3, "FingerPrintMode"

    invoke-static {v3, v6, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    goto :goto_3

    :cond_5
    iget-boolean v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isScreenOnByFingerprint:Z

    if-nez v3, :cond_6

    const-string v3, "FingerPrintMode"

    invoke-static {v3, v5, v1}, Lcom/oneplus/oimc/OIMCManager;->notifyModeChange(Ljava/lang/String;II)V

    const-string v3, "ColorBalanceService"

    const-string v7, "Not power on by fingerprint, notify enter fingerprintmode"

    invoke-static {v3, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isScreenOnByFingerprint:Z

    new-array v3, v5, [I

    aput v4, v3, v1

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_7

    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_7
    :goto_3
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_8

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    :cond_8
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_9

    goto :goto_4

    :cond_9
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_d

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v7, "screen_color_mode_settings_value"

    const/4 v8, -0x2

    invoke-static {v3, v7, v5, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    new-array v5, v5, [I

    aput v4, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v4

    if-eqz v4, :cond_a

    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-nez v1, :cond_d

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_5

    :cond_a
    if-eq v3, v6, :cond_b

    const/4 v4, 0x4

    if-ne v3, v4, :cond_d

    :cond_b
    iget-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->has_fingerprint:Z

    if-nez v4, :cond_d

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_5

    :cond_c
    :goto_4
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :cond_d
    :goto_5
    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    const v3, 0x1fa2639

    if-ne v1, v3, :cond_e

    const/16 v1, 0x11

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    :cond_e
    goto :goto_6

    :cond_f
    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :goto_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private processSetColorBalance(I)V
    .locals 4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MSG_SET_COLORBALANCE:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " --> "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mStartSetCount:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->shading(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    :cond_0
    return-void
.end method

.method private reSetColorCoreNode()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_color_mode_advanced_settings_value"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_1
    if-nez v1, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_2
    if-ne v1, v3, :cond_3

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    :cond_4
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private readingModeSwitch(ZII)V
    .locals 21

    move-object/from16 v1, p0

    move/from16 v2, p2

    move/from16 v3, p3

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v4, "oem_screen_better_value"

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v5, v5, 0x64

    const/4 v6, -0x2

    invoke-static {v0, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    rsub-int/lit8 v4, v0, 0x64

    iget-object v5, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    :try_start_0
    sget-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const v7, 0x9c40

    const/16 v8, 0x8

    const/4 v9, 0x6

    const/high16 v10, 0x3f800000    # 1.0f

    const/16 v11, 0x4e20

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-nez v0, :cond_3

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_56

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_0
    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto/16 :goto_15

    :cond_1
    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v8, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string v6, "Screen off,readingModeSwitch OFF done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_3
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    if-ne v0, v2, :cond_56

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-wide/16 v16, 0x0

    const/16 v18, -0x1

    const/16 v19, 0x80

    const/16 v8, 0xb

    if-eqz v0, :cond_27

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v15, 0x1f4

    if-ne v0, v15, :cond_4

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON, mReadingModeClosingStage 500,to be on done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v5

    return-void

    :cond_4
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eq v0, v9, :cond_56

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_26

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-nez v0, :cond_8

    invoke-direct {v1, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v7, 0x5

    if-ne v0, v7, :cond_5

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iput-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_5
    if-eq v0, v12, :cond_6

    const/16 v6, 0x3a98

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-virtual {v1, v8, v2, v14, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch ON:stage 0 --> 15000,colorBalance default"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_6
    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "oem_screen_better_value"

    sget v10, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v10, v10, 0x64

    invoke-static {v7, v9, v10, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v6, v6, 0x64

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v6, 0x2710

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    new-array v6, v13, [I

    aput v19, v6, v14

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_7

    const/16 v6, 0x3a98

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch ON:stage 0 --> 15000,status 3,to set colorbalance directly"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch ON:stage 0 --> 10000,status 3,to be default"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v6, 0x5

    invoke-virtual {v1, v8, v2, v14, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v15, 0x2710

    if-ne v0, v15, :cond_b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v6, 0x2b

    if-ne v0, v6, :cond_9

    const/16 v0, 0x3a98

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-virtual {v1, v8, v2, v14, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:,10000 --> 15000, default now"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_9
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v7, 0x2b

    if-le v6, v7, :cond_a

    move/from16 v13, v18

    nop

    :cond_a
    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/4 v0, 0x7

    invoke-virtual {v1, v8, v2, v14, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v15, 0x3a98

    if-ne v0, v15, :cond_1c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v7, 0x3a83126f    # 0.001f

    cmpg-float v0, v0, v7

    if-gez v0, :cond_15

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-array v6, v13, [I

    aput v19, v6, v14

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_d

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    if-ne v0, v12, :cond_c

    const/16 v6, 0xc

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    :cond_c
    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch ON:,15000 --> 12, B & W now!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    new-array v6, v13, [I

    aput v19, v6, v14

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_f

    if-eq v0, v12, :cond_e

    const/16 v6, 0x2b

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    :cond_e
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    :goto_1
    goto :goto_2

    :cond_f
    const/16 v6, 0x2b

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_10

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/16 v7, 0x1f40

    if-ge v6, v7, :cond_10

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v6

    goto :goto_1

    :cond_10
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v7, 0x7d0

    if-le v6, v7, :cond_11

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const/16 v7, 0x1f40

    if-ge v6, v7, :cond_11

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-direct {v1, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->getBalanceByTemprature(I)I

    move-result v6

    goto :goto_1

    :cond_11
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    :goto_2
    new-array v7, v13, [I

    aput v19, v7, v14

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_13

    const/16 v7, 0x3e

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    sub-int/2addr v9, v6

    invoke-static {v9}, Ljava/lang/Math;->abs(I)I

    move-result v9

    if-lt v7, v9, :cond_12

    iput v13, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceChangeStep:I

    goto :goto_3

    :cond_12
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    sub-int/2addr v7, v6

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    div-int/lit8 v7, v7, 0x3e

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceChangeStep:I

    :goto_3
    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mColorBalanceChangeStep = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceChangeStep:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_13
    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "mStableColor:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mCurrentSrgbSensorAverageColor:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-array v7, v13, [I

    aput v19, v7, v14

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_14

    const/16 v7, 0x10

    invoke-virtual {v1, v8, v2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto :goto_4

    :cond_14
    const/16 v7, 0x96

    invoke-virtual {v1, v8, v2, v6, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v7, "ColorBalanceService"

    const-string/jumbo v8, "readingModeSwitch ON:,15000 --> 20000, B & W now!"

    invoke-static {v7, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    goto/16 :goto_15

    :cond_15
    new-array v0, v13, [I

    aput v19, v0, v14

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_16

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->accelerateInterpolator(F)F

    move-result v0

    const v6, 0x3ca3d70a    # 0.02f

    goto :goto_5

    :cond_16
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    :goto_5
    float-to-double v10, v0

    const-wide v12, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v7, v10, v12

    if-lez v7, :cond_17

    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch ON:value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x4

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_6

    :cond_17
    const-wide v10, 0x3fe6666666666666L    # 0.7

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v7

    sub-double/2addr v10, v12

    cmpl-double v7, v10, v16

    if-lez v7, :cond_18

    const-wide v10, 0x3fe6666666666666L    # 0.7

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v7

    sub-double/2addr v10, v12

    float-to-double v12, v6

    cmpg-double v7, v10, v12

    if-gtz v7, :cond_18

    const-string v7, "ColorBalanceService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "readingModeSwitch ON:value:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v7, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v7, 0x5

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_6

    :cond_18
    const-wide v9, 0x3fd999999999999aL    # 0.4

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v7

    sub-double/2addr v9, v11

    cmpl-double v7, v9, v16

    if-lez v7, :cond_19

    const-wide v9, 0x3fd999999999999aL    # 0.4

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v7

    sub-double/2addr v9, v11

    float-to-double v11, v6

    cmpg-double v7, v9, v11

    if-gtz v7, :cond_19

    const/4 v7, 0x7

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch ON:value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    :cond_19
    const-wide v9, 0x3fc999999999999aL    # 0.2

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v7

    sub-double/2addr v9, v11

    cmpl-double v7, v9, v16

    if-lez v7, :cond_1a

    const-wide v9, 0x3fc999999999999aL    # 0.2

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v7

    sub-double/2addr v9, v11

    float-to-double v11, v6

    cmpg-double v7, v9, v11

    if-gtz v7, :cond_1a

    const/16 v7, 0x8

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v7, 0x9

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch ON:value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1a
    :goto_6
    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    sub-float/2addr v7, v6

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v9, 0x3cf5c28f    # 0.03f

    cmpg-float v7, v7, v9

    if-gez v7, :cond_1b

    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    :cond_1b
    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v7, 0x10

    invoke-virtual {v1, v8, v2, v14, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_1c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v11, :cond_20

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_1d

    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/4 v0, 0x0

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iput v3, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v1, v8, v2, v3, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch ON:,2000 --> 30000  reading colorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_1d
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_1e

    goto :goto_7

    :cond_1e
    move/from16 v18, v13

    :goto_7
    add-int v0, v0, v18

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    new-array v0, v13, [I

    aput v19, v0, v14

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1f

    const/16 v0, 0x10

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorBalanceChangeStep:I

    div-int/2addr v0, v6

    invoke-virtual {v1, v8, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_1f
    const/4 v0, 0x7

    invoke-virtual {v1, v8, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_20
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0xc

    if-ne v0, v6, :cond_23

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    add-int/lit8 v6, v6, 0x23

    if-ne v0, v6, :cond_21

    const/16 v0, 0x7530

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON:stage 12 --> 30000,status 3,colorbalance set finished, go to finish"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    :cond_21
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    add-int/lit8 v7, v7, 0x23

    if-le v6, v7, :cond_22

    move/from16 v13, v18

    nop

    :cond_22
    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    :goto_8
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v0, 0x1e

    invoke-virtual {v1, v8, v2, v14, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_23
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v6, 0x7530

    if-ne v0, v6, :cond_56

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v0

    const-wide v15, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v11, v15

    if-lez v0, :cond_24

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON Done(30000 -> 40000)"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_24
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v9, 0x3fefff2e48e8a71eL    # 0.9999

    cmpl-double v0, v6, v9

    if-lez v0, :cond_25

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    :cond_25
    const/16 v0, 0x10

    invoke-virtual {v1, v8, v2, v14, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_26
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setProp(Ljava/lang/Boolean;)I

    invoke-direct {v1, v12}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v0, 0x1a90

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch ON done!"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    invoke-direct {v1, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto/16 :goto_15

    :cond_27
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v15, 0x8

    if-eq v0, v15, :cond_56

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    if-eqz v0, :cond_56

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-eqz v0, :cond_4b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v15, 0x1f4

    if-ne v0, v15, :cond_28

    goto/16 :goto_12

    :cond_28
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v15, 0x3e8

    if-ne v0, v15, :cond_33

    const/16 v0, -0x2710

    if-ne v3, v0, :cond_2c

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-ne v0, v4, :cond_29

    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance to custom:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8, v2, v14, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_29
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-eq v0, v4, :cond_2b

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    if-le v6, v4, :cond_2a

    move/from16 v13, v18

    nop

    :cond_2a
    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    :cond_2b
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const/16 v0, -0x2710

    const/16 v6, 0x14

    invoke-virtual {v1, v8, v2, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_2c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v0, v3, :cond_2d

    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    const/16 v0, 0x9c4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF:stage 1000 --> 2500,colorBalance default:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8, v2, v14, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_2d
    new-array v0, v13, [I

    aput v19, v0, v14

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-nez v0, :cond_2f

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_2e

    move/from16 v6, v18

    goto :goto_9

    :cond_2e
    move v6, v13

    :goto_9
    add-int/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    :cond_2f
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-eq v0, v3, :cond_31

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v6, v3, :cond_30

    move/from16 v13, v18

    nop

    :cond_30
    add-int/2addr v0, v13

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    :cond_31
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    if-ne v0, v7, :cond_32

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v0, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    :cond_32
    const/16 v0, 0x14

    invoke-virtual {v1, v8, v2, v3, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_33
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v7, 0x9c4

    if-ne v0, v7, :cond_3a

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v6, v0

    const-wide v11, 0x3feff7ced916872bL    # 0.999

    cmpl-double v0, v6, v11

    if-lez v0, :cond_34

    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/16 v0, 0x1388

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v0, "ColorBalanceService"

    const-string/jumbo v6, "readingModeSwitch OFF:stage 2500 --> 5000,be Colors"

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1, v8, v2, v14, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_34
    new-array v0, v13, [I

    aput v19, v0, v14

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_35

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->decelerateInterpolator(F)F

    move-result v0

    const v6, 0x3ca3d70a    # 0.02f

    goto :goto_a

    :cond_35
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3c4ccccd    # 0.0125f

    :goto_a
    move v7, v0

    const-wide v10, 0x3fa999999999999aL    # 0.05

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    cmpl-double v0, v10, v16

    if-lez v0, :cond_36

    const-wide v10, 0x3fa999999999999aL    # 0.05

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    float-to-double v12, v6

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_36

    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF:stage 2500,value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x9

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_b

    :cond_36
    const-wide v10, 0x3fc999999999999aL    # 0.2

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    cmpl-double v0, v10, v16

    if-lez v0, :cond_37

    const-wide v10, 0x3fc999999999999aL    # 0.2

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    float-to-double v12, v6

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_37

    const/16 v0, 0x8

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x7

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF:stage 2500,value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_37
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    cmpl-double v0, v10, v16

    if-lez v0, :cond_38

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v12, v0

    sub-double/2addr v10, v12

    float-to-double v12, v6

    cmpg-double v0, v10, v12

    if-gtz v0, :cond_38

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x5

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF:stage 2500,value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b

    :cond_38
    const-wide v9, 0x3fe6666666666666L    # 0.7

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v0

    sub-double/2addr v9, v11

    cmpl-double v0, v9, v16

    if-lez v0, :cond_39

    const-wide v9, 0x3fe6666666666666L    # 0.7

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v11, v0

    sub-double/2addr v9, v11

    float-to-double v11, v6

    cmpg-double v0, v9, v11

    if-gtz v0, :cond_39

    const/4 v0, 0x4

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/4 v0, 0x2

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF:stage 2500,value:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_39
    :goto_b
    const-wide/16 v9, 0x5

    :try_start_1
    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_c

    :catch_0
    move-exception v0

    move-object v9, v0

    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_c
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    add-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0xf

    invoke-virtual {v1, v8, v2, v14, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_3a
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v7, 0x1388

    if-ne v0, v7, :cond_43

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "screen_color_mode_advanced_settings_value"

    invoke-static {v7, v9, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    new-array v7, v13, [I

    aput v19, v7, v14

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v7

    if-eqz v7, :cond_3f

    if-eq v0, v12, :cond_3b

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_f

    :cond_3b
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const/16 v7, 0x2b

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-nez v6, :cond_3c

    const/16 v7, 0x15

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_d

    :cond_3c
    if-ne v6, v13, :cond_3d

    const/16 v7, 0xa

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_d

    :cond_3d
    const/4 v7, 0x2

    if-ne v6, v7, :cond_3e

    const/16 v7, 0x13

    invoke-direct {v1, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_3e
    :goto_d
    const/16 v7, 0x2710

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v7, "ColorBalanceService"

    const-string/jumbo v9, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_3f
    if-ne v0, v13, :cond_40

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    const-string v7, "ColorBalanceService"

    const-string/jumbo v9, "readingModeSwitch OFF:stage:5000 --> 20000,reverstatus"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_40
    const/4 v7, 0x2

    if-eq v0, v7, :cond_42

    const/4 v7, 0x4

    if-ne v0, v7, :cond_41

    goto :goto_e

    :cond_41
    iput v10, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v7, 0x2b

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const/16 v7, 0x2710

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v7, "ColorBalanceService"

    const-string/jumbo v9, "readingModeSwitch OFF:stage:5000 --> 10000,status 3"

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_f

    :cond_42
    :goto_e
    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v7, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF: srgb stage:5000 --> 20000,status:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f
    invoke-virtual {v1, v8, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_15

    :cond_43
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v7, 0x2710

    if-ne v0, v7, :cond_48

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v7, 0x2b

    if-ne v0, v12, :cond_44

    iget-object v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "oem_screen_better_value"

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    invoke-static {v9, v10, v12, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    rsub-int/lit8 v7, v6, 0x64

    :cond_44
    new-array v6, v13, [I

    aput v19, v6, v14

    invoke-static {v6}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_45

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    goto :goto_10

    :cond_45
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-ne v6, v7, :cond_46

    iput v11, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const-string v6, "ColorBalanceService"

    const-string/jumbo v9, "readingModeSwitch OFF:stage:10000 -> 20000,status 3,be customer colorbalance"

    invoke-static {v6, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_10

    :cond_46
    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    if-le v9, v7, :cond_47

    move/from16 v13, v18

    nop

    :cond_47
    add-int/2addr v6, v13

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {v1, v6, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    :goto_10
    const/16 v6, 0xa

    invoke-virtual {v1, v8, v2, v14, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    goto/16 :goto_15

    :cond_48
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    if-ne v0, v11, :cond_56

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v12, :cond_49

    iget v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    :cond_49
    const/4 v6, 0x5

    if-eq v0, v6, :cond_4a

    invoke-direct {v1, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    goto :goto_11

    :cond_4a
    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v13}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    iput-object v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {v1, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    :goto_11
    const/16 v6, 0x8

    iput v6, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    const-string v6, "ColorBalanceService"

    const-string/jumbo v7, "readingModeSwitch OFF done(-->2000)!"

    invoke-static {v6, v7}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_15

    :cond_4b
    :goto_12
    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    float-to-double v9, v0

    const-wide v15, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpg-double v0, v9, v15

    if-gez v0, :cond_55

    iget-object v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v0, v7, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string/jumbo v9, "screen_color_mode_advanced_settings_value"

    invoke-static {v7, v9, v13, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    const/4 v7, 0x0

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const/16 v7, 0x3e8

    iput v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/4 v7, 0x0

    new-array v9, v13, [I

    aput v19, v9, v14

    invoke-static {v9}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v9

    if-eqz v9, :cond_52

    if-ne v0, v13, :cond_4c

    const/16 v9, 0x12

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_13

    :cond_4c
    const/16 v9, 0xa

    if-ne v0, v9, :cond_4d

    const/16 v9, 0x14

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_13

    :cond_4d
    if-ne v0, v12, :cond_50

    if-nez v6, :cond_4e

    const/16 v9, 0x15

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_13

    :cond_4e
    if-ne v6, v13, :cond_4f

    const/16 v9, 0xa

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_13

    :cond_4f
    const/4 v9, 0x2

    if-ne v6, v9, :cond_50

    const/16 v9, 0x13

    invoke-direct {v1, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_50
    :goto_13
    if-ne v0, v12, :cond_51

    const/16 v7, -0x2710

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    add-int/lit8 v9, v9, 0x23

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    goto :goto_14

    :cond_51
    const/16 v7, 0x2b

    iget v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v9, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    goto :goto_14

    :cond_52
    invoke-direct {v1, v13}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    const/16 v7, 0x2b

    const/4 v9, 0x2

    if-eq v0, v9, :cond_53

    const/4 v9, 0x4

    if-ne v0, v9, :cond_54

    :cond_53
    const/16 v7, 0x2d

    :cond_54
    :goto_14
    invoke-virtual {v1, v8, v2, v7, v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "readingModeSwitch OFF:stage 0 --> 1000,Matrix be B & W  target: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_15

    :cond_55
    const/16 v0, 0x1f4

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    const v6, 0x3ccccccd    # 0.025f

    sub-float/2addr v0, v6

    iput v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget v0, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    const/16 v0, 0x8

    invoke-virtual {v1, v8, v2, v14, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValueDelayed(IIII)V

    const-string v0, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "readingModeSwitch OFF: mReadingModeClosingStage:-->500,mFactor:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v1, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_56
    :goto_15
    monitor-exit v5

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0
.end method

.method private revertStatus()V
    .locals 15

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "screen_color_mode_advanced_settings_value"

    const/4 v5, 0x0

    invoke-static {v1, v4, v5, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v4, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "revertmajor_status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "    revertcustomize_status:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v4, 0xa

    const/16 v6, 0x80

    const/16 v7, 0x2b

    if-eq v0, v4, :cond_8

    const/16 v8, 0x14

    if-eq v0, v8, :cond_6

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_1

    :pswitch_0
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetDefaultModesId(I)V

    goto/16 :goto_1

    :pswitch_1
    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentAdaptionColorbalance:I

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    :cond_0
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoState:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_2
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_1

    :pswitch_3
    new-array v7, v3, [I

    aput v6, v7, v5

    invoke-static {v7}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v6

    if-eqz v6, :cond_3

    if-nez v1, :cond_1

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    const/16 v4, 0x15

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_0

    :cond_1
    if-ne v1, v3, :cond_2

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_2
    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    const/16 v4, 0x13

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_0

    :cond_3
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :cond_4
    :goto_0
    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_screen_better_value"

    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v6, v6, 0x64

    invoke-static {v3, v4, v6, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-direct {p0, v2, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "customer value:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    :pswitch_4
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto/16 :goto_1

    :pswitch_5
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v2, v8}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    new-array v2, v3, [I

    aput v6, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    const/16 v2, 0xb

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->notifyColorBalanceToSurfaceFlinger(DDD)V

    goto/16 :goto_1

    :cond_5
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto/16 :goto_1

    :cond_6
    new-array v2, v3, [I

    aput v6, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    const/16 v2, 0xe

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    goto :goto_1

    :cond_7
    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_1

    :cond_8
    new-array v2, v3, [I

    aput v6, v2, v5

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_9

    const/16 v2, 0x10

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    const-wide/high16 v9, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v13, 0x3ff0000000000000L    # 1.0

    move-object v8, p0

    invoke-direct/range {v8 .. v14}, Lcom/android/server/oneplus/display/ColorBalanceService;->notifyColorBalanceToSurfaceFlinger(DDD)V

    :cond_9
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private sendMsgInternal(I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    return-void
.end method

.method private setAdaptitionColorMode(Z)V
    .locals 3

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "AdaptitionColorMode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setColorMartix(F)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v2, v1, p1

    const v3, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v3

    add-float/2addr v2, p1

    const/4 v4, 0x0

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v2, v3

    const/4 v4, 0x1

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v2, v1, p1

    mul-float/2addr v3, v2

    const/4 v2, 0x2

    aput v3, v0, v2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v3, 0x3

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v3, v4

    const/4 v5, 0x4

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    add-float/2addr v3, p1

    const/4 v5, 0x5

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    const/4 v3, 0x6

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v3, 0x7

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    const v4, 0x3da7ef9e    # 0.082f

    mul-float/2addr v3, v4

    const/16 v5, 0x8

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v3, v4

    const/16 v5, 0x9

    aput v3, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    sub-float v3, v1, p1

    mul-float/2addr v4, v3

    add-float/2addr v4, p1

    const/16 v3, 0xa

    aput v4, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xb

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xc

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xd

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v3, 0xe

    aput v2, v0, v3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v2, 0xf

    aput v1, v0, v2

    return-void
.end method

.method private setColorMartixNight2ReadingBW(FFFFF)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/high16 v1, 0x437f0000    # 255.0f

    div-float v2, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    sub-float v4, v3, p4

    mul-float/2addr v2, v4

    add-float/2addr v2, p4

    const v4, 0x3e9e00d2    # 0.3086f

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    add-float/2addr v2, p5

    const/4 v5, 0x0

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v2, v4

    sub-float v5, v3, p5

    mul-float/2addr v2, v5

    const/4 v5, 0x1

    aput v2, v0, v5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v2, p1, v1

    sub-float v5, v3, p4

    mul-float/2addr v2, v5

    add-float/2addr v2, p4

    mul-float/2addr v4, v2

    sub-float v2, v3, p5

    mul-float/2addr v4, v2

    const/4 v2, 0x2

    aput v4, v0, v2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v2, 0x0

    const/4 v4, 0x3

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3f1c01a3    # 0.6094f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/4 v6, 0x4

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    add-float/2addr v4, p5

    const/4 v6, 0x5

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p2, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v5, v4

    sub-float v4, v3, p5

    mul-float/2addr v5, v4

    const/4 v4, 0x6

    aput v5, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/4 v4, 0x7

    aput v2, v0, v4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v5, v3, p4

    mul-float/2addr v4, v5

    add-float/2addr v4, p4

    const v5, 0x3da7ef9e    # 0.082f

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x8

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v4, p3, v1

    sub-float v6, v3, p4

    mul-float/2addr v4, v6

    add-float/2addr v4, p4

    mul-float/2addr v4, v5

    sub-float v6, v3, p5

    mul-float/2addr v4, v6

    const/16 v6, 0x9

    aput v4, v0, v6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    div-float v1, p3, v1

    sub-float v4, v3, p4

    mul-float/2addr v1, v4

    add-float/2addr v1, p4

    mul-float/2addr v5, v1

    sub-float v1, v3, p5

    mul-float/2addr v5, v1

    add-float/2addr v5, p5

    const/16 v1, 0xa

    aput v5, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xb

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xc

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xd

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xe

    aput v2, v0, v1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    const/16 v1, 0xf

    aput v3, v0, v1

    return-void
.end method

.method private setColorMatrixNight2Reading(F)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer_enabled"

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v1, v2, v3, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v6, 0x1

    invoke-static {v2, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-eq v0, v6, :cond_2

    if-eq v1, v6, :cond_2

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v4, v3, v5}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method private setDTMColorMatrix()V
    .locals 7

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "accessibility_display_daltonizer_enabled"

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_inversion_enabled"

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v2, v3, v1, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v6, 0x1

    invoke-static {v3, v4, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eq v0, v6, :cond_0

    if-eq v2, v6, :cond_0

    if-nez v3, :cond_1

    :cond_0
    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorMatrix:[F

    invoke-virtual {v0, v1, v2}, Lcom/android/server/display/DisplayTransformManager;->setColorMatrix(I[F)V

    :cond_2
    return-void
.end method

.method private setDciP3(Z)V
    .locals 3

    const/4 v0, 0x2

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "DCIP3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDefaultMode(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsSupportReadingMode:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setDefaultMode_P3(Z)V
    .locals 3

    const/16 v0, 0x10

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node display P3,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "default mode node display P3,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNativeCustomP3Mode(Z)V
    .locals 3

    const/16 v0, 0x15

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "NativeCustomP3 Effect color mode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "NativeCustomP3 Effect color mode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNativeCustomSRGBMode(Z)V
    .locals 3

    const/16 v0, 0x14

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "NativeCustomSRGB Effect color mode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "NativeCustomSRGB Effect color mode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNativeLoadingEffectMode(Z)V
    .locals 3

    const/16 v0, 0x13

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "Native Loading Effect color mode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "Native Loading Effect color mode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNightMode(Z)V
    .locals 6

    const/4 v0, 0x3

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_0

    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "night mode node,turn on!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v4, v3, [I

    aput v1, v4, v2

    invoke-static {v4}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v3}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v4, "ColorBalanceService"

    const-string/jumbo v5, "night mode node,turn off!"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-array v3, v3, [I

    aput v1, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setNightModeProp(Ljava/lang/Boolean;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-array v1, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x80

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_0

    if-eq v0, v2, :cond_0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_1

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    :cond_1
    return v0
.end method

.method private setProp(Ljava/lang/Boolean;)I
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    new-array v1, v2, [I

    const/4 v3, 0x0

    const/16 v4, 0x80

    aput v4, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-nez v1, :cond_3

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_2

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_2

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    goto :goto_1

    :cond_2
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    :cond_3
    :goto_1
    return v0
.end method

.method private setSRGB(Z)V
    .locals 3

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1, v0, v0}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setSRGBSensorEnabled(Z)Z
    .locals 6

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x80

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "the SRGB sensor has been removed in project 18821/18827/18831/18857"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSRGBSensorEnabled:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-nez v1, :cond_3

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->SENSOR_TYPE_RGB:I

    invoke-virtual {v3, v4}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v5, 0x5

    invoke-virtual {v3, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR ENABLE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    if-eqz v1, :cond_3

    iput-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorEnabled:Z

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSRGBSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLightSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v2}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    const-string v1, "ColorBalanceService"

    const-string v2, "SRGB & LIGHT SENSOR DISABLE!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_3
    return v2
.end method

.method private setUp()V
    .locals 17

    move-object/from16 v0, p0

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    iget-object v2, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "colorbalanceservice-night-reading-mode"

    const/4 v4, -0x2

    const/4 v5, 0x0

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-nez v3, :cond_0

    new-instance v3, Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getContext()Landroid/content/Context;

    move-result-object v6

    iget v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-direct {v3, v6, v7}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;I)V

    iput-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const-string v3, "ColorBalanceService"

    const-string v6, "ColorDisplayController is NULL"

    invoke-static {v3, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v3, v0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    const-string v3, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setUp: currentUser="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v6, "accessibility_display_inversion_enabled"

    iget v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v6, v5, v7}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    iget-object v6, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "accessibility_display_daltonizer_enabled"

    iget v8, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v6, v7, v5, v8}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v6

    iget-object v7, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "accessibility_display_grayscale_enabled"

    iget v9, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/4 v10, 0x1

    invoke-static {v7, v8, v10, v9}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v7

    if-eq v3, v10, :cond_2

    if-eq v6, v10, :cond_2

    if-nez v7, :cond_1

    goto :goto_0

    :cond_1
    if-nez v3, :cond_3

    if-nez v6, :cond_3

    if-ne v7, v10, :cond_3

    iput-boolean v5, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    goto :goto_1

    :cond_2
    :goto_0
    iput-boolean v10, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    :cond_3
    :goto_1
    iget-object v8, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v8}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    iget-object v9, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v9}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v9

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    const-string v11, "ColorBalanceService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "#0 isReadingModeActivated isReadon = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v13, "isNightModeActivated = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v13, " colorbalance_stop = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v13, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v11}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v11

    const/4 v12, 0x2

    const/16 v13, 0x80

    if-eqz v11, :cond_8

    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v11, :cond_4

    const-string v11, "ColorBalanceService"

    const-string v14, "#1 reading mode had been opened!"

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_2

    :cond_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    const-string v11, "ColorBalanceService"

    const-string v14, "#1 reading mode had been close!"

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    invoke-virtual {v11}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v11

    iput-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootStatus:Ljava/lang/Boolean;

    :cond_5
    new-array v11, v10, [I

    aput v13, v11, v5

    invoke-static {v11}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-nez v11, :cond_9

    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v14, "screen_color_mode_settings_value"

    invoke-static {v11, v14, v10, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    if-ne v11, v12, :cond_6

    invoke-direct {v0, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_3

    :cond_6
    const/4 v14, 0x4

    if-ne v11, v14, :cond_7

    invoke-direct {v0, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_7
    :goto_3
    goto :goto_4

    :cond_8
    sget-object v11, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v11}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const-string v11, "ColorBalanceService"

    const-string v14, "#2 reading mode had been close!"

    invoke-static {v11, v14}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_4
    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v11}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v11

    if-eqz v11, :cond_c

    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v11, :cond_c

    sget v11, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v14, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v14}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    const-string/jumbo v15, "oem_nightmode_progress_status"

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v14, v15, v12, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v12

    sub-int/2addr v11, v12

    sget v12, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v11, v12

    iput v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    new-array v11, v10, [I

    aput v13, v11, v5

    invoke-static {v11}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v11

    if-eqz v11, :cond_a

    iget-object v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "oem_nightmode_brightness_progress"

    invoke-static {v11, v12, v1, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    iput v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    :cond_a
    const-string v1, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "mCurrentColorBalance: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", mCurrentWhiteBrightness: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    const-string v1, "ColorBalanceService"

    const-string v4, "#1 night mode had been opened!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    goto :goto_5

    :cond_b
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    :goto_5
    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v10}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    goto :goto_6

    :cond_c
    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-nez v1, :cond_d

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v1

    if-nez v1, :cond_d

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsg(I)V

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v5}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v1, "ColorBalanceService"

    const-string v4, "#3 night mode have to  closed!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    :goto_6
    new-array v1, v10, [I

    aput v13, v1, v5

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_f

    if-eq v3, v10, :cond_e

    if-ne v6, v10, :cond_f

    :cond_e
    invoke-direct {v0, v10}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_f

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/16 v4, 0xe

    invoke-virtual {v1, v4}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "opSetActiveModesId: mode = 14"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v1

    if-eqz v1, :cond_11

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    if-eq v1, v10, :cond_10

    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_11

    :cond_10
    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->isReadingModeActivated()Z

    move-result v1

    if-nez v1, :cond_11

    const-string v1, "ColorBalanceService"

    const-string v4, "#4 nightMode is activated, autoNightMode is not activated"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingOrNightModeOpendLastSesson:Ljava/lang/Boolean;

    :cond_11
    iget-object v1, v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onAutoModeChanged(I)V

    return-void
.end method

.method private setWideColorMode_NTSC(Z)V
    .locals 3

    const/16 v0, 0x11

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "wide color mode for ntsc,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "wide color mode for ntsc,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private sethalsrgbColorMode(Z)V
    .locals 3

    const/16 v0, 0x12

    if-eqz p1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string v2, "Flexible screen srgb color mode,turn on!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string v1, "ColorBalanceService"

    const-string v2, "Flexible screen srgb color mode,turn off!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method private shading(II)I
    .locals 8

    move v0, p1

    const/4 v1, 0x1

    const-wide/16 v2, 0x8

    const/4 v4, 0x0

    if-le p2, p1, :cond_0

    :goto_0
    if-ge v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    add-int/2addr v0, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_0

    :catch_0
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1

    :cond_0
    :goto_2
    if-le v0, p2, :cond_1

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v5, :cond_1

    sub-int/2addr v0, v1

    invoke-direct {p0, v0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v5, "ColorBalanceService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setColorBalance:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    goto :goto_2

    :catch_1
    move-exception v5

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_1
    return v0
.end method

.method private shadingSeekBar(II)I
    .locals 11

    move v0, p1

    const/4 v1, 0x1

    const-wide/16 v2, 0x64

    const-wide/16 v4, 0x7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-le p2, p1, :cond_2

    :goto_0
    if-gt v0, p2, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_0

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_0

    invoke-direct {p0, v0, v7}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    add-int/2addr v0, v1

    goto :goto_0

    :cond_0
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    :goto_2
    if-gt v0, p2, :cond_1

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_1

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, 0x3

    goto :goto_2

    :cond_1
    :try_start_1
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_3
    goto :goto_7

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_3

    :cond_2
    :goto_4
    if-lt v0, p2, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    if-nez v8, :cond_3

    iget v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-nez v8, :cond_3

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v8, "ColorBalanceService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "SeekBar setColorBalance:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_2
    invoke-static {v4, v5}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_5

    :catch_2
    move-exception v8

    invoke-virtual {v8}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_5
    sub-int/2addr v0, v1

    goto :goto_4

    :cond_3
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_5

    :goto_6
    if-lt v0, p2, :cond_4

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    if-ne v4, v7, :cond_4

    invoke-direct {p0, v0, v6}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    const-string v4, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "SeekBar next,setColorBalance:"

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v0, v0, -0x3

    goto :goto_6

    :cond_4
    :try_start_3
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_7

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_5
    :goto_7
    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mStartSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStartSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mStopSetCount:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStopSetCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method private tearDown()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "tearDown: currentUser="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_1

    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is on,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-eqz v0, :cond_1

    iput-object p2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "night mdoe trigger button is off,Is from user:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private triggerReadingButton(Ljava/lang/Boolean;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "reading_mode_status_manual"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-on"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "reading_mode_status_manual"

    const-string v4, "force-off"

    invoke-static {v1, v3, v4, v2}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public HdrPlayEnd()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isColorBalanceDisableByHdr:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v0}, Lcom/oneplus/oimc/OIMCManager;->removeFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const-string v0, "ColorBalanceService"

    const-string v1, "ColorBalance is enabled after HDR movie play off"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public Night2ReadMode()V
    .locals 4

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Night2ReadMode changing night to reading mode mScreenOn_Quick = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    new-array v0, v0, [I

    const/16 v1, 0x80

    aput v1, v0, v2

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    iput-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->canWhiteBrightnessBeSet:Z

    :cond_1
    :goto_0
    return-void
.end method

.method public NightModeActivated(Z)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "ColorBalanceService"

    const-string v2, "Gray color is on..."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    return-void

    :cond_0
    const/16 v0, 0xa

    const/4 v2, -0x2

    const/16 v3, 0x80

    const/4 v4, 0x1

    if-eqz p1, :cond_5

    new-array v5, v4, [I

    aput v3, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    const/4 v6, 0x2

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "screen_color_mode_settings_value"

    invoke-static {v5, v7, v4, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v6, :cond_1

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    goto :goto_0

    :cond_1
    const/4 v5, 0x4

    if-ne v2, v5, :cond_2

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    :cond_2
    :goto_0
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->reSetColorCoreNode()V

    :goto_1
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    sput-object v2, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    const-string v2, "ColorBalanceService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "NightModeActivated: turn on night mode! mScreenOn_Quick = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_2

    :cond_4
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_2
    new-array v0, v4, [I

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->canWhiteBrightnessBeSet:Z

    goto :goto_3

    :cond_5
    const-string v5, "ColorBalanceService"

    const-string v6, "NightModeActivated: turn off night mode!"

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v5, v4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v2, 0x3

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setColorMartix(F)V

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDTMColorMatrix()V

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    new-array v0, v4, [I

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->canWhiteBrightnessBeSet:Z

    :cond_6
    :goto_3
    return-void
.end method

.method public Read2NightMode()V
    .locals 7

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Read2NightMode changing read to nighting mode mScreenOn_Quick="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOff_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto :goto_0

    :cond_2
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v3, "1"

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    sget v0, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v0, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v0, v2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v0, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_0
    new-array v0, v2, [I

    const/16 v3, 0x80

    aput v3, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    iput-boolean v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->canWhiteBrightnessBeSet:Z

    :cond_3
    return-void
.end method

.method public ReadModeActivated(Z)V
    .locals 6

    const/16 v0, 0xb

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_4

    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivated Turning on reading mode mScreenOn_Quick = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mScreenOn_Quick:Ljava/lang/Boolean;

    invoke-virtual {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->onResetStatus(I)V

    goto/16 :goto_1

    :cond_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    sput-object v3, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/4 v3, 0x5

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_daltonizer_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_2

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_2
    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    :cond_3
    :goto_0
    return-void

    :cond_4
    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onReadingModeActivated Turning off reading mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootColorStatus:Ljava/lang/Boolean;

    :cond_5
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/4 v3, 0x7

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v3, 0x4

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_grayscale_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_daltonizer_enabled"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    if-ne v2, v1, :cond_6

    goto :goto_2

    :cond_6
    const-string/jumbo v1, "persist.vendor.color.matrix"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :goto_1
    return-void

    :cond_7
    :goto_2
    return-void
.end method

.method public getAutoTime()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public hdrPlayStart()V
    .locals 4

    const/4 v0, -0x1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    invoke-virtual {v1}, Lcom/oneplus/display/SDManager;->GetActiveModesId()I

    move-result v0

    :cond_0
    const/16 v1, 0xc

    if-eq v0, v1, :cond_1

    const/16 v1, 0x11

    if-ne v0, v1, :cond_2

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->isColorBalanceDisableByHdr:Z

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-static {v1}, Lcom/oneplus/oimc/OIMCManager;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mCurrentColorMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "HDR movie is playing, colorbalance is disable"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method public onActivated(Z)V
    .locals 0

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStop()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$CustomAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    new-instance v0, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/display/ColorBalanceService$TwilightAutoMode;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onStart()V

    :cond_3
    return-void
.end method

.method public onBootPhase(I)V
    .locals 2

    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v0, 0x258

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsScreenOn:Ljava/lang/Boolean;

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    if-nez v0, :cond_1

    const-class v0, Lcom/android/server/display/DisplayTransformManager;

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->getLocalService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/DisplayTransformManager;

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->dtm:Lcom/android/server/display/DisplayTransformManager;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootCompleted:Z

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mUserSetupObserver:Landroid/database/ContentObserver;

    if-nez v0, :cond_2

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "onBootPhase Call the function setUp "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setUp()V

    :cond_2
    new-instance v0, Lcom/oneplus/display/SDManager;

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    :cond_3
    return-void
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomEndTimeChanged: endTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onCustomStartTimeChanged: startTime="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    :cond_0
    return-void
.end method

.method public onDCEnable(Z)V
    .locals 3

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DC brightness:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v0, 0x16

    if-eqz p1, :cond_0

    const-string/jumbo v1, "persist.vendor.dc.enable"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "persist.vendor.dc.enable"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onDisplayGrayscaleChange(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->mIsGrayScaleDisableByFingerPrint:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mInversionColorMatrixIsSet:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplaygrayscaleChange activated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsReadingModeActivated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mIsReadingModeActivated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGraySsaleColorMatrixIsSet:Z

    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v4, -0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    if-ne v1, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v5, "oem_screen_better_value"

    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v6, v6, 0x64

    invoke-static {v3, v5, v6, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    rsub-int/lit8 v2, v3, 0x64

    invoke-direct {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    :cond_3
    :goto_0
    const-wide/16 v0, 0x20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const v1, 0x9c40

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v1, 0x4e20

    if-ne v0, v1, :cond_8

    :cond_5
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGraySsaleColorMatrixIsSet:Z

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mInversionColorMatrixIsSet:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "opSetActiveModesId: mode = 14"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public onDisplayInversionChange(Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/fingerprint/FingerprintService;->mIsColorCalibrationDisableByFingerPrint:Z

    const/4 v1, 0x1

    if-eq v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGraySsaleColorMatrixIsSet:Z

    if-eqz v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    const-string v0, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onDisplayInversionChange activated = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mIsReadingModeActivated="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mIsReadingModeActivated"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_6

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mInversionColorMatrixIsSet:Z

    const-string/jumbo v2, "persist.vendor.color.matrix"

    const-string v3, "2"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v3, 0x3

    if-eqz v2, :cond_1

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v4, -0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    invoke-direct {p0, v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2, v4}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v5, "screen_color_mode_settings_value"

    invoke-static {v2, v5, v1, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    if-ne v1, v3, :cond_3

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_screen_better_value"

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->CUSTOM_DEFAULT_COLORBALANCE:I

    rsub-int/lit8 v5, v5, 0x64

    invoke-static {v2, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    rsub-int/lit8 v2, v2, 0x64

    invoke-direct {p0, v2, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentCustomColorBalance:I

    :cond_3
    :goto_0
    const-wide/16 v0, 0x20

    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    :goto_1
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const v1, 0x9c40

    if-eq v0, v1, :cond_5

    :cond_4
    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_8

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v1, 0x4e20

    if-ne v0, v1, :cond_8

    :cond_5
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    iput-boolean v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mInversionColorMatrixIsSet:Z

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_7

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGraySsaleColorMatrixIsSet:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSDM:Lcom/oneplus/display/SDManager;

    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Lcom/oneplus/display/SDManager;->SetActiveModesId(I)V

    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "opSetActiveModesId: mode = 14"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    const-string/jumbo v0, "persist.vendor.color.matrix"

    const-string v1, "2"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_2
    return-void

    :cond_9
    :goto_3
    return-void
.end method

.method public onModeSettingChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_color_mode_settings_value"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v1, "persist.sys.color.adaptive"

    const-string v3, "false"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    const-string/jumbo v1, "persist.sys.color.adaptive"

    const-string/jumbo v3, "true"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    return-void
.end method

.method public onNightModeActivated(Z)V
    .locals 10

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onNightModeActivated:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onNightModeActivated ignore being invoked "

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeSettingFromeUser:Ljava/lang/Boolean;

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    const/4 v1, -0x2

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3, v4, v5, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated: reading mode disable App!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, " current-status:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_c

    :cond_3
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onNightModeActivated:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightDisplayMoede:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_4

    const-string v5, " Turning on night display"

    goto :goto_1

    :cond_4
    const-string v5, " Turning off night display"

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/4 v3, 0x0

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoMode:Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;

    invoke-virtual {v4, p1}, Lcom/android/server/oneplus/display/ColorBalanceService$AutoMode;->onActivated(Z)V

    :cond_5
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    const/16 v5, 0xa

    if-eqz v4, :cond_9

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    sget v4, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string/jumbo v7, "oem_nightmode_progress_status"

    sget v8, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v6, v7, v8, v1}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    sub-int/2addr v4, v1

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v4, v1

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_7

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_2

    :cond_6
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeOpingStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_3

    :cond_7
    :goto_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "turn off reading mode button!"

    invoke-static {v1, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_9
    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsTimeActivated:Ljava/lang/Boolean;

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v4, "onNightModeActivated:Night mode is off,set mIsTimeActivated false!"

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/16 v6, 0xd

    const/4 v7, 0x5

    const/4 v8, 0x2

    if-eqz v4, :cond_a

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_a

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onNightModeActivated:Night mode is off, revert to reading mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_a
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_b

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v8, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string v2, "Auto Reading mode is on,turn on Reading mode"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v6, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_3

    :cond_b
    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v5, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_c
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onNightOrReadingModeDisableByApp(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    const-string v2, "ColorBalanceService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mModeEnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mReadingModeStatus:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    const/4 v5, 0x5

    if-eq v2, v4, :cond_1

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-ne v2, v5, :cond_0

    if-eqz p1, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    if-eq v2, v3, :cond_6

    :cond_1
    if-eqz p1, :cond_2

    move v2, v1

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    :goto_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_1

    :cond_3
    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    :goto_1
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onNightOrReadingModeChangeByApp,"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-eqz v4, :cond_4

    const-string/jumbo v4, "turn on reading mode!"

    goto :goto_2

    :cond_4
    const-string/jumbo v4, "turn off reading mode!"

    :goto_2
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    goto :goto_3

    :cond_5
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xb

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_6
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedAuto(Z)V
    .locals 7

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReadingModeActivatedAuto:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " bootPhase: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mBootPhase:I

    const/16 v2, 0x3e8

    if-ge v1, v2, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReadingModeActivatedAuto:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-ne v1, p1, :cond_1

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedAuto ignore same status!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_1
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentSrgbSensorAverageColor:I

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivatedAuto:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/16 v3, 0xb

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/4 v5, 0x5

    const/4 v6, 0x2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto:switch night into reading mode!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v2, 0xd

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto/16 :goto_1

    :cond_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto:turning reading mode!"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    const/4 v5, -0x2

    if-nez v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-ne v2, v4, :cond_4

    goto :goto_0

    :cond_4
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_5

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/4 v2, 0x4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v2, "ColorBalanceService"

    const-string/jumbo v6, "onReadingModeActivatedAuto Turning off reading mode"

    invoke-static {v2, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/4 v2, 0x7

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v3, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_5
    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_7

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedAuto: night mode should be off status!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/2addr v2, v5

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    goto :goto_1

    :cond_6
    :goto_0
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-direct {p0, v2, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "oem_nightmode_progress_status"

    sget v6, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v2, v3, v6, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    sub-int/2addr v1, v2

    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v4

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xe

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    :cond_7
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onReadingModeActivatedManual(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeSettingFromeUser:Ljava/lang/Boolean;

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual ignore being invoked!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeStatus:Ljava/lang/Boolean;

    const/4 v1, 0x2

    if-eqz p1, :cond_1

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v3, v3, -0x3

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    :goto_0
    const-string v3, "ColorBalanceService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onReadingModeActivatedManual,save mode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "colorbalanceservice-night-reading-mode"

    iget v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsDisableByApp:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/4 v4, 0x4

    const/4 v5, 0x5

    const/4 v7, 0x0

    if-eqz v3, :cond_5

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "reaing disable app,ignore!"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    const/4 v1, 0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const/16 v1, 0xa

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_1

    :cond_2
    if-nez p1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeStatus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    :cond_3
    :goto_1
    if-eqz p1, :cond_4

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    goto :goto_2

    :cond_4
    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    :goto_2
    monitor-exit v0

    return-void

    :cond_5
    const-string v3, "ColorBalanceService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReadingModeActivatedManual:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " current-status:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v3, v8}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eq v3, p1, :cond_a

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    const/16 v8, 0xb

    if-eqz v3, :cond_7

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableCount:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAverageColor:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPreColorTemp:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v3, :cond_6

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-direct {p0, v3, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeClosingStage:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual changing night to reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNight2ReadingModeStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xd

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    :cond_6
    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning on reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeOpingStage:I

    const/16 v1, 0x4e20

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iput v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto/16 :goto_4

    :cond_7
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    and-int/lit8 v1, v1, -0x3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    const-string v1, "ColorBalanceService"

    const-string/jumbo v3, "onReadingModeActivatedManual Turning off reading mode"

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mNightModeAutoStatus:I

    if-eq v1, v2, :cond_9

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    if-eqz v1, :cond_8

    goto :goto_3

    :cond_8
    const/4 v1, 0x7

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mStableColor:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    iput v4, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v8, v1}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    goto :goto_4

    :cond_9
    :goto_3
    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    or-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mMode:I

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeEnable:I

    iput v7, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReading2NightModeStage:I

    sget v1, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "oem_nightmode_progress_status"

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    sub-int/2addr v1, v3

    sget v3, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mPretNightColorbalance:I

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    iget v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    const/16 v1, 0xe

    iget v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mGeneration:I

    invoke-virtual {p0, v1, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->sendMsgWithValue(II)V

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->triggerNightModeButton(Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "onReadingModeActivatedManual Revert to night mode!"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onResetStatus(I)V
    .locals 10

    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resetStatus:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mDisableStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisableStatus:I

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->closeMatrix()V

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "screen_color_mode_settings_value"

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x4

    const/16 v7, 0x80

    const/4 v8, 0x0

    if-nez p1, :cond_2

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const/16 v3, 0x4e20

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mReadingModeClosingStage:I

    const/16 v3, 0x8

    iput v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mModeStage:I

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    new-array v3, v4, [I

    aput v7, v3, v8

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    :goto_0
    const-string v2, "ColorBalanceService"

    const-string v3, "close all color"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    if-ne p1, v4, :cond_7

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    if-eqz v2, :cond_e

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    new-array v2, v4, [I

    aput v7, v2, v8

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_1

    :cond_3
    if-eq v1, v4, :cond_4

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_4
    :goto_1
    sget v2, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_MAX:I

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v6, "oem_nightmode_progress_status"

    sget v9, Lcom/android/server/oneplus/display/ColorBalanceService;->NIGHT_MODE_SEEKBAR_DEFAULT:I

    invoke-static {v5, v6, v9, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    sub-int/2addr v2, v5

    sget v5, Lcom/android/server/oneplus/display/ColorBalanceService;->COLOR_DELTA:I

    sub-int/2addr v2, v5

    new-array v5, v4, [I

    aput v7, v5, v8

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v5, :cond_5

    iget-object v5, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string/jumbo v7, "oem_nightmode_brightness_progress"

    invoke-static {v5, v7, v6, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    :cond_5
    iput v6, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mFactor:F

    invoke-direct {p0, v2, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentNightColorbalance:I

    iget-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    :cond_6
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsNightModeActivated:Ljava/lang/Boolean;

    const-string v3, "ColorBalanceService"

    const-string/jumbo v4, "resume colorbalance"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_7
    const/4 v3, 0x2

    const/4 v9, 0x3

    if-ne p1, v3, :cond_a

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    new-array v2, v4, [I

    aput v7, v2, v8

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_2

    :cond_8
    if-eq v1, v4, :cond_9

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_9
    :goto_2
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightModeProp(Ljava/lang/Boolean;)I

    invoke-direct {p0, v9}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    invoke-direct {p0, v2, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetColorBalance(II)V

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentColorBalance:I

    iget v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->READING_INIT_COLOR:I

    iput v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentReadingColorbalance:I

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    const-string v2, "ColorBalanceService"

    const-string/jumbo v3, "resume gary color!"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_e

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mAutoSensor:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    goto :goto_3

    :cond_a
    if-ne p1, v9, :cond_c

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsAutoModeActivated:Ljava/lang/Boolean;

    new-array v3, v4, [I

    aput v7, v3, v8

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode_P3(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->sethalsrgbColorMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomP3Mode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeCustomSRGBMode(Z)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWideColorMode_NTSC(Z)V

    invoke-direct {p0, v5}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNativeLoadingEffectMode(Z)V

    invoke-virtual {p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightnessWithValue(F)V

    goto :goto_3

    :cond_b
    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGB(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDciP3(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setNightMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setAdaptitionColorMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setDefaultMode(Z)V

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->setSRGBSensorEnabled(Z)Z

    invoke-direct {p0, v8}, Lcom/android/server/oneplus/display/ColorBalanceService;->opSetActiveModesId(I)V

    goto :goto_3

    :cond_c
    if-ne p1, v6, :cond_e

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mColorDisableStatus:Ljava/lang/Boolean;

    new-array v2, v4, [I

    aput v7, v2, v8

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    goto :goto_3

    :cond_d
    if-eq v1, v4, :cond_e

    invoke-direct {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->revertStatus()V

    :cond_e
    :goto_3
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onStart()V
    .locals 3

    const-string/jumbo v0, "nightdisplay"

    new-instance v1, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$BinderService;-><init>(Lcom/android/server/oneplus/display/ColorBalanceService;Lcom/android/server/oneplus/display/ColorBalanceService$1;)V

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;Z)V

    return-void
.end method

.method public onStartUser(I)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStartUser(I)V

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onStopUser(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onStopUser(I)V

    iget v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentUser:I

    if-ne v0, p1, :cond_0

    const/16 v0, -0x2710

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    :cond_0
    return-void
.end method

.method public onSwitchUser(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mSwitchUser:Ljava/lang/Boolean;

    invoke-super {p0, p1}, Lcom/android/server/SystemService;->onSwitchUser(I)V

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/display/ColorBalanceService;->onUserChanged(I)V

    return-void
.end method

.method public onWhiteBrightnessChanged()V
    .locals 0

    invoke-virtual {p0}, Lcom/android/server/oneplus/display/ColorBalanceService;->setWhiteBrightness()V

    return-void
.end method

.method public sendMsg(I)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    const/16 v1, 0x11

    if-ne p1, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x96

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_0
    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    const/16 v1, 0x1a

    if-ne p1, v1, :cond_1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_1
    return-void
.end method

.method public sendMsgWithValue(II)V
    .locals 3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_1

    iget v1, v0, Landroid/os/Message;->what:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    iget v2, v0, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->removeMessages(I)V

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    invoke-virtual {v1, v0}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public sendMsgWithValueDelayed(IIII)V
    .locals 4

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    iput p1, v0, Landroid/os/Message;->what:I

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCMHHandler:Lcom/android/server/oneplus/display/ColorBalanceService$CMH;

    int-to-long v2, p4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/oneplus/display/ColorBalanceService$CMH;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_0
    return-void
.end method

.method public setWhiteBrightness()V
    .locals 5

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->canWhiteBrightnessBeSet:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mIsReadingModeActivated:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oem_nightmode_brightness_progress"

    const/4 v2, -0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WhiteBrightnes :"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mContext:Landroid/content/Context;

    const-string v2, "display"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_4

    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-ltz v1, :cond_3

    cmpl-float v1, v0, v3

    if-lez v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->setBrightnessMatrixLevel(F)V

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    goto :goto_1

    :cond_3
    :goto_0
    const-string v1, "ColorBalanceService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setWhiteBrightnes :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "value must be small than 1 and large than 0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_4
    const-string v1, "ColorBalanceService"

    const-string/jumbo v2, "mDisplayManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    goto :goto_2

    :cond_5
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "night mode is not activated, whitebrightness can not be set"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method public setWhiteBrightnessWithValue(F)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->colorbalance_stop:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    return-void

    :cond_0
    cmpg-float v0, p1, v1

    if-ltz v0, :cond_4

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v0

    if-lez v2, :cond_1

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v2, p1}, Landroid/hardware/display/DisplayManager;->setBrightnessMatrixLevel(F)V

    cmpl-float v1, p1, v1

    if-nez v1, :cond_2

    iput v0, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    goto :goto_0

    :cond_2
    iput p1, p0, Lcom/android/server/oneplus/display/ColorBalanceService;->mCurrentWhiteBrightness:F

    goto :goto_0

    :cond_3
    const-string v0, "ColorBalanceService"

    const-string/jumbo v1, "mDisplayManager is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void

    :cond_4
    :goto_1
    const-string v0, "ColorBalanceService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setWhiteBrightnes :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "value must be small than 1 and large than 0"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
