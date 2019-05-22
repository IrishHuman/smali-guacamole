.class Lcom/android/server/am/OemSceneStereoController$2$1;
.super Ljava/lang/Object;
.source "OemSceneStereoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemSceneStereoController$2;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/am/OemSceneStereoController$2;

.field final synthetic val$pkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemSceneStereoController$2;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iput-object p2, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->val$pkgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iget-object v0, v0, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->val$pkgName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/server/am/OemSceneStereoController;->access$600(Lcom/android/server/am/OemSceneStereoController;Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iget-object v1, v1, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v1}, Lcom/android/server/am/OemSceneStereoController;->access$000(Lcom/android/server/am/OemSceneStereoController;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iget-object v2, v2, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v2}, Lcom/android/server/am/OemSceneStereoController;->access$100(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_1

    :cond_0
    const/4 v2, 0x3

    if-ne v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iget-object v2, v2, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v2}, Lcom/android/server/am/OemSceneStereoController;->access$300(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    :goto_0
    invoke-static {}, Lcom/android/server/am/OemSceneStereoController;->access$500()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "OemSceneStereoController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "app["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->val$pkgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "] install. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/am/OemSceneStereoController$2$1;->this$1:Lcom/android/server/am/OemSceneStereoController$2;

    iget-object v4, v4, Lcom/android/server/am/OemSceneStereoController$2;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-virtual {v4, v0}, Lcom/android/server/am/OemSceneStereoController;->translateMode(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    monitor-exit v1

    return-void

    :goto_1
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
