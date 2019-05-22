.class public Lcom/oneplus/keyguard/OpDragPanelController;
.super Ljava/lang/Object;
.source "OpDragPanelController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;,
        Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;
    }
.end annotation


# static fields
.field private static mDropThreshold:I


# instance fields
.field private animationRunning:Z

.field private isStart:Z

.field private mArrowView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mDragEndAnimation:Landroid/animation/AnimatorSet;

.field private mDragStartAnimation:Landroid/animation/AnimatorSet;

.field private mDropped:Z

.field private mHander:Landroid/os/Handler;

.field private mHintAnimation:Landroid/animation/AnimatorSet;

.field private mHintText:Landroid/widget/TextView;

.field private mIndicatorLayout:Landroid/widget/LinearLayout;

.field private mIsReseting:Z

.field private mLastX:F

.field private mLastY:F

.field private mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

.field private mShakeAnimator:Landroid/animation/AnimatorSet;

.field private mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

.field private mTouched:Z

.field private mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

.field private shakeAnimationRunning:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/keyguard/OpEmergencyPanel;Lcom/oneplus/keyguard/OpEmergencyBubble;Landroid/widget/LinearLayout;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    iput v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    new-instance v0, Lcom/oneplus/keyguard/OpDragPanelController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/keyguard/OpDragPanelController$1;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    iput-object p3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/oneplus/keyguard/OpDragPanelController$OpOnTouchListener;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$1;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iput-object p4, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a0069

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const v1, 0x7f0a01ae

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070512

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    sput v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    const-wide/16 v0, 0x74

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    const-wide/16 v0, 0x4b

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createHintAnimation()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    return-void
.end method

