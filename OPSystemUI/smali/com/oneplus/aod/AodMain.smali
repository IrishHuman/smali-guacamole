.class public Lcom/oneplus/aod/AodMain;
.super Landroid/widget/LinearLayout;
.source "AodMain.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mBatteryAnalogContainer:Landroid/widget/LinearLayout;

.field private mBatteryContainer:Landroid/widget/LinearLayout;

.field private mBatteryDefaultContainer:Landroid/widget/LinearLayout;

.field private mBatteryEmptyView:Landroid/view/View;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mNotificationIconContainer:Landroid/widget/LinearLayout;

.field private mNotificationMoreIcon:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "AodMain"

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a008b

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    const v0, 0x7f0a0088

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a008a

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a0086

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a02c8

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const v0, 0x7f0a027c

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodMain;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationMoreIcon:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateRTL()V

    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->updateRTL()V

    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    return-void
.end method

.method public updateLayout()V
    .locals 4

    iget v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/16 v1, 0x8

    const/4 v2, 0x2

    if-eq v0, v2, :cond_4

    iget v0, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v3, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    if-nez v3, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/oneplus/aod/AodMain;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryEmptyView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07009d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070176

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    :goto_0
    return-void

    :cond_4
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    return-void
.end method

.method protected updateRTL()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodMain;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mBatteryContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    iget-object v3, p0, Lcom/oneplus/aod/AodMain;->mNotificationMoreIcon:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v1, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    goto :goto_1

    :cond_1
    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mNotificationIconContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryDefaultContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    iget-object v2, p0, Lcom/oneplus/aod/AodMain;->mBatteryAnalogContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->setLayoutDirection(I)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/AodMain;->invalidate()V

    return-void
.end method
