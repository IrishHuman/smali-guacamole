.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Action"
.end annotation


# instance fields
.field private changed:Z

.field private consecutiveUpdates:I

.field private mDuration:I

.field private mDx:I

.field private mDy:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mJumpToPosition:I


# direct methods
.method static synthetic access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    return-void
.end method

.method private runIfNecessary(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V
    .locals 6

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v1, 0x0

    if-ltz v0, :cond_0

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    invoke-static {p1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$5200(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;I)V

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->validate()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    if-nez v0, :cond_2

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    const/high16 v2, -0x80000000

    if-ne v0, v2, :cond_1

    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    invoke-virtual {v0, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(II)V

    goto :goto_0

    :cond_1
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    invoke-virtual {v0, v2, v3, v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(III)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDx:I

    iget v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDy:I

    iget v4, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    iget-object v5, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->smoothScrollBy(IIILandroid/view/animation/Interpolator;)V

    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    const/16 v2, 0xa

    if-le v0, v2, :cond_3

    const-string v0, "RecyclerView"

    const-string v2, "Smooth Scroll action is being updated too frequently. Make sure you are not changing it unless necessary"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->changed:Z

    goto :goto_1

    :cond_4
    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->consecutiveUpdates:I

    :goto_1
    return-void
.end method

.method private validate()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mInterpolator:Landroid/view/animation/Interpolator;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "If you provide an interpolator, you must set a positive duration"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mDuration:I

    if-lt v0, v1, :cond_2

    return-void

    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Scroll duration must be a positive number"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method hasJumpTarget()Z
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->mJumpToPosition:I

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
