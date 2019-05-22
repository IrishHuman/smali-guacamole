.class Lserver/oneplus/scene/OemSceneAdModeController$2;
.super Landroid/os/CountDownTimer;
.source "OemSceneAdModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lserver/oneplus/scene/OemSceneAdModeController;->setModeSmoothly(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field decStrength:I

.field degree:I

.field incStrength:I

.field final synthetic this$0:Lserver/oneplus/scene/OemSceneAdModeController;

.field final synthetic val$enable:Z

.field final synthetic val$strength:I


# direct methods
.method constructor <init>(Lserver/oneplus/scene/OemSceneAdModeController;JJIZ)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$strength:I

    iput-boolean p7, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$enable:Z

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    iget p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$strength:I

    iget-object p7, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {p7}, Lserver/oneplus/scene/OemSceneAdModeController;->access$100(Lserver/oneplus/scene/OemSceneAdModeController;)I

    move-result p7

    div-int/2addr p6, p7

    iput p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->degree:I

    iget p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$strength:I

    iput p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->decStrength:I

    const/4 p6, 0x0

    iput p6, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->incStrength:I

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 4

    :try_start_0
    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$enable:Z

    const/16 v1, 0xd

    if-eqz v0, :cond_0

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/16 v1, 0xe

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$strength:I

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAdModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public onTick(J)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    const/16 v1, 0xd

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    iget-boolean v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->val$enable:Z

    const/16 v1, 0xe

    if-eqz v0, :cond_1

    iget v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->incStrength:I

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->degree:I

    add-int/2addr v0, v2

    iput v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->incStrength:I

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->incStrength:I

    const/16 v3, 0x3ff

    if-le v2, v3, :cond_0

    goto :goto_0

    :cond_0
    iget v3, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->incStrength:I

    :goto_0
    invoke-interface {v0, v1, v3}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V

    goto :goto_2

    :cond_1
    iget v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->decStrength:I

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->degree:I

    sub-int/2addr v0, v2

    iput v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->decStrength:I

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$200(Lserver/oneplus/scene/OemSceneAdModeController;)Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;

    move-result-object v0

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->decStrength:I

    if-gez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$2;->decStrength:I

    :goto_1
    invoke-interface {v0, v1, v2}, Lvendor/oneplus/hardware/display/V1_0/IOneplusDisplay;->setMode(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_3

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAdModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException! "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method
