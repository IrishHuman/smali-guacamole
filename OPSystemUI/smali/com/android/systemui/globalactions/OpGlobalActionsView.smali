.class public Lcom/android/systemui/globalactions/OpGlobalActionsView;
.super Landroid/widget/FrameLayout;
.source "OpGlobalActionsView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/globalactions/OpGlobalActionsView$OnViewTouchListener;,
        Lcom/android/systemui/globalactions/OpGlobalActionsView$OnQuitListener;
    }
.end annotation


# instance fields
.field private mBgView:Landroid/view/View;

.field private mConfirmedAnimation:Landroid/view/animation/AnimationSet;

.field private mOnViewTouchListener:Lcom/android/systemui/globalactions/OpGlobalActionsView$OnViewTouchListener;

.field private mQuitListener:Lcom/android/systemui/globalactions/OpGlobalActionsView$OnQuitListener;

.field private mShowAnimation:Landroid/view/animation/AnimationSet;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/OpGlobalActionsView;->initAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/OpGlobalActionsView;->initAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    invoke-direct {p0}, Lcom/android/systemui/globalactions/OpGlobalActionsView;->initAnimation()V

    return-void
.end method

.method private initAnimation()V
    .locals 7

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const v1, 0x3f4ccccd    # 0.8f

    const/4 v2, 0x0

    invoke-direct {v0, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v4, Landroid/view/animation/AnimationSet;

    const/4 v5, 0x1

    invoke-direct {v4, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v4, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    iget-object v4, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v4, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v4, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mShowAnimation:Landroid/view/animation/AnimationSet;

    new-instance v6, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v6}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v4, v6}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v4, v1, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    move-object v0, v4

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v5}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    iput-object v1, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    iget-object v1, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    invoke-virtual {v1, v5}, Landroid/view/animation/AnimationSet;->setFillAfter(Z)V

    iget-object v1, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mConfirmedAnimation:Landroid/view/animation/AnimationSet;

    new-instance v2, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v2}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v1, v2}, Landroid/view/animation/AnimationSet;->setInterpolator(Landroid/view/animation/Interpolator;)V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x18

    if-eq v0, v2, :cond_4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x19

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v2, 0x4

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0xbb

    if-eq v0, v2, :cond_2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v2, 0x52

    if-ne v0, v2, :cond_1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_2
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/globalactions/OpGlobalActionsView;->removePowerView()V

    :cond_3
    return v1

    :cond_4
    :goto_1
    return v1
.end method

.method public getAlpha()F
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getAlpha()F

    move-result v0

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mOnViewTouchListener:Lcom/android/systemui/globalactions/OpGlobalActionsView$OnViewTouchListener;

    invoke-interface {v0, p1}, Lcom/android/systemui/globalactions/OpGlobalActionsView$OnViewTouchListener;->OnTouch(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public removePowerView()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mQuitListener:Lcom/android/systemui/globalactions/OpGlobalActionsView$OnQuitListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mQuitListener:Lcom/android/systemui/globalactions/OpGlobalActionsView$OnQuitListener;

    invoke-interface {v0}, Lcom/android/systemui/globalactions/OpGlobalActionsView$OnQuitListener;->OnQuit()V

    :cond_0
    return-void
.end method

.method public setAlpha(F)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/globalactions/OpGlobalActionsView;->mBgView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
