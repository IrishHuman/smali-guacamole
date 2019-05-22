.class public Lcom/android/server/oneplus/MotorManagerService;
.super Ljava/lang/Object;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;,
        Lcom/android/server/oneplus/MotorManagerService$MotorHandler;,
        Lcom/android/server/oneplus/MotorManagerService$SocketThread;
    }
.end annotation


# static fields
.field private static final ACTION_HALL_CALIBRATE:Ljava/lang/String; = "oneplus.intent.action.hall_calibrate"

.field private static final ACTION_MOTOR_DOWNED:Ljava/lang/String; = "oneplus.intent.action.MOTOR_DOWNED"

.field private static final ACTION_MOTOR_UPED:Ljava/lang/String; = "oneplus.intent.action.MOTOR_UPED"

.field private static final ACTION_MOTOR_UPING:Ljava/lang/String; = "oneplus.intent.action.MOTOR_UPING"

.field private static final ACTION_PHONEANSWER:Ljava/lang/String; = "oneplus.intent.action.INCALLUI_ANSWER"

.field private static final ACTION_PHONE_FALLING:Ljava/lang/String; = "oneplus.intent.action.PHONE_FALLING"

.field private static final ACTION_PHONE_SCENE:Ljava/lang/String; = "isVideo"

.field private static final CAMERA_ACTION:Ljava/lang/String; = "com.oneplus.action.CAMERA"

.field private static final CAMERA_NOT_USE:I = 0x0

.field private static final CAMERA_USE:I = 0x1

.field private static final DATA_SIZE:I = 0x10

.field private static DBG:Z = false

.field private static DEBUG:Z = false

.field private static final FACE_RECOG_PKG:Ljava/lang/String; = "com.oneplus.faceunlock"

.field private static final FACE_RECOG_TAG:Ljava/lang/String; = "systemui_faceunlock"

.field private static final FLAG_ACTIVITY_KEEP_RESUM_WHEN_SLEEPING:I = 0x800

.field private static final FLOAT_WIN_CHECK:I = 0x2bf

.field private static final MOTOR_DOWNED:I = 0x1

.field private static final PERMISSION_ONEPLUS_COMPONENT_SAFE:Ljava/lang/String; = "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

.field private static final PERSIST_MOTOR_CALIBTIME:Ljava/lang/String; = "persist.sys.motor.calibtime"

.field private static final SCREENOFF_TAG:Ljava/lang/String; = "screenoff"

.field private static final SENSOR_ID:I = 0x1fa2658

.field private static final TAG:Ljava/lang/String; = "MotorManagerService"

.field private static final THREAD_NAME:Ljava/lang/String; = "MotorManager"

.field private static final TIME_OUT:I = 0x2bc

.field private static final WAKE_TIME:I = 0x1388

.field private static mAudioUserPkg:Ljava/lang/String;

.field private static mCameraUserPkg:Ljava/lang/String;

.field private static mHallCalibExceptionCount:I

.field private static mIntervalTime:I

.field private static mLastCameraUserPkg:Ljava/lang/String;

.field private static mTime1000ms:I

.field private static mTime100ms:I

.field private static mTime1500ms:I

.field private static mTime2000ms:I

.field private static mTime500ms:I

.field private static sAudioCameraUserExit:Z

.field private static sBeginDowningTime:J

.field private static sBeginUpingTime:J

.field private static sCameraUserPid:I

.field private static sDownInterval:J

.field private static sDownLoopDetectCount:I

.field private static sDownMotorByPowerOff:Z

.field private static sDownMotorByScreenOff:Z

.field private static sDownMotorBySensor:Z

.field private static sDownedTime:J

.field private static sInstance:Lcom/android/server/oneplus/MotorManagerService;

.field private static sLoopDetect:Z

.field private static sMotorDownLocked:Z

.field private static sMotorDownPress:Z

.field private static sMotorDowned:Z

.field private static sMotorDowning:Z

.field private static sMotorLockedFlag:Z

.field private static sMotorTimes:I

.field private static sMotorUpLocked:Z

.field private static sMotorUped:Z

.field private static sMotorUping:Z

.field private static sRequestMotorTagName:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUpInterval:J

.field private static sUpLoopDetectCount:I

.field private static sUpedTime:J

.field private static sWmsInstance:Lcom/android/server/wm/WindowManagerService;


# instance fields
.field private clickTimes:[J

.field private mAdr:Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field private final mAppDeathRecipients:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;",
            ">;"
        }
    .end annotation
.end field

.field private mAppMotorCommand:I

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

.field private mBackActivity:Ljava/lang/String;

.field private mBackgroudPkg:Ljava/lang/String;

.field private mBeginCalib:Z

.field private mBinder:Landroid/os/IBinder;

.field private mCameraID:I

.field private mCameraUserID:I

.field private mCameraUserPkgTemp:Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDownBySensorPush:Z

.field private mDownByTelAudioBackgroud:Z

.field private mDownMotorByBackOrAudio:Z

.field private mDownMotorBySensorNow:Z

.field private mDownMotorByTelConnect:Z

.field private mDownMotorByTelConnectFlag:Z

.field private mFocusActivity:Ljava/lang/String;

.field private mFocusPid:I

.field private mFocusPkg:Ljava/lang/String;

.field private final mFreeFallListener:Landroid/hardware/SensorEventListener;

.field private mFreeFallSensor:Landroid/hardware/Sensor;

.field private final mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

.field private final mHandlerThread:Lcom/android/server/ServiceThread;

.field private mIActivityManager:Landroid/app/IActivityManager;

.field private mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

.field private mIsFaceRecog:Z

.field private mIsNear:Z

.field private mIsScreenOn:Z

.field private mIsSplitMode:Z

.field private mKeyguardAppear:Z

.field private mLatestMotorCommand:I

.field private final mLock:Ljava/lang/Object;

.field private final mMotorStateCallbacks:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/os/IMotorStateChangedCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedCalib:Z

