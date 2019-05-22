.class Lcom/android/server/oneplus/MotorManagerService$MotorHandler;
.super Landroid/os/Handler;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MotorHandler"
.end annotation


# static fields
.field public static final MESSAGE_DUMP_RECORDING:I = 0xd

.field public static final MESSAGE_DUMP_SUSPENSION_WIN:I = 0xc

.field public static final MESSAGE_ENABLE_MOTOR:I = 0x2

.field public static final MESSAGE_RECEIVE_CAMERADATA:I = 0x0

.field public static final MSG_APP_BACKGROUNG_USING_FRONT_CAMERA:I = 0x7

.field public static final MSG_AUDIO_EXIT_BACKGROUD_CHECK:I = 0x14

.field public static final MSG_CALL_END_DETECT:I = 0x13

.field public static final MSG_DOWN_MOTOR_BY_AUDIO:I = 0xa

.field public static final MSG_FALLING:I = 0x8

.field public static final MSG_FOCUSPKG_CHANGE:I = 0x1

.field public static final MSG_MOTOR_DELAY_DOWN:I = 0x5

.field public static final MSG_MOTOR_DELAY_DOWN_BACKGROUD:I = 0x6

.field public static final MSG_MOTOR_DELAY_DOWN_SYSTEMAPP:I = 0xb

.field public static final MSG_MOTOR_DOWN_LOCKED_DETECT:I = 0x4

.field public static final MSG_MOTOR_UP_LOCKED_DETECT:I = 0x3

.field public static final MSG_OPENCAMERA:I = 0x9

.field public static final MSG_SCREENOFF_SENSOR_RELEASE_CHECK:I = 0x19

.field public static final MSG_SCREENOFF_TIMEOUT_CHECK:I = 0x17

.field public static final MSG_SENSOR_RELEASE_CHECK:I = 0x15

.field public static final MSG_SHOW_BACKGROUND_USE_MOTOR:I = 0x16

.field public static final MSG_SHOW_DOWN_MOTOR_LOCKED_WARNING:I = 0x11

.field public static final MSG_SHOW_FALLING_WARNING:I = 0x18

.field public static final MSG_SHOW_MOTOR_CANNOT_UP_WARNING:I = 0x10

.field public static final MSG_SHOW_PUSH_DOWN_MOTOR_WARNING:I = 0x12

.field public static final MSG_SHOW_REPEATED_UP_MOTOR_WARNING:I = 0xe

