.class public Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/SmallScreen/TraceCallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;,
        Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;
    }
.end annotation


# static fields
.field private static final DRAG_THRESHOLD:I = 0x14

.field private static final DROP_THRESHOLD:I = 0x52

.field private static LEFT_FADOUTANIMATION_END:I = 0x0

.field private static RIGHT_FADOUTANIMATION_END:I = 0x0

.field private static final SCREEN_FADOUT_DURATION:I = 0x12c

.field private static final SCREEN_RESET_DURATION:I = 0x12c

.field private static final TAG:Ljava/lang/String; = "Longshot.SmallScreenContorller"

.field private static final VELOCITY_THRESHOLD:F = 20.0f


# instance fields
.field private isStart:Z

.field private mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

.field private mContext:Landroid/content/Context;

.field private final mDefaultPostion:[I

.field private mDraggable:Z

.field private mDragged:Z

.field private mDropped:Z

.field private mIsReseting:Z

.field private mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

.field private mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

.field private mStartX:F

.field private mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xfa

    sput v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->LEFT_FADOUTANIMATION_END:I

    const/16 v0, 0x52

    sput v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->RIGHT_FADOUTANIMATION_END:I

    return-void
.end method

.method public constructor <init>(Landroid/view/WindowManager;Landroid/content/Context;Landroid/view/ViewGroup;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mStartX:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDraggable:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mIsReseting:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mContext:Landroid/content/Context;

    move-object v0, p3

    check-cast v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    invoke-virtual {p3, v0}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    return-void
.end method

.method static synthetic access$000()I
    .locals 1

    sget v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->LEFT_FADOUTANIMATION_END:I

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)[I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->scrollBy(II)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->hookWindowTouch(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mIsReseting:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->reset()V

    return-void
.end method

.method private getFadoutAnimation()Landroid/animation/ValueAnimator;
    .locals 4

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const/4 v1, 0x0

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v2, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$1;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$1;-><init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v2, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;

    invoke-direct {v2, p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;-><init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V

    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private getResetAnimation()Landroid/animation/ValueAnimator;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$3;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$3;-><init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v1, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$4;

    invoke-direct {v1, p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$4;-><init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-object v0

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private hookWindowTouch(Z)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/high16 v2, 0x40000

    or-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const v2, -0x40001

    and-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method private isScrolledToLeft()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    if-le v0, v1, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method private onDragEnd()V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    if-eqz v0, :cond_2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onDragEnd:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDraggable:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;->isDrop()Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    if-nez v1, :cond_0

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->getResetAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isScrolledToLeft()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->LEFT_FADOUTANIMATION_END:I

    if-ge v1, v2, :cond_1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->getFadoutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->hookWindowTouch(Z)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;->onDragEnd(Z)V

    :cond_2
    return-void
.end method

.method private onDragStart()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->hookWindowTouch(Z)V

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onDragStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;->onDragStart()V

    :cond_0
    return-void
.end method

.method private reset()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDraggable:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mIsReseting:Z

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private scrollBy(II)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/2addr v1, p1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDefaultPostion:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isScrolledToLeft()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->LEFT_FADOUTANIMATION_END:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->RIGHT_FADOUTANIMATION_END:I

    :goto_0
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    sub-int v1, v0, v1

    int-to-float v1, v1

    const/high16 v2, 0x3f800000    # 1.0f

    mul-float/2addr v1, v2

    int-to-float v2, v0

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    const/4 v3, 0x0

    cmpl-float v4, v1, v3

    if-lez v4, :cond_1

    move v3, v1

    nop

    :cond_1
    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->setAlpha(F)V

    :cond_2
    return-void
.end method


# virtual methods
.method public isDragged()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    return v0
.end method

.method public isDropped()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDropped:Z

    return v0
.end method

.method public isIsReseting()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mIsReseting:Z

    return v0
.end method

.method public onStart()V
    .locals 2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->registerCallBack(Lcom/oneplus/screenshot/longshot/SmallScreen/TraceCallBack;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager$LayoutParams;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayoutLp:Landroid/view/WindowManager$LayoutParams;

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->reset()V

    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "Longshot.SmallScreenContorller"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mSmallLayout:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenShotFrameLayout;->unRegisterCallBack()V

    :cond_0
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDraggable:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->isStart:Z

    if-eqz v2, :cond_5

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mIsReseting:Z

    if-nez v2, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mStartX:F

    new-instance v1, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-direct {v1, p0, v2, v3}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;-><init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;FF)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    iget v2, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mStartX:F

    sub-float/2addr v2, v1

    float-to-int v2, v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_1

    iget-boolean v3, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    if-eqz v3, :cond_2

    :cond_1
    const/4 v3, 0x0

    invoke-direct {p0, v2, v3}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->scrollBy(II)V

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;->updateMovePoint(FF)V

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->onDragStart()V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    if-ne v2, v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;->updateMovePoint(FF)V

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->onDragEnd()V

    goto :goto_0

    :cond_4
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mVelocityTracler:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$VelocityTracler;

    iget-boolean v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDragged:Z

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->onDragEnd()V

    :cond_5
    :goto_0
    return-void
.end method

.method public registerCallBack(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    return-void
.end method

.method public setDraggable(Z)V
    .locals 3

    const-string v0, "Longshot.SmallScreenContorller"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDraggable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mDraggable:Z

    return-void
.end method

.method public unRegisterCallBack()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->mCallback:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    return-void
.end method
