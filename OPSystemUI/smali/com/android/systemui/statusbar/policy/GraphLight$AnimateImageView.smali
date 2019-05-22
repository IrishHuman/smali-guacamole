.class Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;
.super Landroid/widget/ImageView;
.source "GraphLight.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/GraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateImageView"
.end annotation


# instance fields
.field private final mAlphaInAnimator:Landroid/animation/ValueAnimator;

.field private final mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

.field mAnimationArray:Landroid/content/res/TypedArray;

.field private final mAnimator:Landroid/animation/AnimatorSet;

.field mLp:Landroid/view/ViewGroup$LayoutParams;

.field private mOrientationType:I

.field mStartAnimationAssets1:Ljava/util/ArrayList;

.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/GraphLight;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/GraphLight;Landroid/content/Context;)V
    .locals 9

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getOrientation()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mOrientationType:I

    sget-object v0, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030047

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    const/4 v0, 0x2

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v1

    const-wide/16 v2, 0xe1

    invoke-virtual {v1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;

    invoke-direct {v4, p0, p1}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$1;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;Lcom/android/systemui/statusbar/policy/GraphLight;)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    new-instance v4, Landroid/view/animation/PathInterpolator;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const v7, 0x3e4ccccd    # 0.2f

    invoke-direct {v4, v6, v6, v7, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v1, v4}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v0

    const-wide/16 v7, 0x96

    invoke-virtual {v0, v7, v8}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$2;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;Lcom/android/systemui/statusbar/policy/GraphLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/PathInterpolator;

    const v4, 0x3f4ccccd    # 0.8f

    invoke-direct {v1, v4, v6, v5, v5}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v2, v3}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAlphaInAnimator_disappear:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    new-instance v1, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView$3;-><init>(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;Lcom/android/systemui/statusbar/policy/GraphLight;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    return-void

    :array_0
    .array-data 4
        0x0
        0xe1
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x96
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;)I
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->checkOrientationType()I

    move-result v0

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->relaseAnimationList()V

    return-void
.end method

.method private checkOrientationType()I
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getOrientation()I

    move-result v0

    const-string v1, "GraphLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkOrientationType / rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mOrientationType:I

    if-eq v1, v0, :cond_0

    const-string v1, "GraphLight"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect checkOrientationType() / rotation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " / mOrientationType:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mOrientationType:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iput v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mOrientationType:I

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->relaseAnimationList()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$400(Lcom/android/systemui/statusbar/policy/GraphLight;)V

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/GraphLight;->postShow()V

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mOrientationType:I

    return v1
.end method

.method private getOrientation()I
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$500(Lcom/android/systemui/statusbar/policy/GraphLight;)Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v1

    return v1
.end method

.method private relaseAnimationList()V
    .locals 2

    const-string v0, "GraphLight"

    const-string v1, "relaseAnimationList"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method private setAnimationList()V
    .locals 5

    const-string v0, "GraphLight"

    const-string/jumbo v1, "setAnimationList (clear & add)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimationArray:Landroid/content/res/TypedArray;

    invoke-virtual {v2, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private startAnimation()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setAnimationList()V

    const-string v0, "GraphLight"

    const-string/jumbo v1, "startAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v1}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$200(Lcom/android/systemui/statusbar/policy/GraphLight;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x3f000000    # 0.5f

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mLp:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mStartAnimationAssets1:Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->mAnimator:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/policy/GraphLight$AnimateImageView;->startAnimation()V

    return-void
.end method
