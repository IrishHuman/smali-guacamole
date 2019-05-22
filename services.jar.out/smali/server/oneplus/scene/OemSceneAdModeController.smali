.class public Lserver/oneplus/scene/OemSceneAdModeController;
.super Ljava/lang/Object;
.source "OemSceneAdModeController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;,
        Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.admode.action.test"

.field public static IN_USING:Z

.field public static final Rule_AdModeController:Lcom/oneplus/oimc/OIMCRule;

.field private static instance:Lserver/oneplus/scene/OemSceneAdModeController;

.field public static mManualAdStatus:Z


# instance fields
.field public DEBUG:Z

.field public DEFAULT_AD_ENABLED:I

.field public ENABLE:Z

.field private INTERVAL:I

.field public final OP_AD_MODE_MANUAL:I

.field public final OP_AD_MODE_STRENGTH:I

.field public OP_AD_STRENGTH_DEFAULT:I

.field public final OP_GAME_MODE_AD_ENABLE:Ljava/lang/String;

.field public final TAG:Ljava/lang/String;

.field private TIMES:I

.field private final URI_GAME_AUTO:Landroid/net/Uri;

.field private final URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

.field private final VALUE_FORCE_OFF:Ljava/lang/String;

.field private final VALUE_FORCE_ON:Ljava/lang/String;

.field private final VALUE_ON:Ljava/lang/String;

.field private mAdModeObserver:Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;

.field private mContext:Landroid/content/Context;

.field private mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

.field private mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;

