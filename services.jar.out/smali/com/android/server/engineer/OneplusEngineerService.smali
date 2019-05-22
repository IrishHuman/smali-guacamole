.class public Lcom/android/server/engineer/OneplusEngineerService;
.super Lcom/android/server/SystemService;
.source "OneplusEngineerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;,
        Lcom/android/server/engineer/OneplusEngineerService$BinderService;,
        Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;,
        Lcom/android/server/engineer/OneplusEngineerService$LocalService;
    }
.end annotation


# static fields
.field private static final DEBUG_ONEPLUS:Z

.field private static final TAG:Ljava/lang/String; = "OneplusEngineerService"


# instance fields
.field private mBatteryLevel:I

.field private mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

.field private mBreathLight:Lcom/android/server/lights/Light;

.field private mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mButtonLight:Lcom/android/server/lights/Light;

.field private final mContext:Landroid/content/Context;

.field private final mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

.field private mLightsManager:Lcom/android/server/lights/LightsManager;

.field private mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

.field private final mServiceThread:Lcom/android/server/ServiceThread;

.field private mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;

.field private mSwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/engineer/OneplusEngineerService;->DEBUG_ONEPLUS:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4

    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/OneplusEngineerService$1;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$2;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/OneplusEngineerService$2;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OneplusEngineerService"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mServiceThread:Lcom/android/server/ServiceThread;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mServiceThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    const-class v0, Lcom/android/server/lights/LightsManager;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/lights/LightsManager;

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mButtonLight:Lcom/android/server/lights/Light;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mLightsManager:Lcom/android/server/lights/LightsManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/lights/LightsManager;->getLight(I)Lcom/android/server/lights/Light;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBreathLight:Lcom/android/server/lights/Light;

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    invoke-direct {v0, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerConfig;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    invoke-direct {v0, v1, v2}, Lcom/android/server/engineer/OneplusEngineerConfig;-><init>(Landroid/content/Context;Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    return-void
.end method

.method static synthetic access$002(Lcom/android/server/engineer/OneplusEngineerService;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBatteryLevel:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/engineer/OneplusEngineerConfig;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)Z
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->isProvisioned(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->writeWpIssueToCriticalLog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->checkPermission()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mButtonLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBreathLight:Lcom/android/server/lights/Light;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/engineer/OneplusEngineerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerService;->dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method private checkPermission()Z
    .locals 4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3e9

    if-eq v0, v1, :cond_0

    const-string v1, "OneplusEngineerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Permission Denial : can\'t access from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method private clearWpIssue()V
    .locals 1

    const/16 v0, 0x65

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->cleanItem(I)I

    const/16 v0, 0x465

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->cleanItem(I)I

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->syncCacheToEmmc()I

    return-void
.end method

.method private dumpInternal(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 9

    if-eqz p3, :cond_1

    array-length v0, p3

    if-lez v0, :cond_1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p3

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p3, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "    "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "OneplusEngineerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpInternal args is : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->isSecrecyEncryptState(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    new-instance v1, Lcom/android/server/engineer/OneplusEngineerShell;

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v0}, Lcom/android/server/engineer/OneplusEngineerShell;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const/4 v3, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    new-instance v8, Landroid/os/ResultReceiver;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    move-object v4, p1

    move-object v6, p3

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/engineer/OneplusEngineerShell;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    :goto_1
    return-void
.end method

.method private getDownloadModeInternal()Ljava/lang/String;
    .locals 2

    const v0, 0xf4279

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private getOneplusSerialNoInternal()Ljava/lang/String;
    .locals 1

    const-string v0, "/mnt/vendor/persist/engineermode/oem_serial_no"

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    :cond_0
    return-object v0
.end method

.method private isProvisioned(Landroid/content/Context;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private writeWpIssueToCriticalLog()V
    .locals 7

    const-string v0, "OneplusEngineerService"

    const-string/jumbo v1, "writeWpIssueToCriticalLog"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v0, "gsm.serial"

    const-string v1, "UNKNOWN"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "WP OFF ISSUE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v2, "sys.usb.config.meta"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "USB Charge Disable"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string/jumbo v2, "normal"

    const-string/jumbo v3, "persist.vendor.atm.mdmode"

    const-string/jumbo v4, "normal"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "MODEM META MODE"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/16 v3, 0x65

    const-string v4, "ANDROID"

    const-string v5, "WriteProtectIssue"

    const-string v6, "WriteProtectNeedReset"

    invoke-static {v3, v2, v4, v5, v6}, Lcom/android/server/engineer/OneplusEngineerUtils;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method getBackCoverColorIdInternal()Ljava/lang/String;
    .locals 3

    const v0, 0x186a5

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerUtils;->isBackCoverColorIdValid(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    const/4 v2, 0x0

    return-object v2
.end method

.method getBatteryLevel()I
    .locals 1

    iget v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBatteryLevel:I

    return v0
.end method

.method getDownloadStatusInternal()Ljava/lang/String;
    .locals 2

    const v0, 0x186a1

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method isActivityInBlackListInternal(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig;->isActivityInBlackList(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isEngineerOrderInBlackListInternal(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig;->isEngineerOrderInBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isServiceInBlackListInternal(Landroid/content/ComponentName;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig;->isServiceInBlackList(Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isShellCommandInBlackListInternal(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig;->isShellCommandInBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBootPhase(I)V
    .locals 7

    const/16 v0, 0x3e8

    if-ne p1, v0, :cond_3

    const-string v0, "OneplusEngineerService"

    const-string/jumbo v1, "on PHASE_BOOT_COMPLETED"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mOneplusEngineerConfig:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->initUpdateBroadcastReceiver()V

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.ACTION_SHUTDOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string/jumbo v3, "oem.permission.OEM_COMPONENT_SAFE"

    iget-object v4, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    new-instance v2, Lcom/android/server/engineer/OneplusEngineerService$3;

    invoke-direct {v2, p0}, Lcom/android/server/engineer/OneplusEngineerService$3;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService;->mHandler:Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;

    new-instance v2, Lcom/android/server/engineer/OneplusEngineerService$4;

    invoke-direct {v2, p0}, Lcom/android/server/engineer/OneplusEngineerService$4;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {v1, v2}, Lcom/android/server/engineer/OneplusEngineerService$OneplusEngineerHandler;->post(Ljava/lang/Runnable;)Z

    new-instance v1, Lcom/android/server/engineer/OneplusEngineerService$5;

    invoke-direct {v1, p0}, Lcom/android/server/engineer/OneplusEngineerService$5;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/android/server/engineer/OneplusEngineerService;->isProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "device_provisioned"

    invoke-static {v3}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerService;->mSettingsObserver:Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;

    const/4 v6, -0x1

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :cond_2
    goto/16 :goto_3

    :cond_3
    const/16 v0, 0x1e0

    if-ne v0, p1, :cond_7

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerService;->getBackCoverColorIdInternal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4

    :try_start_0
    const-string/jumbo v1, "ro.hw.phone.color"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OneplusEngineerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set color id property caught exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->getDownloadModeInternal()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    const-string v2, "\"login_mode\":\t\"production\""

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    :try_start_1
    const-string/jumbo v2, "sys.oem.production.login.mode"

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "OneplusEngineerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set download mode property caught exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_1
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->getOneplusSerialNoInternal()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    :try_start_2
    const-string/jumbo v3, "persist.sys.oneplus.serialno"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v3

    const-string v4, "OneplusEngineerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "set Oneplus serial no caught exception : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    goto :goto_3

    :cond_6
    sget-boolean v3, Lcom/android/server/engineer/OneplusEngineerService;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_7

    const-string v3, "OneplusEngineerService"

    const-string v4, "Skip to update empty value from getOneplusSerialNoInternal."

    invoke-static {v3, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_3
    return-void
.end method

.method public onStart()V
    .locals 3

    const-string v0, "OneplusEngineerService"

    const-string/jumbo v1, "publishBinderService ENGINEER_SERVICE"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$BinderService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$1;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    const-string v0, "engineer"

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService;->mBinderService:Lcom/android/server/engineer/OneplusEngineerService$BinderService;

    invoke-virtual {p0, v0, v2}, Lcom/android/server/engineer/OneplusEngineerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    const-class v0, Landroid/engineer/OneplusEngineerInternal;

    new-instance v2, Lcom/android/server/engineer/OneplusEngineerService$LocalService;

    invoke-direct {v2, p0, v1}, Lcom/android/server/engineer/OneplusEngineerService$LocalService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$1;)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/engineer/OneplusEngineerService;->publishLocalService(Ljava/lang/Class;Ljava/lang/Object;)V

    return-void
.end method

.method resetWriteProtectStateInternal()Z
    .locals 5

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetPartionWriteProtectState(Z)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v2

    if-nez v2, :cond_1

    :try_start_0
    const-string/jumbo v0, "vendor.oem.quit.atm"

    const-string/jumbo v2, "true"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "OneplusEngineerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set reset atm property caught exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "notification"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    const/16 v2, 0x2710

    invoke-virtual {v0, v2}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerService;->clearWpIssue()V

    return v1

    :cond_1
    return v0
.end method

.method setBackCoverColorIdInternal(Ljava/lang/String;)Z
    .locals 6

    const v0, 0x186a6

    if-nez p1, :cond_0

    const/16 v1, 0x8

    new-array v1, v1, [B

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerUtils;->isBackCoverColorIdValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    array-length v2, v1

    invoke-static {v0, v1, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    if-eqz v0, :cond_1

    :try_start_0
    const-string/jumbo v2, "ro.hw.phone.color"

    invoke-static {v2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v3, "OneplusEngineerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set back cover color id caught exception : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return v0

    :cond_2
    const/4 v0, 0x0

    return v0
.end method