.field private mOimcGameModeObserver:Lcom/oneplus/scene/OimcGameModeObserver;

.field private final mOneplusTelReceiver:Landroid/content/BroadcastReceiver;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mProcessObserver:Landroid/app/IProcessObserver;

.field private mProximity:Landroid/hardware/Sensor;

.field private final mProximityLock:Ljava/lang/Object;

.field private final mProximitySensorListener:Landroid/hardware/SensorEventListener;

.field private mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

.field private mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mScreenoffLock:Ljava/lang/Object;

.field private mScreenoffTimeout:I

.field private mSensorDetectTimeout:I

.field private mSm:Landroid/hardware/SensorManager;

.field private final mSocketThread:Lcom/android/server/oneplus/MotorManagerService$SocketThread;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpbyProxSensor:Z

.field private mhasWakeLock:Z

.field private mhasWakeLockWhenScreenoff:Z

.field private mhasWakeLockWhenTel:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->DBG:Z

    const/4 v2, 0x0

    sput-object v2, Lcom/android/server/oneplus/MotorManagerService;->sInstance:Lcom/android/server/oneplus/MotorManagerService;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    const-string v2, ""

    sput-object v2, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/android/server/oneplus/MotorManagerService;->mLastCameraUserPkg:Ljava/lang/String;

    const-string v2, ""

    sput-object v2, Lcom/android/server/oneplus/MotorManagerService;->mAudioUserPkg:Ljava/lang/String;

    sput v1, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    sput v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorTimes:I

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    const/4 v2, 0x4

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mHallCalibExceptionCount:I

    const/16 v2, 0x64

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mTime100ms:I

    const/16 v2, 0x1f4

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mTime500ms:I

    const/16 v2, 0x7d0

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mTime2000ms:I

    const/16 v2, 0x3e8

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mTime1000ms:I

    const/16 v2, 0x5dc

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->mTime1500ms:I

    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sBeginUpingTime:J

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sUpedTime:J

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sBeginDowningTime:J

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sDownedTime:J

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sUpInterval:J

    sput-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sDownInterval:J

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sLoopDetect:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sAudioCameraUserExit:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByPowerOff:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByScreenOff:Z

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAdr:Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppDeathRecipients:Ljava/util/LinkedList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mMotorStateCallbacks:Ljava/util/List;

    const/4 v0, 0x6

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    const-string/jumbo v0, "temp"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkgTemp:Ljava/lang/String;

    const-string v0, "focus"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    const-string v0, "backgroud"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackgroudPkg:Ljava/lang/String;

    const-string v0, "backActivity"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackActivity:Ljava/lang/String;

    const-string v0, "focusActivity"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusActivity:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    const v2, 0x1869f

    iput v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPid:I

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraID:I

    iput v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserID:I

    const v0, 0x1d4c0

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSensorDetectTimeout:I

    const/16 v0, 0x1388

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffTimeout:I

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnect:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnectFlag:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownByTelAudioBackgroud:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownBySensorPush:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mKeyguardAppear:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mUpbyProxSensor:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorBySensorNow:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$1;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$1;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$2;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$2;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$3;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$3;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$4;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$4;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mOneplusTelReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$5;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$6;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$6;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBinder:Landroid/os/IBinder;

    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$18;

    invoke-direct {v1, p0}, Lcom/android/server/oneplus/MotorManagerService$18;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/ServiceThread;

    const-string v2, "MotorManager"

    const/16 v3, 0xa

    invoke-direct {v1, v2, v3, v0}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandlerThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;-><init>(Lcom/android/server/oneplus/MotorManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    new-instance v0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;

    const-string v1, "MotorManagerSocket"

    invoke-direct {v0, p0, p0, v1}, Lcom/android/server/oneplus/MotorManagerService$SocketThread;-><init>(Lcom/android/server/oneplus/MotorManagerService;Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSocketThread:Lcom/android/server/oneplus/MotorManagerService$SocketThread;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSocketThread:Lcom/android/server/oneplus/MotorManagerService$SocketThread;

    invoke-virtual {v0}, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->start()V

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioManager:Landroid/media/AudioManager;

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getWmsInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Lcom/oneplus/scene/OimcGameModeObserver;->getInstance()Lcom/oneplus/scene/OimcGameModeObserver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mOimcGameModeObserver:Lcom/oneplus/scene/OimcGameModeObserver;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    return-object v0
.end method

.method static synthetic access$1000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/server/oneplus/MotorManagerService;)Lcom/oneplus/scene/OimcGameModeObserver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mOimcGameModeObserver:Lcom/oneplus/scene/OimcGameModeObserver;

    return-object v0
.end method

.method static synthetic access$1300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    return v0
.end method

.method static synthetic access$1402(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnect:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->saveVarWhenDownByTelAudioBackgroud()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    move-result v0

    return v0
.end method

.method static synthetic access$1700()I
    .locals 1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    return v0
.end method

.method static synthetic access$1702(I)I
    .locals 0

    sput p0, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    return p0
.end method

.method static synthetic access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DBG:Z

    return v0
.end method

.method static synthetic access$1902(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/oneplus/MotorManagerService;->DBG:Z

    return p0
.end method

.method static synthetic access$2000()I
    .locals 1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mHallCalibExceptionCount:I

    return v0
.end method

.method static synthetic access$2002(I)I
    .locals 0

    sput p0, Lcom/android/server/oneplus/MotorManagerService;->mHallCalibExceptionCount:I

    return p0
.end method

.method static synthetic access$202(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioUserPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2100(Lcom/android/server/oneplus/MotorManagerService;Ljava/io/PrintWriter;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/MotorManagerService;->dumpInternal(Ljava/io/PrintWriter;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    return v0
.end method

.method static synthetic access$2302(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    return p1
.end method

.method static synthetic access$2400()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mLastCameraUserPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2500()I
    .locals 1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mTime1500ms:I

    return v0
.end method

.method static synthetic access$2600(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/MotorManagerService;->delayDownMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$2800(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mMotorStateCallbacks:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/oneplus/MotorManagerService;->sAudioCameraUserExit:Z

    return p0
.end method

.method static synthetic access$3100(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    move-result v0

    return v0
.end method

.method static synthetic access$3200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    return v0
.end method

.method static synthetic access$3300(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->exitFocusCamaraUserPkg()V

    return-void
.end method

.method static synthetic access$3400(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserID:I

    return v0
.end method

.method static synthetic access$3402(Lcom/android/server/oneplus/MotorManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserID:I

    return p1
.end method

.method static synthetic access$3500()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$3502(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3602(Lcom/android/server/oneplus/MotorManagerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraID:I

    return p1
.end method

.method static synthetic access$3700(Lcom/android/server/oneplus/MotorManagerService;)Landroid/app/ActivityManager$StackInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/app/ActivityManager$StackInfo;
    .locals 1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getSplitScreenSecondaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$3900(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    return v0
.end method

.method static synthetic access$3902(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$4002(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$402(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->delayDownMotorByCamera()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    return v0
.end method

.method static synthetic access$4202(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    return p1
.end method

.method static synthetic access$4300(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    return v0
.end method

.method static synthetic access$4302(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    return p1
.end method

.method static synthetic access$4400(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->releaseWakelock()V

    return-void
.end method

.method static synthetic access$4500(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    return v0
.end method

.method static synthetic access$4600(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->heldWakelock()V

    return-void
.end method

.method static synthetic access$4700(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSensorDetectTimeout:I

    return v0
.end method

.method static synthetic access$4800(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/MotorManagerService;->isFloatWin(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$4900(Lcom/android/server/oneplus/MotorManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/MotorManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    return v0
.end method

.method static synthetic access$5000()I
    .locals 1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mTime500ms:I

    return v0
.end method

.method static synthetic access$502(I)I
    .locals 0

    sput p0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    return p0
.end method

.method static synthetic access$5100(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackgroudPkg:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5102(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackgroudPkg:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5200(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5202(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5300(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusActivity:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$5302(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusActivity:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$5400(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->motorControlWhenFocusChange()V

    return-void
.end method

.method static synthetic access$5502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/oneplus/MotorManagerService;->sLoopDetect:Z

    return p0
.end method

.method static synthetic access$5600(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upLoopDetect()V

    return-void
.end method

.method static synthetic access$5700(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downLoopDetect()V

    return-void
.end method

.method static synthetic access$5800(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->backgroundSpecialControl()V

    return-void
.end method

.method static synthetic access$5900(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotorBySensor()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnectFlag:Z

    return v0
.end method

.method static synthetic access$6000(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->openCamera()V

    return-void
.end method

.method static synthetic access$602(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnectFlag:Z

    return p1
.end method

.method static synthetic access$6100(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAudio()V

    return-void
.end method

.method static synthetic access$6200(Lcom/android/server/oneplus/MotorManagerService;I)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/MotorManagerService;->isRecording(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6300(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotorByCallEnd()V

    return-void
.end method

.method static synthetic access$6400(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showUpMotorWarning()V

    return-void
.end method

.method static synthetic access$6500(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showMotorUpLockedDialog()V

    return-void
.end method

.method static synthetic access$6600(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showMotorCannotUpDialog()V

    return-void
.end method

.method static synthetic access$6700(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showMotorDownLockedDialog()V

    return-void
.end method

.method static synthetic access$6800(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showPushDownMotorDialog()V

    return-void
.end method

.method static synthetic access$6900(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->showBackgroundUseMotorDialog()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/server/oneplus/MotorManagerService;->upMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    return v0
.end method

.method static synthetic access$7000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    return v0
.end method

.method static synthetic access$7100(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->phoneFallDialog()V

    return-void
.end method

.method static synthetic access$7200(Lcom/android/server/oneplus/MotorManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    return v0
.end method

.method static synthetic access$7202(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    return p1
.end method

.method static synthetic access$7300(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$7400(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$7500(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/LinkedList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppDeathRecipients:Ljava/util/LinkedList;

    return-object v0
.end method

.method static synthetic access$7600()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$7700(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    return v0
.end method

.method static synthetic access$7710(Lcom/android/server/oneplus/MotorManagerService;)I
    .locals 2

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    return v0
.end method

.method static synthetic access$802(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/MotorManagerService;->mUpbyProxSensor:Z

    return p1
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    return v0
.end method

.method private backgroundSpecialControl()V
    .locals 2

    const-string v0, "MotorManagerService"

    const-string v1, "backgroundSpecialControl:"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sAudioCameraUserExit:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "backgroundSpecialControl true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isDownOrNot()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->saveVarWhenDownByTelAudioBackgroud()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    const-string v0, "MotorManagerService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private beginDownLockedDetect()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mTime100ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->clearUpLockedDetectState()V

    return-void
.end method

.method private beginUpLockedDetect()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mTime100ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->clearDownLockedDetectState()V

    return-void
.end method

.method private clearDownLockedDetectState()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private clearUpLockedDetectState()V
    .locals 2

    const/4 v0, 0x1

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_0
    return-void
.end method

.method private createWarningAlert()V
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mKeyguardAppear:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->shouldShowWarningDialog()Z

    move-result v0

    if-nez v0, :cond_2

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/content/res/ThemeController;->getInstance(Landroid/content/Context;)Landroid/content/res/ThemeController;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/ThemeController;->getThemeState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    const v0, 0x50e0009

    goto :goto_0

    :cond_3
    const v0, 0x50e0001

    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    const-string v2, "Motor Error"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x7d3

    invoke-virtual {v2, v3}, Landroid/view/Window;->setType(I)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/16 v3, 0x10

    invoke-virtual {v2, v3}, Landroid/view/Window;->addPrivateFlags(I)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setCancelable(Z)V

    return-void
.end method

.method private delayDownMotorByCamera()V
    .locals 6

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "delayDownMotorByCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusActivity:Ljava/lang/String;

    if-eqz v1, :cond_1

    const/16 v1, 0x50

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusActivity:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->mTime500ms:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    monitor-exit v1

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private delayDownMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 6

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "delayDownMotorBySystemApp "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-direct {p0, p1, p3}, Lcom/android/server/oneplus/MotorManagerService;->resetSystemAppDownInfo(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0xb

    iput v2, v1, Landroid/os/Message;->what:I

    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    int-to-long v4, p2

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private destorySensor()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSm:Landroid/hardware/SensorManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSm:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    return-void
.end method

.method private downArrivedCalib()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->downedCalib()V

    const-string v0, "MotorManagerService"

    const-string v1, "downArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private downArrivedCalibDetect()V
    .locals 3

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->isNeedCalib(Z)Z

    move-result v1

    if-eqz v1, :cond_0

    sget v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    add-int/2addr v1, v0

    sput v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    :cond_0
    sget v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mHallCalibExceptionCount:I

    if-le v1, v2, :cond_1

    const-string v1, "MotorManagerService"

    const-string v2, "downArrivedCalibDetect successed"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    :cond_1
    return-void
.end method

.method private downLoopDetect()V
    .locals 4

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-eqz v0, :cond_3

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sLoopDetect:Z

    if-eqz v0, :cond_3

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loopDetect sDownLoopDetectCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sDownLoopDetectCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mTime1000ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->loopDetectMotor()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_2
    const/4 v0, -0x5

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    :cond_3
    :goto_0
    return-void
.end method

.method private downMotor()I
    .locals 4

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "downMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v1, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->writeMotorControlData(III)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    const-string v0, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downMotor res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "downMotorByAllScene :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLatestMotorCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "MotorManagerService"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    iput v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    const/4 v1, 0x1

    :cond_0
    const-string/jumbo v2, "screenoff"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    sput-boolean v4, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByScreenOff:Z

    :cond_1
    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v2, :cond_9

    if-eqz v1, :cond_2

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-nez v2, :cond_9

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v5, 0xb

    invoke-virtual {v2, v5}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    const-string/jumbo v2, "systemui_faceunlock"

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v2, :cond_5

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-eq v2, v4, :cond_3

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-eqz v2, :cond_5

    :cond_3
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "other2 is using motor, mAppMotorCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mLatestMotorCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    monitor-exit v0

    return v3

    :cond_5
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-nez v2, :cond_7

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-eqz v2, :cond_6

    goto :goto_0

    :cond_6
    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    monitor-exit v0

    return v2

    :cond_7
    :goto_0
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v2, :cond_8

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "downMotorByAllScene sMotorUped: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    move-result v2

    monitor-exit v0

    return v2

    :cond_9
    :goto_1
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v2, :cond_a

    const-string v2, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "other1 is using motor, mAppMotorCommand: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    monitor-exit v0

    return v3

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private downMotorByAudio()V
    .locals 2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    if-eqz v0, :cond_1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "downMotorByAudio"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isDownOrNot()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotorManagerService"

    const-string v1, "downMotorByAudio isDownOrNot true"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->saveVarWhenDownByTelAudioBackgroud()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    const-string v0, "MotorManagerService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    return-void
.end method

.method private downMotorBySensor()V
    .locals 2

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    if-eqz v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorBySensorNow:Z

    :cond_0
    return-void
.end method

.method private dumpInternal(Ljava/io/PrintWriter;)V
    .locals 2

    const-string v0, "Motor Manager State:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mFocusPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLastCameraUserPkg = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->mLastCameraUserPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mLatestMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mAppMotorCommand = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " isRecording = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/MotorManagerService;->isRecording(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sRequestMotorTagSize = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sIntervalTime = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorUping = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorDowning = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorUped = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorDowned = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorUpLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sMotorDownLocked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " sAudioCameraUserExit = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sAudioCameraUserExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method

.method private exitFocusCamaraUserPkg()V
    .locals 6

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getSplitScreenSecondaryStack()Landroid/app/ActivityManager$StackInfo;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    iput-boolean v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    goto :goto_1

    :cond_1
    :goto_0
    iput-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    :goto_1
    iget-boolean v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    if-eqz v4, :cond_3

    sget-object v4, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v5, v0, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v3, v2}, Landroid/app/IActivityManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_2
    sget-object v2, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v4, v1, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v3}, Landroid/app/IActivityManager;->dismissSplitScreenMode(Z)V

    goto :goto_2

    :cond_3
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isCameraUserFocus()Z

    move-result v2

    if-eqz v2, :cond_4

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v3, "android.intent.category.HOME"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "MotorManagerService"

    const-string/jumbo v4, "startHomeIntent"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v3, v2, v4}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public static getInstance()Lcom/android/server/oneplus/MotorManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sInstance:Lcom/android/server/oneplus/MotorManagerService;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/oneplus/MotorManagerService;
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sInstance:Lcom/android/server/oneplus/MotorManagerService;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/MotorManagerService;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/oneplus/MotorManagerService;->sInstance:Lcom/android/server/oneplus/MotorManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sInstance:Lcom/android/server/oneplus/MotorManagerService;

    return-object v0
.end method

.method private getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    if-nez v0, :cond_0

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;->getService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception getting MotorControl hw service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    return-object v0
.end method

.method private getSplitScreenPrimaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private getSplitScreenSecondaryStack()Landroid/app/ActivityManager$StackInfo;
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IActivityManager;->getStackInfo(II)Landroid/app/ActivityManager$StackInfo;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const/4 v1, 0x0

    return-object v1
.end method

.method private heldWakelock()V
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "heldWakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximity:Landroid/hardware/Sensor;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mPowerManager:Landroid/os/PowerManager;

    const/16 v3, 0x20

    const-string v4, "MotorManagerService"

    invoke-virtual {v2, v3, v4}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximity:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private initBinderService()V
    .locals 3

    :try_start_0
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "start motor service"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string/jumbo v0, "motor"

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBinder:Landroid/os/IBinder;

    invoke-static {v0, v1}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "MotorManagerService"

    const-string v2, "Start motor service failed"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private initSensor()V
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "initSensor"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSm:Landroid/hardware/SensorManager;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mSm:Landroid/hardware/SensorManager;

    const v1, 0x1fa2658

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/Sensor;

    if-eqz v2, :cond_0

    iput-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallSensor:Landroid/hardware/Sensor;

    :cond_0
    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallListener:Landroid/hardware/SensorEventListener;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallSensor:Landroid/hardware/Sensor;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mSm:Landroid/hardware/SensorManager;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallListener:Landroid/hardware/SensorEventListener;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mFreeFallSensor:Landroid/hardware/Sensor;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    :cond_2
    return-void
.end method

.method private isAnyWindowVisibleForUid(I)Z
    .locals 1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getWmsInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v0

    return v0
.end method

.method private isCameraUserFocus()Z
    .locals 2

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isDownOrNot()Z
    .locals 3

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->isFloatWin(Ljava/lang/String;)Z

    move-result v0

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/MotorManagerService;->isRecording(I)Z

    move-result v1

    if-nez v0, :cond_0

    if-nez v1, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isFloatWin(Ljava/lang/String;)Z
    .locals 4

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    if-nez v0, :cond_0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->getWmsInstance()Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    :cond_0
    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->sWmsInstance:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowManagerService;->isFloatWin(Ljava/lang/String;)Z

    move-result v0

    :cond_1
    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isFloatWin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_2

    return v0

    :cond_2
    const/16 v1, 0x2bf

    invoke-static {v1, p1}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x0

    return v1

    :cond_3
    return v0
.end method

.method private isRecording(I)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_pid"

    invoke-virtual {v0, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "broadcastPidArray.length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v5, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v1

    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    const-string v4, "MotorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRecording: camaraUserPid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " i: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " broadcastPid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v2, v3

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    aget-object v5, v2, v3

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "MotorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "isRecording: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x2

    sget-object v5, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-static {v4, v5}, Landroid/app/ActivityThread;->inCompatConfigList(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return v1

    :cond_3
    return v1
.end method

.method private isUpMotorOrNot()V
    .locals 2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "isUpMotorOrNot"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "org.codeaurora.ims"

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "isUpMotorOrNot upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MotorManagerService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->upMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    return-void
.end method

.method private listenPhoneState()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    :cond_0
    return-void
.end method

.method private loopDetectMotor()V
    .locals 3

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loopDetectMotor sMotorDownLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    :cond_1
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    if-nez v0, :cond_5

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    if-nez v0, :cond_5

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_3

    :cond_2
    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-eqz v0, :cond_5

    :cond_3
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loopDetectMotor sMotorUpLocked: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    :cond_5
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    if-eqz v0, :cond_7

    :cond_6
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    :cond_7
    return-void
.end method

.method private motorControlWhenFocusChange()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackgroudPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isCameraUserFocus()Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotorManagerService"

    const-string v2, "camera app focus from back in 600ms, remove downMessage"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownByTelAudioBackgroud:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownBySensorPush:Z

    if-eqz v0, :cond_6

    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkgTemp:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "MotorManagerService"

    const-string v2, "camera app focus from backgroud and should upmotor"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    if-nez v0, :cond_5

    :cond_4
    const-string v0, "MotorManagerService"

    const/4 v2, 0x0

    invoke-direct {p0, v0, v2}, Lcom/android/server/oneplus/MotorManagerService;->upMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_5
    const-string/jumbo v0, "temp"

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkgTemp:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownByTelAudioBackgroud:Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownBySensorPush:Z

    :cond_6
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_a

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mBackgroudPkg:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsSplitMode:Z

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    const-string/jumbo v2, "net.oneplus.launcher"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserID:I

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->isAnyWindowVisibleForUid(I)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_8
    return-void

    :cond_9
    const-string v0, "MotorManagerService"

    const-string/jumbo v2, "non-standard camera app, maybe not release when backgroud"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mIntervalTime:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->isRecording(I)Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x14

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mTime2000ms:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_a
    return-void
.end method

.method private notifyMotorStateChanged(I)V
    .locals 6

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyMotorStateChanged"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mMotorStateCallbacks:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mMotorStateCallbacks:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IMotorStateChangedCallback;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-interface {v2, p1}, Landroid/os/IMotorStateChangedCallback;->onMotorStateChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "MotorManagerService"

    invoke-virtual {v3}, Landroid/os/RemoteException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mMotorStateCallbacks:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :goto_1
    goto :goto_0

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private openCamera()V
    .locals 6

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "openCamera"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const v1, 0x1000000a

    const-string/jumbo v2, "pullMotorWake"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const-wide/16 v2, 0x1388

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    const-wide/16 v2, 0x64

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "InterruptedException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.oneplus.action.CAMERA"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x800

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v3, 0x34000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_1
    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method private phoneFallDialog()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "show phoneFallDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0083

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d006a

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$16;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$16;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$17;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$17;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private readMotorData(I)I
    .locals 1

    const/16 v0, 0x10

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/MotorManagerService;->readMotorData(II)I

    move-result v0

    return v0
.end method

.method private readMotorData(II)I
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "readMotorControlData "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    invoke-interface {v1, p1, p2}, Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;->readMotorData(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readMotorData throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private releaseWakelock()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "releaseWakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "MotorManagerService"

    const-string/jumbo v3, "isHeld and releaseWakelock"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->release(I)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "sensor"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/SensorManager;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximitySensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v1, v3}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    :cond_0
    iput-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private removeAppDeathRecipientLocked(Landroid/os/IBinder;)Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppDeathRecipients:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->access$3000(Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;)Landroid/os/IBinder;

    move-result-object v2

    if-ne v2, p1, :cond_0

    invoke-interface {v0}, Ljava/util/ListIterator;->remove()V

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/MotorManagerService;->unlinkVibration(Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;)V

    return-object v1

    :cond_0
    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private removeSysAppTAG(Ljava/lang/String;)V
    .locals 3

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not removed, exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_0
    return-void
.end method

.method private resetSystemAppDownInfo(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    if-eqz p2, :cond_0

    invoke-direct {p0, p2}, Lcom/android/server/oneplus/MotorManagerService;->removeAppDeathRecipientLocked(Landroid/os/IBinder;)Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppDeathRecipients:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAdr:Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    const-string v0, "MotorManagerService"

    const-string v1, "after unlinkToDeath"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    const/4 v1, 0x1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    :cond_1
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "going to delaydown Motor by "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v0, :cond_3

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-eq v0, v1, :cond_4

    :cond_3
    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-eqz v0, :cond_6

    :cond_4
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_5

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "other2 is using motor, mIsFaceRecog: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    const/4 v0, 0x0

    return v0

    :cond_6
    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    return v0
.end method

.method private saveVarWhenDownBySensorAndPush()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownBySensorPush:Z

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkgTemp:Ljava/lang/String;

    return-void
.end method

.method private saveVarWhenDownByTelAudioBackgroud()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownByTelAudioBackgroud:Z

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkgTemp:Ljava/lang/String;

    return-void
.end method

.method private screenOffHeldWakelock()V
    .locals 4

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screenOffHeldWakelock mhasWakeLockWhenTel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnectFlag:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    if-nez v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v2, "screenOffHeldWakelock"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->heldWakelock()V

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    :cond_0
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "MotorManagerService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotorManagerService"

    const-string/jumbo v2, "screenOff HeldWakelock"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x19

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_3
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :cond_4
    :goto_0
    return-void
.end method

.method private screenOnReleaseWakelock()V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnectFlag:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    if-eqz v0, :cond_2

    :cond_0
    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyScreenOn release wakelock"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x15

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->releaseWakelock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mUpbyProxSensor:Z

    :cond_2
    return-void
.end method

.method private shouldShowWarningDialog()Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string/jumbo v1, "showpermissiondialog"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private showBackgroundUseMotorDialog()V
    .locals 6

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showBackgroundUseMotorDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    const/4 v0, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    sget-object v5, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v3

    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    :goto_0
    if-eqz v0, :cond_3

    const-string v3, ""

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    iget v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserID:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    const/16 v4, 0x3e7

    if-ne v3, v4, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v4, 0x50d0052

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v5, 0x50d0006

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v4, 0x50d0055

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/oneplus/MotorManagerService$14;

    invoke-direct {v4, p0}, Lcom/android/server/oneplus/MotorManagerService$14;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v2, -0x1

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v4, 0x50d0025

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/android/server/oneplus/MotorManagerService$15;

    invoke-direct {v4, p0}, Lcom/android/server/oneplus/MotorManagerService$15;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v1, v2, v3, v4}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    return-void

    :cond_3
    :goto_1
    return-void
.end method

.method private showMotorCannotUpDialog()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showMotorCannotUpDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0034

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d0086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$11;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$11;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMotorDownLockedDialog()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0007

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d0086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$12;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$12;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showMotorUpLockedDialog()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showMotorUpLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0008

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d0069

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$9;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$9;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x1

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d000d

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$10;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$10;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showPushDownMotorDialog()V
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showMotorDownLockedDialog"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0005

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v3, 0x50d0086

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/android/server/oneplus/MotorManagerService$13;

    invoke-direct {v3, p0}, Lcom/android/server/oneplus/MotorManagerService$13;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private showUpMotorWarning()V
    .locals 12

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "showUpMotorWarning"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->createWarningAlert()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0082

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    const v2, 0x50d0086

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/server/oneplus/MotorManagerService$7;

    invoke-direct {v2, p0}, Lcom/android/server/oneplus/MotorManagerService$7;-><init>(Lcom/android/server/oneplus/MotorManagerService;)V

    const/4 v3, -0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Button;->getCurrentTextColor()I

    move-result v1

    const v2, -0x777778

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTextColor(I)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setClickable(Z)V

    new-instance v2, Lcom/android/server/oneplus/MotorManagerService$8;

    const-wide/16 v6, 0x1388

    const-wide/16 v8, 0x3e8

    move-object v4, v2

    move-object v5, p0

    move-object v10, v0

    move v11, v1

    invoke-direct/range {v4 .. v11}, Lcom/android/server/oneplus/MotorManagerService$8;-><init>(Lcom/android/server/oneplus/MotorManagerService;JJLandroid/widget/Button;I)V

    invoke-virtual {v2}, Lcom/android/server/oneplus/MotorManagerService$8;->start()Landroid/os/CountDownTimer;

    return-void
.end method

.method private unlinkVibration(Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;)V
    .locals 2

    :try_start_0
    invoke-static {p1}, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->access$3000(Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;)Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method

.method private upArrivedCalib()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->upedCalib()V

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalib()Z

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "upArrivedCalib successed"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    const-string/jumbo v0, "persist.sys.motor.calibtime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private upArrivedCalibDetect()V
    .locals 3

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->isNeedCalib(Z)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    sget v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    add-int/2addr v0, v1

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    :cond_0
    sget v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->mHallCalibExceptionCount:I

    if-le v0, v2, :cond_1

    const-string v0, "MotorManagerService"

    const-string/jumbo v2, "upArrivedCalibDetect successed"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    :cond_1
    return-void
.end method

.method private upLoopDetect()V
    .locals 5

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-eqz v0, :cond_5

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sLoopDetect:Z

    if-eqz v0, :cond_5

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "loopDetect sUpLoopDetectCount: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    const/4 v1, 0x4

    const/4 v2, 0x3

    if-ge v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->mTime1000ms:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->loopDetectMotor()V

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v0, v1, :cond_3

    invoke-direct {p0, v4}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_2
    const-string v0, "MotorManagerService"

    invoke-direct {p0, v0, v3}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    if-le v0, v1, :cond_4

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sUpLoopDetectCount:I

    const/4 v1, 0x7

    if-ge v0, v1, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    sget v1, Lcom/android/server/oneplus/MotorManagerService;->mTime1000ms:I

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->loopDetectMotor()V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v4}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    const-string v0, "MotorManagerService"

    invoke-direct {p0, v0, v3}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    :cond_5
    :goto_0
    return-void
.end method

.method private upMotor()I
    .locals 4

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByBackOrAudio:Z

    iget-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-nez v1, :cond_0

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-nez v1, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->updateMotorUpTime(J)V

    :cond_0
    const/4 v1, 0x1

    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/oneplus/MotorManagerService;->writeMotorControlData(III)I

    move-result v1

    if-nez v1, :cond_1

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upMotor res: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v1
.end method

.method private upMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 4

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "upMotorByAllScene :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mAppMotorCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mLatestMotorCommand: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "MotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    const-string/jumbo v1, "systemui_faceunlock"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/android/server/oneplus/MotorManagerService;->sRequestMotorTagName:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p2, :cond_1

    :try_start_1
    new-instance v1, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;-><init>(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/oneplus/MotorManagerService$1;)V

    iput-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAdr:Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAdr:Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;

    const/4 v2, 0x0

    invoke-interface {p2, v1, v2}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_2
    const-string v1, "MotorManagerService"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    :cond_1
    :goto_1
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_2
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "MotorManagerService"

    const-string/jumbo v3, "removeMessages MSG_MOTOR_DELAY_DOWN_SYSTEMAPP"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v1, :cond_6

    iget-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    if-eqz v1, :cond_7

    :cond_6
    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-nez v1, :cond_8

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-eqz v1, :cond_7

    goto :goto_2

    :cond_7
    iget v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    monitor-exit v0

    return v1

    :cond_8
    :goto_2
    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v1, :cond_9

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upMotorByAllScene upMotor sMotorDowned: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    move-result v1

    monitor-exit v0

    return v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method

.method private upMotorByCallEnd()V
    .locals 2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownByTelAudioBackgroud:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/server/oneplus/MotorManagerService;->sCameraUserPid:I

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "upMotorByCallEnd"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isDownOrNot()Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "upMotorByCallEnd isDownOrNot false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    goto :goto_0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsNear:Z

    if-nez v0, :cond_2

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "upMotorByCallEnd mIsNear false"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->releaseWakelock()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenTel:Z

    :cond_2
    :goto_0
    return-void
.end method

.method private updateMotorUpTime(J)V
    .locals 7

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "update motor up time: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    add-int/lit8 v4, v1, 0x1

    aget-wide v3, v3, v4

    aput-wide v3, v2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    aput-wide p1, v1, v2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    aget-wide v3, v1, v0

    const-wide/16 v5, 0x0

    cmp-long v1, v3, v5

    if-lez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    aget-wide v1, v1, v2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    aget-wide v3, v3, v0

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x4650

    cmp-long v1, v1, v3

    if-gez v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0xe

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    nop

    :goto_1
    const/4 v1, 0x6

    if-ge v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->clickTimes:[J

    aput-wide v5, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method

.method private writeFlashControlData(II)I
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "writeFlashControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    invoke-interface {v1, p1, p2}, Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;->writeFlashData(II)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeFlashControlData throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method

.method private writeMotorControlData(III)I
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "writeMotorControlData"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    invoke-interface {v1, p1, p2, p3}, Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;->writeMotorData(III)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeMotorControlData throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method


# virtual methods
.method public downMotorByPowerOff()V
    .locals 4

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "poweroff down motor at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByPowerOff:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    return-void
.end method

.method public getMotorState()I
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    if-eqz v0, :cond_1

    const/4 v0, -0x1

    return v0

    :cond_1
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    return v0

    :cond_2
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-eqz v0, :cond_3

    const/4 v0, -0x5

    return v0

    :cond_3
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    if-eqz v0, :cond_4

    const/16 v0, 0xa

    return v0

    :cond_4
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-eqz v0, :cond_5

    const/4 v0, 0x0

    return v0

    :cond_5
    const/16 v0, -0xa

    return v0
.end method

.method public notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3

    if-nez p1, :cond_0

    const-string/jumbo p1, "no"

    :cond_0
    invoke-static {}, Lcom/android/internal/os/SomeArgs;->obtain()Lcom/android/internal/os/SomeArgs;

    move-result-object v0

    iput-object p1, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    iput-object p2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    iput-object p3, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    iput-object p4, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public notifyKeyguardAppear()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mKeyguardAppear:Z

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyKeyguardAppear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public notifyKeyguardDisappear()V
    .locals 2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyKeyguardDisappear"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mKeyguardAppear:Z

    return-void
.end method

.method public notifyScreenOff()V
    .locals 4

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyScreenOff"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mKeyguardAppear:Z

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    sput-object v0, Lcom/android/server/oneplus/MotorManagerService;->mLastCameraUserPkg:Ljava/lang/String;

    :cond_1
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-nez v0, :cond_2

    const-string/jumbo v0, "screenoff"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->downMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_2
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->screenOffHeldWakelock()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x17

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffTimeout:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public notifyScreenOn()V
    .locals 2

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "notifyScreenOn ScreenOn"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isUpMotorOrNot()V

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mUpbyProxSensor:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLock:Z

    if-eqz v0, :cond_1

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->isCameraUserFocus()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "mhasWakeLock is true and upMotor"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "MotorManagerService"

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->upMotorByAllScene(Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->screenOnReleaseWakelock()V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_2
    return-void
.end method

.method public receiveSocketFromClient(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "msg from socket = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x0

    iput v1, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public setMotorDownArrived()V
    .locals 5

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorDownArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downArrivedCalib()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sDownedTime:J

    sget-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sDownedTime:J

    sget-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sBeginDowningTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sDownInterval:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-eq v2, v0, :cond_0

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-eqz v2, :cond_2

    :cond_0
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-nez v2, :cond_2

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByPowerOff:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnect:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsScreenOn:Z

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v2, :cond_1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setMotorDownArrived sMotorDownPress: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " mAppMotorCommand = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mLatestMotorCommand: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upMotor()I

    :cond_2
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-nez v2, :cond_3

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    if-eqz v2, :cond_7

    :cond_3
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-eqz v2, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0x12

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_4
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    if-eqz v2, :cond_6

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-eq v2, v0, :cond_5

    iget v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAppMotorCommand:I

    if-eqz v0, :cond_6

    :cond_5
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0x18

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    :cond_6
    :goto_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->saveVarWhenDownBySensorAndPush()V

    :cond_7
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v2, 0x19

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_8
    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "MotorManagerService"

    const-string/jumbo v2, "motor down release wake lock."

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenoffLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mScreenWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->release()V

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mhasWakeLockWhenScreenoff:Z

    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_a
    :goto_1
    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByScreenOff:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorByTelConnect:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorBySensor:Z

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorBySensorNow:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->destorySensor()V

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    if-nez v0, :cond_b

    sget-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sDownInterval:J

    :cond_b
    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->clearDownLockedDetectState()V

    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    if-nez v0, :cond_c

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downArrivedCalibDetect()V

    :cond_c
    return-void
.end method

.method public setMotorDownLocked()V
    .locals 2

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorDownLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->beginDownLockedDetect()V

    return-void
.end method

.method public setMotorDowning()V
    .locals 4

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sBeginDowningTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowning:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMotorDowning mFocusPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService;->mFocusPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " sCameraUserPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/oneplus/MotorManagerService;->mCameraUserPkg:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    if-nez v1, :cond_0

    const/4 v1, -0x1

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    :cond_0
    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    sget-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->exitFocusCamaraUserPkg()V

    :cond_1
    return-void
.end method

.method public setMotorPull()V
    .locals 0

    return-void
.end method

.method public setMotorPush()V
    .locals 2

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorPush"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownPress:Z

    const/16 v0, -0xa

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    return-void
.end method

.method public setMotorUpArrived()V
    .locals 11

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorUpArrived"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upArrivedCalib()V

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sUpedTime:J

    sget-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sUpedTime:J

    sget-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sBeginUpingTime:J

    sub-long/2addr v0, v2

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sUpInterval:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUped:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorTimes:I

    add-int/2addr v2, v0

    sput v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorTimes:I

    sget v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorTimes:I

    const/16 v3, 0x3c

    if-le v2, v3, :cond_0

    sput v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorTimes:I

    :cond_0
    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    if-nez v2, :cond_1

    sget-wide v2, Lcom/android/server/oneplus/MotorManagerService;->sUpInterval:J

    :cond_1
    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sDownMotorByScreenOff:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorBySensorNow:Z

    if-nez v2, :cond_2

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mIsFaceRecog:Z

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mLatestMotorCommand:I

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_3

    :cond_2
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    :cond_3
    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mDownMotorBySensorNow:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->clearUpLockedDetectState()V

    iget-boolean v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    if-eqz v2, :cond_6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string/jumbo v4, "persist.sys.motor.calibtime"

    const-wide/16 v5, 0x0

    invoke-static {v4, v5, v6}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    sub-long v6, v2, v4

    sget-boolean v8, Lcom/android/server/oneplus/MotorManagerService;->DEBUG:Z

    if-eqz v8, :cond_4

    const-string v8, "MotorManagerService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "sinceLastCalibTime: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    const-wide v8, 0x9a7ec800L

    cmp-long v10, v6, v8

    if-gez v10, :cond_5

    iput-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mNeedCalib:Z

    return-void

    :cond_5
    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->resetHallCalibrationData()Z

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    :cond_6
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mBeginCalib:Z

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->upArrivedCalibDetect()V

    :cond_7
    return-void
.end method

.method public setMotorUpLocked()V
    .locals 2

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorUpLocked"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorLockedFlag:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->beginUpLockedDetect()V

    return-void
.end method

.method public setMotorUping()V
    .locals 3

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "setMotorUping"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sput-wide v0, Lcom/android/server/oneplus/MotorManagerService;->sBeginUpingTime:J

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/MotorManagerService;->sMotorUping:Z

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDowned:Z

    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorDownLocked:Z

    sget-boolean v2, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    if-nez v2, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->notifyMotorStateChanged(I)V

    :cond_0
    sput-boolean v1, Lcom/android/server/oneplus/MotorManagerService;->sMotorUpLocked:Z

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->initSensor()V

    return-void
.end method

.method public systemReady()V
    .locals 5

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->initHallCalibrationData()Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService;->readMotorData(I)I

    move-result v1

    if-eq v1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->downMotor()I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mIActivityManager:Landroid/app/IActivityManager;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mProcessObserver:Landroid/app/IProcessObserver;

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->registerProcessObserver(Landroid/app/IProcessObserver;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MotorManagerService"

    const-string v2, "cannot register activity monitoring"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mAudioRecordingCallback:Landroid/media/AudioManager$AudioRecordingCallback;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mHandler:Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioRecordingCallback(Landroid/media/AudioManager$AudioRecordingCallback;Landroid/os/Handler;)V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService;->mOneplusTelReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "oneplus.permission.ONEPLUS_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->initBinderService()V

    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->listenPhoneState()V

    return-void
.end method

.method public writeMotorCalibData(ILjava/lang/String;)I
    .locals 5

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeMotorCalibData: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/oneplus/MotorManagerService;->getOPMotorControlService()Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService;->mIMotorControl:Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;

    invoke-interface {v1, p1, p2}, Lvendor/oneplus/hardware/motorcontrol/V1_0/IOPMotorControl;->writeCalibData(ILjava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeMotorCalibData throws exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v0
.end method
