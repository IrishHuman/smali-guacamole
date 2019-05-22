.class public Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "MagnificationNavbarPreferenceController.java"


# instance fields
.field private mIsFromSUW:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    const/4 v0, 0x0

    iget-boolean v1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    if-eqz v1, :cond_0

    const v0, 0x7f120078

    goto :goto_1

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    const v2, 0x7f120062

    goto :goto_0

    :cond_1
    const v2, 0x7f120061

    :goto_0
    move v0, v2

    :goto_1
    iget-object v1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "preference_key"

    const-string v2, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "title_res"

    const v2, 0x7f12007a

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "summary_res"

    const v2, 0x7f120079

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v1, "checked"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string v1, "from_suw"

    iget-boolean v2, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isChecked()Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "screen_magnification_navbar_preference_screen"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    iget-object v0, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v0, v1, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public setIsFromSUW(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->mIsFromSUW:Z

    return-void
.end method