.field private mLastEnabled:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mResolver:Landroid/content/ContentResolver;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mTimer:Landroid/os/CountDownTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x7a

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lserver/oneplus/scene/OemSceneAdModeController;->IN_USING:Z

    sput-boolean v2, Lserver/oneplus/scene/OemSceneAdModeController;->mManualAdStatus:Z

    new-instance v1, Lcom/oneplus/oimc/OIMCRule;

    const-string v3, "AdModeController"

    const-string v4, "GameMode"

    filled-new-array {v4}, [Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v3, v0, v4, v2}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;I)V

    sput-object v1, Lserver/oneplus/scene/OemSceneAdModeController;->Rule_AdModeController:Lcom/oneplus/oimc/OIMCRule;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OemSceneAdModeController"

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    iput v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEFAULT_AD_ENABLED:I

    const-string/jumbo v1, "op_game_mode_ad_enable"

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_GAME_MODE_AD_ENABLE:Ljava/lang/String;

    const-string/jumbo v1, "op_game_mode_ad_enable"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

    const-string v1, "game_mode_status_auto"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    const/16 v1, 0xd

    iput v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_MODE_MANUAL:I

    const/16 v1, 0xe

    iput v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_MODE_STRENGTH:I

    const/16 v1, 0x12c

    iput v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    const/4 v1, 0x0

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    const/16 v1, 0x14

    iput v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->INTERVAL:I

    const/16 v1, 0x3c

    iput v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->TIMES:I

    iput-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLastEnabled:Z

    const-string v0, "1"

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->VALUE_ON:Ljava/lang/String;

    const-string v0, "force-on"

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->VALUE_FORCE_ON:Ljava/lang/String;

    const-string v0, "force-off"

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->VALUE_FORCE_OFF:Ljava/lang/String;

    new-instance v0, Lserver/oneplus/scene/OemSceneAdModeController$3;

    invoke-direct {v0, p0}, Lserver/oneplus/scene/OemSceneAdModeController$3;-><init>(Lserver/oneplus/scene/OemSceneAdModeController;)V

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneAdModeController;->initEnv(Landroid/content/Context;)V

    :try_start_0
    invoke-static {}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->getService()Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAdModeController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method static synthetic access$000(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lserver/oneplus/scene/OemSceneAdModeController;->setModeSmoothly(ZI)V

    return-void
.end method

.method static synthetic access$100(Lserver/oneplus/scene/OemSceneAdModeController;)I
    .locals 1

    iget v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->TIMES:I

    return v0
.end method

.method static synthetic access$102(Lserver/oneplus/scene/OemSceneAdModeController;I)I
    .locals 0

    iput p1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->TIMES:I

    return p1
.end method

.method static synthetic access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    return-object v0
.end method

.method static synthetic access$300(Lserver/oneplus/scene/OemSceneAdModeController;)V
    .locals 0

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneAdModeController;->updateAdEnabled()V

    return-void
.end method

.method static synthetic access$400(Lserver/oneplus/scene/OemSceneAdModeController;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic access$500(Lserver/oneplus/scene/OemSceneAdModeController;Ljava/lang/String;)Z
    .locals 1

    invoke-direct {p0, p1}, Lserver/oneplus/scene/OemSceneAdModeController;->validateValue(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lserver/oneplus/scene/OemSceneAdModeController;)Z
    .locals 1

    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneAdModeController;->getGameModeAuto()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lserver/oneplus/scene/OemSceneAdModeController;->setModeByDefault(ZI)V

    return-void
.end method

.method static synthetic access$800(Lserver/oneplus/scene/OemSceneAdModeController;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lserver/oneplus/scene/OemSceneAdModeController;->setMode(II)V

    return-void
.end method

.method static synthetic access$900(Lserver/oneplus/scene/OemSceneAdModeController;)I
    .locals 1

    iget v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->INTERVAL:I

    return v0
.end method

.method static synthetic access$902(Lserver/oneplus/scene/OemSceneAdModeController;I)I
    .locals 0

    iput p1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->INTERVAL:I

    return p1
.end method

.method private getGameModeAuto()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "force-on"

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

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

.method public static getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneAdModeController;
    .locals 1

    sget-object v0, Lserver/oneplus/scene/OemSceneAdModeController;->instance:Lserver/oneplus/scene/OemSceneAdModeController;

    if-nez v0, :cond_0

    new-instance v0, Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-direct {v0, p0}, Lserver/oneplus/scene/OemSceneAdModeController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lserver/oneplus/scene/OemSceneAdModeController;->instance:Lserver/oneplus/scene/OemSceneAdModeController;

    :cond_0
    sget-object v0, Lserver/oneplus/scene/OemSceneAdModeController;->instance:Lserver/oneplus/scene/OemSceneAdModeController;

    return-object v0
.end method

.method private initEnv(Landroid/content/Context;)V
    .locals 6

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.admode.action.test"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;

    invoke-direct {v1, p0}, Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;-><init>(Lserver/oneplus/scene/OemSceneAdModeController;)V

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mAdModeObserver:Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->URI_GAME_MODE_AD_ENABLE:Landroid/net/Uri;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mAdModeObserver:Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;

    const/4 v4, 0x0

    const/4 v5, -0x1

    invoke-virtual {v1, v2, v4, v3, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    new-instance v1, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;

    invoke-direct {v1, p0}, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;-><init>(Lserver/oneplus/scene/OemSceneAdModeController;)V

    iput-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "op_game_mode_ad_enable"

    iget v3, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEFAULT_AD_ENABLED:I

    const/4 v5, -0x2

    invoke-static {v1, v2, v3, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    iput-boolean v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    return-void
.end method

.method private setMode(II)V
    .locals 4

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setMode m="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " v="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    invoke-interface {v0, p1, p2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAdModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private setModeByDefault(ZI)V
    .locals 3

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLastEnabled:Z

    if-ne v0, p1, :cond_1

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "same enabled "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    iput-boolean p1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLastEnabled:Z

    sput-boolean p1, Lserver/oneplus/scene/OemSceneAdModeController;->mManualAdStatus:Z

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mDaemon:Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    if-nez v0, :cond_2

    const-string v0, "OemSceneAdModeController"

    const-string v1, "OneplusDisplay is null!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    const/4 v0, 0x1

    if-lt p2, v0, :cond_5

    const/16 v0, 0x3ff

    if-le p2, v0, :cond_3

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setModeByDefault enable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " strength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lserver/oneplus/scene/OemSceneAdModeController$1;

    invoke-direct {v1, p0, p1, p2}, Lserver/oneplus/scene/OemSceneAdModeController$1;-><init>(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_5
    :goto_0
    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "error ad strength "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setModeSmoothly(ZI)V
    .locals 9

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    :cond_0
    new-instance v0, Lserver/oneplus/scene/OemSceneAdModeController$2;

    iget v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->TIMES:I

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->INTERVAL:I

    mul-int/2addr v1, v2

    add-int/lit8 v1, v1, 0x32

    int-to-long v3, v1

    iget v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->INTERVAL:I

    int-to-long v5, v1

    move-object v1, v0

    move-object v2, p0

    move v7, p2

    move v8, p1

    invoke-direct/range {v1 .. v8}, Lserver/oneplus/scene/OemSceneAdModeController$2;-><init>(Lserver/oneplus/scene/OemSceneAdModeController;JJIZ)V

    invoke-virtual {v0}, Lserver/oneplus/scene/OemSceneAdModeController$2;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private declared-synchronized updateAdEnabled()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "op_game_mode_ad_enable"

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEFAULT_AD_ENABLED:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ad enabled:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-virtual {p0}, Lserver/oneplus/scene/OemSceneAdModeController;->updateFunctionRule()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
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

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    const-string v1, "[scene] AdModeController: config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 5

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    const-string v1, "[scene] AdModeController: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lserver/oneplus/scene/OemSceneAdModeController;->getGameModeAuto()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    iget v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    invoke-direct {p0, v0, v1}, Lserver/oneplus/scene/OemSceneAdModeController;->setModeByDefault(ZI)V

    :cond_1
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController;->URI_GAME_AUTO:Landroid/net/Uri;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return v4
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 3

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    const-string v1, "[scene] AdModeController: stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lserver/oneplus/scene/OemSceneAdModeController;->setModeByDefault(ZI)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mGameModeAutoObserver:Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;

    invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return v1
.end method

.method public updateFunctionRule()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    if-nez v0, :cond_0

    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    :cond_0
    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lserver/oneplus/scene/OemSceneAdModeController;->Rule_AdModeController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lserver/oneplus/scene/OemSceneAdModeController;->Rule_AdModeController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v2, v1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAdModeController"

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
