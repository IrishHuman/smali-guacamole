.class Lcom/android/server/engineer/OneplusEngineerNative;
.super Ljava/lang/Object;
.source "OneplusEngineerNative.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OneplusEngineerNative"

.field private static sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

.field private static sHidlDeathRecipient:Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;-><init>(Lcom/android/server/engineer/OneplusEngineerNative$1;)V

    sput-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sHidlDeathRecipient:Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$102(Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;)Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;
    .locals 0

    sput-object p0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    return-object p0
.end method

.method private static initEngineerHwService()V
    .locals 4

    :try_start_0
    invoke-static {}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->getService()Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerNative;->sHidlDeathRecipient:Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    sput-object v1, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    :goto_0
    return-void
.end method

.method static nativeGetBadBatteryConfig(II)[B
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0, p1}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->getBadBatteryConfig(II)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArrayList(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeGetBadBatteryConfig exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static nativeGetPartionWriteProtectState()Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->getPartionWriteProtectState()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeGetPartionWriteProtectState exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeGetProductLineTestResult()[B
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->getProductLineTestResult()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArrayList(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeGetProductLineTestResult exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static nativeReadEngineerData(I)[B
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->readEngineerData(I)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArrayList(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeReadEngineerData exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static nativeReadOneplusUsageRecords(Ljava/lang/String;)[B
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->readOneplusUsageRecords(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArrayList(Ljava/util/List;)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeReadOemUsageRecords exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method static nativeResetProductLineTestResult()Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->resetProductLineTestResult()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeResetProductLineTestResult exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeSaveEngineerData(I[BI)Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-static {p1}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p0, v1, p2}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->saveEngineerData(ILjava/util/ArrayList;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeSaveEngineerData exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeSaveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0, p1}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->saveOneplusUsageRecords(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeSaveOemUsageRecords exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeSetBatteryBatteryConfig(II[B)I
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-static {p2}, Lcom/android/server/engineer/OneplusEngineerNative;->transferByteArray([B)Ljava/util/ArrayList;

    move-result-object v1

    invoke-interface {v0, p0, p1, v1}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->setBatteryBatteryConfig(IILjava/util/ArrayList;)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeSetBatteryBatteryConfig exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeSetPartionWriteProtectState(Z)Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->setPartionWriteProtectState(Z)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeSetPartionWriteProtectState exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static nativeSetProductLineTestResult(II)Z
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0, p1}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->setProductLineTestResult(II)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "nativeSetProductLineTestResult exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method static native_getDownloadStatus()[B
    .locals 1

    const v0, 0x186a1

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v0

    return-object v0
.end method

.method private static transferByteArray([B)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_1

    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private static transferByteArrayList(Ljava/util/List;)[B
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Byte;",
            ">;)[B"
        }
    .end annotation

    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [B

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Byte;

    invoke-virtual {v2}, Ljava/lang/Byte;->byteValue()B

    move-result v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static translateCommand(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->initEngineerHwService()V

    :try_start_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerNative;->sEngineer:Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    invoke-interface {v0, p0}, Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;->translateCommand(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OneplusEngineerNative"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "translateCommand exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method
