.class public Lcom/android/systemui/statusbar/policy/ClockCenter;
.super Lcom/android/systemui/statusbar/policy/Clock;
.source "ClockCenter.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ClockCenter;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/systemui/statusbar/policy/Clock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public updateClockVisibility()V
    .locals 4
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/Clock;->readRenovateMods()V
    
    iget v0, p0, Lcom/android/systemui/statusbar/policy/Clock;->mClockPosition:I
    
    const v1, 0x3

    if-ne v0, v1, :cond_1
    
    const/16 v0, 0x0 #visible
    
    goto :goto_mw
    
    :cond_1
    const/16 v0, 0x8 #hidden
    
    :goto_mw
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/Clock;->setVisibility(I)V

    return-void
.end method
