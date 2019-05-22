.class public Lcom/android/server/am/OemSceneStereoController;
.super Ljava/lang/Object;
.source "OemSceneStereoController.java"


# static fields
.field private static final ACTION_TEST:Ljava/lang/String; = "com.stereo.action.test"

.field private static final APP_CATEGORY_GAME:I = 0x7

.field private static final APP_CATEGORY_MUSIC1:I = 0x384

.field private static final APP_CATEGORY_MUSIC2:I = 0x388

.field public static final APP_CATEGORY_URI:Landroid/net/Uri;

.field private static final APP_CATEGORY_VIDEO1:I = 0x385

.field private static final APP_CATEGORY_VIDEO2:I = 0x389

.field public static final CATEGORY_AUTHORIY:Ljava/lang/String; = "net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider"

.field private static DEBUG:Z = false

.field private static IN_USING:Z = false

.field private static final MUSIC_APPS_SELECTION:Ljava/lang/String; = "sub_category_id = 900 OR sub_category_id = 904"

.field private static final OP_STEREO_MODE_STATUS:Ljava/lang/String; = "op_stereo_mode_status"

.field public static final STEREO_MODE_DEFAULT:I = 0x0

.field public static final STEREO_MODE_GAME:I = 0x1

.field public static final STEREO_MODE_MUSIC:I = 0x2

.field public static final STEREO_MODE_VIDEO:I = 0x3

.field private static final TAG:Ljava/lang/String; = "OemSceneStereoController"

.field private static final URI_STEREO_MODE_STATUS:Landroid/net/Uri;

.field private static final VIDEO_APPS_SELECTION:Ljava/lang/String; = "sub_category_id = 901 OR sub_category_id = 905"

.field private static instance:Lcom/android/server/am/OemSceneStereoController;

.field private static isQuerying:Z


# instance fields
.field private mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

.field private mAppInstallReceiver:Landroid/content/BroadcastReceiver;

.field private mContext:Landroid/content/Context;

.field private mCursorLock:Ljava/lang/Object;

.field private mLastStereoMode:I

.field private mLock:Ljava/lang/Object;

.field private mTestReceiver:Landroid/content/BroadcastReceiver;

.field private mThreadPool:Ljava/util/concurrent/ExecutorService;

