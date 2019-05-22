.class final Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;
.super Lcom/oneplus/os/IOnePlusService$Stub;
.source "OnePlusService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OnePlusService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "OnePlusServiceStub"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/server/OnePlusService;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OnePlusService;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-direct {p0}, Lcom/oneplus/os/IOnePlusService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getAllAppControlModes(I)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/oneplus/appboot/AppControlMode;",
            ">;"
        }
    .end annotation

    invoke-static {p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAllAppControlModes(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getAppControlMode(Ljava/lang/String;I)I
    .locals 1

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlMode(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public getAppControlState(I)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusAppControlModeService;->getAppControlState(Landroid/content/Context;I)I

    move-result v0

    return v0
.end method

.method public getBgPowerHungryList()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/oneplus/highpower/HighPowerApp;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusHighPowerDetector;->getBgPowerHungryList()Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public getPermissionService(I)Landroid/os/IBinder;
    .locals 1

    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->getPermissionServiceBinderProxy(I)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isRequestPermission(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/OnePlusCTAPermissionService;->isRequestPermission(Z)V

    return-void
.end method

.method public notifySurfaceFlingerUpdate()V
    .locals 5

    const-string v0, "SurfaceFlinger"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    const-string v2, "android.ui.ISurfaceComposer"

    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    const/16 v2, 0x4e21

    const/4 v3, 0x0

    const/4 v4, 0x0

    :try_start_0
    invoke-interface {v0, v2, v1, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    goto :goto_2

    :catchall_0
    move-exception v2

    goto :goto_1

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "OnePlusService"

    const-string v4, "Security Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    move-exception v2

    const-string v3, "OnePlusService"

    const-string v4, "Remote Exception"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    throw v2

    :cond_0
    :goto_2
    return-void
.end method

.method public reportJank(Ljava/lang/String;Ljava/lang/String;II)V
    .locals 1

    invoke-static {}, Lcom/android/server/am/OnePlusJankManager;->getInstance()Lcom/android/server/am/OnePlusJankManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/OnePlusJankManager;->reportJank(Ljava/lang/String;Ljava/lang/String;II)V

    return-void
.end method

.method public setAppControlMode(Ljava/lang/String;II)I
    .locals 1

    invoke-static {p1, p2, p3}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlMode(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public setAppControlState(II)I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/server/OnePlusService$OnePlusServiceStub;->this$0:Lcom/oneplus/server/OnePlusService;

    invoke-static {v0}, Lcom/oneplus/server/OnePlusService;->access$000(Lcom/oneplus/server/OnePlusService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lcom/android/server/am/OnePlusAppControlModeService;->setAppControlState(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method public setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V
    .locals 0

    invoke-static {p1, p2}, Lcom/android/server/am/OnePlusCTAPermissionService;->setPermissionServiceBinderProxy(Landroid/os/IBinder;I)V

    return-void
.end method

.method public stopBgPowerHungryApp(Ljava/lang/String;I)V
    .locals 3

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x5e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/am/OnePlusHighPowerDetector;->getInstance()Lcom/android/server/am/OnePlusHighPowerDetector;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/OnePlusHighPowerDetector;->stopBgPowerHungryApp(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method
