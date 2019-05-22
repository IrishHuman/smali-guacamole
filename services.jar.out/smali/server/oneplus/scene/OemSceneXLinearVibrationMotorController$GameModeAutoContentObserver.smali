.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneXLinearVibrationMotorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeAutoContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method public constructor <init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$600(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$700(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$800(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$900(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$900(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;Z)V

    :goto_0
    return-void
.end method