.field public static final MSG_SHOW_UP_MOTOR_LOCKED_WARNING:I = 0xf


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/MotorManagerService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    :try_start_0
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_4

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$7200(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$7300(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$7300(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "timeout down release wake lock."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$7400(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$7300(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$7202(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    monitor-exit v0

    goto/16 :goto_4

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v1

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$7100(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4800(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$3400(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4900(Lcom/android/server/oneplus/MotorManagerService;I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6900(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const-string v2, "MotorManagerService"

    invoke-static {v0, v2, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_4

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$4400(Lcom/android/server/oneplus/MotorManagerService;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4202(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$802(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4302(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    goto/16 :goto_4

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6300(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6800(Lcom/android/server/oneplus/MotorManagerService;)V

    const/4 v0, 0x7

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$2500()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_4

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6700(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6600(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_9
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6500(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_a
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6400(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_b
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$6200(Lcom/android/server/oneplus/MotorManagerService;I)Z

    move-result v0

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpsys sCSocketThreadameraUserPid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " isRecording: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_c
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4800(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Z

    move-result v0

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "dumpsys sCameraUserPkg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " isFloatWin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_4

    :pswitch_d
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    const-string v2, "MotorManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_MOTOR_DELAY_DOWN_SYSTEMAPP:  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2, v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2600(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_4

    :pswitch_e
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6100(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_f
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$6000(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_10
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$5900(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_11
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$7000()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$900()Z

    move-result v0

    if-eqz v0, :cond_14

    :cond_3
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v0

    if-eqz v0, :cond_14

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4000(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x50d0004

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x10

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_4

    :pswitch_12
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$5800(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_13
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const-string v2, "MotorManagerService"

    invoke-static {v0, v2, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$2600(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    goto/16 :goto_4

    :pswitch_14
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "MotorManagerService"

    const-string v1, "MSG_MOTOR_DOWN_LOCKED_DETECT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$5700(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_15
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "MotorManagerService"

    const-string v1, "MSG_MOTOR_UP_LOCKED_DETECT"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$5600(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_16
    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$5502(Z)Z

    const-string v1, "171"

    const-string v2, "171"

    const-string v3, "481"

    const-string v4, "0"

    const-string v5, "0"

    const-string v6, "481"

    filled-new-array/range {v1 .. v6}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalibrationData([Ljava/lang/String;)Z

    goto/16 :goto_4

    :pswitch_17
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/SomeArgs;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4002(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$5102(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$3902(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$5202(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, v0, Lcom/android/internal/os/SomeArgs;->arg5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$5302(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Ljava/lang/String;

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyActivityChanged: mBackgroudPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$5100(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mFocusPkg = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4000(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mIsSplitMode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$3900(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " mBackActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$5200(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mFocusActivity = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$5300(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$5400(Lcom/android/server/oneplus/MotorManagerService;)V

    goto/16 :goto_4

    :pswitch_18
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    if-nez v0, :cond_6

    goto/16 :goto_4

    :cond_6
    const-string v4, ","

    invoke-virtual {v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x5

    if-eq v5, v6, :cond_7

    goto/16 :goto_4

    :cond_7
    aget-object v5, v4, v3

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    iget-object v6, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    aget-object v7, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-static {v6, v7}, Lcom/android/server/oneplus/MotorManagerService;->access$3402(Lcom/android/server/oneplus/MotorManagerService;I)I

    const/4 v6, 0x2

    aget-object v6, v4, v6

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    const/4 v7, 0x3

    aget-object v8, v4, v7

    invoke-static {v8}, Lcom/android/server/oneplus/MotorManagerService;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    iget-object v8, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const/4 v9, 0x4

    aget-object v9, v4, v9

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    invoke-static {v8, v9}, Lcom/android/server/oneplus/MotorManagerService;->access$3602(Lcom/android/server/oneplus/MotorManagerService;I)I

    if-ne v5, v2, :cond_8

    invoke-static {v6}, Lcom/android/server/oneplus/MotorManagerService;->access$502(I)I

    aget-object v7, v4, v7

    invoke-static {v7}, Lcom/android/server/oneplus/MotorManagerService;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    invoke-static {v6}, Lcom/android/server/oneplus/MotorManagerService;->access$502(I)I

    const-string v7, ""

    invoke-static {v7}, Lcom/android/server/oneplus/MotorManagerService;->access$3502(Ljava/lang/String;)Ljava/lang/String;

    :cond_9
    :goto_1
    iget-object v7, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v7}, Lcom/android/server/oneplus/MotorManagerService;->access$3700(Lcom/android/server/oneplus/MotorManagerService;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v8}, Lcom/android/server/oneplus/MotorManagerService;->access$3800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/app/ActivityManager$StackInfo;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    if-eqz v7, :cond_a

    if-eqz v8, :cond_a

    move v10, v2

    goto :goto_2

    :cond_a
    move v10, v3

    :goto_2
    invoke-static {v9, v10}, Lcom/android/server/oneplus/MotorManagerService;->access$3902(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    const-string v9, "MotorManagerService"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "socket from camera, cameraUserPid: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mCameraUserID: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v11}, Lcom/android/server/oneplus/MotorManagerService;->access$3400(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, "  sceneFlag: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " mFocusPkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v11}, Lcom/android/server/oneplus/MotorManagerService;->access$4000(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " sCameraUserPkg: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v9, 0x15

    packed-switch v5, :pswitch_data_1

    goto/16 :goto_3

    :pswitch_19
    iget-object v10, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v10}, Lcom/android/server/oneplus/MotorManagerService;->access$4500(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v10}, Lcom/android/server/oneplus/MotorManagerService;->access$4300(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v10

    if-nez v10, :cond_b

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v10

    const-string v11, "com.oneplus.faceunlock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v10}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v10

    const/16 v11, 0x17

    invoke-virtual {v10, v11}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v10

    if-nez v10, :cond_b

    iget-object v10, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v10, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4202(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$802(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4600(Lcom/android/server/oneplus/MotorManagerService;)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4700(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v3

    int-to-long v10, v3

    invoke-virtual {v2, v9, v10, v11}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_b
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4300(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v2

    if-eqz v2, :cond_c

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$400(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v2

    if-nez v2, :cond_13

    :cond_c
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$4200(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v2

    if-nez v2, :cond_13

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$2300(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v2

    if-nez v2, :cond_13

    const-string/jumbo v2, "org.codeaurora.ims"

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4000(Lcom/android/server/oneplus/MotorManagerService;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4800(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$3400(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4900(Lcom/android/server/oneplus/MotorManagerService;I)Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$3900(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v2

    if-eqz v2, :cond_d

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v7, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3500()Ljava/lang/String;

    move-result-object v2

    iget-object v3, v8, Landroid/app/ActivityManager$StackInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_e

    :cond_d
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    const/16 v2, 0x16

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$5000()I

    move-result v3

    int-to-long v9, v3

    invoke-virtual {v1, v2, v9, v10}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_3

    :cond_e
    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const-string v3, "MotorManagerService"

    invoke-static {v2, v3, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    goto :goto_3

    :pswitch_1a
    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$302(Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    const/4 v10, 0x6

    invoke-virtual {v1, v10}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_10

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_f

    const-string v1, "MotorManagerService"

    const-string v11, "camera release, remove MSG_MOTOR_DELAY_DOWN_BACKGROUD"

    invoke-static {v1, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_f
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    invoke-virtual {v1, v10}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_10
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4100(Lcom/android/server/oneplus/MotorManagerService;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4200(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v1

    if-nez v1, :cond_11

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4300(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v1

    if-eqz v1, :cond_13

    :cond_11
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_12

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v1

    invoke-virtual {v1, v9}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->removeMessages(I)V

    :cond_12
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$4400(Lcom/android/server/oneplus/MotorManagerService;)V

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4202(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$4302(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$802(Lcom/android/server/oneplus/MotorManagerService;Z)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_13
    :goto_3
    nop

    :cond_14
    :goto_4
    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in MotorHandler.handleMessage: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_0
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1a
        :pswitch_19
    .end packed-switch
.end method
