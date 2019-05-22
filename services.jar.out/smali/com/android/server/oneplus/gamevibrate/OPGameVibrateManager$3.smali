.class Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;
.super Ljava/lang/Object;
.source "OPGameVibrateManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;
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

    iput-object p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$100(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$700(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$300(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v2

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$308(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$300(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v2

    array-length v2, v2

    if-ge v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$600(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$400(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Runnable;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v4}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$300(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I

    move-result v4

    aget v3, v3, v4

    mul-int/lit16 v3, v3, 0x3e8

    int-to-long v3, v3

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$600(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-static {v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I

    move-result-object v3

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    aget v2, v2, v3

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v2, v2

    invoke-virtual {v1, p0, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

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
