.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneXLinearVibrationMotorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method constructor <init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$400(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p2, :cond_1

    return-void

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "android.media.EXTRA_VOLUME_STREAM_TYPE"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v2}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$300(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    :cond_2
    goto :goto_0

    :cond_3
    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$3;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$300(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    :cond_4
    :goto_0
    return-void
.end method
