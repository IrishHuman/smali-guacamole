.class public Lcom/android/server/connectivity/tethering/TetheringDependencies;
.super Ljava/lang/Object;
.source "TetheringDependencies.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDefaultNetworkRequest()Landroid/net/NetworkRequest;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getIPv6TetheringCoordinator(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/connectivity/tethering/TetherInterfaceStateMachine;",
            ">;",
            "Landroid/net/util/SharedLog;",
            ")",
            "Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;"
        }
    .end annotation

    new-instance v0, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/IPv6TetheringCoordinator;-><init>(Ljava/util/ArrayList;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getInterfaceParams(Ljava/lang/String;)Landroid/net/util/InterfaceParams;
    .locals 1

    invoke-static {p1}, Landroid/net/util/InterfaceParams;->getByName(Ljava/lang/String;)Landroid/net/util/InterfaceParams;

    move-result-object v0

    return-object v0
.end method

.method public getNetdService()Landroid/net/INetd;
    .locals 1

    invoke-static {}, Landroid/net/util/NetdService;->getInstance()Landroid/net/INetd;

    move-result-object v0

    return-object v0
.end method

.method public getOffloadHardwareInterface(Landroid/os/Handler;Landroid/net/util/SharedLog;)Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;

    invoke-direct {v0, p1, p2}, Lcom/android/server/connectivity/tethering/OffloadHardwareInterface;-><init>(Landroid/os/Handler;Landroid/net/util/SharedLog;)V

    return-object v0
.end method

.method public getRouterAdvertisementDaemon(Landroid/net/util/InterfaceParams;)Landroid/net/ip/RouterAdvertisementDaemon;
    .locals 1

    new-instance v0, Landroid/net/ip/RouterAdvertisementDaemon;

    invoke-direct {v0, p1}, Landroid/net/ip/RouterAdvertisementDaemon;-><init>(Landroid/net/util/InterfaceParams;)V

    return-object v0
.end method

.method public getUpstreamNetworkMonitor(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;
    .locals 1

    new-instance v0, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/connectivity/tethering/UpstreamNetworkMonitor;-><init>(Landroid/content/Context;Lcom/android/internal/util/StateMachine;Landroid/net/util/SharedLog;I)V

    return-object v0
.end method

.method public isTetheringSupported()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
