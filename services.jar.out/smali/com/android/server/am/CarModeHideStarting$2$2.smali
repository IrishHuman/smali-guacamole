.class Lcom/android/server/am/CarModeHideStarting$2$2;
.super Ljava/lang/Object;
.source "CarModeHideStarting.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CarModeHideStarting$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/CarModeHideStarting$2;


# direct methods
.method constructor <init>(Lcom/android/server/am/CarModeHideStarting$2;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v0, v0, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v0}, Lcom/android/server/am/CarModeHideStarting;->access$200(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$300(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$300(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iget-boolean v1, v1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    if-eqz v1, :cond_1

    invoke-static {}, Lcom/android/server/am/CarModeHideStarting;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CarModeHideStarting"

    const-string/jumbo v2, "reset hidestack status for broadcast"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$200(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/am/ActivityStackSupervisor;->ensureActivitiesVisibleLocked(Lcom/android/server/am/ActivityRecord;IZ)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$300(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/am/ActivityStack;->forceFreeformForHideStarting:Z

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$300(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityStack;

    move-result-object v1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Lcom/android/server/am/ActivityStack;->setWindowingMode(I)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2$2;->this$1:Lcom/android/server/am/CarModeHideStarting$2;

    iget-object v1, v1, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1, v2}, Lcom/android/server/am/CarModeHideStarting;->access$302(Lcom/android/server/am/CarModeHideStarting;Lcom/android/server/am/ActivityStack;)Lcom/android/server/am/ActivityStack;

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    :cond_1
    :try_start_1
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
