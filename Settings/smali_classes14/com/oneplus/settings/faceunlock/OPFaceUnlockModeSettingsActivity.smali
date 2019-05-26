.class public Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;
.super Lcom/oneplus/settings/BaseActivity;
.source "OPFaceUnlockModeSettingsActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field public static final ENTER_FACEUNLOCK_MODE_SETTINGS_FROM_SUW:Ljava/lang/String; = "enter_faceunlock_mode_settings_from_suw"

.field private static final ONEPLUS_FACE_UNLOCK_POWERKEY_RECOGNIZE_ENABLE:Ljava/lang/String; = "oneplus_face_unlock_powerkey_recognize_enable"

.field private static final SWIPE_UP_MODE:I = 0x0

.field private static final USE_POWER_BUTTON_MODE:I = 0x1


# instance fields
.field private mDoneButton:Landroid/widget/Button;

.field private mFromSetupWizard:Z

.field private mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

.field private mPressPowerkey:Landroid/view/View;

.field private mPressPowerkeyButton:Landroid/widget/RadioButton;

.field private mRootView:Landroid/widget/RelativeLayout;

.field private mSwipeUp:Landroid/view/View;

.field private mSwipeUpButton:Landroid/widget/RadioButton;

.field protected mToken:[B

.field protected mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/settings/BaseActivity;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    return-void
.end method

.method private setAnimationResource()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_swipe_up_dark.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const-string v1, "op_face_unlock_by_use_power_key_dark.json"

    invoke-virtual {v0, v1}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private setModeSelected()V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, v2}, Landroid/widget/RadioButton;->setChecked(Z)V

    :goto_0
    return-void
.end method


# virtual methods
.method public getUnlockMode()I
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Lcom/oneplus/settings/BaseActivity;->onActivityResult(IILandroid/content/Intent;)V

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    if-eqz p2, :cond_0

    invoke-virtual {p0, p2}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setResult(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->finish()V

    :cond_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a01ad

    if-eq v0, v1, :cond_2

    const v1, 0x7f0a02bc

    if-eq v0, v1, :cond_1

    const v1, 0x7f0a02be

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    goto :goto_0

    :cond_2
    iget-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz v0, :cond_5

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    if-eqz v1, :cond_3

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    :cond_3
    iget v1, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_4

    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_4
    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    :cond_5
    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->finish()V

    nop

    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-super {p0, p1}, Lcom/oneplus/settings/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "enter_faceunlock_mode_settings_from_suw"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "hw_auth_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mToken:[B

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mUserId:I

    iget-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz v0, :cond_0

    const v0, 0x7f130330

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setTheme(I)V

    :cond_0
    const v0, 0x7f0d015b

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setContentView(I)V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    const v0, 0x7f0a03b4

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mRootView:Landroid/widget/RelativeLayout;

    iget-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/ActionBar;->hide()V

    :cond_1
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x2

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070370

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    invoke-virtual {v1, v2, v3, v2, v2}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    iget-object v2, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mRootView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    const v0, 0x7f0a02bc

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUp:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUp:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02be

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkey:Landroid/view/View;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkey:Landroid/view/View;

    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f0a02bd

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mSwipeUpButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a02bf

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mPressPowerkeyButton:Landroid/widget/RadioButton;

    const v0, 0x7f0a03ec

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/airbnb/lottie/LottieAnimationView;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    const v0, 0x7f0a01ad

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mFromSetupWizard:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mDoneButton:Landroid/widget/Button;

    const v1, 0x7f12125c

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    :cond_3
    return-void
.end method

.method protected onDestroy()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onDestroy()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->releaseAnim()V

    return-void
.end method

.method protected onPause()V
    .locals 0

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onPause()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    return-void
.end method

.method protected onResume()V
    .locals 1

    invoke-super {p0}, Lcom/oneplus/settings/BaseActivity;->onResume()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getUnlockMode()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setViewType(I)V

    return-void
.end method

.method public releaseAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    :cond_0
    return-void
.end method

.method public setViewType(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_face_unlock_powerkey_recognize_enable"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v0, "pop_up_face_unlock"

    invoke-static {v0, p1}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;I)V

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setModeSelected()V

    invoke-virtual {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->stopAnim()V

    invoke-direct {p0}, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->setAnimationResource()V

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->playAnimation()V

    return-void
.end method

.method public stopAnim()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/faceunlock/OPFaceUnlockModeSettingsActivity;->mLottieAnim:Lcom/airbnb/lottie/LottieAnimationView;

    invoke-virtual {v0}, Lcom/airbnb/lottie/LottieAnimationView;->cancelAnimation()V

    :cond_0
    return-void
.end method
