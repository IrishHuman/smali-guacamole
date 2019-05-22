.class final Lcom/android/server/engineer/OneplusEngineerService$BinderService;
.super Landroid/engineer/IOneplusEngineerManager$Stub;
.source "OneplusEngineerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# static fields
.field private static final TORCH_SWITCH_FILE_PATH:Ljava/lang/String; = "/proc/qcom_flash"


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method private constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/engineer/IOneplusEngineerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService$BinderService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    return-void
.end method


# virtual methods
.method public disablePartionWriteProtect(Z)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetPartionWriteProtectState(Z)Z

    move-result v0

    return v0
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x3f9

    if-eq v0, v1, :cond_0

    const/16 v1, 0x7d0

    if-eq v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->access$600(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: can\'t dump engineer from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1, p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerService;->access$700(Lcom/android/server/engineer/OneplusEngineerService;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    return-void
.end method

.method public fastbootUnlock([BI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0xf4277

    invoke-static {v0, p1, p2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    return v0
.end method

.method public getBackCoverColorId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->getBackCoverColorIdInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBadBatteryConfig(II)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetBadBatteryConfig(II)[B

    move-result-object v0

    return-object v0
.end method

.method public getBootImgWaterMark()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf425d

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCalibrationStatusFromNvram()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4259

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getCarrierVersion()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4248

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getCarrierVersionFromNvram()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4257

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getDeviceLockDays()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4265

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockFirstBindTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf426b

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockICCID()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4269

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockIMSI()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4263

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockLastBindTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4267

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4261

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDeviceLockUnlockTime()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf426d

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getDownloadStatus()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->getDownloadStatusInternal()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEmmcHealthInfo()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0x186a4

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public getOneplusUsageRecords(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadOneplusUsageRecords(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getProductLineTestResult()[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetProductLineTestResult()[B

    move-result-object v0

    return-object v0
.end method

.method public getRegionNetlockStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf424a

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorSwitchStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf425b

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSingleDoubleCardStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf4250

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTelcelSimlockStatus()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf424c

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getTelcelSimlockUnlockTimes()Ljava/lang/String;
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    const v0, 0xf424e

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public isEngineerItemInBlackList(ILjava/lang/String;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    packed-switch p1, :pswitch_data_0

    return v1

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->isEngineerOrderInBlackListInternal(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0, p2}, Lcom/android/server/engineer/OneplusEngineerService;->isShellCommandInBlackListInternal(Ljava/lang/String;)Z

    move-result v0

    return v0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/engineer/OneplusEngineerService;->isServiceInBlackListInternal(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {p2}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/engineer/OneplusEngineerService;->isActivityInBlackListInternal(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isPartionWriteProtectDisabled()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v0

    return v0
.end method

.method public isSerialPortEnabled()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const v0, 0x186a2

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v3, "ENABLE_UART:TRUE"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    return v1

    :cond_1
    return v1
.end method

.method public readEngineerData(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    return-object v0
.end method

.method public resetProductLineTestResult()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeResetProductLineTestResult()Z

    move-result v0

    return v0
.end method

.method public resetWriteProtectState()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->resetWriteProtectStateInternal()Z

    move-result v0

    return v0
.end method

.method public saveCarrierVersionToNvram([B)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const v0, 0xf4258

    array-length v1, p1

    invoke-static {v0, p1, v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    return v0
.end method

.method public saveEngineerData(I[BI)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    return v0
.end method

.method public saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBackCoverColorId(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerService;->setBackCoverColorIdInternal(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setBatteryBatteryConfig(II[B)I
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-static {p1, p2, p3}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetBatteryBatteryConfig(II[B)I

    move-result v0

    return v0
.end method

.method public setCarrierVersion(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4249

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockDays(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4266

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockFirstBindTime(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf426c

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockICCID(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf426a

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockIMSI(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4264

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockLastBindTime(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4268

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockStatus(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4262

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setDeviceLockUnlockTime(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf426e

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setProductLineTestResult(II)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    invoke-static {p1, p2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetProductLineTestResult(II)Z

    move-result v0

    return v0
.end method

.method public setRegionNetlock(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf424b

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setSerialPortState(Z)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    if-eqz p1, :cond_1

    const-string v0, "ENABLE_UART:TRUE"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string v0, "ENABLE_UART:FALSE"

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    :goto_0
    const v1, 0x186a3

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1
.end method

.method public setSimOperatorSwitch(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf425c

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setSingleDoubleCard(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf4251

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setSystemProperties(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public setTelcelSimlock(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf424d

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setTelcelSimlockUnlockTimes(Ljava/lang/String;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p1, :cond_1

    sget-object v0, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    const v1, 0xf424f

    array-length v2, v0

    invoke-static {v1, v0, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v1

    return v1

    :cond_1
    return v1
.end method

.method public setTorchState(Ljava/lang/String;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v0, "/proc/qcom_flash"

    invoke-static {v0, p1}, Landroid/os/FileUtils;->stringToFile(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTorchState state="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public turnBreathLightFlashOn(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$600(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0033

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->access$600(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0032

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerService;->access$500(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v2, p1, v3, v0, v1}, Lcom/android/server/lights/Light;->setFlashing(IIII)V

    :cond_1
    return-void
.end method

.method public turnBreathLightOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$500(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    :cond_1
    return-void
.end method

.method public turnBreathLightOn(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$500(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setColor(I)V

    :cond_1
    return-void
.end method

.method public turnButtonLightOff()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    :cond_1
    return-void
.end method

.method public turnButtonLightOn(I)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$300(Lcom/android/server/engineer/OneplusEngineerService;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$BinderService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$400(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/lights/Light;->setBrightness(I)V

    :cond_1
    return-void
.end method
