.class Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/keyguard/OpDragPanelController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OpOnTouchListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method private constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 10

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_9

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v5

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x3

    invoke-virtual {v6, v7}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;

    move-result-object v6

    const-wide/16 v8, 0x1388

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-eqz v6, :cond_9

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-nez v6, :cond_9

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v4}, Lcom/oneplus/keyguard/OpDragPanelController;->access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v5}, Lcom/oneplus/keyguard/OpDragPanelController;->access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;

    move-result-object v1

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    new-instance v6, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    iget-object v7, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    iget-object v8, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v8}, Lcom/oneplus/keyguard/OpDragPanelController;->access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v8

    iget-object v9, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v9}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v9

    invoke-direct {v6, v7, v8, v9}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;FF)V

    invoke-static {v1, v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onBubbleTouched()V

    :cond_1
    return v2

    :cond_2
    const/4 v6, 0x2

    if-ne v3, v6, :cond_6

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F

    move-result v6

    sub-float v6, v4, v6

    const/4 v7, 0x0

    cmpg-float v7, v6, v7

    if-gez v7, :cond_3

    const/4 v6, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v7

    int-to-float v7, v7

    cmpl-float v7, v6, v7

    if-lez v7, :cond_4

    invoke-static {}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1500()I

    move-result v7

    int-to-float v6, v7

    :cond_4
    :goto_0
    iget-object v7, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v7}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v7

    if-eqz v7, :cond_5

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;

    move-result-object v1

    invoke-virtual {v1, v6}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setTranslationY(F)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1, v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V

    return v2

    :cond_5
    goto :goto_1

    :cond_6
    if-ne v3, v2, :cond_8

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v6

    invoke-virtual {v6, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z

    move-result v6

    if-eqz v6, :cond_7

    iget-object v6, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v6, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V

    return v2

    :cond_7
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_9

    const-string v2, "OpDragPanelController"

    const-string v6, " doesn\'t touch before, skip drag"

    invoke-static {v2, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_8
    if-ne v3, v7, :cond_9

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    move-result-object v2

    invoke-virtual {v2, v5, v4}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->updateMovePoint(FF)V

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;->this$0:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-static {v2, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z

    :cond_9
    :goto_1
    return v1
.end method
