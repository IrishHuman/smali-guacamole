.class Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollFindSensor.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintEnrollSidecar$Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->startLookingForFingerprint()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEnrollmentError(ILjava/lang/CharSequence;)V
    .locals 3

    const-string v0, "Settings_FindSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentError mNextClicked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " errMsgId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$000(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    :cond_0
    return-void
.end method

.method public onEnrollmentHelp(ILjava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onEnrollmentProgressChange(II)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$002(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;Z)Z

    const-string v0, "Settings_FindSensor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onEnrollmentProgressChange mSidecar = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v2}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$100(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollSidecar;->cancelEnrollment()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;->access$200(Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;)V

    :cond_0
    return-void
.end method
