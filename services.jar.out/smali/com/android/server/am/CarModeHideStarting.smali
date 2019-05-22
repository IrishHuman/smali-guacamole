.class public Lcom/android/server/am/CarModeHideStarting;
.super Ljava/lang/Object;
.source "CarModeHideStarting.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;
    }
.end annotation


# static fields
.field private static final ACTION_MANAGE_WECHAT_VISIBILITY:Ljava/lang/String; = "oneplus.intent.action.MANAGE_WECHAT_VISIBILITY"

.field private static final DEBUG:Z

.field private static final EXTRA_MANAGE_WECHAT_VISIBILITY:Ljava/lang/String; = "wechat_visibility"

.field private static final EXTRA_VALUE_MAKE_WECHAT_VISIBLE:I = 0x1

.field private static final EXTRA_VALUE_MOVE_WECHAT_TO_BACK:I = 0x0

.field private static final INIT_WECHAT_VIDEO:Ljava/lang/String; = "com.tencent.mm.plugin.voip.ui.VideoActivity"

.field private static final ONEPLUS_CARMODE_DOCK_SHOW:Ljava/lang/String; = "oneplus_carmode_dock_show"

.field private static final ONEPLUS_CARMODE_SWITCH:Ljava/lang/String; = "oneplus_carmode_switch"

.field private static final TAG:Ljava/lang/String; = "CarModeHideStarting"

.field private static final WECHAT_PACKAGE:Ljava/lang/String; = "com.tencent.mm"

.field private static sHandler:Landroid/os/Handler;

.field private static sOnlineWechatVideo:Ljava/lang/String;


# instance fields
.field private mCarModeObserver:Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;

.field private mHideStack:Lcom/android/server/am/ActivityStack;

.field private mIsCarDockShown:Z

.field private mIsCarMode:Z

.field private mService:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    const-string v0, "com.tencent.mm.plugin.voip.ui.VideoActivity"

    sput-object v0, Lcom/android/server/am/CarModeHideStarting;->sOnlineWechatVideo:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    iput-boolean v0, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sput-object v0, Lcom/android/server/am/CarModeHideStarting;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$002(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    sput-object p0, Lcom/android/server/am/CarModeHideStarting;->sOnlineWechatVideo:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityStack;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/CarModeHideStarting;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    return-object p1
.end method

.method static fetchOnlineWechatComponent()V
    .locals 2

    sget-object v0, Lcom/android/server/am/CarModeHideStarting;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/am/CarModeHideStarting$1;

    invoke-direct {v1}, Lcom/android/server/am/CarModeHideStarting$1;-><init>()V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method static isWeChatVideo(Ljava/lang/String;)Z
    .locals 1

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->isWechatHandlingEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/am/CarModeHideStarting;->sOnlineWechatVideo:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private registerReceiver()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.MANAGE_WECHAT_VISIBILITY"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/CarModeHideStarting$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/CarModeHideStarting$2;-><init>(Lcom/android/server/am/CarModeHideStarting;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method handleWechatRemoteHangupInBgNotify(Landroid/content/Context;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeHideStarting"

    const-string/jumbo v1, "wechat hang up and send broadcast to notify"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.CUSTOM_INCALL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "IM_Name"

    const-string v2, "com.tencent.mm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Action"

    const-string/jumbo v2, "remote_hangup"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "Call_Type"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method needRestFreeform(Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p1, Lcom/android/server/am/ActivityRecord;->isWeChatVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method needSetFreeform(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p2, Lcom/android/server/am/ActivityRecord;->isWeChatVideo:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method resetCarModeHideStartingStack(Lcom/android/server/am/ActivityStack;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeHideStarting"

    const-string/jumbo v1, "may reset stack freeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    sget-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "CarModeHideStarting"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reset stack #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " freeform"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string/jumbo v0, "resetCarModeHideStarting"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/server/am/ActivityStack;->moveToBack(Ljava/lang/String;Lcom/android/server/am/TaskRecord;)V

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iput-boolean v2, p1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    iput-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_3
    :goto_0
    return-void
.end method

.method setStackFreeformTypeAndOffsetLocation(Lcom/android/server/am/ActivityStack;)V
    .locals 12

    sget-boolean v0, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeHideStarting"

    const-string/jumbo v1, "may set stack freeform"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {p0, v0}, Lcom/android/server/am/CarModeHideStarting;->resetCarModeHideStartingStack(Lcom/android/server/am/ActivityStack;)V

    :cond_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/ActivityDisplay;->getTopStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/android/server/am/ActivityStack;->getTopActivity()Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_2

    const-string v3, "com.oneplus.carmode"

    iget-object v4, v2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, v2, Lcom/android/server/am/ActivityRecord;->visible:Z

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    :cond_2
    const/4 v2, 0x0

    if-eqz p1, :cond_5

    iget-boolean v3, p1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    if-nez v3, :cond_5

    iget-object v3, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v3

    if-nez v3, :cond_5

    if-nez v0, :cond_3

    iget-boolean v3, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    if-nez v3, :cond_3

    goto :goto_0

    :cond_3
    sget-boolean v3, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v3, :cond_4

    const-string v3, "CarModeHideStarting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "set stack #"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " freeform"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStackSupervisor;->getDefaultDisplay()Lcom/android/server/am/ActivityDisplay;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/ActivityDisplay;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x1

    iput-boolean v4, p1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    const/4 v5, 0x5

    invoke-virtual {p1, v5}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {v3, v5, v2}, Landroid/graphics/Rect;->offset(II)V

    iget-object v2, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v2, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x1

    const/4 v11, 0x0

    move-object v5, p1

    move-object v6, v3

    invoke-virtual/range {v4 .. v11}, Lcom/android/server/am/ActivityStackSupervisor;->resizeStackLocked(Lcom/android/server/am/ActivityStack;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;ZZZ)V

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    return-void

    :cond_5
    :goto_0
    sget-boolean v3, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "CarModeHideStarting"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stack id == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_6

    invoke-virtual {p1}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    goto :goto_1

    :cond_6
    const/4 v5, 0x0

    :goto_1
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", stack.forceFreeformForCarModeHideStarting == "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_7

    iget-boolean v2, p1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    nop

    :cond_7
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", issleeping == "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->isSleepingLocked()Z

    move-result v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", topcarmodevisible == "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", miscardockshown == "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-void
.end method

.method systemReady()V
    .locals 3

    new-instance v0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v2, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1, v2, p0}, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;-><init>(Lcom/android/server/am/CarModeHideStarting;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/am/CarModeHideStarting;)V

    iput-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mCarModeObserver:Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;

    invoke-direct {p0}, Lcom/android/server/am/CarModeHideStarting;->registerReceiver()V

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mCarModeObserver:Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;

    invoke-virtual {v0}, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->registerObserver()V

    return-void
.end method

.method updateCarDockShown(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    if-ne p1, v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    sget-boolean v1, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CarModeHideStarting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "car dock mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarDockShown:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateDriveMode(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-boolean v1, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    if-ne p1, v1, :cond_0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_0
    :try_start_1
    sget-boolean v1, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v1, :cond_1

    const-string v1, "CarModeHideStarting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "drive mode changed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean p1, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    iget-boolean v1, p0, Lcom/android/server/am/CarModeHideStarting;->mIsCarMode:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/CarModeHideStarting;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "CarModeHideStarting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset stack #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    invoke-virtual {v3}, Lcom/android/server/am/ActivityStack;->getStackId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " freeform for updateDriveMode"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    iput-object v2, p0, Lcom/android/server/am/CarModeHideStarting;->mHideStack:Lcom/android/server/am/ActivityStack;

    :cond_3
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
