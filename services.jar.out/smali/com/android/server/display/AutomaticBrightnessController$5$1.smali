.class Lcom/android/server/display/AutomaticBrightnessController$5$1;
.super Landroid/os/CountDownTimer;
.source "AutomaticBrightnessController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/AutomaticBrightnessController$5;->onFinish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/display/AutomaticBrightnessController$5;


# direct methods
.method constructor <init>(Lcom/android/server/display/AutomaticBrightnessController$5;JJ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/AutomaticBrightnessController$5$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$5;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    sget-boolean v0, Lserver/oneplus/scene/OemSceneAdModeController;->mManualAdStatus:Z

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$5;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$5;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/16 v1, 0xe

    const/16 v2, 0x12c

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AutomaticBrightnessController"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    goto :goto_1

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/display/AutomaticBrightnessController$5$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$5;

    iget-object v0, v0, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v0}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/4 v2, 0x0

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
    return-void
.end method

.method public onTick(J)V
    .locals 4

    const/4 v0, 0x0

    add-int/lit8 v0, v0, 0x1e

    :try_start_0
    iget-object v1, p0, Lcom/android/server/display/AutomaticBrightnessController$5$1;->this$1:Lcom/android/server/display/AutomaticBrightnessController$5;

    iget-object v1, v1, Lcom/android/server/display/AutomaticBrightnessController$5;->this$0:Lcom/android/server/display/AutomaticBrightnessController;

    invoke-static {v1}, Lcom/android/server/display/AutomaticBrightnessController;->access$500(Lcom/android/server/display/AutomaticBrightnessController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v1

    const/16 v2, 0xe

    invoke-interface {v1, v2, v0}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "AutomaticBrightnessController"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
