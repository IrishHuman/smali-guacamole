.class public Lcom/android/settings/fingerprint/FingerprintEnrollFinish;
.super Lcom/android/settings/fingerprint/FingerprintEnrollBase;
.source "FingerprintEnrollFinish.java"


# instance fields
.field private mLaunchingEnroll:Z

.field private mNeedJumpToFingerprintSettings:Z

.field protected mToken:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    return-void
.end method

.method private setFingerprintEnrolling(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    if-nez v0, :cond_3

    invoke-static {p0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportBackFingerprint(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oem_acc_fingerprint_enrolling"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    nop

    :cond_1
    move v0, v2

    if-eq p1, v0, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_acc_fingerprint_enrolling"

    nop

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_2
    return-void

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method protected applyActionBarTitle()I
    .locals 1

    const v0, 0x7f120c76

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0xf2

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0a003a

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getEnrollingIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x2000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->finish()V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onClick(Landroid/view/View;)V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f130147

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setTheme(I)V

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->isSetupPage:Z

    if-eqz v0, :cond_2

    const v0, 0x7f0d016d

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    goto :goto_0

    :cond_2
    const v0, 0x7f0d016b

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    goto :goto_0

    :cond_3
    const v0, 0x7f0d0098

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setContentView(I)V

    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportCustomFingerprint()Z

    move-result v0

    const v2, 0x7f12107d

    if-eqz v0, :cond_4

    const v0, 0x7f0a0342

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    const v2, 0x7f0602aa

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getColor(I)I

    move-result v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const v3, 0x7f0a0345

    invoke-virtual {p0, v3}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f120cdc

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setHeaderText(I)V

    :goto_1
    const v0, 0x7f0a003a

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "hw_auth_token"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getByteArrayExtra(Ljava/lang/String;)[B

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mToken:[B

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "needJumpToFingerprintSettings"

    invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    const-string v1, "fingerprint"

    invoke-virtual {p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/fingerprint/FingerprintManager;

    iget v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x10e0046

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-lt v2, v3, :cond_5

    const/4 v4, 0x4

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    :cond_5
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    return-void
.end method

.method protected onNextButtonClick()V
    .locals 3

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    if-eqz v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-class v2, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "needJumpToFingerprintSettings"

    iget-boolean v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mNeedJumpToFingerprintSettings:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v1, "hw_auth_token"

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mToken:[B

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    const-string v1, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->startActivity(Landroid/content/Intent;)V

    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setResult(I)V

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->finish()V

    return-void
.end method

.method public onPause()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onPause()V

    return-void
.end method

.method public onResume()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->mLaunchingEnroll:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFinish;->setFingerprintEnrolling(Z)V

    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollBase;->onResume()V

    return-void
.end method
