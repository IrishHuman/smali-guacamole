.class Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;
.super Ljava/lang/Object;
.source "OPNightModeLevelPreferenceCategory.java"

# interfaces
.implements Lcom/oneplus/lib/widget/OPSeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->initView(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Lcom/oneplus/lib/widget/OPSeekBar;IZ)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    invoke-interface {v0, p2, p3}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onColorProgressChanged(IZ)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onColorStartTrackingTouch(I)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/oneplus/lib/widget/OPSeekBar;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$1;->this$0:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;

    iget-object v0, v0, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory;->mOPNightModeLevelPreferenceChangeListener:Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/OPSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/oneplus/settings/ui/OPNightModeLevelPreferenceCategory$OPNightModeLevelPreferenceChangeListener;->onColorStopTrackingTouch(I)V

    :cond_0
    return-void
.end method
