.class public Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "OPCarChargerPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_AUTO_TURN_ON_CAR_CHARGER:Ljava/lang/String; = "car_charger_auto_turn_on"

.field private static final KEY_AUTO_TURN_ON_DND:Ljava/lang/String; = "car_charger_auto_turn_on_dnd"


# instance fields
.field private KEY:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isO2()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v2, "car_charger_auto_turn_on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    move-object v0, p2

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "car_charger_auto_turn_on_dnd"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "charge_dnd"

    if-eqz v0, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v2, "car_charger_auto_turn_on"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "car_charger_auto_turn_on"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "charge_carmode"

    if-eqz v0, :cond_2

    const-string v2, "on"

    goto :goto_1

    :cond_2
    const-string v2, "off"

    :goto_1
    invoke-static {v1, v2}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTracker(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    const/4 v1, 0x1

    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v1, "car_charger_auto_turn_on_dnd"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "car_charger_auto_turn_on_dnd"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->KEY:Ljava/lang/String;

    const-string v3, "car_charger_auto_turn_on"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/settings/carcharger/OPCarChargerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "car_charger_auto_turn_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    move-object v3, p1

    check-cast v3, Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, v1, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    invoke-virtual {v3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    :cond_3
    :goto_2
    return-void
.end method
