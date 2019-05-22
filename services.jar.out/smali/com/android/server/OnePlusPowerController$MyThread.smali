.class public Lcom/android/server/OnePlusPowerController$MyThread;
.super Ljava/lang/Thread;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    const-string v0, "MyThread"

    invoke-direct {p0, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/OnePlusPowerController;->access$1400()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OnePlusPowerController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Starting MyThread: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v0}, Lcom/android/server/OnePlusPowerController;->access$5300(Lcom/android/server/OnePlusPowerController;)Z

    move-result v0

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2600(Lcom/android/server/OnePlusPowerController;)Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_1

    const-string v1, "OnePlusPowerController"

    const-string v2, "Probe OK, disable restriction"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oops, should skip this change to disable restriction, mIsUnderRestriction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    sget-object v2, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->DISABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    invoke-static {v1, v2}, Lcom/android/server/OnePlusPowerController;->access$2800(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;)V

    goto :goto_0

    :cond_1
    const-string v1, "OnePlusPowerController"

    const-string v2, "Probe Failed, enable restriction"

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$2700(Lcom/android/server/OnePlusPowerController;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "OnePlusPowerController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "oops, should skip this change to enable restriction, mIsUnderRestriction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v3}, Lcom/android/server/OnePlusPowerController;->access$2100(Lcom/android/server/OnePlusPowerController;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$MyThread;->this$0:Lcom/android/server/OnePlusPowerController;

    sget-object v2, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    invoke-static {v1, v2}, Lcom/android/server/OnePlusPowerController;->access$2800(Lcom/android/server/OnePlusPowerController;Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;)V

    :cond_3
    :goto_0
    return-void
.end method
