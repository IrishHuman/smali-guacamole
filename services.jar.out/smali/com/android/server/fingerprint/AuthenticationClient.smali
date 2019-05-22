.class public abstract Lcom/android/server/fingerprint/AuthenticationClient;
.super Lcom/android/server/fingerprint/ClientMonitor;
.source "AuthenticationClient.java"


# static fields
.field public static final LOCKOUT_NONE:I = 0x0

.field public static final LOCKOUT_PERMANENT:I = 0x2

.field public static final LOCKOUT_TIMED:I = 0x1


# instance fields
.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

.field private final FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

.field private mBundle:Landroid/os/Bundle;

.field protected mDialogDismissed:Z

.field protected mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mInLockout:Z

.field private mIsDoubleAccount:Z

.field private mOpId:J

.field private mPm:Landroid/os/PowerManager;

.field private mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;


# direct methods
.method public constructor <init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIJZLjava/lang/String;Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;Lcom/android/internal/statusbar/IStatusBarService;)V
    .locals 11

    move-object v10, p0

    move-object v0, v10

    move-object v1, p1

    move-wide v2, p2

    move-object v4, p4

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p10

    move-object/from16 v9, p11

    invoke-direct/range {v0 .. v9}, Lcom/android/server/fingerprint/ClientMonitor;-><init>(Landroid/content/Context;JLandroid/os/IBinder;Landroid/hardware/fingerprint/IFingerprintServiceReceiver;IIZLjava/lang/String;)V

    const/4 v0, 0x4

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER:I

    const/4 v0, 0x5

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_TWICE:I

    const/4 v0, 0x6

    iput v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->FINGERPRINT_ACQUIRE_VENDOR_FAKE_FINGER_THREE_TIMES:I

    new-instance v0, Lcom/android/server/fingerprint/AuthenticationClient$1;

    invoke-direct {v0, v10}, Lcom/android/server/fingerprint/AuthenticationClient$1;-><init>(Lcom/android/server/fingerprint/AuthenticationClient;)V

    iput-object v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-static {p1}, Lcom/oneplus/onlineconfig/MdmLogger;->init(Landroid/content/Context;)V

    move-wide/from16 v0, p8

    iput-wide v0, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    move-object/from16 v2, p12

    iput-object v2, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    move-object/from16 v3, p13

    iput-object v3, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    move-object/from16 v4, p14

    iput-object v4, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string v6, "fingerprint"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/fingerprint/FingerprintManager;

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v10}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v6, "power"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/PowerManager;

    iput-object v5, v10, Lcom/android/server/fingerprint/AuthenticationClient;->mPm:Landroid/os/PowerManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/os/Bundle;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/fingerprint/AuthenticationClient;)Landroid/hardware/biometrics/IBiometricPromptReceiver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiverFromClient:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    return-object v0
.end method

.method private notifySurfaceFlinger()V
    .locals 6

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "notifySurfaceFlinger"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/4 v2, 0x1

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInt(I)V

    const/16 v3, 0x8a3

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v0, v3, v1, v4, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_1

    :cond_0
    const-string v1, "FingerprintService"

    const-string v2, "close Propeties flinger is null"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :goto_1
    nop

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "read flinger 1015 is fail"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void
.end method

