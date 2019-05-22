.class Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;
.super Ljava/lang/Object;
.source "OemSceneXLinearVibrationMotorController.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$100(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$2;->this$0:Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->access$300(Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;)V

    :cond_0
    return-void
.end method
