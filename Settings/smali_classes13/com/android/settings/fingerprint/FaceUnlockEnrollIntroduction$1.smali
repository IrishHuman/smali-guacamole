.class Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;
.super Ljava/lang/Object;
.source "FaceUnlockEnrollIntroduction.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2

    const-string v0, "FaceUnlockIntroduction"

    const-string v1, "Oneplus face unlock service connected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-static {p2}, Lcom/oneplus/faceunlock/internal/IOPFaceSettingService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const v1, 0x7f121081

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-static {v0}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->access$100(Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2

    const-string v0, "FaceUnlockIntroduction"

    const-string v1, "Oneplus face unlock service disconnected"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction$1;->this$0:Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;->access$002(Lcom/android/settings/fingerprint/FaceUnlockEnrollIntroduction;Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;)Lcom/oneplus/faceunlock/internal/IOPFaceSettingService;

    return-void
.end method
