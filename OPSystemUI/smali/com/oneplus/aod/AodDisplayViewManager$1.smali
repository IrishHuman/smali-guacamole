.class Lcom/oneplus/aod/AodDisplayViewManager$1;
.super Ljava/lang/Object;
.source "AodDisplayViewManager.java"

# interfaces
.implements Lcom/android/systemui/doze/DozeHost$Callback;


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

    iput-object p1, p0, Lcom/oneplus/aod/AodDisplayViewManager$1;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFingerprintPoke()V
    .locals 0

    return-void
.end method

.method public onNotificationHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onNotificationHeadsUp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$1;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$000(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/SingleNotificationView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/SingleNotificationView;->onNotificationHeadsUp(Lcom/android/systemui/statusbar/NotificationData$Entry;)V

    return-void
.end method

.method public onPowerSaveChanged(Z)V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onPowerSaveChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onSingleTap()V
    .locals 2

    const-string v0, "AodDisplayViewManager"

    const-string v1, "onSingleTap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 3

    const-string v0, "AodDisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onThreeKeyChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$1;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$100(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodThreeKeyStatusView;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/AodThreeKeyStatusView;->onThreeKeyChanged(I)V

    return-void
.end method
