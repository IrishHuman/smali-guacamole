.class Lcom/android/server/engineer/OneplusEngineerService$2;
.super Ljava/lang/Object;
.source "OneplusEngineerService.java"

# interfaces
.implements Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
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

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$2;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEngineerConfigUpdate()V
    .locals 0

    return-void
.end method

.method public onEngineerConfigUpdateFromProvider()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$2;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerService;->access$100(Lcom/android/server/engineer/OneplusEngineerService;)Lcom/android/server/engineer/OneplusEngineerConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->needResetAtm()Z

    move-result v0

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$2;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v1}, Lcom/android/server/engineer/OneplusEngineerService;->resetWriteProtectStateInternal()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OneplusEngineerService"

    const-string/jumbo v2, "reset wp state success"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    const-string/jumbo v1, "sys.usb.config.meta"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OneplusEngineerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set usb charge switch caught exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const/16 v1, 0x66

    const-string v2, "WriteProtectResetDone"

    const-string v3, "ANDROID"

    const-string v4, "WriteProtectIssue"

    const-string v5, "WriteProtectResetDone"

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/server/engineer/OneplusEngineerUtils;->writeLogToPartition(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    const-string v1, "OneplusEngineerService"

    const-string/jumbo v2, "reset wp state fail"

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$2;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->access$200(Lcom/android/server/engineer/OneplusEngineerService;)V

    :cond_1
    :goto_1
    return-void
.end method