.method static synthetic access$1100(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return v0
.end method

.method static synthetic access$1302(Lcom/oneplus/keyguard/OpDragPanelController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object v0
.end method

.method static synthetic access$1402(Lcom/oneplus/keyguard/OpDragPanelController;Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;)Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;
    .locals 0

    iput-object p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    return-object p1
.end method

.method static synthetic access$1500()I
    .locals 1

    sget v0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    return v0
.end method

.method static synthetic access$1600(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyBubble;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/oneplus/keyguard/OpDragPanelController;F)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragStart(F)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->onDragEnd()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/keyguard/OpDragPanelController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->createShakeAnimator()V

    return-void
.end method

.method static synthetic access$2000(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/animation/AnimatorSet;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/keyguard/OpDragPanelController;)Lcom/oneplus/keyguard/OpEmergencyPanel;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    return v0
.end method

.method static synthetic access$600(Lcom/oneplus/keyguard/OpDragPanelController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/keyguard/OpDragPanelController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    return v0
.end method

.method static synthetic access$800(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return v0
.end method

.method static synthetic access$802(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastY:F

    return p1
.end method

.method static synthetic access$900(Lcom/oneplus/keyguard/OpDragPanelController;)F
    .locals 1

    iget v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return v0
.end method

.method static synthetic access$902(Lcom/oneplus/keyguard/OpDragPanelController;F)F
    .locals 0

    iput p1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mLastX:F

    return p1
.end method

.method private createHintAnimation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getHintAnimation()Landroid/animation/AnimatorSet;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/oneplus/keyguard/OpDragPanelController$4;

    invoke-direct {v1, p0}, Lcom/oneplus/keyguard/OpDragPanelController$4;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private createShakeAnimator()V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v2

    invoke-direct {p0, v0, v1}, Lcom/oneplus/keyguard/OpDragPanelController;->getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;

    move-result-object v0

    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/animation/Animator;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    new-instance v3, Lcom/oneplus/keyguard/OpDragPanelController$5;

    invoke-direct {v3, p0}, Lcom/oneplus/keyguard/OpDragPanelController$5;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v1, v3}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    :cond_0
    return-void
.end method

.method private getAlphaAnimatorSet()Landroid/animation/AnimatorSet;
    .locals 7

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    sget-object v1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v3, "scaleX"

    new-array v4, v2, [F

    fill-array-data v4, :array_1

    invoke-static {v1, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v4, "scaleY"

    new-array v5, v2, [F

    fill-array-data v5, :array_2

    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v5, 0x3

    new-array v5, v5, [Landroid/animation/Animator;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v6, 0x1

    aput-object v1, v5, v6

    aput-object v3, v5, v2

    invoke-virtual {v4, v5}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    const-wide/16 v5, 0x96

    invoke-virtual {v4, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    return-object v4

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getHintAnimation()Landroid/animation/AnimatorSet;
    .locals 10

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070516

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v2, 0x10c000e

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    const/4 v4, 0x2

    new-array v5, v4, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    const-wide/16 v5, 0x4b

    invoke-virtual {v2, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v3, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v5, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v6, v4, [F

    fill-array-data v6, :array_1

    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    const-wide/16 v5, 0xb7

    invoke-virtual {v3, v5, v6}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    iget-object v5, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v4, [F

    neg-float v8, v0

    const/4 v9, 0x0

    aput v8, v7, v9

    const/4 v8, 0x1

    aput v0, v7, v8

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    const-wide/16 v6, 0x49f

    invoke-virtual {v5, v6, v7}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    invoke-virtual {v5, v1}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/animation/AnimatorSet;

    invoke-direct {v6}, Landroid/animation/AnimatorSet;-><init>()V

    const/4 v7, 0x3

    new-array v7, v7, [Landroid/animation/Animator;

    aput-object v2, v7, v9

    aput-object v5, v7, v8

    aput-object v3, v7, v4

    invoke-virtual {v6, v7}, Landroid/animation/AnimatorSet;->playSequentially([Landroid/animation/Animator;)V

    return-object v6

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private getZoomInAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v3, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/oneplus/keyguard/OpDragPanelController$2;

    invoke-direct {v4, p0}, Lcom/oneplus/keyguard/OpDragPanelController$2;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x3f933333    # 1.15f
    .end array-data
.end method

.method private getZoomOutAnimatorSet(J)Landroid/animation/AnimatorSet;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v1, "scaleX"

    const/4 v2, 0x2

    new-array v3, v2, [F

    fill-array-data v3, :array_0

    invoke-static {v0, v1, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const-string v3, "scaleY"

    new-array v2, v2, [F

    fill-array-data v2, :array_1

    invoke-static {v1, v3, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mContext:Landroid/content/Context;

    const v3, 0x10c000e

    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v2

    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    invoke-virtual {v3, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    invoke-virtual {v3, p1, p2}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v4, Lcom/oneplus/keyguard/OpDragPanelController$3;

    invoke-direct {v4, p0}, Lcom/oneplus/keyguard/OpDragPanelController$3;-><init>(Lcom/oneplus/keyguard/OpDragPanelController;)V

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v3

    nop

    :array_0
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f933333    # 1.15f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private isAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    return v0
.end method

.method private isShakeAnimationRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    return v0
.end method

.method private onDragEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v0, :cond_4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDragEnd: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v2}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mVelocityTracker:Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpDragPanelController$VelocityTracker;->isDrop()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragStartAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_1
    iget-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDragEndAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->getAlphaAnimatorSet()Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mPanel:Lcom/oneplus/keyguard/OpEmergencyPanel;

    invoke-virtual {v1}, Lcom/oneplus/keyguard/OpEmergencyPanel;->onDrop()V

    :cond_3
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    const-string v1, "OpDragPanelController"

    const-string v2, "onDrop"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_0
    return-void
.end method

.method private onDragStart(F)V
    .locals 17

    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    if-eqz v1, :cond_2

    sget v1, Lcom/oneplus/keyguard/OpDragPanelController;->mDropThreshold:I

    int-to-float v1, v1

    div-float v1, p1, v1

    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_0

    const-string v2, "OpDragPanelController"

    const-string v3, "onDragStart:"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget v2, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_CIRCLE_COLOR:I

    const/4 v3, 0x0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    const/high16 v5, 0x437f0000    # 255.0f

    mul-float/2addr v4, v5

    float-to-int v10, v4

    const v4, -0x14ffd8

    const-wide v5, 0x3fd999999999999aL    # 0.4

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    float-to-double v7, v7

    const-wide v11, 0x3fd3333333333333L    # 0.3

    mul-double/2addr v7, v11

    sub-double/2addr v5, v7

    const-wide v7, 0x406fe00000000000L    # 255.0

    mul-double/2addr v5, v7

    double-to-int v5, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v11, v6

    const-wide/high16 v13, 0x3fe0000000000000L    # 0.5

    cmpl-double v6, v11, v13

    if-ltz v6, :cond_1

    sget v4, Lcom/oneplus/keyguard/OpEmergencyBubble;->ACTIVE_TEXT_COLOR:I

    const-wide v11, 0x3fc999999999999aL    # 0.2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    float-to-double v13, v6

    const-wide v15, 0x3fe999999999999aL    # 0.8

    mul-double/2addr v13, v15

    add-double/2addr v11, v13

    mul-double/2addr v11, v7

    double-to-int v5, v11

    :cond_1
    move v11, v4

    move v12, v5

    iget-object v4, v0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    move v5, v2

    move v6, v10

    move v7, v3

    move v8, v11

    move v9, v12

    invoke-virtual/range {v4 .. v9}, Lcom/oneplus/keyguard/OpEmergencyBubble;->drawView(IIIII)V

    iget-object v4, v0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v1

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouched:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mDropped:Z

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIsReseting:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopHintAnimation()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->stopShakeAnimation()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetText()V

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private resetArrow(Z)V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "resetArrow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_2
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationX(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mArrowView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private resetIndicatorLayout()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "IndicatorLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mIndicatorLayout:Landroid/widget/LinearLayout;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    return-void
.end method

.method private resetText()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintText:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :cond_0
    return-void
.end method

.method private resetTouchView()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setTranslationX(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setTranslationY(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setScaleX(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setScaleY(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0, v1}, Lcom/oneplus/keyguard/OpEmergencyBubble;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mTouchView:Lcom/oneplus/keyguard/OpEmergencyBubble;

    invoke-virtual {v0}, Lcom/oneplus/keyguard/OpEmergencyBubble;->reset()V

    return-void
.end method

.method private restartAnimation()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "restartAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startShakeAnimation()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->startHintAnimation()V

    return-void
.end method

.method private startHintAnimation()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startAnimation animationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    :cond_1
    return-void
.end method

.method private startShakeAnimation()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startShakeAnimation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    :cond_1
    return-void
.end method

.method private stopHintAnimation()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAnimation animationRunning: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHintAnimation:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iput-boolean v1, p0, Lcom/oneplus/keyguard/OpDragPanelController;->animationRunning:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetIndicatorLayout()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetArrow(Z)V

    :cond_2
    return-void
.end method

.method private stopShakeAnimation()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopShakeAnimation, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->isShakeAnimationRunning()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mShakeAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->shakeAnimationRunning:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->resetTouchView()V

    :cond_2
    return-void
.end method


# virtual methods
.method public onStart()V
    .locals 4

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->restartAnimation()V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x3

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "OpDragPanelController"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->isStart:Z

    invoke-direct {p0}, Lcom/oneplus/keyguard/OpDragPanelController;->reset()V

    iget-object v0, p0, Lcom/oneplus/keyguard/OpDragPanelController;->mHander:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method
