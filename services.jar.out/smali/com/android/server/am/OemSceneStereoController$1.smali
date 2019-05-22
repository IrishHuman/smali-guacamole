.class Lcom/android/server/am/OemSceneStereoController$1;
.super Ljava/lang/Object;
.source "OemSceneStereoController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemSceneStereoController;->initData()V
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

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v0}, Lcom/android/server/am/OemSceneStereoController;->access$000(Lcom/android/server/am/OemSceneStereoController;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    const-string/jumbo v3, "sub_category_id = 900 OR sub_category_id = 904"

    invoke-static {v2, v3}, Lcom/android/server/am/OemSceneStereoController;->access$200(Lcom/android/server/am/OemSceneStereoController;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OemSceneStereoController;->access$102(Lcom/android/server/am/OemSceneStereoController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    const-string/jumbo v3, "sub_category_id = 901 OR sub_category_id = 905"

    invoke-static {v2, v3}, Lcom/android/server/am/OemSceneStereoController;->access$200(Lcom/android/server/am/OemSceneStereoController;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/am/OemSceneStereoController;->access$302(Lcom/android/server/am/OemSceneStereoController;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/am/OemSceneStereoController;->access$402(Z)Z

    invoke-static {}, Lcom/android/server/am/OemSceneStereoController;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "OemSceneStereoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "musicApps.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v3}, Lcom/android/server/am/OemSceneStereoController;->access$100(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "OemSceneStereoController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "videoApps.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OemSceneStereoController$1;->this$0:Lcom/android/server/am/OemSceneStereoController;

    invoke-static {v3}, Lcom/android/server/am/OemSceneStereoController;->access$300(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
