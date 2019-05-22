.class public Lcom/oneplus/settings/better/OPNightMode;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "OPNightMode.java"

# interfaces
.implements Lcom/android/internal/app/ColorDisplayController$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;


# static fields
.field private static final AUTO_ACTIVATE_CUSTOMIZED_VALUE:I = 0x2

.field public static final DEFAULT_BRIGHTNESS_VALUE:F = 1.0f

.field public static final DEFAULT_COLOR_PROGRESS:I

.field private static final DIALOG_TURN_OFF_TIME:I = 0x1

.field private static final DIALOG_TURN_ON_TIME:I = 0x0

.field private static final KEY_AUTO_ACTIVATE:Ljava/lang/String; = "auto_activate"

.field public static final KEY_NIGHT_MODE_BRIGHTNESS:Ljava/lang/String; = "oem_nightmode_brightness_progress"

.field private static final KEY_NIGHT_MODE_ENABLED_OP:Ljava/lang/String; = "night_mode_enabled"

.field private static final KEY_NIGHT_MODE_LEVEL_OP:Ljava/lang/String; = "night_mode_level_op"

.field private static final KEY_TURN_OFF_TIME:Ljava/lang/String; = "turn_off_time"

.field private static final KEY_TURN_ON_TIME:Ljava/lang/String; = "turn_on_time"

.field public static final MAX_BRIGHTNESS:F = 1.0f

.field public static final MIN_BRIGHTNESS:F = 0.55f

.field private static final NEVER_AUTO_VALUE:I = 0x0

.field private static final SUNRISE_SUNSET_VALUE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "OPNightMode"


# instance fields
.field private isSupportReadingMode:Z

.field private mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

.field private mCM:Lcom/oneplus/settings/OneplusColorManager;

.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mIsReadingModeOn:Z

.field private mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

.field private mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

.field private mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

.field private mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

.field private mTimeFormatter:Ljava/text/DateFormat;

.field private mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

.field private mTurnOnTimePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x1d

    goto :goto_0

    :cond_0
    const/16 v0, 0x67

    :goto_0
    sput v0, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    new-instance v0, Lcom/oneplus/settings/better/OPNightMode$6;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/oneplus/settings/better/OPNightMode$6;-><init>(Lcom/oneplus/settings/better/OPNightMode;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/Context;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/support/v14/preference/SwitchPreference;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/settings/better/OPNightMode;)Landroid/content/ContentResolver;
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/settings/better/OPNightMode;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    return-void
.end method

