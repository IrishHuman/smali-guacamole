.class public Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;
.super Landroid/support/v7/preference/Preference;
.source "OPNightModeLevelPreferenceCategory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;
    }
.end annotation


# static fields
.field public static final MAX_BRIGHTNESS_PROGRESS:I = 0x64

.field private static final MAX_COLOR_PROGRESS:I = 0x84

.field private static final MAX_COLOR_PROGRESS_INTERPOLATER:I = 0x3d


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnabled:Z

.field mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

.field private mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

.field private mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

.field private mTRBrightness:Landroid/widget/TableRow;

.field private mTRBrightnessTitle:Landroid/widget/TableRow;

.field private mTRColor:Landroid/widget/TableRow;

.field private mTVBrightnessStrong:Landroid/widget/TextView;

.field private mTVBrightnessTitle:Landroid/widget/TextView;

.field private mTVColorStrong:Landroid/widget/TextView;

.field private mTVColorTitle:Landroid/widget/TextView;

.field private mToastTip:Landroid/widget/Toast;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const v0, 0x7f0d0187

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setLayoutResource(I)V

    return-void
.end method

.method private initView(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    sget v2, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_nightmode_brightness_progress"

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    const v2, 0x7f0a05c8

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    const v2, 0x7f0a05c7

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    const v2, 0x7f0a05c4

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    const v2, 0x7f0a05c3

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    const v2, 0x7f0a05b7

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRColor:Landroid/widget/TableRow;

    const v2, 0x7f0a05b5

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    const v2, 0x7f0a05b6

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightnessTitle:Landroid/widget/TableRow;

    const v2, 0x7f0a04e0

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/widget/OPSeekBar2;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    const/16 v3, 0x3d

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setMax(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    const/16 v3, 0x84

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setMax(I)V

    :goto_0
    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v2, v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgress(I)V

    const v2, 0x7f0a04df

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/settings/widget/OPSeekBar2;

    iput-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setMax(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->transferToBrightnessProgress(F)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgress(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    new-instance v3, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    new-instance v3, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$2;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {v2, v3}, Lcom/oneplus/settings/widget/OPSeekBar2;->setOnSeekBarChangeListener(Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRColor:Landroid/widget/TableRow;

    new-instance v3, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$AJbSS0doH-xFVa-rMVeyp40DQVA;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    new-instance v3, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;

    invoke-direct {v3, p0}, Lcom/oneplus/settings/ui/-$$Lambda$OPNightModeLevelPreferenceCategory$1BCHIWEUrGQw8a_X2Omzpk5EIQ0;-><init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightness:Landroid/widget/TableRow;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTRBrightnessTitle:Landroid/widget/TableRow;

    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->setVisibility(I)V

    :cond_1
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isNightDisplayActivated()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {p0, v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    return-void
.end method

.method private isNightDisplayActivated()Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private isWellbeingGrayscaleActivated()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method public static synthetic lambda$initView$0(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static synthetic lambda$initView$1(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    if-nez v0, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->showTurnOnTip()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private showTurnOnTip()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->isWellbeingGrayscaleActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const v3, 0x7f120dd5

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    const v3, 0x7f120c36

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mToastTip:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method


# virtual methods
.method public getBrightnessProgress()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getProgress()I

    move-result v0

    return v0
.end method

.method public getBrightnessProgressMax()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getMax()I

    move-result v0

    return v0
.end method

.method public getColorProgress()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getProgress()I

    move-result v0

    return v0
.end method

.method public getColorProgressMax()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0}, Lcom/oneplus/settings/widget/OPSeekBar2;->getMax()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedBelow(Z)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    iget-object v1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->initView(Landroid/support/v7/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public setEnabled(Z)V
    .locals 4

    iput-boolean p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mEnabled:Z

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/widget/OPSeekBar2;->setActivated(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/widget/OPSeekBar2;->setEnabled(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/widget/OPSeekBar2;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/widget/OPSeekBar2;->setEnabled(Z)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    const v1, 0x7f0602af

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0602ab

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessTitle:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVColorStrong:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0602a1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mTVBrightnessStrong:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_3
    return-void
.end method

.method public setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    return-void
.end method

.method public setProgress(II)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarColor:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p1}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgress(I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mSeekBarBrightness:Lcom/oneplus/settings/widget/OPSeekBar2;

    invoke-virtual {v0, p2}, Lcom/oneplus/settings/widget/OPSeekBar2;->setProgress(I)V

    :cond_1
    return-void
.end method
