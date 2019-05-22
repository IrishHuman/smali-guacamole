.class Lcom/android/server/display/AutomaticBrightnessController$6;
.super Ljava/lang/Object;
.source "AutomaticBrightnessController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/AutomaticBrightnessController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0

    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1600(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object v2, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v3, 0x0

    aget v2, v2, v3

    sget-boolean v4, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v4, :cond_0

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700()Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "AutomaticBrightnessController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Last Receive lux = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1800(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "P-Sensor is Changed true lux = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v4, v4, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-boolean v3, v4, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    :cond_3
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2100(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v2, v4

    if-lez v4, :cond_4

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2002(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-boolean v5, v4, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-boolean v5, v4, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2400(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorManager;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2300(Lcom/android/server/display/AutomaticBrightnessController;)Landroid/hardware/SensorEventListener;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4, v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    invoke-static {}, Lcom/android/server/display/AutomaticBrightnessController;->access$1700()Z

    move-result v3

    if-eqz v3, :cond_4

    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Pickup sensor is enable lux = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-nez v3, :cond_8

    const/4 v3, 0x0

    cmpl-float v4, v2, v3

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    cmpl-float v4, v4, v3

    if-eqz v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-nez v4, :cond_6

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$1900(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_6

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$2602(Lcom/android/server/display/AutomaticBrightnessController;J)J

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v5}, Lcom/android/server/display/AutomaticBrightnessController;->access$202(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2700(Lcom/android/server/display/AutomaticBrightnessController;)V

    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string v3, "AutomaticBrightnessController"

    const-string/jumbo v4, "onSensorChanged: first received lux = 0"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void

    :cond_6
    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$200(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v4

    if-eqz v4, :cond_8

    cmpl-float v3, v2, v3

    if-eqz v3, :cond_7

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$300(Lcom/android/server/display/AutomaticBrightnessController;)V

    sget-boolean v3, Lcom/android/server/display/AutomaticBrightnessController;->DEBUG:Z

    if-eqz v3, :cond_8

    const-string v3, "AutomaticBrightnessController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "received 0lux at"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v6}, Lcom/android/server/display/AutomaticBrightnessController;->access$2600(Lcom/android/server/display/AutomaticBrightnessController;)J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v6, "now received lux="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_7
    return-void

    :cond_8
    :goto_0
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3}, Lcom/android/server/display/AutomaticBrightnessController;->access$2500(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iget-boolean v3, v3, Lcom/android/server/display/AutomaticBrightnessController;->mFirst_lux:Z

    if-eqz v3, :cond_9

    const/high16 v3, 0x40000000    # 2.0f

    iget-object v4, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v4}, Lcom/android/server/display/AutomaticBrightnessController;->access$2200(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v4

    mul-float/2addr v3, v4

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    const/high16 v3, 0x40800000    # 4.0f

    cmpl-float v3, v2, v3

    if-lez v3, :cond_9

    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    iput-boolean v5, v3, Lcom/android/server/display/AutomaticBrightnessController;->mUpdate_Fast:Z

    :cond_9
    iget-object v3, p0, Lcom/android/server/display/AutomaticBrightnessController$6;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v3, v0, v1, v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$100(Lcom/android/server/display/AutomaticBrightnessController;JF)V

    :cond_a
    return-void
.end method
