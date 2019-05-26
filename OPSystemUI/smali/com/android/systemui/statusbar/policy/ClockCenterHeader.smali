.class public Lcom/android/systemui/statusbar/policy/ClockCenterHeader;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockCenterHeader.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onAttachedToWindow()V
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->updateCenterClock()V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/TextView;->onDetachedFromWindow()V
    
    return-void
.end method

.method public setTextColor()V
    .locals 1
    
    sget v0, Lcom/android/mwilky/Renovate;->mQsClockColorOP:I
    
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->setTextColor(I)V

    return-void
.end method

.method public updateClockVisibility()V
    .locals 2
    
    sget v0, Lcom/android/mwilky/Renovate;->mClockPosition:I
    
    const v1, 0x3
    
    if-eq v0, v1, :cond_center
    
    const v0, 0x4
   
    goto :goto_invis
    
    :cond_center
    const/4 v0, 0x0
    
    :goto_invis
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->setVisibility(I)V

    return-void
.end method
    
.method public updateCenterClock()V
    .locals 1
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->updateClockVisibility()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->setTextColor()V
    
    return-void
.end method

.method public updateViews(F)V
    .locals 1
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->updateCenterClock()V

    return-void
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 1
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ClockCenterHeader;->setTextColor()V

    return-void
.end method