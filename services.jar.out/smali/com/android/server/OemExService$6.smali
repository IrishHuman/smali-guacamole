.class Lcom/android/server/OemExService$6;
.super Landroid/content/BroadcastReceiver;
.source "OemExService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemExService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v9

    if-nez v9, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v10, 0x1

    if-eqz v1, :cond_1

    invoke-static {v10}, Lcom/android/server/OemExService;->access$1602(Z)Z

    :cond_1
    invoke-static {}, Lcom/android/server/OemExService;->access$1600()Z

    move-result v1

    if-eqz v1, :cond_6

    new-array v1, v10, [I

    const/4 v11, 0x0

    aput v10, v1, v11

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    const v12, 0x50d000d

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;)[I

    move-result-object v1

    array-length v13, v1

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-static {v1, v2, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v14

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$000(Lcom/android/server/OemExService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "op_care_charger_auto_open_app"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "fastcharge_status"

    invoke-virtual {v8, v1, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v6

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    const-string/jumbo v2, "status"

    invoke-virtual {v8, v2, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/OemExService;->access$1402(Lcom/android/server/OemExService;I)I

    const/4 v1, 0x3

    if-ne v6, v1, :cond_5

    invoke-static {}, Lcom/android/server/OemExService;->access$1700()Z

    move-result v1

    if-nez v1, :cond_5

    invoke-static {v10}, Lcom/android/server/OemExService;->access$1702(Z)Z

    const-string v1, "OemExService"

    const-string/jumbo v2, "show car charger notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1800(Lcom/android/server/OemExService;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    iget-object v2, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2, v7}, Lcom/android/server/OemExService;->access$1900(Lcom/android/server/OemExService;Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OemExService;->access$1202(Lcom/android/server/OemExService;Landroid/app/Notification$Builder;)Landroid/app/Notification$Builder;

    if-eq v14, v10, :cond_3

    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v2

    const-string/jumbo v3, "warp_charge"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_2

    move/from16 v17, v6

    goto :goto_0

    :cond_2
    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$2000(Lcom/android/server/OemExService;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v7}, Lcom/android/server/OemExService;->access$2100(Lcom/android/server/OemExService;Landroid/content/Context;)Landroid/app/Notification$Builder;

    move-result-object v16

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    const/4 v2, 0x0

    move-object v3, v7

    move v4, v12

    move v5, v13

    move/from16 v17, v6

    move-object/from16 v6, v16

    invoke-static/range {v1 .. v6}, Lcom/android/server/OemExService;->access$1300(Lcom/android/server/OemExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v11}, Lcom/android/server/OemExService;->access$2200(Lcom/android/server/OemExService;Z)V

    goto :goto_1

    :cond_3
    move/from16 v17, v6

    :goto_0
    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    const/4 v2, 0x0

    iget-object v3, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v3}, Lcom/android/server/OemExService;->access$1200(Lcom/android/server/OemExService;)Landroid/app/Notification$Builder;

    move-result-object v6

    move-object v3, v7

    move v4, v12

    move v5, v13

    invoke-static/range {v1 .. v6}, Lcom/android/server/OemExService;->access$1300(Lcom/android/server/OemExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    :goto_1
    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v10}, Lcom/android/server/OemExService;->access$2302(Lcom/android/server/OemExService;Z)Z

    if-ne v14, v10, :cond_4

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$2400(Lcom/android/server/OemExService;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v10}, Lcom/android/server/OemExService;->access$2200(Lcom/android/server/OemExService;Z)V

    :cond_4
    invoke-static {v15}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v15}, Lcom/android/server/OemExService;->access$2500(Lcom/android/server/OemExService;Ljava/lang/String;)V

    :cond_5
    const-string v1, "android.intent.action.ACTION_POWER_DISCONNECTED"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$2300(Lcom/android/server/OemExService;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "OemExService"

    const-string/jumbo v2, "power disconnected broadcast, cancel car charger notification"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1500(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2}, Lcom/android/server/OemExService;->access$2600(Lcom/android/server/OemExService;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;)Landroid/app/NotificationManager;

    move-result-object v1

    invoke-virtual {v1, v12}, Landroid/app/NotificationManager;->cancel(I)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v11}, Lcom/android/server/OemExService;->access$2302(Lcom/android/server/OemExService;Z)Z

    invoke-static {v11}, Lcom/android/server/OemExService;->access$1702(Z)Z

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$2700(Lcom/android/server/OemExService;)I

    move-result v1

    if-ne v1, v10, :cond_6

    new-array v1, v10, [I

    aput v10, v1, v11

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$2800(Lcom/android/server/OemExService;)V

    iget-object v1, v0, Lcom/android/server/OemExService$6;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1, v11}, Lcom/android/server/OemExService;->access$2200(Lcom/android/server/OemExService;Z)V

    :cond_6
    return-void
.end method
