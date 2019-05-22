.class Lcom/android/server/policy/DeviceKeyHandler$2$1;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DeviceKeyHandler$2;->onSensorChanged(Landroid/hardware/SensorEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/DeviceKeyHandler$2;

.field final synthetic val$sensorNear:Z


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler$2;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$2$1;->this$1:Lcom/android/server/policy/DeviceKeyHandler$2;

    iput-boolean p2, p0, Lcom/android/server/policy/DeviceKeyHandler$2$1;->val$sensorNear:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const-string v0, "DeviceKeyHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSensorChang: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/policy/DeviceKeyHandler$2$1;->this$1:Lcom/android/server/policy/DeviceKeyHandler$2;

    iget-object v2, v2, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v2}, Lcom/android/server/policy/DeviceKeyHandler;->access$400(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/android/server/policy/DeviceKeyHandler$2$1;->val$sensorNear:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x75

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/policy/DeviceKeyHandler$2$1;->this$1:Lcom/android/server/policy/DeviceKeyHandler$2;

    iget-object v0, v0, Lcom/android/server/policy/DeviceKeyHandler$2;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-static {v0}, Lcom/android/server/policy/DeviceKeyHandler;->access$400(Lcom/android/server/policy/DeviceKeyHandler;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "p-sensor near, disable gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/proc/touchpanel/gesture_switch"

    const/16 v1, 0x32

    invoke-static {v0, v1}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z
    
    const/4 v0, 0x1
    
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorCovered:Z

    goto :goto_0

    :cond_1
    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "p-sensor far, enable gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/proc/touchpanel/gesture_switch"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z
    
    const/4 v0, 0x0
    
    sput-boolean v0, Lcom/android/server/policy/PhoneWindowManager;->mSensorCovered:Z

    :goto_0
    return-void
.end method
