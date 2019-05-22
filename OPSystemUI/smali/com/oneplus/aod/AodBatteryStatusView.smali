.class public Lcom/oneplus/aod/AodBatteryStatusView;
.super Landroid/widget/LinearLayout;
.source "AodBatteryStatusView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final CHARGE_ICONS:[I

.field private final STATE_CHARGED:I

.field private final STATE_CHARGING:I

.field private final STATE_FAST_CHARGING:I

.field private final STATE_INVALID:I

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

.field private mChargeState:I

.field private mChargeView:Landroid/widget/ImageView;

.field private mFastCharge:Z

.field private mLevel:I

.field private mPercentage:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/AodBatteryStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/AodBatteryStatusView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->CHARGE_ICONS:[I

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->STATE_INVALID:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->STATE_CHARGED:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/aod/AodBatteryStatusView;->STATE_CHARGING:I

    const/4 v2, 0x2

    iput v2, p0, Lcom/oneplus/aod/AodBatteryStatusView;->STATE_FAST_CHARGING:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    iput-boolean v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mFastCharge:Z

    return-void

    :array_0
    .array-data 4
        0x7f0800f0
        0x7f0800f1
        0x7f0800f2
    .end array-data
.end method

.method private updateViewState()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x56

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mFastCharge:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    iget v3, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mLevel:I

    invoke-virtual {v1, v3, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setLevel(IZ)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->CHARGE_ICONS:[I

    iget v2, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    aget v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    invoke-virtual {v0, v3}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 4

    iput p1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mLevel:I

    if-eqz p2, :cond_2

    iget v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mLevel:I

    const/16 v1, 0x64

    if-lt v0, v1, :cond_0

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    goto :goto_0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mFastCharge:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeState:I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    invoke-static {}, Landroid/icu/text/NumberFormat;->getPercentInstance()Landroid/icu/text/NumberFormat;

    move-result-object v1

    int-to-float v2, p1

    const/high16 v3, 0x42c80000    # 100.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Landroid/icu/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryStatusView;->updateViewState()V

    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public onFastChargeChanged(I)V
    .locals 2

    if-lez p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mFastCharge:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mFastCharge:Z

    :cond_1
    return-void
.end method

.method protected onFinishInflate()V
    .locals 2

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a0328

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mPercentage:Landroid/widget/TextView;

    const v1, 0x7f120524

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextAppearance(I)V

    const v0, 0x7f0a0089

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodBatteryDashChargeView;

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mBatteryDashChargeView:Lcom/oneplus/aod/AodBatteryDashChargeView;

    const v0, 0x7f0a0087

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryStatusView;->mChargeView:Landroid/widget/ImageView;

    return-void
.end method
