.class Lcom/android/server/ESportMode$3;
.super Landroid/content/BroadcastReceiver;
.source "ESportMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ESportMode;->listenForConfigChanged()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportMode;


# direct methods
.method constructor <init>(Lcom/android/server/ESportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportMode$3;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportMode$3;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0}, Lcom/android/server/ESportMode;->access$900(Lcom/android/server/ESportMode;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ESportMode$3;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0}, Lcom/android/server/ESportMode;->access$1000(Lcom/android/server/ESportMode;)Lcom/android/server/ESportGuider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->isAcquired()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ESportMode$3;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0}, Lcom/android/server/ESportMode;->access$1000(Lcom/android/server/ESportMode;)Lcom/android/server/ESportGuider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->hide()V

    iget-object v0, p0, Lcom/android/server/ESportMode$3;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0}, Lcom/android/server/ESportMode;->access$1000(Lcom/android/server/ESportMode;)Lcom/android/server/ESportGuider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/ESportGuider;->show()V

    :cond_0
    return-void
.end method
