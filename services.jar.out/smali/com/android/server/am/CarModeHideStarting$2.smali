.class Lcom/android/server/am/CarModeHideStarting$2;
.super Landroid/content/BroadcastReceiver;
.source "CarModeHideStarting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/CarModeHideStarting;->registerReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/CarModeHideStarting;


# direct methods
.method constructor <init>(Lcom/android/server/am/CarModeHideStarting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "wechat_visibility"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    invoke-static {}, Lcom/android/server/am/CarModeHideStarting;->access$100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "CarModeHideStarting"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "receive broadcast of oneplus.intent.action.MANAGE_WECHAT_VISIBILITY, intextra = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$200(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/CarModeHideStarting$2$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/CarModeHideStarting$2$1;-><init>(Lcom/android/server/am/CarModeHideStarting$2;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$2;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-static {v1}, Lcom/android/server/am/CarModeHideStarting;->access$200(Lcom/android/server/am/CarModeHideStarting;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v2, Lcom/android/server/am/CarModeHideStarting$2$2;

    invoke-direct {v2, p0}, Lcom/android/server/am/CarModeHideStarting$2$2;-><init>(Lcom/android/server/am/CarModeHideStarting$2;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    :goto_0
    return-void
.end method
