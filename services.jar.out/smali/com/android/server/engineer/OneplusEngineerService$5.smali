.class Lcom/android/server/engineer/OneplusEngineerService$5;
.super Ljava/lang/Thread;
.source "OneplusEngineerService.java"


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

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$5;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    new-instance v0, Ljava/io/File;

    const-string v1, "/proc/ldmp_wdt_test"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "OneplusEngineerService"

    const-string v1, "WATCH_DOG_IC_TEST_PATH found"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "/proc/ldmp_wdt_test"

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->readLineFromFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "PASS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/16 v2, 0x53

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    invoke-static {v2, v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetProductLineTestResult(II)Z

    goto :goto_0

    :cond_0
    const-string v1, "FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x2

    invoke-static {v2, v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetProductLineTestResult(II)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    invoke-static {v2, v1}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetProductLineTestResult(II)Z

    :cond_2
    :goto_0
    return-void
.end method
