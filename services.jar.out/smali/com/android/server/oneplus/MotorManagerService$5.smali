.class Lcom/android/server/oneplus/MotorManagerService$5;
.super Landroid/telephony/PhoneStateListener;
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

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$5;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 4

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    goto :goto_0

    :pswitch_2
    const-string v0, "MotorManagerService"

    const-string/jumbo v1, "onCallStateChanged ...CALL_STATE_IDLE"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$5;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$100(Lcom/android/server/oneplus/MotorManagerService;)Lcom/android/server/oneplus/MotorManagerService$MotorHandler;

    move-result-object v0

    const/16 v1, 0x13

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1700()I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService$MotorHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$5;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorManagerService;->access$602(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    nop

    :goto_0
    return-void

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
