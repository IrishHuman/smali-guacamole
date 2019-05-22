.class Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;
.super Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;
.source "TetherInterfaceStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-direct {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;-><init>(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)V

    return-void
.end method

.method private cleanupUpstream()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    iget-object v0, v0, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1902(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    return-void
.end method

.method private cleanupUpstreamInterface(Ljava/lang/String;)V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/INetworkStatsService;

    move-result-object v0

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->forceUpdate()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in forceUpdate: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    :try_start_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "v4-"

    const-string/jumbo v1, "v4-"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "TetherInterfaceSM"

    const-string v2, "Remove clat interface to upstream"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "v4-"

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/os/INetworkManagementService;->stopInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    goto :goto_1

    :catch_1
    move-exception v0

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in removeInterfaceForward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    :try_start_2
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Landroid/os/INetworkManagementService;->disableNat(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_2

    :catch_2
    move-exception v0

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2100()Z

    move-result v1

    if-eqz v1, :cond_3

    const-string v1, "TetherInterfaceSM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception in disableNat: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_2
    return-void
.end method

.method private noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    if-nez p1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/net/util/InterfaceSet;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    :cond_0
    return-object v0
.end method

.method private upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/util/InterfaceSet;",
            ")",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/HashSet;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v1

    iget-object v1, v1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    iget-object v1, p1, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->removeAll(Ljava/util/Collection;)Z

    return-object v0
.end method


# virtual methods
.method public enter()V
    .locals 3

    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->enter()V

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v1, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    :cond_0
    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1700()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "TetherInterfaceSM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tethered "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)V

    return-void
.end method

.method public exit()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    invoke-super {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->exit()V

    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 12

    invoke-super {p0, p1}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$BaseServingState;->processMessage(Landroid/os/Message;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-static {v0, p0, v2}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Lcom/android/internal/util/State;I)V

    iget v0, p1, Landroid/os/Message;->what:I

    const v2, 0x50066

    if-eq v0, v2, :cond_8

    const v2, 0x50070

    const/4 v3, 0x0

    if-eq v0, v2, :cond_1

    return v3

    :cond_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/util/InterfaceSet;

    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->noChangeInUpstreamIfaceSet(Landroid/net/util/InterfaceSet;)Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-static {}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2100()Z

    move-result v2

    if-eqz v2, :cond_9

    const-string v2, "TetherInterfaceSM"

    const-string v3, "Connection changed noop - dropping"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    :cond_2
    if-nez v0, :cond_3

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    goto/16 :goto_3

    :cond_3
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->upstreamInterfacesRemoved(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {p0, v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstreamInterface(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    invoke-direct {p0, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->upstreamInterfacesAdd(Landroid/net/util/InterfaceSet;)Ljava/util/Set;

    move-result-object v2

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v4, v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1902(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;Landroid/net/util/InterfaceSet;)Landroid/net/util/InterfaceSet;

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    :try_start_0
    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/os/INetworkManagementService;->enableNat(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v7}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7, v5}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$2200(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Z

    move-result v6

    if-eqz v6, :cond_6

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1900(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/InterfaceSet;

    move-result-object v6

    iget-object v6, v6, Landroid/net/util/InterfaceSet;->ifnames:Ljava/util/Set;

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    const-string/jumbo v8, "v4-"

    const-string/jumbo v9, "v4-"

    invoke-virtual {v7, v9, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v9

    if-eqz v9, :cond_5

    const-string v9, "TetherInterfaceSM"

    const-string v10, "Add clat interface to upstream"

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v9, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v9}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1100(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/os/INetworkManagementService;

    move-result-object v9

    iget-object v10, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v10}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1000(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "v4-"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    invoke-virtual {v7, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Landroid/os/INetworkManagementService;->startInterfaceForwarding(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_2

    :cond_6
    nop

    goto :goto_1

    :catch_0
    move-exception v3

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v4}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Exception enabling NAT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->cleanupUpstream()V

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    const/16 v6, 0x8

    invoke-static {v4, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$202(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;I)I

    iget-object v4, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    iget-object v6, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$1600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Lcom/android/internal/util/State;

    move-result-object v6

    invoke-virtual {v4, v6}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V

    return v1

    :cond_7
    goto :goto_3

    :cond_8
    iget-object v0, p0, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine$TetheredState;->this$0:Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;

    invoke-static {v0}, Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;->access$600(Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;)Landroid/net/util/SharedLog;

    move-result-object v0

    const-string v2, "CMD_TETHER_REQUESTED while already tethering."

    invoke-virtual {v0, v2}, Landroid/net/util/SharedLog;->e(Ljava/lang/String;)V

    nop

    :cond_9
    :goto_3
    return v1
.end method