.method private static shouldVibrate(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v2, :cond_0

    return v2

    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public binderDied()V
    .locals 1

    invoke-super {p0}, Lcom/android/server/fingerprint/ClientMonitor;->binderDied()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    return-void
.end method

.method public abstract handleFailedAttempt()I
.end method

.method public onAcquired(II)Z
    .locals 7

    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-eqz v0, :cond_5

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_5

    const/4 v0, 0x0

    :try_start_0
    const-string v4, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    if-ne p1, v3, :cond_0

    const/4 v0, 0x1

    :cond_0
    if-eqz p1, :cond_1

    if-nez v0, :cond_1

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v4, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getAcquiredString(II)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    nop

    if-nez p1, :cond_2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_2
    return v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    const-string v2, "FingerprintService"

    const-string v3, "Remote exception when sending acquired message"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    if-nez p1, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_3
    return v1

    :goto_0
    if-nez p1, :cond_4

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifyUserActivity()V

    :cond_4
    throw v0

    :cond_5
    const-string v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v4, 0x5

    if-eqz v0, :cond_9

    const-string v0, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "acquiredInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-ne p1, v1, :cond_6

    const-string/jumbo v0, "lock_unlock_failed"

    const-string v1, "ac_partial"

    const-string v5, "1"

    invoke-static {v0, v1, v5}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    const/4 v0, 0x2

    if-ne p1, v0, :cond_7

    const-string/jumbo v0, "lock_unlock_failed"

    const-string v1, "ac_insufficient"

    const-string v5, "1"

    invoke-static {v0, v1, v5}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_7
    const/4 v0, 0x3

    if-ne p1, v0, :cond_8

    const-string/jumbo v0, "lock_unlock_failed"

    const-string/jumbo v1, "imager_dirty"

    const-string v5, "1"

    invoke-static {v0, v1, v5}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    if-ne p1, v4, :cond_9

    const-string/jumbo v0, "lock_unlock_failed"

    const-string v1, "ac_fast"

    const-string v5, "1"

    invoke-static {v0, v1, v5}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9
    :goto_1
    const/4 v0, 0x4

    if-eq p2, v0, :cond_b

    if-eq p2, v4, :cond_b

    if-ne p2, v3, :cond_a

    goto :goto_2

    :cond_a
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onAcquired(II)Z

    move-result v0

    return v0

    :cond_b
    :goto_2
    const-string v0, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    packed-switch p2, :pswitch_data_0

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "incorrect situation"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :pswitch_0
    const-string/jumbo v0, "lock_unlock_success"

    const-string v1, "finger"

    const-string v3, "3"

    invoke-static {v0, v1, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_1
    const-string/jumbo v0, "lock_unlock_success"

    const-string v1, "finger"

    const-string v3, "2"

    invoke-static {v0, v1, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :pswitch_2
    const-string/jumbo v0, "lock_unlock_failed"

    const-string v1, "finger"

    const-string v3, "2"

    invoke-static {v0, v1, v3}, Lcom/oneplus/onlineconfig/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    nop

    :cond_c
    :goto_3
    const-string v0, "FingerprintService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive fake finger info: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onAuthenticated(II)Z
    .locals 13

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    :goto_0
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v4, :cond_2

    if-eqz v3, :cond_1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v4}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintAuthenticated()V

    goto :goto_1

    :catch_0
    move-exception v4

    goto :goto_2

    :cond_1
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x104024a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintHelp(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_3

    :goto_2
    nop

    const-string v5, "FingerprintService"

    const-string v6, "Failed to notify Authenticated:"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getReceiver()Landroid/hardware/fingerprint/IFingerprintServiceReceiver;

    move-result-object v4

    if-eqz v4, :cond_8

    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    const/16 v6, 0xfc

    invoke-static {v5, v6, v3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v5

    invoke-interface {v4, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationFailed(J)V

    goto/16 :goto_7

    :cond_3
    const-string v5, "FingerprintService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "onAuthenticated(owner="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", gp="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getIsRestricted()Z

    move-result v5

    const/16 v6, 0x3e7

    if-nez v5, :cond_5

    new-instance v5, Landroid/hardware/fingerprint/Fingerprint;

    const-string v8, ""

    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v7, :cond_4

    move v9, v6

    goto :goto_4

    :cond_4
    move v9, p2

    :goto_4
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v11

    move-object v7, v5

    move v10, p1

    invoke-direct/range {v7 .. v12}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    goto :goto_5

    :cond_5
    const/4 v5, 0x0

    :goto_5
    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v7, :cond_6

    const-string v7, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_6

    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mPm:Landroid/os/PowerManager;

    invoke-virtual {v7}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-direct {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->notifySurfaceFlinger()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    iget-boolean v9, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    if-eqz v9, :cond_7

    goto :goto_6

    :cond_7
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getTargetUserId()I

    move-result v6

    :goto_6
    invoke-interface {v4, v7, v8, v5, v6}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onAuthenticationSucceeded(JLandroid/hardware/fingerprint/Fingerprint;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_7

    :catch_1
    move-exception v5

    const-string v6, "FingerprintService"

    const-string v7, "Failed to notify Authenticated:"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x1

    :goto_7
    goto :goto_8

    :cond_8
    const/4 v0, 0x1

    :goto_8
    if-nez v3, :cond_11

    if-eqz v4, :cond_b

    const/16 v5, 0x3fc

    const/16 v6, 0x32

    const/4 v7, 0x3

    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateErrorWithScene(III)Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_9

    :cond_9
    iget-boolean v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v5, :cond_a

    const-string v5, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    :cond_a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateError()V

    :cond_b
    :goto_9
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->handleFailedAttempt()I

    move-result v5

    if-eqz v5, :cond_f

    :try_start_2
    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mInLockout:Z

    const-string v6, "FingerprintService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Forcing lockout (fp driver code should do this!), mode("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ")"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->stop(Z)I

    if-ne v5, v2, :cond_c

    const/4 v6, 0x7

    goto :goto_a

    :cond_c
    const/16 v6, 0x9

    :goto_a
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getHalDeviceId()J

    move-result-wide v7

    invoke-interface {v4, v7, v8, v6, v1}, Landroid/hardware/fingerprint/IFingerprintServiceReceiver;->onError(JII)V

    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v7, :cond_d

    iget-boolean v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v7, :cond_e

    :cond_d
    iget-object v7, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v8, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v8, v6, v1}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_e
    goto :goto_b

    :catch_2
    move-exception v6

    const-string v7, "FingerprintService"

    const-string v8, "Failed to notify lockout:"

    invoke-static {v7, v8, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_f
    :goto_b
    if-eqz v5, :cond_10

    move v1, v2

    nop

    :cond_10
    or-int/2addr v0, v1

    goto :goto_d

    :cond_11
    if-eqz v4, :cond_14

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/fingerprint/AuthenticationClient;->shouldVibrate(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_14

    new-array v5, v2, [I

    const/16 v6, 0x70

    aput v6, v5, v1

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_12

    const/16 v1, 0x3fd

    invoke-virtual {p0, v1}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateSuccessWithScene(I)V

    goto :goto_c

    :cond_12
    const-string v1, "com.android.systemui"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v1, :cond_14

    :cond_13
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->vibrateSuccess()V

    :cond_14
    :goto_c
    or-int/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->resetFailedAttempts()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    :goto_d
    return v0
.end method

.method public onEnrollResult(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnrollResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onEnumerationResult(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onEnumerationResult() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public onError(II)Z
    .locals 3

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-nez v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1, p1, p2}, Landroid/hardware/fingerprint/FingerprintManager;->getErrorString(II)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onFingerprintError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "FingerprintService"

    const-string v2, "Remote exception when sending error"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/server/fingerprint/ClientMonitor;->onError(II)Z

    move-result v0

    return v0
.end method

.method public onRemoved(III)Z
    .locals 2

    const-string v0, "FingerprintService"

    const-string/jumbo v1, "onRemoved() called for authenticate!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    return v0
.end method

.method public abstract onStart()V
.end method

.method public abstract onStop()V
.end method

.method public abstract resetFailedAttempts()V
.end method

.method public setDoubleAccount()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mIsDoubleAccount:Z

    return-void
.end method

.method public start()I
    .locals 7

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v1, 0x3

    if-nez v0, :cond_0

    const-string v2, "FingerprintService"

    const-string/jumbo v3, "start authentication: no fingerprint HAL!"

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStart()V

    :try_start_0
    iget-wide v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mOpId:J

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getGroupId()I

    move-result v4

    invoke-interface {v0, v2, v3, v4}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->authenticate(JI)I

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "startAuthentication failed, result="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "fingeprintd_auth_start_error"

    invoke-static {v4, v5, v2}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    const/4 v4, 0x1

    invoke-virtual {p0, v4, v3}, Lcom/android/server/fingerprint/AuthenticationClient;->onError(II)Z

    return v2

    :cond_1
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is authenticating..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_2

    iget-boolean v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v4, :cond_4

    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v4, :cond_3

    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    iput-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    :cond_3
    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    const-string/jumbo v5, "key_fingerprint_package_name"

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v5, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    iget-object v6, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogReceiver:Landroid/hardware/biometrics/IBiometricPromptReceiver;

    invoke-interface {v4, v5, v6}, Lcom/android/internal/statusbar/IStatusBarService;->showFingerprintDialog(Landroid/os/Bundle;Landroid/hardware/biometrics/IBiometricPromptReceiver;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v4

    :try_start_2
    const-string v5, "FingerprintService"

    const-string v6, "Unable to show fingerprint dialog"

    invoke-static {v5, v6, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1

    :cond_4
    :goto_0
    nop

    return v3

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string/jumbo v4, "startAuthentication failed"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public stop(Z)I
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v0, "FingerprintService"

    const-string/jumbo v2, "stopAuthentication: already cancelled!"

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->onStop()V

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getFingerprintDaemon()Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;

    move-result-object v0

    const/4 v2, 0x3

    if-nez v0, :cond_1

    const-string v1, "FingerprintService"

    const-string/jumbo v3, "stopAuthentication: no fingerprint HAL!"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_1
    :try_start_0
    invoke-interface {v0}, Landroid/hardware/biometrics/fingerprint/V2_1/IBiometricsFingerprint;->cancel()I

    move-result v3

    if-eqz v3, :cond_4

    const-string v1, "FingerprintService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "stopAuthentication failed, result="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v1, :cond_2

    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v1, :cond_3

    :try_start_1
    iget-object v1, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v1}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v2, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_0
    return v3

    :cond_4
    :try_start_2
    const-string v4, "FingerprintService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "client "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/server/fingerprint/AuthenticationClient;->getOwnerString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " is no longer authenticating"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_5

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_6

    :cond_5
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_6

    :try_start_3
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    :catch_1
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    nop

    :cond_6
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mAlreadyCancelled:Z

    return v1

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    :try_start_4
    const-string v3, "FingerprintService"

    const-string/jumbo v4, "stopAuthentication failed"

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    nop

    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v3, :cond_7

    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v3, :cond_8

    :cond_7
    iget-boolean v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v3, :cond_8

    :try_start_5
    iget-object v3, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v3}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    :catch_3
    move-exception v3

    const-string v4, "FingerprintService"

    const-string v5, "Unable to hide fingerprint dialog"

    invoke-static {v4, v5, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_8
    :goto_2
    return v2

    :goto_3
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mBundle:Landroid/os/Bundle;

    if-nez v2, :cond_9

    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mSupportCustomFingerprint:Z

    if-eqz v2, :cond_a

    :cond_9
    iget-boolean v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mDialogDismissed:Z

    if-nez v2, :cond_a

    :try_start_6
    iget-object v2, p0, Lcom/android/server/fingerprint/AuthenticationClient;->mStatusBarService:Lcom/android/internal/statusbar/IStatusBarService;

    invoke-interface {v2}, Lcom/android/internal/statusbar/IStatusBarService;->hideFingerprintDialog()V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_4

    :catch_4
    move-exception v2

    const-string v3, "FingerprintService"

    const-string v4, "Unable to hide fingerprint dialog"

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_a
    :goto_4
    throw v1
.end method
