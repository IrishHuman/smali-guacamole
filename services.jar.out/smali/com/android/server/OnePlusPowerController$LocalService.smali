.class public Lcom/android/server/OnePlusPowerController$LocalService;
.super Ljava/lang/Object;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public inform1stLightIdle()V
    .locals 3

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Update mIsAfter1stLightIdle to true, mIsUnderRestriction="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/OnePlusPowerController;->access$2202(Lcom/android/server/OnePlusPowerController;Z)Z

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    move-result-object v0

    sget-object v2, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$2300(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks(Z)V

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateGMSRestrict(Z)V

    :cond_0
    return-void
.end method

.method public informDeviceActive()V
    .locals 3

    const-string v0, "OnePlusPowerController"

    const-string v1, "Update mIsAfter1stLightIdle to false"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/OnePlusPowerController;->access$2202(Lcom/android/server/OnePlusPowerController;Z)Z

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$2300(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v0

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks(Z)V

    sget-boolean v0, Lcom/android/server/am/OnePlusAppBootManager;->IN_USING:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/am/OnePlusAppBootManager;->getInstance(Lcom/android/server/pm/PackageManagerService;)Lcom/android/server/am/OnePlusAppBootManager;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OnePlusAppBootManager;->updateGMSRestrict(Z)V

    :cond_0
    return-void
.end method

.method public isAggressive()Z
    .locals 1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1200()Z

    move-result v0

    return v0
.end method

.method public isChinaRegion()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isChinaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public isInDeepSleep()Z
    .locals 1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1800()Z

    move-result v0

    return v0
.end method

.method public isInSleep()Z
    .locals 2

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v0

    const/16 v1, 0x15be

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isIndiaRegion()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController;->isIndiaRegionInternal()Z

    move-result v0

    return v0
.end method

.method public noteCameraOn(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v0, v0, Lcom/android/server/OnePlusPowerController;->mOverHeatingDiagnosis:Lcom/android/server/OverHeatingDiagnosis;

    invoke-virtual {v0, p1}, Lcom/android/server/OverHeatingDiagnosis;->noteCameraOn(Z)V

    return-void
.end method

.method public notifyScreenState(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v0, p1}, Lcom/android/server/OnePlusPowerController;->notifyScreenStateInternal(I)V

    :cond_0
    return-void
.end method

.method public setDozeState(I)V
    .locals 8

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDozeState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$702(Lcom/android/server/OnePlusPowerController;I)I

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OnePlusPowerController$IdleStats;->getNextSleepEnd()Ljava/time/LocalDateTime;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$500()I

    move-result v1

    const/16 v2, 0x15be

    if-ne v1, v2, :cond_1

    invoke-static {}, Ljava/time/LocalDateTime;->now()Ljava/time/LocalDateTime;

    move-result-object v1

    invoke-static {v1, v0}, Ljava/time/Duration;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)Ljava/time/Duration;

    move-result-object v3

    invoke-virtual {v3}, Ljava/time/Duration;->toMillis()J

    move-result-wide v4

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1900()I

    move-result v6

    int-to-long v6, v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v0

    const/16 v1, 0x1e6c

    invoke-virtual {v0, v1}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_4
    :goto_0
    return-void
.end method

.method public setInOnePlusStandbyAnalyzer(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0, p1}, Lcom/android/server/OnePlusPowerController;->access$2002(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public shutdown()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$1600(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$IdleStats;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$LocalService;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v1}, Lcom/android/server/OnePlusPowerController;->shutdownLocked()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
