.class public Lcom/oneplus/keyguard/OpEmergencyPanel;
.super Landroid/widget/FrameLayout;
.source "OpEmergencyPanel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;
    }
.end annotation


# instance fields
.field private isStart:Z

.field private mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

.field private mContext:Landroid/content/Context;

.field private mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

.field private mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public onBubbleTouched()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onBubbleTouched()V

    :cond_0
    return-void
.end method

.method public onDrop()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onDrop()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpEmergencyPanel"

    const-string v1, "onDrop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    const v0, 0x7f0a01c9

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0a00ad

    invoke-virtual {p0, v0}, Lcom/oneplus/keyguard/OpEmergencyPanel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/keyguard/OpEmergencyBubble;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mBubble:Lcom/oneplus/keyguard/OpEmergencyBubble;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mEmergencyIndicatorLayout:Landroid/widget/LinearLayout;

    invoke-direct {v0, v1, p0, v2, v3}, Lcom/oneplus/keyguard/OpDragPanelController;-><init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    return-void
.end method

.method public onStart()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mPanelController:Lcom/oneplus/keyguard/OpDragPanelController;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController;->onStop()V

    :cond_0
    return-void
.end method

.method public onTimeout()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;->onTimeout()V

    :cond_0
    return-void
.end method

.method public removeCallback()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpEmergencyPanel;->mCallback:Lcom/oneplus/keyguard/OpEmergencyPanel$PanelCallback;

    return-void
.end method
