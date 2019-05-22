.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;
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

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "XLVMotor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "recevie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.xvibrate.action.test"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1, v2}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$102(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)Z

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1, v3}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$102(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)Z

    goto :goto_0

    :cond_2
    const-string v1, "debug_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sput-boolean v2, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    goto :goto_0

    :cond_3
    const-string v1, "debug_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    sput-boolean v3, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->DEBUG:Z

    goto :goto_0

    :cond_4
    const-string v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$1000(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    goto :goto_0

    :cond_5
    const-string v1, "@parameters"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "@parameters"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v2, v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$1100(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Ljava/lang/String;)V

    goto :goto_0

    :cond_6
    const-string v1, "disable"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$4;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-virtual {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->disableFeatureWhenException()V

    :cond_7
    :goto_0
    return-void
.end method
