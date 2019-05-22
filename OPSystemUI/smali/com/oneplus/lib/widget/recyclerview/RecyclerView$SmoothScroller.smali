.class public abstract Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SmoothScroller"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;
    }
.end annotation


# instance fields
.field private mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

.field private mPendingInitialRun:Z

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private final mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

.field private mRunning:Z

.field private mTargetPosition:I

.field private mTargetView:Landroid/view/View;


# direct methods
.method static synthetic access$2800(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onAnimation(II)V

    return-void
.end method

.method private onAnimation(II)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_0

    iget v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v1

    iget v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iget-object v2, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v3, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, v1, v2, v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    goto :goto_0

    :cond_2
    const-string v1, "RecyclerView"

    const-string v2, "Passed over target position while smooth scrolling."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_3
    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v1, :cond_5

    iget-object v1, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {p0, p1, p2, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->hasJumpTarget()Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclingAction:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;

    invoke-static {v2, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;->access$5100(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)V

    if-eqz v1, :cond_5

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-eqz v2, :cond_4

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    invoke-static {v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->access$4900(Lcom/oneplus/lib/widget/recyclerview/RecyclerView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewFlinger;->postOnAnimation()V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->stop()V

    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method public getChildPosition(Landroid/view/View;)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getChildLayoutPosition(Landroid/view/View;)I

    move-result v0

    return v0
.end method

.method public getTargetPosition()I
    .locals 1

    iget v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    return v0
.end method

.method public isPendingInitialRun()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    return v0
.end method

.method public isRunning()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    return v0
.end method

.method protected onChildAttachedToWindow(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getChildPosition(Landroid/view/View;)I

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->getTargetPosition()I

    move-result v1

    if-ne v0, v1, :cond_0

    iput-object p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method protected abstract onSeekTargetStep(IILcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method protected abstract onStop()V
.end method

.method protected abstract onTargetFound(Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller$Action;)V
.end method

.method public setTargetPosition(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    return-void
.end method

.method protected final stop()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->onStop()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v0, v0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->mState:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;->access$4802(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;I)I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetView:Landroid/view/View;

    iput v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mTargetPosition:I

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mPendingInitialRun:Z

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRunning:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    invoke-static {v1, p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;->access$5000(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mLayoutManager:Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$SmoothScroller;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-void
.end method
