.class Lcom/oneplus/settings/better/OPNightMode$5;
.super Ljava/lang/Object;
.source "OPNightMode.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPNightMode;->openNightModeGradually(IF)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPNightMode;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPNightMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPNightMode$5;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$5;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$5;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$5;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$300(Lcom/oneplus/settings/better/OPNightMode;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPNightMode$5;->this$0:Lcom/oneplus/settings/better/OPNightMode;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPNightMode;->access$000(Lcom/oneplus/settings/better/OPNightMode;)Lcom/android/internal/app/ColorDisplayController;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    return-void
.end method
