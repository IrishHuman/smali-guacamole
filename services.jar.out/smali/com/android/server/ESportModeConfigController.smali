.class public Lcom/android/server/ESportModeConfigController;
.super Ljava/lang/Object;
.source "ESportModeConfigController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;,
        Lcom/android/server/ESportModeConfigController$EsportModeConfigUpdater;
    }
.end annotation


# static fields
.field private static CONFIG_NAME:Ljava/lang/String; = null

.field private static final DBG:Z

.field private static final MSG_GET_CONFIG:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ESportModeConfigController"

.field private static final URI_ESPORT_STATUS:Landroid/net/Uri;

.field private static sESportModeConfigController:Lcom/android/server/ESportModeConfigController;


# instance fields
.field private mBgHandler:Landroid/os/Handler;

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mEsportModeOn:Z

.field private mEsportStatusContentObserver:Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;

.field private mResolver:Landroid/content/ContentResolver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "EsportMode"

    sput-object v0, Lcom/android/server/ESportModeConfigController;->CONFIG_NAME:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ESportModeConfigController;->DBG:Z

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/ESportModeConfigController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportModeConfigController;->mEsportModeOn:Z

    iput-object p1, p0, Lcom/android/server/ESportModeConfigController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/server/ESportModeConfigController;->init()V

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/ESportModeConfigController;->mResolver:Landroid/content/ContentResolver;

    new-instance v1, Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;

    iget-object v2, p0, Lcom/android/server/ESportModeConfigController;->mBgHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;-><init>(Lcom/android/server/ESportModeConfigController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/ESportModeConfigController;->mEsportStatusContentObserver:Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;

    iget-object v1, p0, Lcom/android/server/ESportModeConfigController;->mResolver:Landroid/content/ContentResolver;

    sget-object v2, Lcom/android/server/ESportModeConfigController;->URI_ESPORT_STATUS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/ESportModeConfigController;->mEsportStatusContentObserver:Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-direct {p0}, Lcom/android/server/ESportModeConfigController;->getESportModeStatus()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/ESportModeConfigController;->mEsportModeOn:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ESportModeConfigController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportModeConfigController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/ESportModeConfigController;->CONFIG_NAME:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/ESportModeConfigController;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/ESportModeConfigController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/server/ESportModeConfigController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/ESportModeConfigController;->mEsportModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/ESportModeConfigController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/android/server/ESportModeConfigController;->getESportModeStatus()Z

    move-result v0

    return v0
.end method

.method private getESportModeStatus()Z
    .locals 4

    iget-object v0, p0, Lcom/android/server/ESportModeConfigController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enabled"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ESportModeConfigController;
    .locals 1

    sget-object v0, Lcom/android/server/ESportModeConfigController;->sESportModeConfigController:Lcom/android/server/ESportModeConfigController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ESportModeConfigController;

    invoke-direct {v0, p0}, Lcom/android/server/ESportModeConfigController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ESportModeConfigController;->sESportModeConfigController:Lcom/android/server/ESportModeConfigController;

    :cond_0
    sget-object v0, Lcom/android/server/ESportModeConfigController;->sESportModeConfigController:Lcom/android/server/ESportModeConfigController;

    return-object v0
.end method

.method private init()V
    .locals 2

    const-string v0, "ESportModeConfigController"

    const-string v1, "ESportModeConfigController init"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/ESportModeConfigController;->initHandler()V

    return-void
.end method

.method private initHandler()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "EsportModeConfig"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/ESportModeConfigController$1;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/ESportModeConfigController$1;-><init>(Lcom/android/server/ESportModeConfigController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/ESportModeConfigController;->mBgHandler:Landroid/os/Handler;

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "ESportModeConfigController"

    const-string/jumbo v1, "jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ge v0, v1, :cond_1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ESportModeConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method


# virtual methods
.method public isToastNeedBlockInEsportMode(Ljava/lang/String;Landroid/content/pm/IPackageManager;Landroid/app/IActivityManager;)Z
    .locals 7

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string v1, "ESportModeConfigController"

    const-string/jumbo v2, "packagename is null"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/ESportModeConfigController;->mEsportModeOn:Z

    if-nez v1, :cond_1

    const-string v1, "ESportModeConfigController"

    const-string/jumbo v2, "mEsportModeOn is false"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v1

    invoke-interface {p2, p1, v0, v1}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    if-eqz v1, :cond_2

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v2, v2, 0x81

    if-eqz v2, :cond_2

    const-string v2, "ESportModeConfigController"

    const-string v3, "This is a system app"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    invoke-interface {p3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/ActivityManager$RunningAppProcessInfo;

    if-eqz v4, :cond_3

    iget v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x64

    if-ne v5, v6, :cond_3

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-eqz v5, :cond_3

    iget-object v5, v4, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    const-string v3, "ESportModeConfigController"

    const-string v5, "This is foreground app."

    invoke-static {v3, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :cond_3
    goto :goto_0

    :cond_4
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ESportModeConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception while checking system app: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v0, 0x1

    return v0
.end method
