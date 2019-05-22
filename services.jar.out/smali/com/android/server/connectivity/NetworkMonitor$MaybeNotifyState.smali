.class Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;
.super Lcom/android/internal/util/State;
.source "NetworkMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/NetworkMonitor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MaybeNotifyState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/NetworkMonitor;


# direct methods
.method private constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/connectivity/NetworkMonitor;Lcom/android/server/connectivity/NetworkMonitor$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;-><init>(Lcom/android/server/connectivity/NetworkMonitor;)V

    return-void
.end method


# virtual methods
.method public exit()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2700(Lcom/android/server/connectivity/NetworkMonitor;)I

    move-result v1

    const v2, 0x8200a

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Lcom/android/server/connectivity/NetworkMonitor;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$2800(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 4

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$700()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " * "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2, p1}, Lcom/android/server/connectivity/NetworkMonitor;->access$800(Lcom/android/server/connectivity/NetworkMonitor;Landroid/os/Message;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x8200b

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.conn.CAPTIVE_PORTAL"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.net.extra.NETWORK"

    new-instance v2, Landroid/net/Network;

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3300(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/Network;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/net/Network;-><init>(Landroid/net/Network;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "android.net.extra.CAPTIVE_PORTAL"

    new-instance v2, Landroid/net/CaptivePortal;

    new-instance v3, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;

    invoke-direct {v3, p0}, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState$1;-><init>(Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;)V

    invoke-direct {v2, v3}, Landroid/net/CaptivePortal;-><init>(Landroid/os/IBinder;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v1}, Lcom/android/server/connectivity/NetworkMonitor;->access$1500(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/net/captiveportal/CaptivePortalProbeResult;

    move-result-object v1

    const-string v2, "android.net.extra.CAPTIVE_PORTAL_URL"

    iget-object v3, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->detectUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    if-eqz v2, :cond_1

    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "android.net.extra.CAPTIVE_PORTAL_REDIRECT_URL"

    iget-object v3, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->redirectUrl:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    const-string v2, "android.net.extra.CAPTIVE_PORTAL_BACKUP_URL_1"

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3400()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.net.extra.CAPTIVE_PORTAL_BACKUP_URL_2"

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3500()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.net.extra.CAPTIVE_PORTAL_BACKUP_URL_3"

    invoke-static {}, Lcom/android/server/connectivity/NetworkMonitor;->access$3600()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    if-eqz v2, :cond_2

    iget-object v2, v1, Landroid/net/captiveportal/CaptivePortalProbeResult;->probeSpec:Landroid/net/captiveportal/CaptivePortalProbeSpec;

    invoke-virtual {v2}, Landroid/net/captiveportal/CaptivePortalProbeSpec;->getEncodedSpec()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.net.extra.CAPTIVE_PORTAL_PROBE_SPEC"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2
    const-string v2, "android.net.extra.CAPTIVE_PORTAL_USER_AGENT"

    iget-object v3, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v3}, Lcom/android/server/connectivity/NetworkMonitor;->access$3700(Lcom/android/server/connectivity/NetworkMonitor;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v2, 0x10400000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/connectivity/NetworkMonitor$MaybeNotifyState;->this$0:Lcom/android/server/connectivity/NetworkMonitor;

    invoke-static {v2}, Lcom/android/server/connectivity/NetworkMonitor;->access$1200(Lcom/android/server/connectivity/NetworkMonitor;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const/4 v2, 0x1

    return v2
.end method
