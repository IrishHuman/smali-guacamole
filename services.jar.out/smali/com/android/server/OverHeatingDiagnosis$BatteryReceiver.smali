.class Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OverHeatingDiagnosis.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OverHeatingDiagnosis;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BatteryReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OverHeatingDiagnosis;


# direct methods
.method private constructor <init>(Lcom/android/server/OverHeatingDiagnosis;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OverHeatingDiagnosis;Lcom/android/server/OverHeatingDiagnosis$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;-><init>(Lcom/android/server/OverHeatingDiagnosis;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 10

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v1}, Lcom/android/server/OverHeatingDiagnosis;->access$1700(Lcom/android/server/OverHeatingDiagnosis;)Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x0

    const-string/jumbo v2, "level"

    const/4 v3, 0x0

    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x64

    mul-int/2addr v2, v4

    const-string/jumbo v5, "scale"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    div-int/2addr v2, v4

    const-string/jumbo v4, "status"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x0

    const-string v7, "fastcharge_status"

    invoke-virtual {p2, v7, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    const/4 v8, 0x1

    if-lez v7, :cond_2

    move v7, v8

    goto :goto_0

    :cond_2
    move v7, v3

    :goto_0
    move v6, v7

    if-eqz v6, :cond_3

    const/16 v1, 0x8

    goto :goto_1

    :cond_3
    const-string/jumbo v7, "plugged"

    invoke-virtual {p2, v7, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    :goto_1
    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    const/4 v5, 0x5

    if-ne v4, v5, :cond_4

    goto :goto_2

    :cond_4
    goto :goto_3

    :cond_5
    :goto_2
    move v3, v8

    :goto_3
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1100(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-ne v5, v8, :cond_7

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$900(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    and-int/lit8 v5, v5, 0xf

    if-eqz v5, :cond_6

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1800(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->start()V

    goto :goto_4

    :cond_6
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1800(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/OverHeatingDiagnosis$ChargingTimer;->stop()V

    :cond_7
    :goto_4
    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1900(Lcom/android/server/OverHeatingDiagnosis;)I

    move-result v5

    if-eq v2, v5, :cond_8

    const-string v5, "OverHeatingDiagnosis"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "onReceive: "

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " level="

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5, v2}, Lcom/android/server/OverHeatingDiagnosis;->access$1902(Lcom/android/server/OverHeatingDiagnosis;I)I

    iget-object v5, p0, Lcom/android/server/OverHeatingDiagnosis$BatteryReceiver;->this$0:Lcom/android/server/OverHeatingDiagnosis;

    invoke-static {v5}, Lcom/android/server/OverHeatingDiagnosis;->access$1300(Lcom/android/server/OverHeatingDiagnosis;)Lcom/android/server/OverHeatingDiagnosis$MyHandler;

    move-result-object v5

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v5, v8, v2, v1, v7}, Lcom/android/server/OverHeatingDiagnosis$MyHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    :cond_8
    return-void
.end method
