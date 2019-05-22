.class public Lcom/android/server/StaticScrollView;
.super Landroid/widget/ScrollView;
.source "StaticScrollView.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "StaticScrollView"

.field private static mPreviousPointY:F


# instance fields
.field private isSettingsShow:Z

.field private mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

.field private mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

.field private mContext:Landroid/content/Context;

.field private mDefaultHeight:I

.field private mDisableScrollFromTouch:Z

.field private mEffectList:Landroid/widget/RelativeLayout;

.field private mExpandHeight:I

.field private mNotifyPopupWindow:Landroid/widget/PopupWindow;

.field private mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

.field private mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

.field private mScrollHeight:I

.field private mSettings:Landroid/view/View;

.field private mSettingsFake:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageView;

.field private mSettingsIconFake:Landroid/widget/ImageView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/android/server/StaticScrollView;->mPreviousPointY:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/StaticScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/StaticScrollView;->mDisableScrollFromTouch:Z

    iput v0, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    iput-object p1, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/StaticScrollView;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/StaticScrollView;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    return-object v0
.end method

.method private initSettingsAnimation()V
    .locals 11

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x5050002

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    float-to-int v1, v2

    :cond_0
    add-int v2, v0, v1

    const/4 v4, 0x2

    new-array v5, v4, [F

    int-to-float v6, v0

    const/4 v7, 0x0

    aput v6, v5, v7

    const/4 v6, 0x0

    aput v6, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    const-wide/16 v8, 0x96

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$2;

    invoke-direct {v10, p0, v0}, Lcom/android/server/StaticScrollView$2;-><init>(Lcom/android/server/StaticScrollView;I)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v4, [F

    aput v6, v5, v7

    int-to-float v10, v0

    aput v10, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$3;

    invoke-direct {v10, p0}, Lcom/android/server/StaticScrollView$3;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v5, v4, [F

    add-int v10, v0, v1

    int-to-float v10, v10

    aput v10, v5, v7

    aput v6, v5, v3

    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v5

    iput-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v5, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v5, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    new-instance v10, Lcom/android/server/StaticScrollView$4;

    invoke-direct {v10, p0, v2}, Lcom/android/server/StaticScrollView$4;-><init>(Lcom/android/server/StaticScrollView;I)V

    invoke-virtual {v5, v10}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-array v4, v4, [F

    aput v6, v4, v7

    add-int v5, v0, v1

    int-to-float v5, v5

    aput v5, v4, v3

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v3, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v3, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/StaticScrollView$5;

    invoke-direct {v4, p0}, Lcom/android/server/StaticScrollView$5;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    return-void
.end method

.method private startCloseExpandHeightAnimation(ZZ)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private startCloseExpandHeightAnimationWithListener(ZZLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mCloseSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private startExpandHeightAnimation(Z)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->removeAllListeners()V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method

.method private startExpandHeightAnimationWithListener(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 1

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0, p2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mOpenSettingsInFnaticAnimation:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    :goto_0
    return-void
.end method


# virtual methods
.method public checkSettingsShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return v0
.end method

.method public forceCloseSettings(Z)V
    .locals 2

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimation(ZZ)V

    iget-boolean v1, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return-void
.end method

.method public getCurrentHeight()I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getHeight()I

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v0, v1

    :cond_0
    return v0
.end method

.method public init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/StaticScrollView;->mSettings:Landroid/view/View;

    iput-object p2, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    iput-object p4, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    iput-object p5, p0, Lcom/android/server/StaticScrollView;->mEffectList:Landroid/widget/RelativeLayout;

    iput-object p6, p0, Lcom/android/server/StaticScrollView;->mNotifyPopupWindow:Landroid/widget/PopupWindow;

    invoke-direct {p0}, Lcom/android/server/StaticScrollView;->initSettingsAnimation()V

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    iput v0, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/StaticScrollView;->mScrollHeight:I

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050002

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/server/StaticScrollView;->mExpandHeight:I

    new-instance v0, Lcom/android/server/StaticScrollView$1;

    invoke-direct {v0, p0}, Lcom/android/server/StaticScrollView$1;-><init>(Lcom/android/server/StaticScrollView;)V

    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method public resetHeight()V
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Lcom/android/server/StaticScrollView;->mDefaultHeight:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public scrollToTop()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/android/server/StaticScrollView;->scrollTo(II)V

    return-void
.end method

.method public setCurrentHeight(I)V
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/StaticScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iput p1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/android/server/StaticScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setTouchScrollEnabled(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/StaticScrollView;->mDisableScrollFromTouch:Z

    return-void
.end method

.method public switchView(Z)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    return-void
.end method

.method public switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V
    .locals 2

    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    if-nez p2, :cond_0

    invoke-direct {p0, p1, v0}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimation(ZZ)V

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/android/server/StaticScrollView;->startCloseExpandHeightAnimationWithListener(ZZLandroid/animation/Animator$AnimatorListener;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsFake:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    const v1, 0x506003c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    if-nez p2, :cond_2

    invoke-direct {p0, p1}, Lcom/android/server/StaticScrollView;->startExpandHeightAnimation(Z)V

    goto :goto_1

    :cond_2
    invoke-direct {p0, p1, p2}, Lcom/android/server/StaticScrollView;->startExpandHeightAnimationWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    :goto_1
    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIcon:Landroid/widget/ImageView;

    const v1, 0x506003d

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/StaticScrollView;->mSettingsIconFake:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :goto_2
    iget-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/StaticScrollView;->isSettingsShow:Z

    return-void
.end method
