.class public Lcom/oneplus/aod/AodBatteryMeterDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "AodBatteryMeterDrawable.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

.field private final mBatteryPaint:Landroid/graphics/Paint;

.field private mBatteryStyle:I

.field private final mBoltFrame:Landroid/graphics/RectF;

.field private final mBoltPaint:Landroid/graphics/Paint;

.field private final mBoltPath:Landroid/graphics/Path;

.field private final mBoltPoints:[F

.field private final mButtonFrame:Landroid/graphics/RectF;

.field private mButtonHeightFraction:F

.field private mChargeColor:I

.field private mCharging:Z

.field private mCircleBackPaint:Landroid/graphics/Paint;

.field private mCircleChargingPaint:Landroid/graphics/Paint;

.field private mCircleFrontPaint:Landroid/graphics/Paint;

.field private final mCircleRect:Landroid/graphics/RectF;

.field private mCircleSize:I

.field private final mClipPath:Landroid/graphics/Path;

.field private final mColors:[I

.field private final mContext:Landroid/content/Context;

.field private final mCriticalLevel:I

.field private mCustomColor:I

.field private mDarkModeBackgroundColor:I

.field private mDarkModeFillColor:I

.field private final mFrame:Landroid/graphics/RectF;

.field private final mFramePaint:Landroid/graphics/Paint;

.field private final mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIconTint:I

.field private mInStatusBar:Z

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private final mInvalidate:Ljava/lang/Runnable;

.field private mLastHeight:I

.field private mLastWidth:I

.field private mLevel:I

.field private mLightModeBackgroundColor:I

.field private mLightModeFillColor:I

.field private mListening:Z

.field private mLog:Z

.field private mOldDarkIntensity:F

.field private mPluggedIn:Z

.field private final mPlusFrame:Landroid/graphics/RectF;

.field private final mPlusPaint:Landroid/graphics/Paint;

.field private final mPlusPath:Landroid/graphics/Path;

.field private final mPlusPoints:[F

.field private mPowerSaveEnabled:Z

.field private final mSettingObserver:Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;

.field private final mShapePath:Landroid/graphics/Path;

.field private mShowPercent:Z

.field private mSubpixelSmoothingLeft:F

.field private mSubpixelSmoothingRight:F

.field private final mTextPaint:Landroid/graphics/Paint;

.field private final mTextPath:Landroid/graphics/Path;

.field private mUseCustomColor:Z

.field private mWarningString:Ljava/lang/String;

.field private mWarningTextHeight:F

.field private final mWarningTextPaint:Landroid/graphics/Paint;

.field private mWidth:I

.field private resetUITimes:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;I)V
    .locals 12

    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIconTint:I

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mOldDarkIntensity:F

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mTextPath:Landroid/graphics/Path;

    new-instance v2, Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;

    invoke-direct {v2, p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;-><init>(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    new-instance v0, Lcom/oneplus/aod/AodBatteryMeterDrawable$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable$1;-><init>(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryStyle:I

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLog:Z

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->resetUITimes:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastHeight:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastWidth:I

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInStatusBar:Z

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f030007

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v3

    const v4, 0x7f030008

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object v4

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->length()I

    move-result v5

    const/4 v6, 0x2

    mul-int v7, v6, v5

    new-array v7, v7, [I

    iput-object v7, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    move v7, v0

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_0

    iget-object v9, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    invoke-virtual {v3, v7, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    aput v11, v9, v10

    iget-object v9, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    mul-int v10, v6, v7

    add-int/2addr v10, v8

    invoke-virtual {v4, v7, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v8

    aput v8, v9, v10

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->updateShowPercent()V

    const v0, 0x7f110159

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x10e0026

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCriticalLevel:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v6, 0x7f090000

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonHeightFraction:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090001

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f090002

    invoke-virtual {v0, v6, v8, v8}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    aget v6, v6, v8

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    const v0, 0x7f060068

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mChargeColor:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    const v6, 0x7f060067

    invoke-virtual {p1, v6}, Landroid/content/Context;->getColor(I)I

    move-result v6

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setColor(I)V

    invoke-static {v2}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->loadBoltPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    new-instance v0, Landroid/graphics/Paint;

    iget-object v6, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPaint:Landroid/graphics/Paint;

    invoke-direct {v0, v6}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->loadPlusPoints(Landroid/content/res/Resources;)[F

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    const v0, 0x7f060155

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mDarkModeBackgroundColor:I

    const v0, 0x7f060156

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mDarkModeFillColor:I

    const v0, 0x7f060282

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLightModeBackgroundColor:I

    const v0, 0x7f060283

    invoke-virtual {p1, v0}, Landroid/content/Context;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLightModeFillColor:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070097

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicWidth:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f070096

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicHeight:I

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v6, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setDither(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v8}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->updateShowPercent()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method private drawCircle(Landroid/graphics/Canvas;II)V
    .locals 17

    move-object/from16 v0, p0

    move/from16 v1, p2

    move/from16 v2, p3

    invoke-direct {v0, v1, v2}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->initCircleSize(II)V

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_0

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :cond_0
    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    invoke-direct {v0, v4}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_0
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    iget-boolean v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_1

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_1

    :cond_1
    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    invoke-direct {v0, v4}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v4

    :goto_1
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v7, 0x43870000    # 270.0f

    const/high16 v8, 0x43b40000    # 360.0f

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v12, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    const/high16 v13, 0x43870000    # 270.0f

    const v3, 0x40666666    # 3.6f

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    int-to-float v4, v4

    mul-float v14, v3, v4

    const/4 v15, 0x0

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    move-object/from16 v11, p1

    move-object/from16 v16, v3

    invoke-virtual/range {v11 .. v16}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    const/high16 v4, 0x40800000    # 4.0f

    div-float/2addr v3, v4

    iget-boolean v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_2

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v4

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v7, p1

    invoke-virtual {v7, v4, v5, v3, v6}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_2

    :cond_2
    move-object/from16 v7, p1

    :goto_2
    return-void
.end method

.method private getColorForLevel(I)I
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mUseCustomColor:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCustomColor:I

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    return v0

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    array-length v2, v2

    if-ge v1, v2, :cond_4

    iget-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    aget v2, v2, v1

    iget-object v3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    add-int/lit8 v4, v1, 0x1

    aget v0, v3, v4

    if-gt p1, v2, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mColors:[I

    array-length v3, v3

    add-int/lit8 v3, v3, -0x2

    if-ne v1, v3, :cond_2

    iget v3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIconTint:I

    return v3

    :cond_2
    return v0

    :cond_3
    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_4
    return v0
.end method

.method private initCircleSize(II)V
    .locals 7

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleSize:I

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleSize:I

    int-to-float v0, v0

    const/high16 v1, 0x40d00000    # 6.5f

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleBackPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleFrontPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/4 v1, 0x0

    int-to-float v2, v1

    const/high16 v3, 0x40000000    # 2.0f

    div-float v4, v0, v3

    add-float/2addr v2, v4

    div-float v4, v0, v3

    iget v5, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleSize:I

    int-to-float v5, v5

    div-float v6, v0, v3

    sub-float/2addr v5, v6

    int-to-float v6, v1

    add-float/2addr v5, v6

    iget v6, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleSize:I

    int-to-float v6, v6

    div-float v3, v0, v3

    sub-float/2addr v6, v3

    iget-object v3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCircleRect:Landroid/graphics/RectF;

    invoke-virtual {v3, v2, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    return-void
.end method

.method private static loadBoltPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v0, 0x7f030006

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    nop

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v5, "max X or Y is zero!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private static loadPlusPoints(Landroid/content/res/Resources;)[F
    .locals 8

    const v0, 0x7f030009

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v1

    move v1, v3

    :goto_0
    array-length v5, v0

    if-ge v1, v5, :cond_0

    aget v5, v0, v1

    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v5, v1, 0x1

    aget v5, v0, v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    add-int/lit8 v1, v1, 0x2

    goto :goto_0

    :cond_0
    array-length v1, v0

    new-array v1, v1, [F

    if-eqz v2, :cond_1

    if-eqz v4, :cond_1

    nop

    :goto_1
    array-length v5, v0

    if-ge v3, v5, :cond_2

    aget v5, v0, v3

    int-to-float v5, v5

    int-to-float v6, v2

    div-float/2addr v5, v6

    aput v5, v1, v3

    add-int/lit8 v5, v3, 0x1

    add-int/lit8 v6, v3, 0x1

    aget v6, v0, v6

    int-to-float v6, v6

    int-to-float v7, v4

    div-float/2addr v6, v7

    aput v6, v1, v5

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    :cond_1
    sget-object v3, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v5, "max X or Y is zero!"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private postInvalidate()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private postInvalidate(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    int-to-long v2, p1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private updateShowPercent()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    iput-boolean v3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShowPercent:Z

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 31

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const/4 v2, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getClipBounds()Landroid/graphics/Rect;

    move-result-object v3

    iget v4, v3, Landroid/graphics/Rect;->left:I

    iget v5, v3, Landroid/graphics/Rect;->top:I

    iget-boolean v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInStatusBar:Z

    const/4 v7, 0x1

    if-eqz v6, :cond_1

    if-nez v4, :cond_0

    if-eqz v5, :cond_1

    :cond_0
    iget v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->resetUITimes:I

    const/16 v8, 0xa

    if-ge v6, v8, :cond_1

    sget-object v6, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    const-string v8, "re-draw since have padding"

    invoke-static {v6, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->resetUITimes:I

    add-int/2addr v6, v7

    iput v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->resetUITimes:I

    const/4 v2, 0x1

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHandler:Landroid/os/Handler;

    iget-object v8, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInvalidate:Ljava/lang/Runnable;

    invoke-virtual {v6, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct/range {p0 .. p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->postInvalidate()V

    :cond_1
    const/4 v6, 0x0

    iget v8, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    iget-boolean v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLog:Z

    if-eqz v9, :cond_2

    iget-boolean v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v9, :cond_2

    sget-object v9, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "draw, "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryStyle:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCharging:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShowPercent:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mListening:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v11, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const/4 v9, -0x1

    if-ne v8, v9, :cond_3

    return-void

    :cond_3
    int-to-float v9, v8

    const/high16 v10, 0x42c80000    # 100.0f

    div-float/2addr v9, v10

    iget v10, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    const v11, 0x3f27b961

    iget v12, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    int-to-float v12, v12

    mul-float/2addr v11, v12

    float-to-int v11, v11

    iget v12, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWidth:I

    sub-int/2addr v12, v11

    const/4 v13, 0x2

    div-int/2addr v12, v13

    int-to-float v14, v10

    iget v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonHeightFraction:F

    mul-float/2addr v14, v15

    float-to-int v14, v14

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v11

    int-to-float v7, v10

    move/from16 v18, v2

    const/4 v2, 0x0

    invoke-virtual {v15, v2, v2, v13, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    int-to-float v13, v12

    invoke-virtual {v7, v13, v2}, Landroid/graphics/RectF;->offset(FF)V

    iget v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryStyle:I

    packed-switch v7, :pswitch_data_0

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    int-to-float v15, v11

    const/high16 v19, 0x3e800000    # 0.25f

    mul-float v15, v15, v19

    invoke-static {v15}, Ljava/lang/Math;->round(F)I

    move-result v15

    int-to-float v15, v15

    add-float/2addr v13, v15

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    move-object/from16 v20, v3

    int-to-float v3, v11

    mul-float v3, v3, v19

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v2, v3

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    move/from16 v21, v4

    int-to-float v4, v14

    add-float/2addr v3, v4

    invoke-virtual {v7, v13, v15, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    int-to-float v4, v14

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->left:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->left:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->top:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingLeft:F

    add-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->top:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->right:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->right:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v2, Landroid/graphics/RectF;->bottom:F

    iget v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSubpixelSmoothingRight:F

    sub-float/2addr v3, v4

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    iget-boolean v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v3, :cond_4

    iget v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mChargeColor:I

    goto :goto_0

    :pswitch_0
    return-void

    :pswitch_1
    invoke-direct {v0, v1, v11, v10}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->drawCircle(Landroid/graphics/Canvas;II)V

    return-void

    :cond_4
    invoke-direct {v0, v8}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->getColorForLevel(I)I

    move-result v3

    :goto_0
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    const/16 v2, 0x60

    if-lt v8, v2, :cond_5

    const/high16 v9, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v2, :cond_6

    const/4 v9, 0x0

    :cond_6
    :goto_1
    const/high16 v2, 0x3f800000    # 1.0f

    cmpl-float v3, v9, v2

    if-nez v3, :cond_7

    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    goto :goto_2

    :cond_7
    iget-object v3, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v7, v2, v9

    mul-float/2addr v4, v7

    add-float/2addr v3, v4

    :goto_2
    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    invoke-virtual {v4}, Landroid/graphics/Path;->reset()V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->right:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->left:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mButtonFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    invoke-virtual {v4, v7, v13}, Landroid/graphics/Path;->lineTo(FF)V

    iget-boolean v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-eqz v4, :cond_b

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v13, 0x40800000    # 4.0f

    div-float/2addr v4, v13

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->height()F

    move-result v15

    const/high16 v19, 0x40c00000    # 6.0f

    div-float v15, v15, v19

    add-float/2addr v4, v15

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->right:F

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    div-float/2addr v7, v13

    sub-float/2addr v15, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->bottom:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    const/high16 v19, 0x41200000    # 10.0f

    div-float v13, v13, v19

    sub-float/2addr v7, v13

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->left:F

    cmpl-float v13, v13, v2

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->top:F

    cmpl-float v13, v13, v4

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    cmpl-float v13, v13, v15

    if-nez v13, :cond_9

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->bottom:F

    cmpl-float v13, v13, v7

    if-eqz v13, :cond_8

    goto :goto_3

    :cond_8
    move/from16 v22, v2

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    move/from16 v26, v7

    goto/16 :goto_5

    :cond_9
    :goto_3
    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13, v2, v4, v15, v7}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    move/from16 v22, v2

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    move/from16 v23, v4

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v24, v5

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    mul-float/2addr v4, v5

    add-float/2addr v2, v4

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    const/16 v17, 0x1

    aget v5, v5, v17

    move/from16 v25, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->height()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    invoke-virtual {v13, v2, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v16, 0x2

    :goto_4
    move/from16 v2, v16

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_a

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    aget v6, v6, v2

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->width()F

    move-result v13

    mul-float/2addr v6, v13

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    add-int/lit8 v16, v2, 0x1

    aget v13, v13, v16

    move/from16 v26, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v13, v7

    add-float/2addr v6, v13

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v16, v2, 0x2

    move/from16 v7, v26

    goto :goto_4

    :cond_a
    move/from16 v26, v7

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_5
    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBoltPath:Landroid/graphics/Path;

    sget-object v5, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    nop

    move/from16 v30, v9

    goto/16 :goto_9

    :cond_b
    move/from16 v24, v5

    move/from16 v25, v6

    iget-boolean v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-eqz v4, :cond_10

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    const/high16 v5, 0x40000000    # 2.0f

    mul-float/2addr v4, v5

    const/high16 v6, 0x40400000    # 3.0f

    div-float/2addr v4, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    sub-float/2addr v7, v4

    div-float/2addr v7, v5

    add-float/2addr v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v13}, Landroid/graphics/RectF;->height()F

    move-result v13

    sub-float/2addr v13, v4

    div-float/2addr v13, v5

    add-float/2addr v7, v13

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v13, v13, Landroid/graphics/RectF;->right:F

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v15}, Landroid/graphics/RectF;->width()F

    move-result v15

    sub-float/2addr v15, v4

    div-float/2addr v15, v5

    sub-float/2addr v13, v15

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iget v15, v15, Landroid/graphics/RectF;->bottom:F

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    sub-float/2addr v2, v4

    div-float/2addr v2, v5

    sub-float/2addr v15, v2

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    cmpl-float v2, v2, v6

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    cmpl-float v2, v2, v7

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v13

    if-nez v2, :cond_d

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, v2, v15

    if-eqz v2, :cond_c

    goto :goto_6

    :cond_c
    move/from16 v27, v4

    move/from16 v28, v6

    move/from16 v29, v7

    move/from16 v30, v9

    goto/16 :goto_8

    :cond_d
    :goto_6
    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v2, v6, v7, v13, v15}, Landroid/graphics/RectF;->set(FFFF)V

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    move/from16 v27, v4

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    const/16 v19, 0x0

    aget v4, v4, v19

    move/from16 v28, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v4, v6

    add-float/2addr v5, v4

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    const/16 v17, 0x1

    aget v6, v6, v17

    move/from16 v29, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v4, v6

    invoke-virtual {v2, v5, v4}, Landroid/graphics/Path;->moveTo(FF)V

    const/16 v16, 0x2

    :goto_7
    move/from16 v2, v16

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    array-length v4, v4

    if-ge v2, v4, :cond_e

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->left:F

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    aget v6, v6, v2

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    add-int/lit8 v16, v2, 0x1

    aget v7, v7, v16

    move/from16 v30, v9

    iget-object v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v9}, Landroid/graphics/RectF;->height()F

    move-result v9

    mul-float/2addr v7, v9

    add-float/2addr v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    add-int/lit8 v16, v2, 0x2

    move/from16 v9, v30

    goto :goto_7

    :cond_e
    move/from16 v30, v9

    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    const/4 v6, 0x0

    aget v5, v5, v6

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v6}, Landroid/graphics/RectF;->width()F

    move-result v6

    mul-float/2addr v5, v6

    add-float/2addr v4, v5

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    iget-object v6, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPoints:[F

    const/4 v7, 0x1

    aget v6, v6, v7

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result v7

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    invoke-virtual {v2, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    :goto_8
    iget-object v2, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusFrame:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v2, v4

    const/4 v4, 0x0

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v4

    const/high16 v5, 0x3f800000    # 1.0f

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const v4, 0x3e99999a    # 0.3f

    cmpg-float v4, v2, v4

    if-gtz v4, :cond_f

    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    goto :goto_9

    :cond_f
    iget-object v4, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v5, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPlusPath:Landroid/graphics/Path;

    sget-object v6, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    invoke-virtual {v4, v5, v6}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    goto :goto_9

    :cond_10
    move/from16 v30, v9

    :goto_9
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFramePaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    iput v3, v7, Landroid/graphics/RectF;->top:F

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    invoke-virtual {v7}, Landroid/graphics/Path;->reset()V

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mFrame:Landroid/graphics/RectF;

    sget-object v13, Landroid/graphics/Path$Direction;->CCW:Landroid/graphics/Path$Direction;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->addRect(Landroid/graphics/RectF;Landroid/graphics/Path$Direction;)V

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mClipPath:Landroid/graphics/Path;

    sget-object v13, Landroid/graphics/Path$Op;->INTERSECT:Landroid/graphics/Path$Op;

    invoke-virtual {v7, v9, v13}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mShapePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v7, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    iget-boolean v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    if-nez v7, :cond_12

    iget-boolean v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    if-nez v7, :cond_12

    iget v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCriticalLevel:I

    if-gt v8, v7, :cond_11

    iget v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWidth:I

    int-to-float v7, v7

    const/high16 v9, 0x3f000000    # 0.5f

    mul-float/2addr v7, v9

    iget v9, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    int-to-float v9, v9

    iget v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextHeight:F

    add-float/2addr v9, v13

    const v13, 0x3ef5c28f    # 0.48f

    mul-float/2addr v9, v13

    iget-object v13, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningString:Ljava/lang/String;

    iget-object v15, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v13, v7, v9, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    :cond_11
    if-eqz v2, :cond_12

    iget-object v7, v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v6, v4, v5, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    :cond_12
    :goto_a
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getIntrinsicHeight()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicHeight:I

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicHeight:I

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicWidth:I

    :goto_0
    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onBatteryLevelChanged(IZZ)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLevel:I

    iput-boolean p2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPluggedIn:Z

    iput-boolean p3, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mCharging:Z

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onBatteryPercentShowChange(Z)V
    .locals 0

    return-void
.end method

.method public onBatteryStyleChanged(I)V
    .locals 1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    iput p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryStyle:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->resetUITimes:I

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->postInvalidate()V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 3

    iput-boolean p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    iget-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLog:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPowerSaveChanged , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method

.method public relayout()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070097

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicWidth:I

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070096

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mIntrinsicHeight:I

    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    return-void
.end method

.method public setBatteryController(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->isPowerSave()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mPowerSaveEnabled:Z

    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    sub-int v0, p4, p2

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    sub-int v0, p3, p1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWidth:I

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    int-to-float v1, v1

    const/high16 v2, 0x3f400000    # 0.75f

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->ascent:F

    neg-float v0, v0

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWarningTextHeight:F

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastHeight:I

    iget v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastWidth:I

    iget v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWidth:I

    if-eq v0, v1, :cond_1

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mHeight:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastHeight:I

    iget v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mWidth:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mLastWidth:I

    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->postInvalidate(I)V

    :cond_1
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    return-void
.end method

.method public setIconPlace(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mInStatusBar:Z

    return-void
.end method

.method public startListening()V
    .locals 4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "status_bar_show_battery_percent"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->updateShowPercent()V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->addCallback(Ljava/lang/Object;)V

    return-void
.end method

.method public stopListening()V
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mListening:Z

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mSettingObserver:Lcom/oneplus/aod/AodBatteryMeterDrawable$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable;->mBatteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-interface {v0, p0}, Lcom/android/systemui/statusbar/policy/BatteryController;->removeCallback(Ljava/lang/Object;)V

    return-void
.end method
