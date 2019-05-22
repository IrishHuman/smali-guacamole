.class public Lcom/oneplus/lib/design/widget/OPPageIndicator;
.super Landroid/view/ViewGroup;
.source "OPPageIndicator.java"


# instance fields
.field private mAnimating:Z

.field private final mAnimationDone:Ljava/lang/Runnable;

.field private final mPageDotWidth:I

.field private final mPageIndicatorHeight:I

.field private final mPageIndicatorWidth:I

.field private mPosition:I

.field private final mQueuedPositions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    new-instance v0, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator$1;-><init>(Lcom/oneplus/lib/design/widget/OPPageIndicator;)V

    iput-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    nop

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$dimen;->op_qs_page_indicator_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    int-to-float v0, v0

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    return-void
.end method

.method static synthetic access$002(Lcom/oneplus/lib/design/widget/OPPageIndicator;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    return p1
.end method

.method static synthetic access$100(Lcom/oneplus/lib/design/widget/OPPageIndicator;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mQueuedPositions:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/design/widget/OPPageIndicator;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setPosition(I)V

    return-void
.end method

.method private animate(II)V
    .locals 12

    shr-int/lit8 v0, p1, 0x1

    shr-int/lit8 v1, p2, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    and-int/lit8 v2, p1, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_2

    if-le p1, p2, :cond_1

    :goto_1
    move v5, v4

    goto :goto_2

    :cond_1
    move v5, v3

    goto :goto_2

    :cond_2
    if-ge p1, p2, :cond_1

    goto :goto_1

    :goto_2
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v7

    if-ne v7, v6, :cond_3

    add-int/lit8 v7, v7, 0x1

    :cond_3
    invoke-virtual {p0, v6}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    if-eqz v8, :cond_5

    if-nez v9, :cond_4

    goto :goto_3

    :cond_4
    invoke-virtual {v8}, Landroid/widget/ImageView;->getX()F

    move-result v10

    invoke-virtual {v9}, Landroid/widget/ImageView;->getX()F

    move-result v11

    sub-float/2addr v10, v11

    invoke-virtual {v9, v10}, Landroid/widget/ImageView;->setTranslationX(F)V

    invoke-direct {p0, v2, v5, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v10

    invoke-direct {p0, v8, v10}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    invoke-direct {p0, v2, v5, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getTransition(ZZZ)I

    move-result v3

    invoke-direct {p0, v9, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->playAnimation(Landroid/widget/ImageView;I)V

    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v3

    invoke-virtual {v9, v3}, Landroid/widget/ImageView;->setAlpha(F)V

    iput-boolean v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimating:Z

    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method private getAlpha(Z)F
    .locals 1

    if-eqz p1, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_0
    const v0, 0x3e99999a    # 0.3f

    :goto_0
    return v0
.end method

.method private getTransition(ZZZ)I
    .locals 1

    if-eqz p3, :cond_3

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_a_animation:I

    return v0

    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_b_c_animation:I

    return v0

    :cond_1
    if-eqz p2, :cond_2

    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b_animation:I

    return v0

    :cond_2
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_major_c_b_animation:I

    return v0

    :cond_3
    if-eqz p1, :cond_5

    if-eqz p2, :cond_4

    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_c_animation:I

    return v0

    :cond_4
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_b_a_animation:I

    return v0

    :cond_5
    if-eqz p2, :cond_6

    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_c_b_animation:I

    return v0

    :cond_6
    sget v0, Lcom/oneplus/commonctrl/R$drawable;->op_minor_a_b_animation:I

    return v0
.end method

.method private playAnimation(Landroid/widget/ImageView;I)V
    .locals 4

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    iget-object v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mAnimationDone:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setIndex(I)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setTranslationX(F)V

    sget v4, Lcom/oneplus/commonctrl/R$drawable;->op_major_a_b:I

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageResource(I)V

    if-ne v2, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    :goto_1
    invoke-direct {p0, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getAlpha(Z)F

    move-result v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setPosition(I)V
    .locals 2

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    sub-int/2addr v0, p1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    invoke-direct {p0, v0, p1}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->animate(II)V

    goto :goto_0

    :cond_0
    shr-int/lit8 v0, p1, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setIndex(I)V

    :goto_0
    iput p1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPosition:I

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 7

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v2

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    iget v5, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    add-int/2addr v5, v3

    iget v6, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {v4, v3, v1, v5, v6}, Landroid/view/View;->layout(IIII)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->onMeasure(II)V

    return-void

    :cond_0
    iget v1, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    const/high16 v2, 0x40000000    # 2.0f

    invoke-static {v1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v1

    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-static {v3, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1, v2}, Landroid/view/View;->measure(II)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iget v3, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorWidth:I

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    sub-int/2addr v3, v4

    add-int/lit8 v4, v0, -0x1

    mul-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageDotWidth:I

    add-int/2addr v3, v4

    iget v4, p0, Lcom/oneplus/lib/design/widget/OPPageIndicator;->mPageIndicatorHeight:I

    invoke-virtual {p0, v3, v4}, Lcom/oneplus/lib/design/widget/OPPageIndicator;->setMeasuredDimension(II)V

    return-void
.end method
