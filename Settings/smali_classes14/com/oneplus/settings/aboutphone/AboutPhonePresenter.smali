.class public Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;
.super Ljava/lang/Object;
.source "AboutPhonePresenter.java"

# interfaces
.implements Lcom/oneplus/settings/aboutphone/Contract$Presenter;


# static fields
.field private static final ONEPLUS_A3000:Ljava/lang/String; = "ONEPLUS A3000"

.field private static final ONEPLUS_A3003:Ljava/lang/String; = "ONEPLUS A3003"

.field private static final ONEPLUS_A3010:Ljava/lang/String; = "ONEPLUS A3010"

.field private static final ONEPLUS_A5000:Ljava/lang/String; = "ONEPLUS A5000"

.field private static final ONEPLUS_A5010:Ljava/lang/String; = "ONEPLUS A5010"

.field private static final ONEPLUS_A6000:Ljava/lang/String; = "ONEPLUS A6000"

.field private static final ONEPLUS_A6003:Ljava/lang/String; = "ONEPLUS A6003"

.field private static final ONEPLUS_A6010:Ljava/lang/String; = "ONEPLUS A6010"

.field private static final ONEPLUS_A6013:Ljava/lang/String; = "ONEPLUS A6013"

.field static final REQUEST_CONFIRM_PASSWORD_FOR_DEV_PREF:I = 0x64

.field static final TAPS_TO_BE_A_DEVELOPER:I = 0x7


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mDebuggingFeaturesDisallowedBySystem:Z

.field private mDevHitCountdown:I

.field private mFragment:Landroid/app/Fragment;

.field private mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field public mProcessingLastDevHit:Z

.field private final mUm:Landroid/os/UserManager;

.field private mView:Lcom/oneplus/settings/aboutphone/Contract$View;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Landroid/app/Fragment;Lcom/oneplus/settings/aboutphone/Contract$View;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    iput-object p1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iput-object p2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x7

    :goto_0
    iput v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const-string v1, "no_debugging_features"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    return-void
.end method

