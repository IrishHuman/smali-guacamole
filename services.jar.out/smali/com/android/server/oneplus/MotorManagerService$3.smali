.class Lcom/android/server/oneplus/MotorManagerService$3;
.super Ljava/lang/Object;
.source "MotorManagerService.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "mProximitySensorListener: distance = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const/4 v3, 0x0

    cmpl-float v3, v0, v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    move v1, v4

    nop

    :cond_1
    invoke-static {v2, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$402(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$400(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$600(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mProximitySensorListener: mDownMotorByTelConnectFlag = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$600(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const-string v2, "MotorManagerService"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$3;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1, v4}, Lcom/android/server/oneplus/MotorManagerService;->access$802(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    :cond_2
    return-void
.end method
