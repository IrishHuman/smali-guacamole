.class Lcom/android/server/display/AutomaticBrightnessController$5;
.super Landroid/os/CountDownTimer;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController;->setAutoAssertiveDisplay(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/AutomaticBrightnessController;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 8

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$1000(Lcom/android/server/display/AutomaticBrightnessController;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/16 v2, 0xc

    invoke-interface {v0, v2, v1}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v2, "AutomaticBrightnessController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$802(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    sget-boolean v0, Lserver/oneplus/scene/OemSceneAdModeController;->mManualAdStatus:Z

    if-eqz v0, :cond_1

    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "AutomaticBrightnessController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    new-instance v7, Lcom/android/server/display/AutomaticBrightnessController$5$1;

    const-wide/16 v3, 0x41a

    const-wide/16 v5, 0x64

    move-object v1, v7

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/display/AutomaticBrightnessController$5$1;-><init>(Lcom/android/server/display/AutomaticBrightnessController$5;JJ)V

    invoke-virtual {v7}, Lcom/android/server/display/AutomaticBrightnessController$5$1;->start()Landroid/os/CountDownTimer;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1202(Lcom/android/server/display/AutomaticBrightnessController;Landroid/os/CountDownTimer;)Landroid/os/CountDownTimer;

    goto :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1102(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    :cond_1
    :goto_2
    return-void
.end method

.method public onTick(J)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v0

    const v1, 0x469c4000    # 20000.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    const-string v0, "AutomaticBrightnessController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "assertivedisplay  mGlobaAmbientLux < 20000 :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v2}, Lcom/android/server/display/AutomaticBrightnessController;->access$600(Lcom/android/server/display/AutomaticBrightnessController;)F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$1002(Lcom/android/server/display/AutomaticBrightnessController;Z)Z

    :goto_0
    return-void
.end method
