.class Lcom/android/server/am/OemSceneStereoController$2;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneStereoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemSceneStereoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemSceneStereoController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemSceneStereoController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-static {}, Lcom/android/server/am/OemSceneStereoController;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemSceneStereoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppReceiver recevie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/android/server/am/OemSceneStereoController;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemSceneStereoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "# mAppInstallReceiver # onReceive # mPkgMap replaced "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v2}, Lcom/android/server/am/OemSceneStereoController;->access$700(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/concurrent/ExecutorService;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/OemSceneStereoController$2$1;

    invoke-direct {v3, p0, v1}, Lcom/android/server/am/OemSceneStereoController$2$1;-><init>(Lcom/android/server/am/OemSceneStereoController$2;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    :cond_3
    return-void
.end method
