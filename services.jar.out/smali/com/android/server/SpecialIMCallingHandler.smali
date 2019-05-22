.class public Lcom/android/server/SpecialIMCallingHandler;
.super Ljava/lang/Object;
.source "SpecialIMCallingHandler.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;
    }
.end annotation


# static fields
.field private static final CLICK_TIMEOUT:J = 0x1f4L

.field private static final CMD_CLICK_INCALL:I = 0x0

.field private static final CMD_FETCH_CONFIG:I = 0x1

.field private static DBG:Z = false

.field private static final DBG_LOGV:Z

.field private static final IM_CONFIG_NAME:Ljava/lang/String; = "GameModeImComponents"

.field private static final SEC:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "SpecialIMCallingHandler"

.field private static final WECHAT_HANDLER_PKG_NAME:Ljava/lang/String; = "com.tencent.mm"

.field private static mCachedWeChatIntent:Landroid/content/Intent;

.field private static mCachedWeChatLaunchUser:I

.field private static mWeChatCallInteractor:Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;

.field private static sContext:Landroid/content/Context;

.field private static sHandler:Landroid/os/Handler;

.field private static sInstance:Lcom/android/server/SpecialIMCallingHandler;

.field private static sIsFetched:Z

.field private static sIsSpeImNeedToBeHandle:Z

.field private static sIsWechatHandlingEnabled:Z

.field private static sWechatIsFetched:Z

.field private static sWechatVersionComponentLists:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImBlockApplicationList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static s_ImComponentLists:Lcom/oneplus/util/MultiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/oneplus/util/MultiMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.debug.scene.spimhandling"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    sput-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    sput-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->sIsSpeImNeedToBeHandle:Z

    sput-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    new-instance v0, Lcom/oneplus/util/MultiMap;

    invoke-direct {v0}, Lcom/oneplus/util/MultiMap;-><init>()V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->s_ImBlockApplicationList:Ljava/util/ArrayList;

    sput-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->sWechatIsFetched:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->sWechatVersionComponentLists:Ljava/util/HashMap;

    new-instance v0, Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;-><init>(Lcom/android/server/SpecialIMCallingHandler$1;)V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->mWeChatCallInteractor:Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;

    sput-object v1, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    sput v0, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatLaunchUser:I

    new-instance v0, Lcom/android/server/SpecialIMCallingHandler$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/server/SpecialIMCallingHandler$1;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->loadDefaultConfigs()V

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.oem.intent.action.CUSTOM_INCALL_ANSWER"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    sget-object v1, Lcom/android/server/SpecialIMCallingHandler;->mWeChatCallInteractor:Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$100(Ljava/lang/String;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/server/SpecialIMCallingHandler;->checkLaunchedApp(Ljava/lang/String;I)V

    return-void
.end method