.method private addAndroidVersion()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f12068a

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f0802bc

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.android.FirmwareVersionDialogFragment"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAuthenticationInfo()V
    .locals 8

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120cda

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f0802be

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, ""

    const-string v2, ""

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f120c07

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const v4, 0x7f120a7e

    const v5, 0x7f120fa6

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A6000"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A5010"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_9

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A5000"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_4

    :cond_0
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c08

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_8

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v6, "ONEPLUS A6003"

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto/16 :goto_3

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v3

    if-eqz v3, :cond_2

    goto/16 :goto_1

    :cond_2
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c65

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c67

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c6a

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c6e

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v6, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v7, 0x7f120c68

    invoke-virtual {v6, v7}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f120c64

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v6, 0x7f120c6b

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    :cond_4
    const-string v2, "com.oneplus.intent.OPAuthenticationInformationSettings"

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_5
    :goto_0
    const-string v2, "android.settings.SHOW_REGULATORY_INFO"

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_6
    :goto_1
    const-string v3, "ro.rf_version"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v6, "Am"

    invoke-virtual {v3, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string v2, "android.settings.SHOW_REGULATORY_INFO"

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_7
    const-string v2, "com.oneplus.intent.OPAuthenticationInformationSettings"

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_2
    goto :goto_5

    :cond_8
    :goto_3
    const-string v2, "android.settings.SHOW_REGULATORY_INFO"

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_9
    :goto_4
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v3

    if-eqz v3, :cond_a

    const-string v2, "android.settings.SHOW_REGULATORY_INFO"

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_5

    :cond_a
    const-string v2, "com.oneplus.intent.OPAuthenticationInformationSettings"

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_b
    :goto_5
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addAwardInfo()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120b7b

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120c63

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120bba

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    :goto_0
    const v1, 0x7f0802c3

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.OPForumContributorsActivity"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceModel()V
    .locals 5

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120964

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f08039b

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ONEPLUS\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v3, "ONEPLUS "

    const-string v4, ""

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    :goto_1
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addDeviceName()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120974

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "oem_oneplus_devicename"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v2, 0x7f0802ee

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v2, "com.oneplus.intent.OPDeviceNameActivity"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addHardwareVersion()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120de8

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f080304

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f12054e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "31"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addLegalInfo()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120831

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120be7

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f080388

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.LegalSettingsActivity"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addOneplusSystemVersion()V
    .locals 6

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    const/4 v1, 0x1

    new-array v2, v1, [I

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const v2, 0x7f12054e

    if-eqz v1, :cond_0

    const v1, 0x7f0803a2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120c88

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ro.oxygen.version"

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "O2"

    const-string v5, "O\u2082"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const v1, 0x7f080303

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120bce

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "H2"

    const-string v5, "H\u2082"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "ro.rom.version"

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "H2"

    const-string v5, "H\u2082"

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v3}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addProductIntroduce()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120c9c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120c9e

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f0803ac

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.action.PRODUCT_INFO"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addSoftwareVersion()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120de9

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    const v1, 0x7f0803e2

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12054e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.rom.version"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const-string v2, "build.number"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addStatusInfo()V
    .locals 3

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120555

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120d83

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v1, 0x7f0803e6

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v1, "com.oneplus.intent.MyDeviceInfoFragmentActivity"

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addVersionNumber()V
    .locals 4

    new-instance v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-direct {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f12036c

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setTitle(Ljava/lang/String;)V

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    sget-object v2, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f12054e

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ro.rom.version"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :cond_0
    invoke-virtual {v0, v1}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setSummary(Ljava/lang/String;)V

    const v2, 0x7f0803e1

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setResIcon(I)V

    const-string v2, "build.number"

    invoke-virtual {v0, v2}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->setIntent(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static formatMemoryDisplay(J)Ljava/lang/String;
    .locals 7

    const-wide/16 v0, 0x400

    mul-long/2addr v0, p0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    const-wide/16 v2, 0x200

    div-long v4, v0, v2

    long-to-int v4, v4

    rem-long v2, v0, v2

    long-to-int v2, v2

    if-nez v4, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_0
    const/16 v3, 0x100

    const/high16 v5, 0x3f000000    # 0.5f

    if-le v2, v3, :cond_2

    add-int/lit8 v4, v4, 0x1

    rem-int/lit8 v3, v4, 0x2

    if-nez v3, :cond_1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    float-to-int v5, v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    int-to-float v6, v4

    mul-float/2addr v5, v6

    const/high16 v6, 0x3e800000    # 0.25f

    add-float/2addr v5, v6

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ""

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getCameraInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120a45

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120a44

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120a43

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120a46

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_4
    :goto_0
    const-string v0, "16 + 20 MP Dual Camera"

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getCpuName()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A60"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "Snapdragon\u2122 845"

    goto :goto_0

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Snapdragon\u2122 835"

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "Snapdragon\u2122 821"

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v0, "Snapdragon\u2122 820"

    :cond_3
    :goto_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v1

    if-eqz v1, :cond_4

    const-string v0, "Snapdragon\u2122 855"

    :cond_4
    return-object v0
.end method

.method private getScreenInfo()Ljava/lang/String;
    .locals 3

    const-string v0, "none"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6000"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6003"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_2

    :cond_0
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A5010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, "Optic AMOLED 6.01\u201d Display"

    goto :goto_3

    :cond_1
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A50"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "A30"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6010"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v2, "ONEPLUS A6013"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isGuaProject()Z

    move-result v1

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120a47

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    :cond_4
    :goto_0
    const-string v0, "Optic AMOLED 6.41\u201d Display"

    goto :goto_3

    :cond_5
    :goto_1
    const-string v0, "Optic AMOLED 5.5\u201d Display"

    goto :goto_3

    :cond_6
    :goto_2
    const-string v0, "Optic AMOLED 6.28\u201d Display"

    :cond_7
    :goto_3
    return-object v0
.end method

.method private static getTotalMemory()Ljava/lang/String;
    .locals 7

    const-string v0, "/proc/meminfo"

    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    :try_start_0
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    new-instance v4, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v4, v2, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    move-object v3, v4

    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const/16 v4, 0xa

    invoke-virtual {v1, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    const/4 v4, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x2

    invoke-virtual {v1, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    move-object v1, v4

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception v4

    goto :goto_5

    :catchall_0
    move-exception v4

    if-eqz v3, :cond_0

    :try_start_3
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    :catch_2
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_0
    :goto_1
    if-eqz v2, :cond_1

    :try_start_4
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_2

    :catch_3
    move-exception v5

    invoke-virtual {v5}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_2
    const/4 v3, 0x0

    const/4 v2, 0x0

    throw v4

    :catch_4
    move-exception v4

    if-eqz v3, :cond_2

    :try_start_5
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_3

    :catch_5
    move-exception v4

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_2
    :goto_3
    if-eqz v2, :cond_3

    :try_start_6
    invoke-virtual {v2}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    :goto_4
    goto :goto_6

    :catch_6
    move-exception v4

    :goto_5
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    :goto_6
    const/4 v3, 0x0

    const/4 v2, 0x0

    nop

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->formatMemoryDisplay(J)Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static isGuaLiftCameraProject()Z
    .locals 5

    sget-object v0, Lcom/oneplus/settings/SettingsBaseApplication;->mApplication:Landroid/app/Application;

    invoke-virtual {v0}, Landroid/app/Application;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f03007f

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    aget-object v3, v0, v2

    if-eqz v3, :cond_0

    aget-object v3, v0, v2

    sget-object v4, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v1, 0x1

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method private isNeedAddAuthenticationInfo()Z
    .locals 4

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v2, 0x7f120c65

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isEUVersion()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_0
    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c66

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c6d

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c6c

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c69

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v3, 0x7f120c6e

    invoke-virtual {v1, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "ONEPLUS A3003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const-string v1, "ONEPLUS A3000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "ONEPLUS A3010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    const-string v1, "ro.rf_version"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v3, "Eu"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_4

    const-string v3, "In"

    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_0

    :cond_3
    const/4 v1, 0x1

    return v1

    :cond_4
    :goto_0
    return v2

    :cond_5
    :goto_1
    return v2
.end method

.method private isOlder6tProducts()Z
    .locals 2

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A30"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A50"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "A600"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private showHardwareInfo()V
    .locals 7

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A6003"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5000"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v0, 0x7f0802a9

    goto :goto_1

    :cond_1
    sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;

    const-string v1, "ONEPLUS A5010"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const v0, 0x7f0802aa

    goto :goto_1

    :cond_2
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3()Z

    move-result v0

    if-eqz v0, :cond_3

    const v0, 0x7f0802a7

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isOP3T()Z

    move-result v0

    if-eqz v0, :cond_4

    const v0, 0x7f0802a8

    goto :goto_1

    :cond_4
    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isGuaLiftCameraProject()Z

    move-result v0

    if-eqz v0, :cond_5

    const v0, 0x7f0802b0

    goto :goto_1

    :cond_5
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->is18857Project()Z

    move-result v0

    if-eqz v0, :cond_6

    const v0, 0x7f0802a6

    goto :goto_1

    :cond_6
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_7

    const v0, 0x7f0802b3

    goto :goto_1

    :cond_7
    const v0, 0x7f0802ab

    goto :goto_1

    :cond_8
    :goto_0
    const v0, 0x7f0802ab

    :goto_1
    move v2, v0

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCameraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getCpuName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getScreenInfo()Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->getTotalMemory()Ljava/lang/String;

    move-result-object v6

    invoke-interface/range {v1 .. v6}, Lcom/oneplus/settings/aboutphone/Contract$View;->displayHardWarePreference(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showSoftwareInfo()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceName()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isNeedAddAuthenticationInfo()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAuthenticationInfo()V

    :cond_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAndroidVersion()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addOneplusSystemVersion()V

    :cond_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addVersionNumber()V

    :cond_2
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addDeviceModel()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addLegalInfo()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addStatusInfo()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->isOlder6tProducts()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/oneplus/settings/utils/OPUtils;->isSurportProductInfo(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addAwardInfo()V

    goto :goto_1

    :cond_5
    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addProductIntroduce()V

    :goto_1
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportUss()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addSoftwareVersion()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->addHardwareVersion()V

    :cond_6
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v1, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, v1}, Lcom/oneplus/settings/aboutphone/Contract$View;->displaySoftWarePreference(Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public enableDevelopmentSettings()V
    .locals 2

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iput-boolean v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->setDevelopmentSettingsEnabled(Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSupportXVibrate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v0}, Lcom/oneplus/settings/aboutphone/Contract$View;->performHapticFeedback()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    const v1, 0x7f1210df

    invoke-interface {v0, v1}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    return-void
.end method

.method public onItemClick(I)V
    .locals 9

    iget-object v0, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;

    invoke-virtual {v0}, Lcom/oneplus/settings/aboutphone/SoftwareInfoEntity;->getIntent()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_d

    const-string v2, ""

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v2, "com.android.FirmwareVersionDialogFragment"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroid/app/Fragment;

    invoke-static {v2}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->show(Landroid/app/Fragment;)V

    goto/16 :goto_0

    :cond_1
    const-string v2, "build.number"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v2

    if-eqz v2, :cond_2

    return-void

    :cond_2
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v2

    if-nez v2, :cond_3

    return-void

    :cond_3
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_4

    return-void

    :cond_4
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    const-string v3, "no_debugging_features"

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->isDemoUser()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-static {v2}, Lcom/android/settings/Utils;->getDeviceOwnerComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_5

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    const-string v5, "com.android.settings.action.REQUEST_DEBUG_FEATURES"

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v4, v3}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-eqz v5, :cond_5

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3, v4}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void

    :cond_5
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v2, :cond_6

    iget-boolean v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedBySystem:Z

    if-nez v2, :cond_6

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDebuggingFeaturesDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-static {v2, v4}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    :cond_6
    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez v2, :cond_9

    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    const/4 v4, 0x1

    sub-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-nez v2, :cond_8

    iget-boolean v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez v2, :cond_8

    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    add-int/2addr v2, v4

    iput v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-instance v2, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroid/app/Fragment;

    invoke-direct {v2, v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    const/16 v3, 0x64

    iget-object v4, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    const v5, 0x7f121338

    invoke-virtual {v4, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    iget-boolean v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mProcessingLastDevHit:Z

    if-nez v3, :cond_7

    invoke-virtual {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->enableDevelopmentSettings()V

    :cond_7
    goto :goto_0

    :cond_8
    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-lez v2, :cond_c

    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    const/4 v5, 0x5

    if-ge v2, v5, :cond_c

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v2}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    iget-object v5, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mActivity:Landroid/app/Activity;

    invoke-virtual {v5}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f100038

    iget v7, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    new-array v4, v4, [Ljava/lang/Object;

    iget v8, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v4, v3

    invoke-virtual {v5, v6, v7, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    iget v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mDevHitCountdown:I

    if-gez v2, :cond_c

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    invoke-interface {v2}, Lcom/oneplus/settings/aboutphone/Contract$View;->cancelToast()V

    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mView:Lcom/oneplus/settings/aboutphone/Contract$View;

    const v3, 0x7f1210de

    invoke-interface {v2, v3}, Lcom/oneplus/settings/aboutphone/Contract$View;->showLongToast(I)V

    goto :goto_0

    :cond_a
    const-string v2, "build.model"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->newInstance()Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroid/app/Fragment;

    invoke-virtual {v3}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v3

    const-string v4, "HardwareInfo"

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/deviceinfo/HardwareInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    :cond_b
    iget-object v2, p0, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->mFragment:Landroid/app/Fragment;

    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_c
    :goto_0
    return-void

    :cond_d
    :goto_1
    return-void
.end method

.method public onResume()V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showHardwareInfo()V

    invoke-direct {p0}, Lcom/oneplus/settings/aboutphone/AboutPhonePresenter;->showSoftwareInfo()V

    return-void
.end method
