.class Lcom/android/server/OemSceneModeController$5;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] onReceive: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.oem.intent.action.DISABLE_GAME_MODE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, -0x2

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "game_mode_status_manual"

    const-string v3, "force-off"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto/16 :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0, v2}, Lcom/android/server/OemSceneModeController;->access$1902(Lcom/android/server/OemSceneModeController;Z)Z

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1300(Lcom/android/server/OemSceneModeController;)V

    goto/16 :goto_0

    :cond_2
    const-string v0, "android.intent.action.SCREEN_ON"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$2000(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1900(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    const/4 v1, 0x0

    invoke-static {v0, v2, v1}, Lcom/android/server/OemSceneModeController;->access$2100(Lcom/android/server/OemSceneModeController;ZZ)V

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->access$1902(Lcom/android/server/OemSceneModeController;Z)Z

    goto :goto_0

    :cond_3
    const-string v0, "com.oem.intent.action.SWITCH_ESPORT"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "1"

    iget-object v2, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$2200(Lcom/android/server/OemSceneModeController;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/android/server/OemSceneModeController;->access$400()Z

    move-result v2

    if-eqz v2, :cond_4

    const-string v2, "OemSceneModeController"

    const-string v3, "add notification enable esport"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v3, "type"

    const-string v4, "2"

    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    const-string v4, "esports_start"

    invoke-static {v3, v4, v2}, Lcom/android/server/OemSceneModeController;->access$2300(Lcom/android/server/OemSceneModeController;Ljava/lang/String;Ljava/util/HashMap;)V

    :cond_5
    iget-object v2, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v2}, Lcom/android/server/OemSceneModeController;->access$100(Lcom/android/server/OemSceneModeController;)Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enable_trigger"

    const-string v4, "1"

    invoke-static {v2, v3, v4, v1}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    goto :goto_0

    :cond_6
    const-string v0, "com.oem.intent.action.SHOW_DIALOG"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$5;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1800(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/OemSceneGameModePanel;->showDialog(Z)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_7
    :goto_0
    return-void
.end method
