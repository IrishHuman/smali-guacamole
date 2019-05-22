.class Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "OPAutoSwitchMobileDataPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingObserver"
.end annotation


# instance fields
.field private final WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

.field private final mPreference:Landroid/support/v7/preference/Preference;

.field final synthetic this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string v0, "wifi_auto_change_to_mobile_data"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    iput-object p2, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->this$0:Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;

    iget-object v1, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    :cond_0
    return-void
.end method

.method public register(Landroid/content/ContentResolver;Z)V
    .locals 2

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/OPAutoSwitchMobileDataPreferenceController$SettingObserver;->WIFI_AUTO_CHANGE_TO_MOBILE_DATA_URI:Landroid/net/Uri;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    :goto_0
    return-void
.end method
