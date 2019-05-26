.class public Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
.super Ljava/lang/Object;
.source "OemSceneXLinearVibrationMotorController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;,
        Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;,
        Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.xvibrate.action.test"

.field public static DEBUG:Z = false

.field public static IN_USING:Z = false

.field public static final OP_GAME_MODE_VIBRATE_FEEDBACK:Ljava/lang/String; = "op_game_mode_vibrate_feedback"

.field public static final Rule_XLVMotorController:Lcom/oneplus/oimc/OIMCRule;

.field public static final TAG:Ljava/lang/String; = "XLVMotor"

.field private static instance:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

.field private static sAwinic_effect:Lcom/android/server/am/HapticEffect;


# instance fields
.field private DEFAULT_ENABLED:I

.field private ENABLE:Z

.field private final URI_GAME_AUTO:Landroid/net/Uri;

.field private final URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

.field private final VALUE_FORCE_OFF:Ljava/lang/String;

.field private final VALUE_FORCE_ON:Ljava/lang/String;

.field private final VALUE_ON:Ljava/lang/String;

.field private configs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mAudioManager:Landroid/media/AudioManager;

.field mBluetoothReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

.field private mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

.field private mGlobalBluetoothA2dpOn:Z

.field private mLastEnableAwinic:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field mReceiver:Landroid/content/BroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mVibrateFeedbackModeObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;

