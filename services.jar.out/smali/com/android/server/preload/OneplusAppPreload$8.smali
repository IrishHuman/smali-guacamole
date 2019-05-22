.class Lcom/android/server/preload/OneplusAppPreload$8;
.super Landroid/content/BroadcastReceiver;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ScreenStateReceiver : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2202(Lcom/android/server/preload/OneplusAppPreload;Z)Z

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2300()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)J

    move-result-wide v3

    sub-long v3, v1, v3

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2500()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/android/server/preload/OneplusAppPreload;->access$2402(Lcom/android/server/preload/OneplusAppPreload;J)J

    new-instance v3, Lcom/android/server/preload/OneplusAppPreload$8$1;

    const-string v4, "AppPreload_MDM"

    invoke-direct {v3, p0, v4}, Lcom/android/server/preload/OneplusAppPreload$8$1;-><init>(Lcom/android/server/preload/OneplusAppPreload$8;Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$8$1;->start()V

    :cond_0
    goto :goto_0

    :cond_1
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2202(Lcom/android/server/preload/OneplusAppPreload;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
