.class public Lcom/android/systemui/statusbar/StatusBarOPCustView;
.super Landroid/widget/LinearLayout;
.source "StatusBarOPCustView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/StatusIconDisplayable;
.implements Lcom/android/systemui/statusbar/policy/DarkIconDispatcher$DarkReceiver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;
    }
.end annotation


# instance fields
.field private mDarkIntensity:F

.field private mNetSpeedColor:I

.field private mDarkIconColor:I

.field private mDirty:Z

.field private mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

.field private mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

.field private mRect:Landroid/graphics/Rect;

.field private mSlot:Ljava/lang/String;

.field private mTint:I

.field private mVisible:Z

.field private mVisibleState:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    return-void
.end method

.method private applyColors()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;
    
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDarkIntensity:F
    
    float-to-int v5, v1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDarkIconColor:I #dark color
    
    if-nez v5, :cond_mw #set to grey if dark intensity is 1

    iget v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mNetSpeedColor:I #custom color

    :cond_mw
    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setColor(I)V
    
    iget v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mTint:I

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v3, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    iget-object v3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/android/systemui/statusbar/StatusBarIconView;->setIconColor(IZ)V

    return-void
.end method

.method public static fromResId(Landroid/content/Context;I)Lcom/android/systemui/statusbar/StatusBarOPCustView;
    .locals 5

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarOPCustView;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;-><init>(Landroid/content/Context;)V

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    invoke-direct {v0, v2, p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->setView(Landroid/view/View;Landroid/content/Context;)Z

    invoke-direct {v0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->initDotView()V
    
    const/4 v1, 0x0
    
    int-to-float v1, v1
    
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->updateViews(F)V

    return-object v0
.end method

.method private initDotView()V
    .locals 4

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/systemui/statusbar/StatusBarIconView;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/service/notification/StatusBarNotification;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibleState(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0706cc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const v2, 0x800013

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {p0, v2, v1}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private setView(Landroid/view/View;Landroid/content/Context;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;-><init>(Lcom/android/systemui/statusbar/StatusBarOPCustView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setView(Landroid/view/View;)Z

    move-result v0

    return v0
.end method

.method private updateState()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    packed-switch v0, :pswitch_data_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/StatusBarIconView;->setVisibility(I)V

    nop

    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public applyVisible(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    if-eq v0, p1, :cond_1

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->updateState()V

    :cond_1
    return-void
.end method

.method public getSlot()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    return-object v0
.end method

.method public isIconVisible()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisible:Z

    return v0
.end method

.method public onDarkChanged(Landroid/graphics/Rect;FI)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mRect:Landroid/graphics/Rect;
    
    iput p2, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDarkIntensity:F

    iput p3, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mTint:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 1

    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    :cond_0
    return-void
.end method

.method public setDecorColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setSlot(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;

    return-void
.end method

.method public setStaticDrawableColor(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mOPCustView:Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarOPCustView$OPCustView;->setColor(I)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDotView:Lcom/android/systemui/statusbar/StatusBarIconView;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/StatusBarIconView;->setDecorColor(I)V

    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->isInMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->getWidth()I

    move-result v0

    if-lez v0, :cond_0

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDirty:Z

    :cond_1
    return-void
.end method

.method public setVisibleState(I)V
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mVisibleState:I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->updateState()V

    :cond_0
    return-void
.end method

.method public getLockscreenIconColors()I
    .locals 2
    
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;
    
    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getStatusbarColorFromSlotNameOP(Ljava/lang/String;)I
    
    move-result v0

    return v0
.end method

.method public getQsIconColors()I
    .locals 2
    
    iget-object v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mSlot:Ljava/lang/String;
    
    invoke-static {v0}, Lcom/android/mwilky/Renovate;->getQsColorFromSlotNameOP(Ljava/lang/String;)I
    
    move-result v0

    return v0
.end method

.method public updateViews(F)V
    .locals 1
    
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->readRenovateMods()V
    
    invoke-direct {p0}, Lcom/android/systemui/statusbar/StatusBarOPCustView;->applyColors()V
    
    return-void
.end method

.method public readRenovateMods()V
    .locals 1
    
    sget v0, Lcom/android/mwilky/Renovate;->mNetSpeedColorOP:I
    
	iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mNetSpeedColor:I
	
	sget v0, Lcom/android/mwilky/Renovate;->mDarkIconColor:I
	
	iput v0, p0, Lcom/android/systemui/statusbar/StatusBarOPCustView;->mDarkIconColor:I
	
    return-void
.end method
