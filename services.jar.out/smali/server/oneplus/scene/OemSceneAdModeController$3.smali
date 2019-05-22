.class Lserver/oneplus/scene/OemSceneAdModeController$3;
.super Landroid/content/BroadcastReceiver;
.source "OemSceneAdModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneAdModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneAdModeController;


# direct methods
.method constructor <init>(Lserver/oneplus/scene/OemSceneAdModeController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget-boolean v0, v0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAdModeController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mAppReceiver recevie: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v0, "com.admode.action.test"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "code"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput-boolean v2, v1, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    goto/16 :goto_0

    :cond_1
    const-string/jumbo v1, "off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput-boolean v3, v1, Lserver/oneplus/scene/OemSceneAdModeController;->ENABLE:Z

    goto/16 :goto_0

    :cond_2
    const-string v1, "debug_on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput-boolean v2, v1, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    goto/16 :goto_0

    :cond_3
    const-string v1, "debug_off"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput-boolean v3, v1, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    goto/16 :goto_0

    :cond_4
    const-string v1, "@ad4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    const-string v1, "@ad4@manual@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "@ad4@manual@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    const/16 v3, 0xd

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lserver/oneplus/scene/OemSceneAdModeController;->access$800(Lserver/oneplus/scene/OemSceneAdModeController;II)V

    goto/16 :goto_0

    :cond_5
    const-string v1, "@ad4@strength@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "@ad4@strength@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    const/16 v3, 0xe

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v2, v3, v4}, Lserver/oneplus/scene/OemSceneAdModeController;->access$800(Lserver/oneplus/scene/OemSceneAdModeController;II)V

    goto/16 :goto_0

    :cond_6
    const-string v1, "@ad4@default@"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "@ad4@default@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    iput v3, v2, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    goto :goto_0

    :cond_7
    const-string v1, "@interval"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "@interval@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lserver/oneplus/scene/OemSceneAdModeController;->access$902(Lserver/oneplus/scene/OemSceneAdModeController;I)I

    goto :goto_0

    :cond_8
    const-string v1, "@times"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const-string v1, "@times@"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v2, v3}, Lserver/oneplus/scene/OemSceneAdModeController;->access$102(Lserver/oneplus/scene/OemSceneAdModeController;I)I

    goto :goto_0

    :cond_9
    const-string v1, "dump"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    const-string v1, "OemSceneAdModeController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " INTERVAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v3}, Lserver/oneplus/scene/OemSceneAdModeController;->access$900(Lserver/oneplus/scene/OemSceneAdModeController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "ms, TIMES = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lserver/oneplus/scene/OemSceneAdModeController$3;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v3}, Lserver/oneplus/scene/OemSceneAdModeController;->access$100(Lserver/oneplus/scene/OemSceneAdModeController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_0
    return-void
.end method
