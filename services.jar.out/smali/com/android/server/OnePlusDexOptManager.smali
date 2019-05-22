.class public Lcom/android/server/OnePlusDexOptManager;
.super Ljava/lang/Object;
.source "OnePlusDexOptManager.java"

# interfaces
.implements Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;


# static fields
.field private static CMD:Z = false

.field public static final DEBUG:Z

.field private static IN_USING:Z = false

.field private static final PROP_CMD:Ljava/lang/String; = "persist.sys.opdom.cmd"

.field private static final PROP_ENABLE:Ljava/lang/String; = "persist.sys.opdom.enable"

.field public static final TAG:Ljava/lang/String; = "OPDOM"

.field private static mInstance:Lcom/android/server/OnePlusDexOptManager;


# instance fields
.field private firstLaunchedList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    sput-boolean v0, Lcom/android/server/OnePlusDexOptManager;->CMD:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OnePlusDexOptManager;->mInstance:Lcom/android/server/OnePlusDexOptManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    const-string/jumbo v0, "persist.sys.opdom.enable"

    sget-boolean v1, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V

    :cond_0
    const-string/jumbo v0, "persist.sys.opdom.cmd"

    sget-boolean v1, Lcom/android/server/OnePlusDexOptManager;->CMD:Z

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusDexOptManager;->CMD:Z

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OnePlusDexOptManager;)Lcom/android/server/pm/PackageManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OnePlusDexOptManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->CMD:Z

    return v0
.end method

.method public static getInstance()Lcom/android/server/OnePlusDexOptManager;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusDexOptManager;->mInstance:Lcom/android/server/OnePlusDexOptManager;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OnePlusDexOptManager;

    invoke-direct {v0}, Lcom/android/server/OnePlusDexOptManager;-><init>()V

    sput-object v0, Lcom/android/server/OnePlusDexOptManager;->mInstance:Lcom/android/server/OnePlusDexOptManager;

    :cond_0
    sget-object v0, Lcom/android/server/OnePlusDexOptManager;->mInstance:Lcom/android/server/OnePlusDexOptManager;

    return-object v0
.end method

.method private performDexOpt(Ljava/lang/String;)V
    .locals 2

    new-instance v0, Lcom/android/server/OnePlusDexOptManager$1;

    const-string v1, "DexOpt_ThirdOptimization"

    invoke-direct {v0, p0, v1, p1}, Lcom/android/server/OnePlusDexOptManager$1;-><init>(Lcom/android/server/OnePlusDexOptManager;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/server/OnePlusDexOptManager$1;->start()V

    return-void
.end method

.method private setPropValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPDOM"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setprop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OPDOM"

    const-string v3, "failed to set system property"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private triggerDexOpt(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "triggerDexOpt "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " ## firstLaunchedList="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    monitor-exit v0

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusDexOptManager;->performDexOpt(Ljava/lang/String;)V

    return-void

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method


# virtual methods
.method public addFirstLaunchedPackage(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addFirstLaunchedPackage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-nez p1, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 1

    const-string v0, "com.android.packageinstaller"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, p4}, Lcom/android/server/OnePlusDexOptManager;->triggerDexOpt(Ljava/lang/String;)V

    return-void
.end method

.method public initEnv(Lcom/android/server/pm/PackageManagerService;Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusDexOptManager;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/OnePlusDexOptManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setEnable(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OPDOM"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setEnable cur="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", next="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    if-ne v0, p1, :cond_1

    return-void

    :cond_1
    sput-boolean p1, Lcom/android/server/OnePlusDexOptManager;->IN_USING:Z

    if-eqz p1, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->unregisterFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager;->firstLaunchedList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :goto_0
    const-string/jumbo v0, "persist.sys.opdom.enable"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OnePlusDexOptManager;->setPropValue(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