.method static synthetic access$200(Ljava/lang/String;)V
    .locals 0

    invoke-static {p0}, Lcom/android/server/SpecialIMCallingHandler;->resolveAdditionalConfig(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$300()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    return v0
.end method

.method static synthetic access$400()Landroid/content/Intent;
    .locals 1

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatIntent:Landroid/content/Intent;

    return-object v0
.end method

.method static synthetic access$500()I
    .locals 1

    sget v0, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatLaunchUser:I

    return v0
.end method

.method static synthetic access$600()Landroid/os/Handler;
    .locals 1

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    return-object v0
.end method

.method public static checkIfNeedToHideFloatingWindow(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsSpeImNeedToBeHandle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    if-eqz v0, :cond_1

    const-string v0, "com.tencent.mm"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method private static checkLaunchedApp(Ljava/lang/String;I)V
    .locals 4

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    invoke-static {v0, p0}, Lcom/android/server/SpecialIMCallingHandler;->isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " launch \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\' again"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_1

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    sget-object v1, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    :cond_1
    const-string v1, "SpecialIMCallingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get launch intent for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    return-void
.end method

.method public static checkSpecialImHandling(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsSpeImNeedToBeHandle:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string v2, "[scene] SpecialIMCallingHandler: Don\'t handle Special IM"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v1

    :cond_1
    if-eqz p2, :cond_7

    if-nez p1, :cond_2

    goto/16 :goto_1

    :cond_2
    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v0, :cond_3

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :cond_3
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    sget-boolean v4, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v4, :cond_4

    const-string v4, "SpecialIMCallingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpecialImHandling: intent = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-boolean v4, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v4, :cond_5

    const-string v4, "SpecialIMCallingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkSpecialImHandling: rInfo = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/pm/ResolveInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->fetchConfig()V

    sget-boolean v4, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    if-eqz v4, :cond_6

    const-string v4, "com.tencent.mm"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    sget-object v4, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v4, v2}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-static {p0, p1, p2}, Lcom/android/server/SpecialIMCallingHandler;->handleWechatIMCalling(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V

    const/4 v1, 0x1

    return v1

    :cond_6
    return v1

    :cond_7
    :goto_1
    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_8

    const-string v0, "SpecialIMCallingHandler"

    const-string v2, "[scene] SpecialIMCallingHandler: wrong params"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return v1
.end method

.method public static checkSpecialImHandlingWithUid(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;I)Z
    .locals 2

    const/16 v0, 0x3e8

    if-ne p3, v0, :cond_1

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string v1, "[scene] checkSpecialImHandling: system starting activity"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/server/SpecialIMCallingHandler;->checkSpecialImHandling(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)Z

    move-result v0

    return v0
.end method

.method private static fetchConfig()V
    .locals 4

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "CONFIG_NAME"

    const-string v3, "GameModeImComponents"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    sget-object v2, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_0
    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v0, :cond_1

    const-string v0, "SpecialIMCallingHandler"

    const-string v1, "fetchConfig: skip to fetch"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private static getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;
    .locals 4

    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/16 v2, 0x80

    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v3

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_1
    return-object v0

    :catchall_0
    move-exception v1

    goto :goto_0

    :catch_0
    move-exception v1

    :try_start_1
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_3
    return-object v0

    :goto_0
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    :cond_5
    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/SpecialIMCallingHandler;
    .locals 1

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sInstance:Lcom/android/server/SpecialIMCallingHandler;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/SpecialIMCallingHandler;

    invoke-direct {v0, p0}, Lcom/android/server/SpecialIMCallingHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/SpecialIMCallingHandler;->sInstance:Lcom/android/server/SpecialIMCallingHandler;

    sput-object p0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    :cond_0
    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sInstance:Lcom/android/server/SpecialIMCallingHandler;

    return-object v0
.end method

.method public static getOnlineWechatComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->fetchConfig()V

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sWechatVersionComponentLists:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sWechatVersionComponentLists:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static handleWechatIMCalling(Landroid/content/Context;Landroid/content/Intent;Landroid/content/pm/ResolveInfo;)V
    .locals 7

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p0, v2, p2}, Lcom/android/server/SpecialIMCallingHandler;->getAppNameFromPkgName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ResolveInfo;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "Voip_VideoCall"

    invoke-virtual {p1, v4, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    sget-boolean v4, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v4, :cond_1

    const-string v4, "SpecialIMCallingHandler"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "pkgName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/ appLabel: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "/ isVideoCall: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    sput-object p1, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatIntent:Landroid/content/Intent;

    sput v0, Lcom/android/server/SpecialIMCallingHandler;->mCachedWeChatLaunchUser:I

    new-instance v4, Landroid/content/Intent;

    const-string v5, "com.oem.intent.action.CUSTOM_INCALL"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v5, 0x10000000

    invoke-virtual {v4, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v5, "IM_Name"

    invoke-virtual {v4, v5, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Action"

    const-string/jumbo v6, "incoming"

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "Call_Type"

    if-eqz v1, :cond_2

    const-string/jumbo v6, "video"

    goto :goto_1

    :cond_2
    const-string/jumbo v6, "voice"

    :goto_1
    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private static isForegroundApp(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    const-class v2, Landroid/app/ActivityManager;

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v5, :cond_0

    move v0, v3

    nop

    :cond_0
    sget-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v1, :cond_2

    const-string v1, "SpecialIMCallingHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isForegroundApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v0, :cond_1

    const-string v3, "foreground"

    goto :goto_0

    :cond_1
    const-string v3, "background"

    :goto_0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return v0

    :catchall_0
    move-exception v0

    sget-boolean v2, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    if-eqz v2, :cond_4

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isForegroundApp: \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\' is running "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v1, :cond_3

    const-string v3, "foreground"

    goto :goto_1

    :cond_3
    const-string v3, "background"

    :goto_1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "SpecialIMCallingHandler"

    invoke-static {v3, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    throw v0
.end method

.method public static isWechatHandlingEnabled()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    return v0
.end method

.method private static loadDefaultConfigs()V
    .locals 9

    new-instance v0, Ljava/util/ArrayList;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5020027

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x2

    if-lt v4, v5, :cond_1

    sget-boolean v4, Lcom/android/server/SpecialIMCallingHandler;->DBG_LOGV:Z

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_0

    const-string v4, "SpecialIMCallingHandler"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "defaultString("

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ") : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v8, v3, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v4, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    aget-object v6, v3, v6

    aget-object v5, v3, v5

    invoke-virtual {v4, v6, v5}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->fetchConfig()V

    return-void
.end method

.method private static resolveAdditionalConfig(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolveAdditionalConfig: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    if-eqz v0, :cond_2

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    sget-object v1, Lcom/android/server/SpecialIMCallingHandler;->sContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-static {v1}, Lcom/android/server/SpecialIMCallingHandler;->resolveImConfigFromJSON(Lorg/json/JSONArray;)V

    :cond_1
    goto :goto_0

    :cond_2
    const-string v0, "SpecialIMCallingHandler"

    const-string/jumbo v1, "resolveAdditionalConfig: sContext is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static resolveImConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 13

    if-nez p0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string/jumbo v1, "resolveCompatConfigFromJSON: jsonArray is null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    sget-object v1, Lcom/android/server/SpecialIMCallingHandler;->s_ImBlockApplicationList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    move v1, v0

    :goto_0
    const/4 v2, 0x1

    :try_start_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-ge v1, v3, :cond_b

    invoke-virtual {p0, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v3

    const-string/jumbo v4, "value"

    invoke-virtual {v3, v4}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v4

    move v5, v0

    :goto_1
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    move-result v6

    if-ge v5, v6, :cond_a

    invoke-virtual {v4, v5}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-string/jumbo v10, "pkg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    const-string/jumbo v10, "pkg"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v7, v10

    :cond_1
    const-string/jumbo v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    const-string/jumbo v10, "name"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    :cond_2
    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_3

    const-string/jumbo v10, "version"

    invoke-virtual {v6, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object v9, v10

    :cond_3
    if-eqz v7, :cond_5

    if-eqz v8, :cond_5

    const-string/jumbo v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "im_components"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_5

    sget-object v10, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v10, v8}, Lcom/oneplus/util/MultiMap;->containsValue(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_5

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_5

    sget-boolean v10, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v10, :cond_4

    const-string v10, "SpecialIMCallingHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resolveImConfigFromJSON: add s_ImComponentLists \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    sget-object v10, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v10, v7, v8}, Lcom/oneplus/util/MultiMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    if-eqz v7, :cond_7

    const-string/jumbo v10, "name"

    invoke-virtual {v3, v10}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    const-string/jumbo v11, "im_block_application_list"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sget-boolean v10, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v10, :cond_6

    const-string v10, "SpecialIMCallingHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resolveImConfigFromJSON: add s_ImBlockApplicationList \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    sget-object v10, Lcom/android/server/SpecialIMCallingHandler;->s_ImBlockApplicationList:Ljava/util/ArrayList;

    invoke-virtual {v10, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v10, "com.tencent.mm"

    invoke-virtual {v10, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_7

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsWechatHandlingEnabled:Z

    :cond_7
    if-eqz v7, :cond_9

    if-eqz v8, :cond_9

    if-eqz v9, :cond_9

    const-string/jumbo v10, "wechat_version_component"

    const-string/jumbo v11, "name"

    invoke-virtual {v3, v11}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    sget-object v10, Lcom/android/server/SpecialIMCallingHandler;->sWechatVersionComponentLists:Ljava/util/HashMap;

    invoke-virtual {v10, v9}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_9

    sget-boolean v10, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v10, :cond_8

    const-string v10, "SpecialIMCallingHandler"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resolveImConfigFromJSON: add sWechatVersionComponentLists \'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "\'"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    sget-object v10, Lcom/android/server/SpecialIMCallingHandler;->sWechatVersionComponentLists:Ljava/util/HashMap;

    invoke-virtual {v10, v9, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_9
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_a
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_b
    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    if-nez v0, :cond_c

    sput-boolean v2, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "SpecialIMCallingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string/jumbo v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "SpecialIMCallingHandler"

    const-string/jumbo v3, "resolveCompatConfigFromJSON error:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    if-nez v0, :cond_c

    sput-boolean v2, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "SpecialIMCallingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "SpecialIMCallingHandler"

    const-string/jumbo v3, "resolveCompatConfigFromJSON JSONException:"

    invoke-static {v1, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    if-nez v0, :cond_c

    sput-boolean v2, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_c

    const-string v0, "SpecialIMCallingHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :cond_c
    :goto_3
    return-void

    :goto_4
    sget-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    if-nez v1, :cond_d

    sput-boolean v2, Lcom/android/server/SpecialIMCallingHandler;->sIsFetched:Z

    sget-boolean v1, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v1, :cond_d

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolveImConfigFromJSON: s_ImComponentLists = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/android/server/SpecialIMCallingHandler;->s_ImComponentLists:Lcom/oneplus/util/MultiMap;

    invoke-virtual {v2}, Lcom/oneplus/util/MultiMap;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SpecialIMCallingHandler"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_d
    throw v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string v1, "[scene] SpecialIMCallingHandler: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string v1, "[scene] SpecialIMCallingHandler: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsSpeImNeedToBeHandle:Z

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "SpecialIMCallingHandler"

    const-string v1, "[scene] SpecialIMCallingHandler: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/SpecialIMCallingHandler;->sIsSpeImNeedToBeHandle:Z

    return v0
.end method
