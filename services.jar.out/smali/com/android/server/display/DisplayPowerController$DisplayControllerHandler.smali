.class final Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DisplayControllerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xa

    const/4 v2, 0x1

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v1}, Ljava/lang/Float;->intBitsToFloat(I)F

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$2402(Lcom/android/server/display/DisplayPowerController;F)F

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$2102(Lcom/android/server/display/DisplayPowerController;I)I

    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$2202(Z)Z

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2300(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->access$2300(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$2102(Lcom/android/server/display/DisplayPowerController;I)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$2100(Lcom/android/server/display/DisplayPowerController;)I

    move-result v0

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    sget v1, Landroid/os/PowerManager;->BRIGHTNESS_ON:I

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$2102(Lcom/android/server/display/DisplayPowerController;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/hardware/display/BrightnessConfiguration;

    invoke-static {v0, v1}, Lcom/android/server/display/DisplayPowerController;->access$2002(Lcom/android/server/display/DisplayPowerController;Landroid/hardware/display/BrightnessConfiguration;)Landroid/hardware/display/BrightnessConfiguration;

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1800(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOffUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1900(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1500(Lcom/android/server/display/DisplayPowerController;)Lcom/android/server/display/DisplayPowerController$ScreenOnUnblocker;

    move-result-object v0

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1602(I)I

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1700(Lcom/android/server/display/DisplayPowerController;)V

    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1400(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$DisplayControllerHandler;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$1300(Lcom/android/server/display/DisplayPowerController;)V

    goto :goto_0

    :cond_2
    invoke-static {v2}, Lcom/android/server/display/DisplayPowerController;->access$1602(I)I

    nop

    :cond_3
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
