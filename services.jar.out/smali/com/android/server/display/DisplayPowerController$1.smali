.class Lcom/android/server/display/DisplayPowerController$1;
.super Landroid/os/Handler;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    nop

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    const/16 v6, 0x5a0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    if-ne v4, v6, :cond_0

    sub-float v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v9, v4

    cmpg-double v4, v9, v7

    if-gez v4, :cond_0

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController;->access$202(Lcom/android/server/display/DisplayPowerController;I)I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/high16 v9, 0x42b40000    # 90.0f

    if-ne v4, v6, :cond_1

    sub-float v4, v3, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v10, v4

    cmpg-double v4, v10, v7

    if-gez v4, :cond_1

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController;->access$302(Lcom/android/server/display/DisplayPowerController;I)I

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/16 v6, 0x438

    if-ne v4, v6, :cond_2

    sub-float v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v7

    if-gez v4, :cond_2

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController;->access$402(Lcom/android/server/display/DisplayPowerController;I)I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    if-ne v4, v6, :cond_3

    sub-float v4, v3, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v7

    if-gez v4, :cond_3

    iget-object v4, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/display/DisplayPowerController;->access$502(Lcom/android/server/display/DisplayPowerController;I)I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v1, v1, Lcom/android/server/display/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->requestScreenMode(I)V

    goto :goto_2

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    array-length v0, v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$102(I)I

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/display/DisplayPowerController$1;->this$0:Lcom/android/server/display/DisplayPowerController;

    iget-object v0, v0, Lcom/android/server/display/DisplayPowerController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display;->getMode()Landroid/view/Display$Mode;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Display$Mode;->getModeId()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/display/DisplayPowerController;->access$002(I)I

    nop

    :cond_4
    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
