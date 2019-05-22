.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;
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

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    :goto_0
    invoke-static {v1, v3}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$002(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)Z

    sget-boolean v1, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v1, :cond_2

    const-string v1, "XLVMotor"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mGlobalBluetoothA2dpOn "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v4}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$000(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$100(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v1

    if-nez v1, :cond_3

    return-void

    :cond_3
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$000(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1, v2}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$200(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)V

    goto :goto_1

    :cond_4
    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-virtual {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule()V

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$1;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    iget-object v2, v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateVolumeRunnable:Ljava/lang/Runnable;

    const-wide/16 v3, 0x9c4

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_5
    :goto_1
    return-void
.end method
