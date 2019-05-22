.class Lcom/oneplus/aod/AodDisplayViewManager$3;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "AodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodDisplayViewManager;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodDisplayViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onDreamingStateChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onDreamingStateChanged(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ClockViewCtrl;->onDreamingStateChanged(Z)V

    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    invoke-super {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onScreenTurnedOn()V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->onScreenTurnedOn()V

    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->onTimeChanged()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 1

    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;->onUserInfoChanged(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ClockViewCtrl;->onUserInfoChanged(I)V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/ClockViewCtrl;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$400(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodMain;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/ClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$400(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodMain;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodMain;->onUserSwitchComplete(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$3;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$500(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodNotificationIconAreaController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodNotificationIconAreaController;->onUserSwitchComplete(I)V

    return-void
.end method
