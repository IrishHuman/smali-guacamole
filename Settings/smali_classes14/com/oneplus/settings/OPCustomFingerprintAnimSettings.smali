.class public Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "OPCustomFingerprintAnimSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final KEY_PREFERENCE:Ljava/lang/String; = "op_custom_fingerprint_anim"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFingeprintAnimPreference:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateOptionsMenu$0(Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;Landroid/view/MenuItem;)Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mFingeprintAnimPreference:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->saveSelectedAnim()V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x270f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "op_custom_fingerprint_anim"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iput-object v1, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mFingeprintAnimPreference:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    iput-object p1, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mContext:Landroid/content/Context;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f160075

    invoke-virtual {p0, v0}, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    if-nez p1, :cond_0

    return-void

    :cond_0
    const v0, 0x7f120b48

    const/4 v1, 0x0

    invoke-interface {p1, v1, v1, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x2

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    new-instance v1, Lcom/oneplus/settings/-$$Lambda$OPCustomFingerprintAnimSettings$sijG1CDCIS-z_FChWSJQB8d5ITY;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/-$$Lambda$OPCustomFingerprintAnimSettings$sijG1CDCIS-z_FChWSJQB8d5ITY;-><init>(Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;)V

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    return-void
.end method

.method public onDestroy()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/settings/OPCustomFingerprintAnimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    const-string v1, "fod_effect"

    const-string v2, "status"

    const-string v3, "1"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    const-string v1, "fod_effect"

    const-string v2, "status"

    const-string v3, "2"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    const-string v1, "fod_effect"

    const-string v2, "status"

    const-string v3, "3"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/16 v1, 0x9

    if-ne v0, v1, :cond_3

    const-string v1, "fod_effect"

    const-string v2, "status"

    const-string v3, "4"

    invoke-static {v1, v2, v3}, Lcom/oneplus/settings/utils/OPUtils;->sendAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public onResume()V
    .locals 0

    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    return-void
.end method
