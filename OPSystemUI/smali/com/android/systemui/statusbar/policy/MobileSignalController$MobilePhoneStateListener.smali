.class Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;
.super Landroid/telephony/PhoneStateListener;
.source "MobileSignalController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/MobileSignalController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MobilePhoneStateListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MobileSignalController;ILandroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Landroid/telephony/PhoneStateListener;-><init>(Ljava/lang/Integer;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1402(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onCarrierNetworkChange(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCarrierNetworkChange: active="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mCurrentState:Lcom/android/systemui/statusbar/policy/SignalController$State;

    check-cast v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;

    iput-boolean p1, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobileState;->carrierNetworkChangeMode:Z

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onDataActivity(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->setActivity(I)V

    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/statusbar/policy/SignalController;->DEBUG:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDataConnectionStateChanged: state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isUsingCarrierAggregation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1302(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p2}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onImsCapabilityStatusChange([Z)V
    .locals 5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v3}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$700(Lcom/android/systemui/statusbar/policy/MobileSignalController;)[Z

    move-result-object v3

    aget-boolean v3, v3, v2

    aget-boolean v4, p1, v2

    if-eq v3, v4, :cond_0

    const/4 v1, 0x1

    aget-boolean v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_0
    aget-boolean v3, p1, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_1
    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v2, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$702(Lcom/android/systemui/statusbar/policy/MobileSignalController;[Z)[Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onImsCapabilityStatusChange:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    if-eqz v2, :cond_3

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v2, v2, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mNetworkController:Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;

    invoke-virtual {v2}, Lcom/android/systemui/statusbar/policy/NetworkControllerImpl;->onLTEStatusUpdate()V

    :cond_3
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 3

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    const-string v1, "onServiceStateChanged / state == null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onServiceStateChanged voiceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " dataState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " isUsingCarrierAggregation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " getDataNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " getVoiceNetworkType:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$902(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/ServiceState;)Landroid/telephony/ServiceState;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1000(Lcom/android/systemui/statusbar/policy/MobileSignalController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$900(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    const/16 v1, 0x13

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1002(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1102(Lcom/android/systemui/statusbar/policy/MobileSignalController;I)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$1200(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 9

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v0

    const/4 v1, 0x0

    aget v0, v0, v1

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v2

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getSmoothSignalLevel()I

    move-result v4

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v5

    aget v1, v5, v1

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getSmoothSignalLevelAll()[I

    move-result-object v5

    aget v3, v5, v3

    iget-object v5, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v5}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$800(Lcom/android/systemui/statusbar/policy/MobileSignalController;)Landroid/telephony/SignalStrength;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/SignalStrength;->getSmoothSignalLevel()I

    move-result v5

    if-ne v0, v1, :cond_0

    if-ne v2, v3, :cond_0

    if-eq v4, v5, :cond_1

    :cond_0
    iget-object v6, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    iget-object v6, v6, Lcom/android/systemui/statusbar/policy/MobileSignalController;->mTag:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "onSignalStrengthsChanged signalStrength="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " level="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " voicelevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " datalevel="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0, p1}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$802(Lcom/android/systemui/statusbar/policy/MobileSignalController;Landroid/telephony/SignalStrength;)Landroid/telephony/SignalStrength;

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MobileSignalController$MobilePhoneStateListener;->this$0:Lcom/android/systemui/statusbar/policy/MobileSignalController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/MobileSignalController;->access$100(Lcom/android/systemui/statusbar/policy/MobileSignalController;)V

    return-void
.end method
