.class Lcom/oneplus/aod/OPDozeScrimController$3;
.super Ljava/lang/Object;
.source "OPDozeScrimController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OPDozeScrimController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OPDozeScrimController;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPDozeScrimController"

    const-string v1, "release pulse wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$702(Lcom/oneplus/aod/OPDozeScrimController;Z)Z

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v1}, Lcom/oneplus/aod/OPDozeScrimController;->access$900(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse out, mDozing="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v2}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController$3;->this$0:Lcom/oneplus/aod/OPDozeScrimController;

    invoke-static {v0}, Lcom/oneplus/aod/OPDozeScrimController;->access$800(Lcom/oneplus/aod/OPDozeScrimController;)V

    return-void
.end method
