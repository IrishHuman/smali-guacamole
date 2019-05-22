.class Lcom/android/server/OnePlusDexOptManager$1;
.super Ljava/lang/Thread;
.source "OnePlusDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusDexOptManager;->performDexOpt(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusDexOptManager;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusDexOptManager;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    iput-object p3, p0, Lcom/android/server/OnePlusDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    invoke-static {}, Lcom/android/server/OnePlusDexOptManager;->access$000()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    invoke-static {v0}, Lcom/android/server/OnePlusDexOptManager;->access$100(Lcom/android/server/OnePlusDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    invoke-static {v0}, Lcom/android/server/OnePlusDexOptManager;->access$200(Lcom/android/server/OnePlusDexOptManager;)Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/OnePlusDexOptManager;->access$300()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDexOpt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    invoke-static {v0}, Lcom/android/server/OnePlusDexOptManager;->access$100(Lcom/android/server/OnePlusDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OnePlusDexOptManager$1;->val$packageName:Ljava/lang/String;

    const/4 v3, 0x1

    const-string/jumbo v4, "speed-profile"

    const/4 v5, 0x1

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/pm/PackageManagerService;->performDexOptMode(Ljava/lang/String;ZLjava/lang/String;ZZLjava/lang/String;)Z

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_3

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "performDexOpt bg"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    invoke-static {v0}, Lcom/android/server/OnePlusDexOptManager;->access$100(Lcom/android/server/OnePlusDexOptManager;)Lcom/android/server/pm/PackageManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OnePlusDexOptManager$1;->this$0:Lcom/android/server/OnePlusDexOptManager;

    invoke-static {v1}, Lcom/android/server/OnePlusDexOptManager;->access$200(Lcom/android/server/OnePlusDexOptManager;)Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lcom/android/server/OnePlusDexOptManager$1$1;

    invoke-direct {v2, p0}, Lcom/android/server/OnePlusDexOptManager$1$1;-><init>(Lcom/android/server/OnePlusDexOptManager$1;)V

    invoke-static {v0, v1, v2}, Lcom/android/server/pm/BackgroundDexOptService;->runOpdomOptimizationNow(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;Ljava/util/List;)Z

    :goto_0
    return-void

    :cond_4
    :goto_1
    return-void
.end method
