.class public Lcom/oneplus/aod/AodBatteryMeterView;
.super Landroid/widget/ImageView;
.source "AodBatteryMeterView.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# instance fields
.field private final CHARGE_ICONS:[I

.field private final STATE_CHARGED:I

.field private final STATE_CHARGING:I

.field private final STATE_FAST_CHARGING:I

.field private final STATE_INVALID:I

.field private final TAG:Ljava/lang/String;

.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private mBatteryStyle:I

.field private mChargeState:I

.field private mContext:Landroid/content/Context;

.field private final mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

.field private mFastCharge:Z

.field private mLevel:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/aod/AodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/AodBatteryMeterView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "BatteryMeterView"

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryStyle:I

    const/4 v1, 0x3

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->CHARGE_ICONS:[I

    const/4 v1, -0x1

    iput v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->STATE_INVALID:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->STATE_CHARGED:I

    const/4 v2, 0x1

    iput v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->STATE_CHARGING:I

    const/4 v3, 0x2

    iput v3, p0, Lcom/oneplus/aod/AodBatteryMeterView;->STATE_FAST_CHARGING:I

    iput v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mContext:Landroid/content/Context;

    sget-object v1, Lcom/android/systemui/R$styleable;->BatteryMeterView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v1

    nop

    const v3, 0x7f060069

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v0, v3}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    new-instance v3, Lcom/oneplus/aod/AodBatteryMeterDrawable;

    new-instance v4, Landroid/os/Handler;

    invoke-direct {v4}, Landroid/os/Handler;-><init>()V

    invoke-direct {v3, p1, v4, v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;-><init>(Landroid/content/Context;Landroid/os/Handler;I)V

    iput-object v3, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    iget-object v3, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v3, v2}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->setIconPlace(Z)V

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodBatteryMeterView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void

    nop

    :array_0
    .array-data 4
        0x7f0800f0
        0x7f0800f1
        0x7f0800f2
    .end array-data
.end method

.method private updateBatteryMeterVisibility()V
    .locals 3

    const-string v0, "BatteryMeterView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateBatteryMeterVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", fastCharge = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateViewState()V
    .locals 4

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x56

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const/16 v2, 0x8

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodBatteryMeterView;->setVisibility(I)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/aod/AodBatteryMeterView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/AodBatteryMeterView;->setVisibility(I)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0, v2}, Lcom/oneplus/aod/AodBatteryMeterView;->setVisibility(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public hasOverlappingRendering()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    const-class v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/BatteryController;

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->startListening()V

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->updateBatteryMeterVisibility()V

    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070097

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070096

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryMeterView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v1}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->relayout()V

    return-void
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 5

    iput p1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mLevel:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p2, :cond_2

    iget v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mLevel:I

    const/16 v3, 0x64

    if-lt v2, v3, :cond_0

    iput v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    goto :goto_0

    :cond_0
    iget-boolean v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    if-eqz v2, :cond_1

    const/4 v2, 0x2

    iput v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    goto :goto_0

    :cond_1
    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    goto :goto_0

    :cond_2
    const/4 v2, -0x1

    iput v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mChargeState:I

    :goto_0
    nop

    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->getContext()Landroid/content/Context;

    move-result-object v2

    if-eqz p3, :cond_3

    const v3, 0x7f110050

    goto :goto_1

    :cond_3
    const v3, 0x7f11004f

    :goto_1
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v1

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryMeterView;->setContentDescription(Ljava/lang/CharSequence;)V

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->updateViewState()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryStyle:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryStyle:I

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->updateBatteryMeterVisibility()V

    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->requestLayout()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mDrawable:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->stopListening()V

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
    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    if-eq v1, v0, :cond_1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mFastCharge:Z

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterView;->updateBatteryMeterVisibility()V

    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/widget/ImageView;->onMeasure(II)V

    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    iget v2, p0, Lcom/oneplus/aod/AodBatteryMeterView;->mBatteryStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    if-eq v0, v1, :cond_0

    add-int/lit8 v1, v1, 0x3

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    invoke-virtual {p0, v0, v1, v2, v2}, Lcom/oneplus/aod/AodBatteryMeterView;->onSizeChanged(IIII)V

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/oneplus/aod/AodBatteryMeterView;->setMeasuredDimension(II)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 0

    return-void
.end method
