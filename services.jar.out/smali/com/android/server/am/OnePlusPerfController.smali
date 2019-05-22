.class public Lcom/android/server/am/OnePlusPerfController;
.super Ljava/lang/Object;
.source "OnePlusPerfController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OnePlusPerfController$OnePlusIdleWhiltelistHandler;,
        Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;
    }
.end annotation


# static fields
.field private static final DOFRAME_IN_BACKGROUDN_CONFIG_NAME:Ljava/lang/String; = "DoFrameInBG"

.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final SYSTEM_PROPERTIES:Ljava/lang/String; = "persist.sys.skipBGDoFrame"

.field private static final TAG:Ljava/lang/String; = "OnePlusPerfController"

.field public static sEnable:Z

.field private static sIntance:Lcom/android/server/am/OnePlusPerfController;


# instance fields
.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mContext:Landroid/content/Context;

.field private mDoFrameInBGHandler:Landroid/os/HandlerThread;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/OnePlusPerfController;->sIntance:Lcom/android/server/am/OnePlusPerfController;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mHandler:Landroid/os/Handler;

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mDoFrameInBGHandler:Landroid/os/HandlerThread;

    new-instance v0, Lcom/android/server/am/OnePlusPerfController$OnePlusIdleWhiltelistHandler;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/OnePlusPerfController$OnePlusIdleWhiltelistHandler;-><init>(Lcom/android/server/am/OnePlusPerfController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/am/OnePlusPerfController;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfController;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OnePlusPerfController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static final getInstance()Lcom/android/server/am/OnePlusPerfController;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusPerfController;->sIntance:Lcom/android/server/am/OnePlusPerfController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/am/OnePlusPerfController;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusPerfController;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusPerfController;->sIntance:Lcom/android/server/am/OnePlusPerfController;

    :cond_0
    sget-object v0, Lcom/android/server/am/OnePlusPerfController;->sIntance:Lcom/android/server/am/OnePlusPerfController;

    return-object v0
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 5

    if-nez p1, :cond_0

    const-string v0, "OnePlusPerfController"

    const-string v1, "[OnlineConfig] resolveConfigFromJSON jsonArray is null, return"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "DisableDoFrameBG"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v3, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v4

    sput-boolean v4, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v0, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    if-eqz v0, :cond_3

    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    const-string v0, "OnePlusPerfController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    const-string v2, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    :catchall_0
    move-exception v0

    goto/16 :goto_6

    :catch_0
    move-exception v0

    :try_start_1
    const-string v1, "OnePlusPerfController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    if-eqz v0, :cond_4

    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_3
    const-string v0, "OnePlusPerfController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_2
    const-string v1, "OnePlusPerfController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sget-boolean v0, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    if-eqz v0, :cond_5

    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_5
    const-string/jumbo v0, "persist.sys.skipBGDoFrame"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_4
    const-string v0, "OnePlusPerfController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    :goto_5
    return-void

    :goto_6
    sget-boolean v1, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    if-eqz v1, :cond_6

    const-string/jumbo v1, "persist.sys.skipBGDoFrame"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    :cond_6
    const-string/jumbo v1, "persist.sys.skipBGDoFrame"

    const-string v2, "0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    :goto_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[OnlineConfig] resolveConfigFromJSON sEnable:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v2, Lcom/android/server/am/OnePlusPerfController;->sEnable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "OnePlusPerfController"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    throw v0
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusPerfController;->initOnlineConfig()V

    return-void
.end method

.method public initOnlineConfig()V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPerfController;->mHandler:Landroid/os/Handler;

    new-instance v3, Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfController;Lcom/android/server/am/OnePlusPerfController$1;)V

    const-string v4, "DoFrameInBG"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPerfController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void
.end method
