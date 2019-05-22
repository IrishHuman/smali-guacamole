.class public Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;
.super Ljava/lang/Object;
.source "OnePlusAmUtil.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusAmUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OnePlusActivityStack"
.end annotation


# instance fields
.field private mActivityStack:Lcom/android/server/am/ActivityStack;

.field protected mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;


# direct methods
.method public constructor <init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    new-instance v0, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-direct {v0, p1, p2}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;-><init>(Lcom/android/server/am/ActivityStack;Lcom/android/server/am/ActivityStackSupervisor;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    return-void
.end method


# virtual methods
.method public final handleEvaluateGameMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateGameMode(Z)V

    return-void
.end method

.method public final handleEvaluateReadMode(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->handleEvaluateReadMode(Z)V

    return-void
.end method

.method public final resumeTopActivityInnerLocked(Lcom/android/server/am/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/am/ActivityRecord;)Z
    .locals 11

    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusTemperatureMonitor;->getInstance()Lcom/android/server/am/OnePlusTemperatureMonitor;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusTemperatureMonitor;->startAntutuMonitor(Ljava/lang/String;)Z

    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    iget-object v1, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v3, p3, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, p3, Lcom/android/server/am/ActivityRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v4, v4, Lcom/android/server/am/ProcessRecord;->pid:I

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->setFront(Ljava/lang/String;Ljava/lang/String;II)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->startEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateSceneScreenEffectFlag(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x68

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x0

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->getInstance()Lcom/android/server/oneplus/MotorManagerService;

    move-result-object v2

    if-eqz v2, :cond_6

    if-eqz p3, :cond_6

    iget-object v4, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_6

    const-class v4, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Lcom/android/server/wm/WindowManagerInternal;

    if-eqz v10, :cond_2

    const/4 v4, 0x3

    :try_start_0
    invoke-virtual {v10, v4}, Lcom/android/server/wm/WindowManagerInternal;->isStackVisible(I)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v10}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v4

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception while checking window status: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    iget-object v5, p3, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    if-nez p1, :cond_3

    const-string v4, ""

    :goto_1
    move-object v6, v4

    goto :goto_2

    :cond_3
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_1

    :goto_2
    if-eqz p1, :cond_5

    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-nez v4, :cond_4

    goto :goto_3

    :cond_4
    iget-object v4, p1, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    goto :goto_4

    :cond_5
    :goto_3
    const-string v4, ""

    :goto_4
    move-object v7, v4

    iget-object v4, p3, Lcom/android/server/am/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v4, v2

    move v9, v1

    invoke-virtual/range {v4 .. v9}, Lcom/android/server/oneplus/MotorManagerService;->notifyActivityChanged(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :cond_6
    new-array v0, v0, [I

    const/16 v1, 0x74

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p3, Lcom/android/server/am/ActivityRecord;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {p3}, Lcom/android/server/am/ActivityRecord;->getStack()Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    invoke-static {v0, v1}, Lcom/android/server/CarModeDockHandler;->handleCarModeDockChange(Landroid/content/ComponentName;Z)V

    :cond_7
    return v3
.end method

.method public final startPausingLocked(ZZLcom/android/server/am/ActivityRecord;Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    iget-object v1, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mActivityStack:Lcom/android/server/am/ActivityStack;

    iget-object v1, v1, Lcom/android/server/am/ActivityStack;->mResumedActivity:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0, v1, p3}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->stopEvaluateSceneModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V

    const/4 v0, 0x0

    return v0
.end method

.method public final updateDisableSceneScreenEffectFlag(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusAmUtil$OnePlusActivityStack;->mSceneModeActivityStack:Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneModeAmHelper$OemSceneModeActivityStack;->updateDisableSceneScreenEffectFlag(I)V

    return-void
.end method
