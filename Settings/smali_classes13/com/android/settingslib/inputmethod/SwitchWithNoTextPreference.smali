.class public Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SwitchWithNoTextPreference.java"


# static fields
.field private static final EMPTY_TEXT:Ljava/lang/String; = ""


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOn(Ljava/lang/CharSequence;)V

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settingslib/inputmethod/SwitchWithNoTextPreference;->setSwitchTextOff(Ljava/lang/CharSequence;)V

    return-void
.end method