.field private musicApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private videoApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OemSceneStereoController;->IN_USING:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OemSceneStereoController;->isQuerying:Z

    const-string v0, "content://net.oneplus.provider.appcategoryprovider.AppCategoryContentProvider/app_category"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneStereoController;->APP_CATEGORY_URI:Landroid/net/Uri;

    const-string/jumbo v0, "op_stereo_mode_status"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemSceneStereoController;->URI_STEREO_MODE_STATUS:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityStackSupervisor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->musicApps:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->videoApps:Ljava/util/ArrayList;

    invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OemSceneStereoController;->mLastStereoMode:I

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mLock:Ljava/lang/Object;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mCursorLock:Ljava/lang/Object;

    new-instance v0, Lcom/android/server/am/OemSceneStereoController$2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneStereoController$2;-><init>(Lcom/android/server/am/OemSceneStereoController;)V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/android/server/am/OemSceneStereoController$3;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneStereoController$3;-><init>(Lcom/android/server/am/OemSceneStereoController;)V

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, p1, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->setPriority(I)V

    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->mAppInstallReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/am/OemSceneStereoController;->mTestReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OemSceneStereoController;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->musicApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/am/OemSceneStereoController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController;->musicApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/am/OemSceneStereoController;Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneStereoController;->loadSpecificApps(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->videoApps:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/am/OemSceneStereoController;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemSceneStereoController;->videoApps:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$402(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OemSceneStereoController;->isQuerying:Z

    return p0
.end method

.method static synthetic access$500()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    return v0
.end method

.method static synthetic access$502(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    return p0
.end method

.method static synthetic access$600(Lcom/android/server/am/OemSceneStereoController;Ljava/lang/String;)I
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/server/am/OemSceneStereoController;->queryAppsMode(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/android/server/am/OemSceneStereoController;)Ljava/util/concurrent/ExecutorService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    return-object v0
.end method

.method static synthetic access$802(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/am/OemSceneStereoController;->IN_USING:Z

    return p0
.end method

.method public static getInstance(Lcom/android/server/am/ActivityStackSupervisor;)Lcom/android/server/am/OemSceneStereoController;
    .locals 1

    sget-object v0, Lcom/android/server/am/OemSceneStereoController;->instance:Lcom/android/server/am/OemSceneStereoController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OemSceneStereoController;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneStereoController;-><init>(Lcom/android/server/am/ActivityStackSupervisor;)V

    sput-object v0, Lcom/android/server/am/OemSceneStereoController;->instance:Lcom/android/server/am/OemSceneStereoController;

    :cond_0
    sget-object v0, Lcom/android/server/am/OemSceneStereoController;->instance:Lcom/android/server/am/OemSceneStereoController;

    return-object v0
.end method

.method private initData()V
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OemSceneStereoController;->isQuerying:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/android/server/am/OemSceneStereoController$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/OemSceneStereoController$1;-><init>(Lcom/android/server/am/OemSceneStereoController;)V

    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/server/am/OemSceneStereoController;->isQuerying:Z

    iget-object v1, p0, Lcom/android/server/am/OemSceneStereoController;->mThreadPool:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public static initEnv()V
    .locals 2

    sget-object v0, Lcom/android/server/am/OemSceneStereoController;->instance:Lcom/android/server/am/OemSceneStereoController;

    if-nez v0, :cond_0

    const-string v0, "OemSceneStereoController"

    const-string v1, "Fatal that OemSceneStereoController haven\'t been initialized yet."

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OemSceneStereoController;->instance:Lcom/android/server/am/OemSceneStereoController;

    invoke-direct {v0}, Lcom/android/server/am/OemSceneStereoController;->initData()V

    return-void
.end method

.method private loadSpecificApps(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    :try_start_0
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    sget-object v4, Lcom/android/server/am/OemSceneStereoController;->APP_CATEGORY_URI:Landroid/net/Uri;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v6, p1

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    move-object v0, v2

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const-string/jumbo v2, "package_name"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v2, :cond_0

    :cond_1
    if-eqz v0, :cond_2

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_0
    move-exception v2

    :try_start_1
    const-string v3, "OemSceneStereoController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ex "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    :goto_1
    return-object v1

    :goto_2
    if-eqz v0, :cond_3

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_3
    throw v2
.end method

.method private notifyStereoModes(I)V
    .locals 3

    iget v0, p0, Lcom/android/server/am/OemSceneStereoController;->mLastStereoMode:I

    if-ne v0, p1, :cond_1

    sget-boolean v0, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneStereoController"

    const-string/jumbo v1, "same mode, no need to change!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    sget-boolean v0, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneStereoController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateStereoModeStatus from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/am/OemSceneStereoController;->mLastStereoMode:I

    invoke-virtual {p0, v2}, Lcom/android/server/am/OemSceneStereoController;->translateMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lcom/android/server/am/OemSceneStereoController;->translateMode(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iput p1, p0, Lcom/android/server/am/OemSceneStereoController;->mLastStereoMode:I

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_stereo_mode_status"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private queryAppsMode(Ljava/lang/String;)I
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mCursorLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "category_id"

    const-string/jumbo v3, "package_name"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "package_name=?"

    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/server/am/OemSceneStereoController;->APP_CATEGORY_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    new-array v8, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p1, v8, v3

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v4

    move-object v1, v4

    if-eqz v1, :cond_5

    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v4

    if-lez v4, :cond_5

    const-string v4, "category_id"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    sget-boolean v8, Lcom/android/server/am/OemSceneStereoController;->DEBUG:Z

    if-eqz v8, :cond_0

    const-string v8, "OemSceneStereoController"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "packageName["

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "]: cateId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v8, 0x7

    if-ne v5, v8, :cond_1

    nop

    :try_start_1
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    return v2

    :cond_1
    const/16 v2, 0x384

    const/4 v8, 0x2

    if-eq v5, v2, :cond_4

    const/16 v2, 0x388

    if-ne v5, v2, :cond_2

    goto :goto_0

    :cond_2
    const/16 v2, 0x385

    if-eq v5, v2, :cond_3

    const/16 v2, 0x389

    if-ne v5, v2, :cond_5

    :cond_3
    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    return v8

    :cond_4
    :goto_0
    nop

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    monitor-exit v0

    return v8

    :cond_5
    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    nop

    monitor-exit v0

    return v3

    :catchall_0
    move-exception v2

    invoke-static {v1}, Llibcore/io/IoUtils;->closeQuietly(Ljava/lang/AutoCloseable;)V

    throw v2

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v1
.end method


# virtual methods
.method public startEvaluateStereoModes(Lcom/android/server/am/ActivityRecord;Lcom/android/server/am/ActivityRecord;)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/am/OemSceneStereoController;->mActivityStackSupervisor:Lcom/android/server/am/ActivityStackSupervisor;

    iget-object v0, v0, Lcom/android/server/am/ActivityStackSupervisor;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppOpsService:Lcom/android/server/AppOpsService;

    iget-object v1, p2, Lcom/android/server/am/ActivityRecord;->appInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v3, 0x44

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/AppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    invoke-direct {p0, v2}, Lcom/android/server/am/OemSceneStereoController;->notifyStereoModes(I)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->musicApps:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "OemSceneStereoController"

    const-string v2, "It is necessary to reload the data"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/am/OemSceneStereoController;->initData()V

    return-void

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->musicApps:Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/server/am/OemSceneStereoController;->notifyStereoModes(I)V

    return-void

    :cond_3
    iget-object v2, p0, Lcom/android/server/am/OemSceneStereoController;->videoApps:Ljava/util/ArrayList;

    iget-object v3, p2, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v1, 0x3

    invoke-direct {p0, v1}, Lcom/android/server/am/OemSceneStereoController;->notifyStereoModes(I)V

    return-void

    :cond_4
    invoke-direct {p0, v1}, Lcom/android/server/am/OemSceneStereoController;->notifyStereoModes(I)V

    return-void
.end method

.method public translateMode(I)Ljava/lang/String;
    .locals 1

    packed-switch p1, :pswitch_data_0

    const-string v0, "UNKNOWN"

    return-object v0

    :pswitch_0
    const-string v0, "VIDEO"

    return-object v0

    :pswitch_1
    const-string v0, "MUSIC"

    return-object v0

    :pswitch_2
    const-string v0, "GAME"

    return-object v0

    :pswitch_3
    const-string v0, "DEFAULT"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
