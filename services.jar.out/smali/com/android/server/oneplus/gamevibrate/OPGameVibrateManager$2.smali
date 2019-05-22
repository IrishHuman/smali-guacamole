.class Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;
.super Landroid/os/UEventObserver;
.source "OPGameVibrateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->startEventObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$100(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    sget-boolean v1, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    if-nez v1, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    const-string v1, "AI_SCAN"

    invoke-virtual {p1, v1}, Landroid/os/UEventObserver$UEvent;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_1

    monitor-exit v0

    return-void

    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "OPGameVibrateManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current state = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", duplicate = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v5}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$200(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", restartScan = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$302(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;I)I

    :cond_2
    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$200(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Z

    move-result v3

    if-eq v2, v3, :cond_4

    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3, v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$202(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;Z)Z

    if-eqz v2, :cond_3

    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$600(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v4}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$400(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Runnable;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v5}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v6}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$300(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I

    move-result v6

    aget v5, v5, v6

    mul-int/lit16 v5, v5, 0x3e8

    int-to-long v5, v5

    invoke-virtual {v3, v4, v5, v6}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_3
    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$600(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v4}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$400(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    :cond_4
    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
