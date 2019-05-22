.class public Lcom/android/server/ESportMode;
.super Ljava/lang/Object;
.source "ESportMode.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;,
        Lcom/android/server/ESportMode$ESportSettingsContentObserver;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final MAX_PHONE_ES_RETRY_COUNT:I = 0xa

.field private static final PHONE_ES_RETRY_DELAY:I = 0xbb8

.field private static final TAG:Ljava/lang/String; = "ESportMode"

.field private static final URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sEsportEnabled:Z

.field private static sIExtTelephony:Ljava/lang/Object;

.field private static sInstance:Lcom/android/server/ESportMode;

.field private static sTelEsportEnabled:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

.field private mEnabled:Z

.field private mEverShownGuider:Z

.field private mHandler:Landroid/os/Handler;

.field private mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

.field private mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTelephonyEsportEnabled:Z

.field private mTelephonyEsportRetryCount:I

.field private mUser:I

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "esport_mode_enable_trigger"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/ESportMode;->URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    sput-boolean v0, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    iput v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/ESportMode;->mUser:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;-><init>(Lcom/android/server/ESportMode;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    new-instance v2, Lcom/android/server/ESportMode$2;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$2;-><init>(Lcom/android/server/ESportMode;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mWindowManagerService:Landroid/view/IWindowManager;

    const-class v2, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v2, p0, Lcom/android/server/ESportMode;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    new-instance v2, Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/ESportMode$ESportSettingsContentObserver;-><init>(Lcom/android/server/ESportMode;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/ESportMode;->URI_ESPORT_MODE_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/ESportMode;->mESportSettingsContentObserver:Lcom/android/server/ESportMode$ESportSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/ESportMode$1;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$1;-><init>(Lcom/android/server/ESportMode;)V

    const-class v3, Lcom/android/server/ESportMode;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/ESportMode;->mReceiver:Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {p1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/ESportMode;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {p0}, Lcom/android/server/ESportMode;->needResumeUserDataSaver()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v3, "esport_mode_enabled"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/am/OnePlusEsportApisController;->forceSetRestrictBackground(Z)V

    :cond_0
    return-void
.end method

.method static synthetic access$002(Lcom/android/server/ESportMode;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/server/ESportMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/server/ESportMode;)Lcom/android/server/ESportGuider;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ESportMode;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/ESportMode;)I
    .locals 1

    iget v0, p0, Lcom/android/server/ESportMode;->mUser:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/server/ESportMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    return v0
.end method

.method static synthetic access$600(Lcom/android/server/ESportMode;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/ESportMode;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ESportMode;->isWiFiConnected()Z

    move-result v0

    return v0
.end method

.method static synthetic access$800()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/ESportMode;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    return v0
.end method

.method private getDataSaverEnabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportMode;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method private static getIExtTelephony()Ljava/lang/Object;
    .locals 8

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    const-string/jumbo v1, "getIExtTelephony()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "extphone"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    const-string/jumbo v2, "org.codeaurora.internal.IExtTelephony$Stub"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "asInterface"

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Class;

    const-class v6, Landroid/os/IBinder;

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v2, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v7

    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    sput-object v4, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    nop

    sget-object v0, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    return-object v0

    :catch_0
    move-exception v1

    const-string v2, "ESportMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getIExtTelephony() exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ESportMode;
    .locals 1

    sget-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ESportMode;

    invoke-direct {v0, p0}, Lcom/android/server/ESportMode;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    :cond_0
    sget-object v0, Lcom/android/server/ESportMode;->sInstance:Lcom/android/server/ESportMode;

    return-object v0
.end method

.method private invokeEsportAPIs(Z)V
    .locals 5

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] ESportMode invokeEsportAPIs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enabled"

    if-eqz p1, :cond_1

    const-string v2, "1"

    goto :goto_0

    :cond_1
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    sput-boolean p1, Lcom/android/server/ESportMode;->sEsportEnabled:Z

    if-eqz p1, :cond_2

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_guider_never_show"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEverShownGuider:Z

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/android/server/ESportMode;->isDocked()Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->show()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/ESportMode;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->hide()V

    :cond_3
    :goto_1
    invoke-direct {p0}, Lcom/android/server/ESportMode;->isWiFiConnected()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    goto :goto_2

    :cond_4
    invoke-direct {p0, p1}, Lcom/android/server/ESportMode;->setTelephonyEsportMode(Z)V

    :goto_2
    if-eqz p1, :cond_7

    invoke-direct {p0}, Lcom/android/server/ESportMode;->getDataSaverEnabled()Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_data_saver"

    if-eqz v0, :cond_5

    const-string v4, "1"

    goto :goto_3

    :cond_5
    const-string v4, "0"

    :goto_3
    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    if-nez v0, :cond_6

    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/am/OnePlusEsportApisController;->setRestrictBackground(Z)V

    :cond_6
    goto :goto_4

    :cond_7
    invoke-direct {p0}, Lcom/android/server/ESportMode;->needResumeUserDataSaver()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Lcom/android/server/am/OnePlusEsportApisController;->getInstance()Lcom/android/server/am/OnePlusEsportApisController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/am/OnePlusEsportApisController;->setRestrictBackground(Z)V

    :cond_8
    :goto_4
    return-void
.end method

.method private isWiFiConnected()Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string v2, "ESportMode"

    const-string v3, "failed to get ConnectivityManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    if-nez v2, :cond_1

    const-string v3, "ESportMode"

    const-string v4, "failed to get NetworkInfo"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    return v1
.end method

.method private listenForConfigChanged()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.CONFIGURATION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ESportMode;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/ESportMode$3;

    invoke-direct {v2, p0}, Lcom/android/server/ESportMode$3;-><init>(Lcom/android/server/ESportMode;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private needResumeUserDataSaver()Z
    .locals 4

    const-string v0, "0"

    iget-object v1, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "esport_mode_data_saver"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private setTelephonyEsportMode(Z)V
    .locals 7

    sget-boolean v0, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    if-ne v0, p1, :cond_0

    iget v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setTelephonyEsportMode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const/4 v0, 0x1

    :try_start_0
    iget-object v1, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/ESportMode;->getIExtTelephony()Ljava/lang/Object;

    move-result-object v1

    sput-object v1, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "ESportMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "got sIExtTelephony: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    sget-object v1, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "generalSetter"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Ljava/lang/String;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const-class v5, Landroid/os/Bundle;

    aput-object v5, v4, v0

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v4, "enable"

    invoke-virtual {v2, v4, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    sget-object v4, Lcom/android/server/ESportMode;->sIExtTelephony:Ljava/lang/Object;

    new-array v3, v3, [Ljava/lang/Object;

    const-string/jumbo v5, "notifyEsportsMode"

    aput-object v5, v3, v6

    aput-object v2, v3, v0

    invoke-virtual {v1, v4, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    sput-boolean p1, Lcom/android/server/ESportMode;->sTelEsportEnabled:Z

    sget-boolean v3, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v3, :cond_4

    const-string/jumbo v3, "persist.debug.esport.crash"

    invoke-static {v3, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    const-string v3, "ESportMode"

    const-string v4, "debugging for phone crash"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    throw v3

    :cond_4
    :goto_0
    iput v6, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "ESportMode"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget v2, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    iget v0, p0, Lcom/android/server/ESportMode;->mTelephonyEsportRetryCount:I

    const/16 v2, 0xa

    if-lt v0, v2, :cond_5

    const-string v0, "ESportMode"

    const-string v2, "Useless recover for phone esport triggering too many times. Ignore."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_5
    iput-boolean p1, p0, Lcom/android/server/ESportMode;->mTelephonyEsportEnabled:Z

    iget-object v0, p0, Lcom/android/server/ESportMode;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/ESportMode;->mPhoneEsportRetryRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0xbb8

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected isDocked()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/ESportMode;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    iget-object v4, p0, Lcom/android/server/ESportMode;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "ESportMode"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method public start(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V

    :cond_1
    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    sget-boolean v1, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v1, v2}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V

    :cond_1
    return v0
.end method

.method public updateStatus(I)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/android/server/ESportMode;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/ESportMode;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/ESportMode;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "0"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    iget-boolean v0, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/server/ESportMode;->invokeEsportAPIs(Z)V

    iput p1, p0, Lcom/android/server/ESportMode;->mUser:I

    sget-boolean v0, Lcom/android/server/am/OnePlusDuallteManager;->IN_USING:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OnePlusDuallteManager;->getInstance()Lcom/android/server/am/OnePlusDuallteManager;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/ESportMode;->mEnabled:Z

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusDuallteManager;->updateEsportModeStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ESportMode"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateStatus error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
