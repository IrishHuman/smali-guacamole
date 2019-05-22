.class public Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ESportMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ESportModeBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportMode;


# direct methods
.method public constructor <init>(Lcom/android/server/ESportMode;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    if-eqz p2, :cond_2

    const-string v0, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0}, Lcom/android/server/ESportMode;->access$700(Lcom/android/server/ESportMode;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ESportMode"

    const-string v2, "Wifi connected, force to disable telephony esport mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$600(Lcom/android/server/ESportMode;Z)V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/server/ESportMode;->access$800()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "ESportMode"

    const-string v1, "Wifi disconnected, need to re-enable telephony esport mode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$600(Lcom/android/server/ESportMode;Z)V

    goto :goto_0

    :cond_1
    const-string v0, "android.intent.action.SCREEN_OFF"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$002(Lcom/android/server/ESportMode;Z)Z

    iget-object v0, p0, Lcom/android/server/ESportMode$ESportModeBroadcastReceiver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v0, v1}, Lcom/android/server/ESportMode;->access$100(Lcom/android/server/ESportMode;Z)V

    :cond_2
    :goto_0
    return-void
.end method
