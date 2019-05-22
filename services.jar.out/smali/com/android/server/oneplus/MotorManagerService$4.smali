.class Lcom/android/server/oneplus/MotorManagerService$4;
.super Landroid/content/BroadcastReceiver;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "oneplus.intent.action.INCALLUI_ANSWER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "isVideo"

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getExtra(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "MotorManagerService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mOneplusTelReceiver isVideoTelConnect: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$900()Z

    move-result v3

    const/4 v4, 0x1

    if-nez v3, :cond_1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1000()Z

    move-result v3

    if-eqz v3, :cond_2

    :cond_1
    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3}, Lcom/android/server/oneplus/MotorManagerService;->access$1100(Lcom/android/server/oneplus/MotorManagerService;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1102(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v3, v4}, Lcom/android/server/oneplus/MotorManagerService;->access$602(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    :cond_2
    const/4 v3, 0x0

    iget-object v5, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v5}, Lcom/android/server/oneplus/MotorManagerService;->access$1200(Lcom/android/server/oneplus/MotorManagerService;)Lcom/oneplus/scene/OimcGameModeObserver;

    move-result-object v5

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v5}, Lcom/android/server/oneplus/MotorManagerService;->access$1200(Lcom/android/server/oneplus/MotorManagerService;)Lcom/oneplus/scene/OimcGameModeObserver;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oneplus/scene/OimcGameModeObserver;->isOn()Z

    move-result v5

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v5}, Lcom/android/server/oneplus/MotorManagerService;->access$1200(Lcom/android/server/oneplus/MotorManagerService;)Lcom/oneplus/scene/OimcGameModeObserver;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/oneplus/scene/OimcGameModeObserver;->isAnswerCallBySpeaker(Landroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_3

    move v2, v4

    nop

    :cond_3
    move v3, v2

    :cond_4
    if-nez v3, :cond_5

    if-nez v1, :cond_5

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$1300()Z

    move-result v2

    if-eqz v2, :cond_5

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2, v4}, Lcom/android/server/oneplus/MotorManagerService;->access$1402(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2, v4}, Lcom/android/server/oneplus/MotorManagerService;->access$602(Lcom/android/server/oneplus/MotorManagerService;Z)Z

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1500(Lcom/android/server/oneplus/MotorManagerService;)V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$4;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1600(Lcom/android/server/oneplus/MotorManagerService;)I

    :cond_5
    return-void
.end method
