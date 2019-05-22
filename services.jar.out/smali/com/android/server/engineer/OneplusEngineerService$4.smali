.class Lcom/android/server/engineer/OneplusEngineerService$4;
.super Ljava/lang/Object;
.source "OneplusEngineerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/engineer/OneplusEngineerService;->onBootPhase(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$4;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_7

    const-string/jumbo v0, "ro.serialno"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    const v1, 0xf4252

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteArrayToString([B)Ljava/lang/String;

    move-result-object v2

    const-string v3, "OneplusEngineerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSerialNoFromNvram serialFromNv="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    sget-object v3, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v3

    const v4, 0xf4253

    array-length v5, v3

    invoke-static {v4, v3, v5}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v4

    const-string v5, "OneplusEngineerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "update serial to nvram "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_0

    const-string/jumbo v7, "success"

    goto :goto_0

    :cond_0
    const-string v7, "fail"

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const v1, 0xf425a

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeReadEngineerData(I)[B

    move-result-object v1

    if-eqz v1, :cond_6

    array-length v2, v1

    const/16 v3, 0x80

    if-ne v2, v3, :cond_6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move v4, v2

    move v2, v3

    :goto_1
    const/16 v5, 0x10

    if-ge v2, v5, :cond_4

    aget-byte v5, v1, v2

    if-nez v5, :cond_2

    move v4, v2

    goto :goto_2

    :cond_2
    const/16 v5, 0xf

    if-ne v2, v5, :cond_3

    const/16 v4, 0x10

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v4, :cond_5

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, v3, v4}, Ljava/lang/String;-><init>([BII)V

    const-string v3, "OneplusEngineerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "factoryNumber:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v3, "oem.eng.factory.no"

    invoke-static {v3, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception v3

    const-string v5, "OneplusEngineerService"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set factory number caught exception : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_3
    goto :goto_4

    :cond_6
    const-string v2, "OneplusEngineerService"

    const-string v3, "OEM_PRODUCT_INFO empty"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_4
    return-void
.end method
