.class Lcom/android/server/oneplus/MotorManagerService$6;
.super Landroid/os/IMotorManager$Stub;
.source "MotorManagerService.java"


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

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Landroid/os/IMotorManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public downMotorByPrivacyApp(Ljava/lang/String;ILandroid/os/IBinder;)I
    .locals 6

    if-nez p3, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "down token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2200(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/IBinder;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0x7d0

    const/16 v4, 0x190

    if-le p2, v3, :cond_1

    move p2, v3

    :cond_1
    if-ge p2, v4, :cond_2

    move p2, v4

    :cond_2
    iget-object v5, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/oneplus/MotorManagerService;->access$2700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;ILandroid/os/IBinder;)I

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public downMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 7

    const/4 v0, 0x0

    if-nez p2, :cond_0

    const-string v1, "MotorManagerService"

    const-string v2, "down token must not be null"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$2200(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/IBinder;

    move-result-object v2

    monitor-enter v2

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    const-string v4, "MotorManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callingPid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "systemui_faceunlock"

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v4, v0}, Lcom/android/server/oneplus/MotorManagerService;->access$2302(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    :cond_1
    const-string v0, ""

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$2400()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/16 v4, 0xb

    iput v4, v0, Landroid/os/Message;->what:I

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v4}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v4

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$2500()I

    move-result v5

    int-to-long v5, v5

    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/oneplus/MotorManagerService;->access$2600(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v0

    move v1, v0

    :goto_0
    monitor-exit v2

    return v1

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.DUMP"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump MotorManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1900()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dump, args="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    array-length v0, p3

    const/4 v1, 0x1

    if-lt v0, v1, :cond_e

    const/4 v0, 0x0

    aget-object v0, p3, v0

    const-string/jumbo v2, "hallCalib"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_3

    array-length v2, p3

    const/4 v4, 0x4

    if-ne v2, v4, :cond_2

    :try_start_0
    aget-object v2, p3, v1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$2002(I)I

    aget-object v2, p3, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMinDif:I

    const/4 v2, 0x3

    aget-object v2, p3, v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    sput v2, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMaxDif:I

    const-string v2, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dump, mHallCalibExceptionCount: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$2000()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sHallMinDif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMinDif:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " sHallMaxDif: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v5, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMaxDif:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v2

    const-string v4, "MotorManagerService"

    const-string/jumbo v5, "hall calibration parse error : "

    invoke-static {v4, v5, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    goto :goto_1

    :cond_2
    const-string v2, "Invalid argument! Get help as bellow: dumpsys motor hallCalib 4 8 40"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :cond_3
    :goto_1
    const-string v2, "debug"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    array-length v2, p3

    if-ne v2, v3, :cond_4

    aget-object v1, p3, v1

    const-string v2, "1"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1902(Z)Z

    goto/16 :goto_3

    :cond_4
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_5
    const-string v2, "delaydown"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    array-length v2, p3

    if-ne v2, v3, :cond_8

    aget-object v1, p3, v1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1900()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "delayTimeStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    :try_start_1
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1702(I)I

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1700()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_7

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$1702(I)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_7
    goto :goto_2

    :catch_1
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/NumberFormatException;->printStackTrace()V

    :goto_2
    goto :goto_3

    :cond_8
    const-string v1, "Invalid argument! Get detail help as bellow:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_9
    const-string/jumbo v1, "motortest"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1900()Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "MotorManagerService"

    const-string v2, "enable motor by dumpsys test."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    invoke-virtual {v1, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_b
    const-string/jumbo v1, "isFloatWin"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_c

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    goto :goto_3

    :cond_c
    const-string/jumbo v1, "isRecording"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    const/16 v2, 0xd

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessage(I)Z

    :cond_d
    :goto_3
    return-void

    :cond_e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    :try_start_2
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2, p2}, Lcom/android/server/oneplus/MotorManagerService;->access$2100(Lcom/android/server/oneplus/MotorManagerService;Ljava/io/PrintWriter;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public getMotorStateBySystemApp()I
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-virtual {v0}, Lcom/android/server/oneplus/MotorManagerService;->getMotorState()I

    move-result v0

    return v0
.end method

.method public registerMotorStateChangedCallback(Landroid/os/IMotorStateChangedCallback;)V
    .locals 2

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "SERVICE registerMotorStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$2800(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2800(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterMotorStateChangedCallback(Landroid/os/IMotorStateChangedCallback;)V
    .locals 2

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string v1, "SERVICE unregisterMotorStateChangedCallback"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$2800(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/List;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2800(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public upMotorBySystemApp(Ljava/lang/String;Landroid/os/IBinder;)I
    .locals 6

    if-nez p2, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "up token must not be null"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2200(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/IBinder;

    move-result-object v1

    monitor-enter v1

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    const-string v3, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callingPid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v3, "systemui_faceunlock"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/oneplus/MotorManagerService;->access$2302(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$6;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3, p1, p2}, Lcom/android/server/oneplus/MotorManagerService;->access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    move-result v3

    move v0, v3

    monitor-exit v1

    return v0

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
