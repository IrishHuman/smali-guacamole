.class Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;
.super Landroid/companion/ICompanionDeviceManager$Stub;
.source "CompanionDeviceManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/companion/CompanionDeviceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CompanionDeviceManagerImpl"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/companion/CompanionDeviceManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/companion/CompanionDeviceManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-direct {p0}, Landroid/companion/ICompanionDeviceManager$Stub;-><init>()V

    return-void
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    return-void
.end method

.method private checkCallerIsSystemOr(Ljava/lang/String;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    if-ne v0, p2, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const-string v1, "Must be called by either same user or system"

    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1100(Lcom/android/server/companion/CompanionDeviceManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/app/IAppOpsService;->checkPackage(ILjava/lang/String;)I

    return-void
.end method

.method private checkCanCallNotificationApi(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, v0, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/util/ArrayUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "App must have an association before calling this API"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    return-void
.end method

.method private checkUsesFeature(Ljava/lang/String;I)V
    .locals 6

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1000()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->reqFeatures:[Landroid/content/pm/FeatureInfo;

    const-string v1, "android.software.companion_device_setup"

    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->size([Ljava/lang/Object;)I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, v0, v3

    iget-object v4, v4, Landroid/content/pm/FeatureInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    return-void

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Must declare uses-feature "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " in manifest to use this API"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method static synthetic lambda$getAssociations$0(Lcom/android/server/companion/CompanionDeviceManagerService$Association;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$Association;->deviceAddress:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public associate(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "Request cannot be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "Callback cannot be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p3}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p3, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    :try_start_0
    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v3}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$400()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v5, p1, p2, p3}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$500(Lcom/android/server/companion/CompanionDeviceManagerService;Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)Landroid/content/ServiceConnection;

    move-result-object v5

    const/4 v6, 0x1

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v7

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    return-void

    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
.end method

.method public disassociate(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    invoke-virtual {v0, v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->removeAssociation(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public getAssociations(Ljava/lang/String;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCallerIsSystemOr(Ljava/lang/String;I)V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkUsesFeature(Ljava/lang/String;I)V

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v1, p2, p1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$100(Lcom/android/server/companion/CompanionDeviceManagerService;ILjava/lang/String;)Ljava/util/Set;

    move-result-object v1

    sget-object v2, Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;->INSTANCE:Lcom/android/server/companion/-$$Lambda$CompanionDeviceManagerService$CompanionDeviceManagerImpl$bdv3Vfadbb8b9nrSgkARO4oYOXU;

    invoke-static {v1, v2}, Lcom/android/internal/util/CollectionUtils;->map(Ljava/util/Set;Ljava/util/function/Function;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public hasNotificationAccess(Landroid/content/ComponentName;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enabled_notification_listeners"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/provider/SettingsStringUtil$ComponentNameSet;

    invoke-direct {v1, v0}, Landroid/provider/SettingsStringUtil$ComponentNameSet;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Landroid/provider/SettingsStringUtil$ComponentNameSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public onShellCommand(Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;

    iget-object v1, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;-><init>(Lcom/android/server/companion/CompanionDeviceManagerService;Lcom/android/server/companion/CompanionDeviceManagerService$1;)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/companion/CompanionDeviceManagerService$ShellCmd;->exec(Landroid/os/Binder;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;Ljava/io/FileDescriptor;[Ljava/lang/String;Landroid/os/ShellCallback;Landroid/os/ResultReceiver;)I

    return-void
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/companion/ICompanionDeviceManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const-string v1, "CompanionDeviceManagerService"

    const-string v2, "Error during IPC"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class v1, Landroid/os/RemoteException;

    invoke-static {v0, v1}, Landroid/util/ExceptionUtils;->propagate(Ljava/lang/Throwable;Ljava/lang/Class;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public requestNotificationAccess(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->checkCanCallNotificationApi(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$300()I

    move-result v1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v3, v0, v1}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$1200(Lcom/android/server/companion/CompanionDeviceManagerService;Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v4}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ApplicationInfo;->loadSafeLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    :try_start_0
    iget-object v5, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-virtual {v5}, Lcom/android/server/companion/CompanionDeviceManagerService;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    invoke-static {v1, p1, v2}, Lcom/android/internal/notification/NotificationAccessConfirmationActivityContract;->launcherIntent(ILandroid/content/ComponentName;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const/high16 v8, 0x54000000

    invoke-static {v5, v6, v7, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return-object v5

    :catchall_0
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5
.end method

.method public stopScan(Landroid/companion/AssociationRequest;Landroid/companion/IFindDeviceCallback;Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$600(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/AssociationRequest;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$700(Lcom/android/server/companion/CompanionDeviceManagerService;)Landroid/companion/IFindDeviceCallback;

    move-result-object v0

    invoke-static {p2, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$800(Lcom/android/server/companion/CompanionDeviceManagerService;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/companion/CompanionDeviceManagerService$CompanionDeviceManagerImpl;->this$0:Lcom/android/server/companion/CompanionDeviceManagerService;

    invoke-static {v0}, Lcom/android/server/companion/CompanionDeviceManagerService;->access$900(Lcom/android/server/companion/CompanionDeviceManagerService;)V

    :cond_0
    return-void
.end method
