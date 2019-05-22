.class public Lcom/oneplus/aod/DateTimeView;
.super Landroid/widget/GridLayout;
.source "DateTimeView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/DateTimeView$Patterns;
    }
.end annotation


# instance fields
.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDateView:Lcom/oneplus/aod/OPTextDate;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mOwnerInfo:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/DateTimeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/oneplus/aod/DateTimeView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iput-object p1, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 5

    invoke-super {p0}, Landroid/widget/GridLayout;->onAttachedToWindow()V

    const-string v0, "DateTimeView"

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/aod/DateTimeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x0

    iget v2, p0, Lcom/oneplus/aod/DateTimeView;->mClockStyle:I

    if-nez v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070173

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/oneplus/aod/DateTimeView;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070172

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    goto :goto_0

    :cond_1
    iget v2, p0, Lcom/oneplus/aod/DateTimeView;->mClockStyle:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070175

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    :cond_2
    :goto_0
    const/4 v2, 0x0

    invoke-static {}, Lcom/oneplus/aod/AodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17819"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070170

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/oneplus/aod/AodUtils;->getDeviceTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, "17801"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07016f

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    goto :goto_1

    :cond_4
    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070171

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    :goto_1
    add-int v3, v1, v2

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/DateTimeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v3}, Lcom/oneplus/aod/OPTextDate;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f07017c

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v3, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v3, v0}, Lcom/oneplus/aod/OPTextDate;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/widget/GridLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/GridLayout;->onDetachedFromWindow()V

    const-string v0, "DateTimeView"

    const-string v1, "onDetachedFromWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/GridLayout;->onFinishInflate()V

    const-string v0, "DateTimeView"

    const-string v1, "onFinishInflate: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f0a0109

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/DateTimeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OPTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setShowCurrentUserTime(Z)V

    return-void
.end method

.method public refresh()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/DateTimeView;->mClockStyle:I

    const/4 v2, 0x0

    invoke-static {v0, v2, v1}, Lcom/oneplus/aod/DateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    invoke-virtual {p0}, Lcom/oneplus/aod/DateTimeView;->refreshTime()V

    return-void
.end method

.method public refreshTime()V
    .locals 2

    const-string v0, "DateTimeView"

    const-string v1, "refreshTime"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    sget-object v1, Lcom/oneplus/aod/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setFormat24Hour(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mDateView:Lcom/oneplus/aod/OPTextDate;

    sget-object v1, Lcom/oneplus/aod/DateTimeView$Patterns;->dateView:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setFormat12Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/DateTimeView;->mClockStyle:I

    invoke-virtual {p0}, Lcom/oneplus/aod/DateTimeView;->refresh()V

    return-void
.end method

.method public setEnableMarquee(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/DateTimeView;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    :cond_0
    return-void
.end method