.method public static checkCurrentValueIsDefault(IF)Z
    .locals 1

    sget v0, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    if-ne p0, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private closeNightModeGradually(F)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x320

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/settings/better/OPNightMode$2;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPNightMode$2;-><init>(Lcom/oneplus/settings/better/OPNightMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/settings/better/OPNightMode$3;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPNightMode$3;-><init>(Lcom/oneplus/settings/better/OPNightMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mRestoreBrightnessAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private convertAutoMode(I)I
    .locals 1

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 v0, 0x2

    return v0

    :cond_1
    return v0
.end method

.method private disableEntryForWellbeingGrayscale()V
    .locals 6

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "night_display_activated"

    const/4 v5, -0x2

    invoke-static {v3, v4, v1, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-ne v3, v2, :cond_1

    move v3, v2

    goto :goto_1

    :cond_1
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_2

    move v5, v2

    goto :goto_2

    :cond_2
    move v5, v1

    :goto_2
    invoke-virtual {v4, v5}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    :cond_3
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v4, :cond_5

    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-nez v0, :cond_4

    move v5, v2

    goto :goto_3

    :cond_4
    move v5, v1

    :goto_3
    invoke-virtual {v4, v5}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    :cond_5
    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v4, :cond_7

    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v3, :cond_6

    if-nez v0, :cond_6

    move v1, v2

    nop

    :cond_6
    invoke-virtual {v4, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    :cond_7
    return-void
.end method

.method private getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;
    .locals 3

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v1}, Ljava/text/DateFormat;->getTimeZone()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getHour()I

    move-result v1

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    invoke-virtual {p1}, Ljava/time/LocalTime;->getMinute()I

    move-result v1

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/4 v1, 0x0

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    const/16 v2, 0xe

    invoke-virtual {v0, v2, v1}, Ljava/util/Calendar;->set(II)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private openNightModeGradually(IF)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [F

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x1

    aput p2, v0, v1

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x190

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/settings/better/OPNightMode$4;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPNightMode$4;-><init>(Lcom/oneplus/settings/better/OPNightMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/settings/better/OPNightMode$5;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/better/OPNightMode$5;-><init>(Lcom/oneplus/settings/better/OPNightMode;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mOPenNightModeAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private saveBrightnessProgress(F)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_brightness_progress"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    return-void
.end method

.method private saveColorTemperatureProgress(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private setColorBalance(I)V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportReadingModeInterpolater()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int/lit8 v1, p1, 0x9

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p1, 0x84

    add-int/lit8 v1, v1, -0x5a

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    rsub-int v1, p1, 0x84

    add-int/lit8 v1, v1, -0x38

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    :goto_0
    return-void
.end method

.method public static transferToBrightnessProgress(F)I
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p0

    const v1, 0x3ee66666    # 0.45f

    div-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static transferToBrightnessValue(I)F
    .locals 2

    int-to-float v0, p0

    const v1, 0x3ee66666    # 0.45f

    mul-float/2addr v0, v1

    const/high16 v1, 0x42c80000    # 100.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    return v1
.end method

.method private updateAutoActivateModePreferenceDescription(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    aget-object v2, v0, p1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivated(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    return-void
.end method

.method public onAutoModeChanged(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public onBrightnessProgressChanged(IZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-static {p1}, Lcom/oneplus/settings/better/OPNightMode;->transferToBrightnessValue(I)F

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->saveBrightnessProgress(F)V

    return-void
.end method

.method public onBrightnessStartTrackingTouch(I)V
    .locals 0

    return-void
.end method

.method public onBrightnessStopTrackingTouch(I)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/oneplus/settings/better/OPNightMode;->onBrightnessProgressChanged(IZ)V

    return-void
.end method

.method public onColorProgressChanged(IZ)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->setColorBalance(I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    return-void
.end method

.method public onColorStartTrackingTouch(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    :cond_0
    return-void
.end method

.method public onColorStopTrackingTouch(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const/16 v1, -0x200

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/OneplusColorManager;->setColorBalance(I)V

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160089

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->addPreferencesFromResource(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "oem.read_mode.support"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/settings/better/OPNightMode;->isSupportReadingMode:Z

    new-instance v1, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {v1, v0}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const-string v1, "night_mode_enabled"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    const-string v1, "auto_activate"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    const-string v1, "turn_on_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    const-string v1, "turn_off_time"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    const-string v1, "night_mode_level_op"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeEnabledPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v1, p0}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setOPNightModeLevelSeekBarChangeListener(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;)V

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mAutoActivatePreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    invoke-static {v0}, Landroid/text/format/DateFormat;->getTimeFormat(Landroid/content/Context;)Ljava/text/DateFormat;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mTimeFormatter:Ljava/text/DateFormat;

    const-string v2, "UTC"

    invoke-static {v2}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    new-instance v1, Lcom/oneplus/settings/OneplusColorManager;

    sget-object v2, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-direct {v1, v2}, Lcom/oneplus/settings/OneplusColorManager;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mCM:Lcom/oneplus/settings/OneplusColorManager;

    const-string v1, "display"

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "reading_mode_status"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v1, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_2

    const/4 v4, 0x1

    nop

    :cond_2
    iput-boolean v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mIsReadingModeOn:Z

    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 10

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    return-object v0

    :cond_1
    :goto_0
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContext()Landroid/content/Context;

    move-result-object v7

    nop

    invoke-static {v7}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v8

    new-instance v9, Lcom/oneplus/lib/app/TimePickerDialog;

    new-instance v3, Lcom/oneplus/settings/better/OPNightMode$1;

    invoke-direct {v3, p0, p1}, Lcom/oneplus/settings/better/OPNightMode$1;-><init>(Lcom/oneplus/settings/better/OPNightMode;I)V

    invoke-virtual {v0}, Ljava/time/LocalTime;->getHour()I

    move-result v4

    invoke-virtual {v0}, Ljava/time/LocalTime;->getMinute()I

    move-result v5

    move-object v1, v9

    move-object v2, v7

    move v6, v8

    invoke-direct/range {v1 .. v6}, Lcom/oneplus/lib/app/TimePickerDialog;-><init>(Landroid/content/Context;Lcom/oneplus/lib/app/TimePickerDialog$OnTimeSetListener;IIZ)V

    return-object v9
.end method

.method public onCustomEndTimeChanged(Ljava/time/LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOffTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCustomStartTimeChanged(Ljava/time/LocalTime;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mTurnOnTimePreference:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, p1}, Lcom/oneplus/settings/better/OPNightMode;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onDestroy()V
    .locals 10

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    const-string v0, "night_mode"

    const-string v1, "auto_open"

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v2}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    sget v2, Lcom/oneplus/settings/better/OPNightMode;->DEFAULT_COLOR_PROGRESS:I

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    int-to-double v1, v0

    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v4

    int-to-double v4, v4

    const-wide v6, 0x3fd51eb851eb851fL    # 0.33

    mul-double/2addr v4, v6

    cmpg-double v1, v1, v4

    const-wide v4, 0x3fe51eb851eb851fL    # 0.66

    if-gtz v1, :cond_0

    const-string v1, "night_mode"

    const-string v2, "screen_color"

    const-string v8, "1"

    invoke-static {v1, v2, v8}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    int-to-double v1, v0

    iget-object v8, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v4

    cmpg-double v1, v1, v8

    if-gtz v1, :cond_1

    const-string v1, "night_mode"

    const-string v2, "screen_color"

    const-string v8, "2"

    invoke-static {v1, v2, v8}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgressMax()I

    move-result v1

    if-gt v0, v1, :cond_2

    const-string v1, "night_mode"

    const-string v2, "screen_color"

    const-string v8, "3"

    invoke-static {v1, v2, v8}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_nightmode_brightness_progress"

    const/high16 v8, 0x3f800000    # 1.0f

    invoke-static {v1, v2, v8, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v1

    invoke-static {v1}, Lcom/oneplus/settings/better/OPNightMode;->transferToBrightnessProgress(F)I

    move-result v1

    int-to-float v1, v1

    float-to-double v2, v1

    iget-object v8, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v8}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v8

    int-to-double v8, v8

    mul-double/2addr v8, v6

    cmpg-double v2, v2, v8

    if-gtz v2, :cond_3

    const-string v2, "night_mode"

    const-string v3, "brightness"

    const-string v4, "1"

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    float-to-double v2, v1

    iget-object v6, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v6}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v6

    int-to-double v6, v6

    mul-double/2addr v6, v4

    cmpg-double v2, v2, v6

    if-gtz v2, :cond_4

    const-string v2, "night_mode"

    const-string v3, "brightness"

    const-string v4, "2"

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v2}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgressMax()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v2, v1, v2

    if-gtz v2, :cond_5

    const-string v2, "night_mode"

    const-string v3, "brightness"

    const-string v4, "3"

    invoke-static {v2, v3, v4}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_5
    :goto_1
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 9

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_mode_enabled"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    move-object v1, p2

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForNightMode()V

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v3, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->setEnabled(Z)V

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v3}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getColorProgress()I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeLevelPreferenceCategory:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-virtual {v4}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->getBrightnessProgress()I

    move-result v4

    invoke-static {v4}, Lcom/oneplus/settings/better/OPNightMode;->transferToBrightnessValue(I)F

    move-result v5

    if-eqz v1, :cond_0

    const-string v6, "OPNightMode"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onPreferenceChange colorProgress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " brightnessProgress:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " brightnessValue:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6, v2}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->saveColorTemperatureProgress(I)V

    invoke-direct {p0, v5}, Lcom/oneplus/settings/better/OPNightMode;->saveBrightnessProgress(F)V

    goto :goto_0

    :cond_0
    iget-object v6, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    :goto_0
    goto :goto_1

    :cond_1
    const-string v1, "auto_activate"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, p2

    check-cast v1, Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v3, v1}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    iget-object v3, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v3}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->convertAutoMode(I)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/oneplus/settings/better/OPNightMode;->updateAutoActivateModePreferenceDescription(I)V

    :cond_2
    :goto_1
    return v2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "turn_on_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    return v2

    :cond_0
    const-string v1, "turn_off_time"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0, v2}, Lcom/oneplus/settings/better/OPNightMode;->showDialog(I)V

    return v2

    :cond_1
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result v1

    return v1
.end method

.method public onResume()V
    .locals 1

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    invoke-direct {p0}, Lcom/oneplus/settings/better/OPNightMode;->disableEntryForWellbeingGrayscale()V

    return-void
.end method

.method public onStart()V
    .locals 5

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p0}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onActivated(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onAutoModeChanged(I)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomStartTimeChanged(Ljava/time/LocalTime;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/better/OPNightMode;->onCustomEndTimeChanged(Ljava/time/LocalTime;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_nightmode_progress_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    const/4 v3, -0x2

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "reading_mode_status"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_grayscale_enabled"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v4, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method public onStop()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode;->mController:Lcom/android/internal/app/ColorDisplayController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setListener(Lcom/android/internal/app/ColorDisplayController$Callback;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/better/OPNightMode;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/better/OPNightMode;->mNightModeSeekBarContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
