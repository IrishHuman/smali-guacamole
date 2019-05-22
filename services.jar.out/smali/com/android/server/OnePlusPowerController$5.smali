.class Lcom/android/server/OnePlusPowerController$5;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.os.action.LIGHT_DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isLightIdle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDeepIdle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "OnePlusPowerController"

    const-string v5, "In light device idle mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2300(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/PowerManagerInternal;->disableExclusiveWakeLocks(Z)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_2

    const-string v4, "OnePlusPowerController"

    const-string v5, "Leave light device idle mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v4

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2300(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks(Z)V

    :cond_3
    :goto_0
    goto/16 :goto_4

    :cond_4
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager;->isLightDeviceIdleMode()Z

    move-result v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v3

    invoke-virtual {v3}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v3

    const-string v4, "OnePlusPowerController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", isLightIdle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isDeepIdle="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2400(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/PowerManager;->isDeviceIdleMode()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v4

    if-eqz v4, :cond_5

    const-string v4, "OnePlusPowerController"

    const-string v5, "Leave device idle mode"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2300(Lcom/android/server/OnePlusPowerController;)Landroid/os/PowerManagerInternal;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/os/PowerManagerInternal;->enableExclusiveWakeLocks(Z)V

    goto :goto_1

    :cond_6
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string v2, "OnePlusPowerController"

    const-string v4, "In device idle mode"

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    goto/16 :goto_4

    :cond_8
    const-string v1, "android.intent.action.TIME_SET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1d

    const-string v1, "android.intent.action.TIMEZONE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    goto/16 :goto_3

    :cond_9
    const-string/jumbo v1, "net.oneplus.powercontroller.intent.OPSM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x5

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$600(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-lez v2, :cond_a

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$700(Lcom/android/server/OnePlusPowerController;)I

    move-result v2

    if-ne v2, v3, :cond_a

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    const/16 v3, 0x15be

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    :cond_a
    monitor-exit v1

    goto/16 :goto_4

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_b
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    const-string/jumbo v1, "plugged"

    const/4 v3, -0x1

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    and-int/lit8 v5, v1, 0x7

    if-eqz v5, :cond_c

    move v2, v4

    nop

    :cond_c
    invoke-static {v3, v2}, Lcom/android/server/OnePlusPowerController;->access$302(Lcom/android/server/OnePlusPowerController;Z)Z

    goto/16 :goto_4

    :cond_d
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2500(Lcom/android/server/OnePlusPowerController;)Landroid/net/ConnectivityManager;

    move-result-object v1

    if-eqz v1, :cond_11

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2500(Lcom/android/server/OnePlusPowerController;)Landroid/net/ConnectivityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    if-eqz v1, :cond_e

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_e

    move v2, v4

    nop

    :cond_e
    invoke-static {v3, v2}, Lcom/android/server/OnePlusPowerController;->access$2602(Lcom/android/server/OnePlusPowerController;Z)Z

    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mIsConnected : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2600(Lcom/android/server/OnePlusPowerController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2600(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v2, "OnePlusPowerController"

    const-string v3, "Try to probe public google domain...."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v2

    const/16 v3, 0xb

    invoke-virtual {v2, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2

    :cond_f
    const-string v2, "OnePlusPowerController"

    const-string v3, "Still keep-restrict due to no connection."

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$2700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v2

    if-nez v2, :cond_10

    const-string v2, "OnePlusPowerController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "oops, should skip this change to enable restriction, mIsUnderRestriction="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_10
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    sget-object v3, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    invoke-static {v2, v3}, Lcom/android/server/OnePlusPowerController;->access$2800(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;)V

    :goto_2
    goto/16 :goto_4

    :cond_11
    const-string v1, "OnePlusPowerController"

    const-string/jumbo v2, "mConnectivityManager is null"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :cond_12
    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "net.oneplus.powercontroller.action.RECORD_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_13
    const-string/jumbo v1, "net.oneplus.powercontroller.action.RESTORE_IDLE_ITEM"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_14

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v3, 0x6

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_14
    const-string/jumbo v1, "net.oneplus.powercontroller.action.PROCESS_KMEANS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_15

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$800(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$MyHandler;

    move-result-object v1

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Lcom/android/server/OnePlusPowerController$MyHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    :cond_15
    const-string/jumbo v1, "net.oneplus.powercontroller.action.IDLE_STATS_CONFIG"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1e

    const-string/jumbo v1, "seed"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const-string v3, "cluster"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    const-string/jumbo v4, "min_rec"

    invoke-virtual {p2, v4, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string/jumbo v5, "min_idle"

    invoke-virtual {p2, v5, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "max_idle"

    invoke-virtual {p2, v6, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    const-string/jumbo v7, "min_len"

    invoke-virtual {p2, v7, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const-string/jumbo v8, "max_len"

    invoke-virtual {p2, v8, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    const-string/jumbo v9, "tolerance"

    invoke-virtual {p2, v9, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    if-lez v1, :cond_16

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2902(I)I

    :cond_16
    if-lez v3, :cond_17

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$3002(I)I

    :cond_17
    if-lez v4, :cond_18

    invoke-static {v4}, Lcom/android/server/OnePlusPowerController;->access$3102(I)I

    :cond_18
    if-lez v5, :cond_19

    invoke-static {v5}, Lcom/android/server/OnePlusPowerController;->access$3202(I)I

    :cond_19
    if-lez v6, :cond_1a

    invoke-static {v6}, Lcom/android/server/OnePlusPowerController;->access$3302(I)I

    :cond_1a
    if-lez v7, :cond_1b

    invoke-static {v7}, Lcom/android/server/OnePlusPowerController;->access$3402(I)I

    :cond_1b
    if-lez v8, :cond_1c

    invoke-static {v8}, Lcom/android/server/OnePlusPowerController;->access$3502(I)I

    :cond_1c
    if-lez v2, :cond_1e

    invoke-static {v2}, Lcom/android/server/OnePlusPowerController;->access$3602(I)I

    goto :goto_4

    :cond_1d
    :goto_3
    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$000()Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    :try_start_1
    iget-object v2, p0, Lcom/android/server/OnePlusPowerController$5;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-virtual {v2}, Lcom/android/server/OnePlusPowerController;->scheduleNextAlarmIfNeededLocked()V

    monitor-exit v1

    :cond_1e
    :goto_4
    return-void

    :catchall_1
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v2
.end method
