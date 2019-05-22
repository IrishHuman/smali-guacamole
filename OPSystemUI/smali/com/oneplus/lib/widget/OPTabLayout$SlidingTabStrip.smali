.class Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;
.super Landroid/widget/LinearLayout;
.source "OPTabLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPTabLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SlidingTabStrip"
.end annotation


# instance fields
.field private mIndicatorLeft:I

.field private mIndicatorRight:I

.field private mSelectedIndicatorHeight:I

.field private final mSelectedIndicatorPaint:Landroid/graphics/Paint;

.field private mSelectedPosition:I

.field private mSelectionOffset:F

.field final synthetic this$0:Lcom/oneplus/lib/widget/OPTabLayout;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/OPTabLayout;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-direct {p0, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x1

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setWillNotDraw(Z)V

    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    return-void
.end method

.method private isRtl()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private setIndicatorPosition(II)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    if-eq p2, v0, :cond_1

    :cond_0
    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    iput p2, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_1
    return-void
.end method

.method private updateIndicatorPosition()V
    .locals 9

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, -0x1

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    if-lez v2, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->isRtl()Z

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_1

    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    if-lez v4, :cond_0

    :goto_0
    move v5, v6

    goto :goto_1

    :cond_0
    goto :goto_1

    :cond_1
    iget v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v7

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_0

    goto :goto_0

    :goto_1
    move v4, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/4 v7, 0x0

    cmpl-float v5, v5, v7

    if-lez v5, :cond_3

    if-eqz v4, :cond_3

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedPosition:I

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->isRtl()Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    move v1, v6

    :goto_2
    add-int/2addr v5, v1

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    const/high16 v7, 0x3f800000    # 1.0f

    sub-float v6, v7, v6

    int-to-float v8, v2

    mul-float/2addr v6, v8

    add-float/2addr v5, v6

    float-to-int v2, v5

    iget v5, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v6

    int-to-float v6, v6

    mul-float/2addr v5, v6

    iget v6, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectionOffset:F

    sub-float/2addr v7, v6

    int-to-float v6, v3

    mul-float/2addr v7, v6

    add-float/2addr v5, v7

    float-to-int v3, v5

    :cond_3
    move v1, v2

    goto :goto_3

    :cond_4
    move v3, v1

    :goto_3
    invoke-direct {p0, v1, v3}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->setIndicatorPosition(II)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    if-le v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorLeft:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    sub-int/2addr v0, v1

    int-to-float v3, v0

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mIndicatorRight:I

    int-to-float v4, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getHeight()I

    move-result v0

    int-to-float v5, v0

    iget-object v6, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    move-object v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->updateIndicatorPosition()V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 8

    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1100(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v0}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1200(Lcom/oneplus/lib/widget/OPTabLayout;)I

    move-result v0

    if-ne v0, v1, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    move v5, v3

    move v3, v0

    :goto_0
    if-ge v4, v3, :cond_1

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v2, p2}, Landroid/view/View;->measure(II)V

    invoke-virtual {v6}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    move-result v5

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-gtz v5, :cond_2

    return-void

    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    const/16 v4, 0x10

    invoke-static {v3, v4}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1300(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    move-result v3

    mul-int v4, v5, v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getMeasuredWidth()I

    move-result v6

    mul-int/lit8 v7, v3, 0x2

    sub-int/2addr v6, v7

    if-gt v4, v6, :cond_3

    nop

    :goto_1
    if-ge v1, v0, :cond_4

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v6

    check-cast v6, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v6, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v7, 0x0

    iput v7, v6, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_3
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v4, v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1202(Lcom/oneplus/lib/widget/OPTabLayout;I)I

    iget-object v1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->this$0:Lcom/oneplus/lib/widget/OPTabLayout;

    invoke-static {v1}, Lcom/oneplus/lib/widget/OPTabLayout;->access$1400(Lcom/oneplus/lib/widget/OPTabLayout;)V

    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    :cond_5
    return-void
.end method

.method setSelectedIndicatorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method

.method setSelectedIndicatorHeight(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->mSelectedIndicatorHeight:I

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPTabLayout$SlidingTabStrip;->postInvalidateOnAnimation()V

    :cond_0
    return-void
.end method
