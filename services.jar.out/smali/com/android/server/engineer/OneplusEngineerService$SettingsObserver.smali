.class final Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OneplusEngineerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$SettingsObserver;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-static {v1}, Lcom/android/server/engineer/OneplusEngineerService;->access$600(Lcom/android/server/engineer/OneplusEngineerService;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/engineer/OneplusEngineerService;->access$1000(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0xf4278

    const/16 v1, 0x200

    new-array v2, v1, [B

    invoke-static {v0, v2, v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    :try_start_0
    const-string/jumbo v1, "sys.oem.production.login.mode"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OneplusEngineerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set download mode property caught exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string v1, "OneplusEngineerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "reset download model flag result = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
