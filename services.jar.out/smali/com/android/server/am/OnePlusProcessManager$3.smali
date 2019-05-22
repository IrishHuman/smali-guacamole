.class Lcom/android/server/am/OnePlusProcessManager$3;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusProcessManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusProcessManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusProcessManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusProcessManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v1, "com.android.tradefed.utils.wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OnePlusProcessManager"

    const-string v3, "detect pre-condition pkg installed, \'Both\' close Appboot & Background-freeze features"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v3, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    sget-boolean v1, Lcom/android/server/am/OnePlusProcessManager;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_2

    const-string v1, "OnePlusProcessManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " is re-installed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v1, "com.android.tradefed.utils.wifi"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "OnePlusProcessManager"

    const-string v3, "detect pre-condition pkg re-installed, \'Both\' close Appboot & Background-freeze features"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OnePlusProcessManager$3;->this$0:Lcom/android/server/am/OnePlusProcessManager;

    invoke-static {v1}, Lcom/android/server/am/OnePlusProcessManager;->access$3100(Lcom/android/server/am/OnePlusProcessManager;)Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v2, v2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    :cond_3
    :goto_0
    return-void
.end method