.field updateVolumeRunnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x70

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    const/4 v1, 0x0

    sput-object v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    new-instance v1, Lcom/oneplus/oimc/OIMCRule;

    const-string v3, "XLVMotorController"

    const-string v4, "GameMode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->Rule_XLVMotorController:Lcom/oneplus/oimc/OIMCRule;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    const/4 v1, 0x1

    iput v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEFAULT_ENABLED:I

    const-string/jumbo v2, "op_game_mode_vibrate_feedback"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

    const-string v2, "game_mode_status_auto"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->URI_GAME_AUTO:Landroid/net/Uri;

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    new-instance v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;

    invoke-direct {v2, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;

    invoke-direct {v2, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    new-instance v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;

    invoke-direct {v2, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    const-string v2, "1"

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->VALUE_ON:Ljava/lang/String;

    const-string v2, "force-on"

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->VALUE_FORCE_ON:Ljava/lang/String;

    const-string v2, "force-off"

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->VALUE_FORCE_OFF:Ljava/lang/String;

    new-instance v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;

    invoke-direct {v2, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    :try_start_0
    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    const-string v3, "audio"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    const-string v3, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.media.action.HDMI_AUDIO_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v3, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v8, Landroid/content/IntentFilter;

    const-string v3, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-direct {v8, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v5, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v6, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    sget-object v7, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iput-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    new-instance v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;

    invoke-direct {v3, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mVibrateFeedbackModeObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;

    new-instance v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

    invoke-direct {v3, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;-><init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    iput-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    iget-object v4, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->URI_OP_GAME_MODE_VIBRATE_FEEDBACK:Landroid/net/Uri;

    iget-object v5, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mVibrateFeedbackModeObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;

    const/4 v6, -0x1

    invoke-virtual {v3, v4, v0, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v4, "op_game_mode_vibrate_feedback"

    iget v5, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEFAULT_ENABLED:I

    const/4 v6, -0x2

    invoke-static {v3, v4, v5, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v1, :cond_0

    move v0, v1

    nop

    :cond_0
    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_1

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.xvibrate.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_1
    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->loadConfig()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XLVMotor"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 1

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    return v0
.end method

.method static synthetic access$002(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    return p1
.end method

.method static synthetic access$100(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 1

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    return v0
.end method

.method static synthetic access$1000(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->dump()V

    return-void
.end method

.method static synthetic access$102(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    return p1
.end method

.method static synthetic access$1100(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    return-void
.end method

.method static synthetic access$300(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateVolume()V

    return-void
.end method

.method static synthetic access$400(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 1

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    return v0
.end method

.method static synthetic access$500(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateVibrateFeedbackEnabled()V

    return-void
.end method

.method static synthetic access$600(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$700(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z
    .locals 1

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->getGameModeAuto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$900(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->enableAwinicHaptic(Z)V

    return-void
.end method

.method private dump()V
    .locals 6

    const-string v0, "XLVMotor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ENABLE = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    const-string v1, "XLVMotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "configs.size() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

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

    const-string v3, "XLVMotor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "( "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

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

.method private enableAwinicHaptic(Z)V
    .locals 8

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    if-nez v0, :cond_1

    if-nez p1, :cond_1

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    const-string v1, "Avoid repetition."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLastEnableAwinic:Z

    const/16 v0, 0x90

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p1, :cond_3

    :try_start_0
    sget-boolean v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v3, :cond_2

    const-string v3, "XLVMotor"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enableXLinearVibrator: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    invoke-virtual {v3, v2}, Lcom/android/server/am/HapticEffect;->setMode(S)I

    sget-object v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    invoke-virtual {v3, v2}, Lcom/android/server/am/HapticEffect;->setEnabled(Z)I

    new-array v3, v1, [I

    aput v0, v3, v2

    invoke-static {v3}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->getGameStartFlag()Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->saveZoneInfo(ZZ)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->release()V

    goto/16 :goto_0

    :catch_0
    move-exception v0

    goto/16 :goto_1

    :cond_3
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getFrontPackageName()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v4, :cond_4

    const-string v4, "XLVMotor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableXLinearVibrator: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    invoke-direct {p0, v3}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->getParametersFromConfig(Ljava/lang/String;)I

    move-result v4

    sget-boolean v5, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v5, :cond_5

    const-string v5, "XLVMotor"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "enableXLinearVibrator parameters: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    sget-object v5, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    invoke-virtual {v5, v1}, Lcom/android/server/am/HapticEffect;->setEnabled(Z)I

    sget-object v5, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    int-to-short v6, v4

    invoke-virtual {v5, v6}, Lcom/android/server/am/HapticEffect;->setMode(S)I

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateVolume()V

    iget-object v5, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v5}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->getSupportedGame()[Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    new-array v1, v1, [I

    aput v0, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    if-eqz v0, :cond_6

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v0, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->init(Ljava/lang/String;)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameVibrateManager:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-virtual {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->getZoneInfo()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->setZoneInfo([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    :goto_0
    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_2
    return-void
.end method

.method private getGameModeAuto()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force-on"

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

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

.method public static getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
    .locals 1

    sget-object v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->instance:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    if-nez v0, :cond_0

    new-instance v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {v0, p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->instance:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    :cond_0
    sget-object v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->instance:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    return-object v0
.end method

.method private getParametersFromConfig(Ljava/lang/String;)I
    .locals 3

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;

    if-eqz v1, :cond_0

    iget v2, v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mAwinicMode:I

    monitor-exit v0

    return v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private loadConfig()V
    .locals 10

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x502000e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    array-length v1, v0

    if-lez v1, :cond_2

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    :try_start_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    const/4 v5, 0x3

    if-ne v4, v5, :cond_0

    iget-object v4, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    aget-object v5, v3, v1

    new-instance v6, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;

    aget-object v7, v3, v1

    const/4 v8, 0x1

    aget-object v8, v3, v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    const/4 v9, 0x2

    aget-object v9, v3, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;-><init>(Ljava/lang/String;II)V

    invoke-virtual {v4, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_1
    return-void
.end method

.method public static setHapticEffect(Lcom/android/server/am/HapticEffect;)V
    .locals 0

    sput-object p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    return-void
.end method

.method private setParameters(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setParameters: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {p1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "XLVMotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exceptions during setParameters: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private updateFunctionRule(Z)V
    .locals 4

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_1

    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    :cond_1
    const/4 v0, -0x2

    if-eqz p1, :cond_2

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->Rule_XLVMotorController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->Rule_XLVMotorController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "XLVMotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFunctionRule error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private declared-synchronized updateVibrateFeedbackEnabled()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_game_mode_vibrate_feedback"

    iget v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEFAULT_ENABLED:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "XLVMotor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Feedback enabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGlobalBluetoothA2dpOn:Z

    if-nez v0, :cond_2

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    invoke-direct {p0, v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private updateVolume()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v2, v1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result v2

    invoke-static {v2}, Landroid/media/AudioDeviceInfo;->convertInternalDeviceToDeviceType(I)I

    move-result v3

    sget-boolean v4, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v4, :cond_0

    const-string v4, "XLVMotor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVolume device:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " type:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v4, v1, v0, v3}, Landroid/media/AudioManager;->getStreamVolumeDb(III)F

    move-result v1

    sget-boolean v4, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v4, :cond_1

    const-string v4, "XLVMotor"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "updateVolume decibels="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " mCurrentVolumeIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sget-object v4, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->sAwinic_effect:Lcom/android/server/am/HapticEffect;

    invoke-virtual {v4, v1}, Lcom/android/server/am/HapticEffect;->setVolume(F)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-boolean v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "XLVMotor"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateVolume e:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
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
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    const-string v1, "[scene] XLVMotor: config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public disableFeatureWhenException()V
    .locals 2

    const-string v0, "XLVMotor"

    const-string v1, "disableFeatureWhenException!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mBluetoothReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mVibrateFeedbackModeObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    :cond_0
    sput-boolean v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    return-void
.end method

.method public getSupportList()Ljava/util/HashMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->configs:Ljava/util/HashMap;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public start(Ljava/lang/Object;)I
    .locals 5

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    const-string v1, "[scene] XLVMotor: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->getGameModeAuto()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->enableAwinicHaptic(Z)V

    :cond_1
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return v4
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    const-string v1, "[scene] XLVMotor: stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->enableAwinicHaptic(Z)V

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;

    invoke-virtual {v1, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return v0
.end method

.method public updateFunctionRule()V
    .locals 1

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->ENABLE:Z

    invoke-direct {p0, v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule(Z)V

    return-void
.end method
