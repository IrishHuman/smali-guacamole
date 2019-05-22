.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneXLinearVibrationMotorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VibrateFeedbackModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;


# direct methods
.method public constructor <init>(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$VibrateFeedbackModeObserver;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$500(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    return-void
.end method
