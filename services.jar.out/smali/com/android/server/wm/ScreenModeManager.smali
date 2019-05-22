.class public Lcom/android/server/wm/ScreenModeManager;
.super Ljava/lang/Object;
.source "ScreenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;,
        Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;,
        Lcom/android/server/wm/ScreenModeManager$SettingsObserver;
    }
.end annotation


# static fields
.field private static final CONFIG_NAME_SCREEN_MODE:Ljava/lang/String; = "ScreenMode"

.field private static final RECORD_MODE_DELAY:I = 0x7d0

.field private static final RECORD_MODE_DELAY_SHORT:I = 0x2bc

.field private static final REFRESH_RATE_AUTO:I = 0x2

.field private static final REFRESH_RATE_FULLSPEED:I = 0x0

.field private static final REFRESH_RATE_SAVEPOWER:I = 0x1

.field private static final RESOLUTION_2K:I = 0x0

.field private static final RESOLUTION_AUTO:I = 0x2

.field private static final RESOLUTION_FHD:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ScreenModeManager"

.field public static sDpi2kList:[I

.field public static sDpiFhdList:[I

.field private static sPkgReceiver:Landroid/content/BroadcastReceiver;


# instance fields
.field MODE_FULLSPEED_2K:I

.field MODE_FULLSPEED_FHD:I

.field MODE_SAVEPOWER_2K:I

.field MODE_SAVEPOWER_FHD:I

.field final WIDTH_2K:I

.field final WIDTH_FHD:I

.field mContext:Landroid/content/Context;

.field mCtsModePackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public mCurrentMode:I

.field public mCurrentModeId:I

.field mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

.field mDisplay:Landroid/view/Display;

.field final mDisplayManager:Landroid/hardware/display/DisplayManager;

.field mFixedModePackage:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field mIsResolutionAuto:Z

.field mResolotionSettings:I

.field private mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

.field mScreenModeSettings:I

.field mService:Lcom/android/server/wm/WindowManagerService;

.field mSettingsObserver:Lcom/android/server/wm/ScreenModeManager$SettingsObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    new-array v1, v0, [I

    sput-object v1, Lcom/android/server/wm/ScreenModeManager;->sDpi2kList:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/wm/ScreenModeManager;->sDpiFhdList:[I

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/wm/ScreenModeManager;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/WindowManagerService;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCtsModePackage:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    const/16 v1, 0x438

    iput v1, p0, Lcom/android/server/wm/ScreenModeManager;->WIDTH_FHD:I

    const/16 v1, 0x5a0

    iput v1, p0, Lcom/android/server/wm/ScreenModeManager;->WIDTH_2K:I

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iput-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iput-object p2, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    iput-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mSettingsObserver:Lcom/android/server/wm/ScreenModeManager$SettingsObserver;

    const-string v1, "display"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/hardware/display/DisplayManager;

    iput-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {v1, v0}, Landroid/hardware/display/DisplayManager;->getDisplay(I)Landroid/view/Display;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDisplay:Landroid/view/Display;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/wm/ScreenModeManager;)Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/wm/ScreenModeManager;Lorg/json/JSONArray;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/wm/ScreenModeManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ScreenModeManager;->updateOnlineConfig()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ScreenModeManager;->updateRefreshRate()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wm/ScreenModeManager;->updateResolution()V

    return-void
.end method

.method static densityForResolution(I[I[I)I
    .locals 2

    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    aget v1, p1, v0

    if-ne v1, p0, :cond_0

    aget v1, p2, v0

    return v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return p0
.end method

.method public static synthetic lambda$initOnlineConfig$0(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 5

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    new-instance v3, Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;

    invoke-direct {v3, p0}, Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    const-string v4, "ScreenMode"

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method

.method private resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 12

    const-string v0, "ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "resolvePerfConfigFromJSON ScreenMode "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initCtsModeList()V

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-ge v1, v2, :cond_3

    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string/jumbo v3, "name"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fixmode"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string/jumbo v3, "value"

    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v3

    move v4, v0

    :goto_1
    invoke-virtual {v3}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_2

    invoke-virtual {v3, v4}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v5

    const-string/jumbo v6, "pkg"

    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "mode"

    invoke-virtual {v5, v7}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    iget-object v9, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    monitor-enter v9
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    :try_start_1
    iget-object v10, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-virtual {v10, v6, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :cond_1
    :goto_2
    monitor-exit v9

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :goto_3
    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    const-string v0, "ScreenModeManager"

    const-string v1, "[OnlineConfig] ScreenMode config updated complete"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4

    :catch_0
    move-exception v0

    const-string v1, "ScreenModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] ScreenMode config Exception:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    :catch_1
    move-exception v0

    const-string v1, "ScreenModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] ScreenMode config JSONException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_4
    nop

    :goto_5
    return-void
.end method

.method private updateOnlineConfig()V
    .locals 3

    const-string v0, "ScreenModeManager"

    const-string/jumbo v1, "update ScreenMode OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    const-string v2, "ScreenMode"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/ScreenModeManager;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private updateRefreshRate()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->isAnimating()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ScreenModeManager"

    const-string v1, "delay update current mode due to window animating."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v2, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v0, v0, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->getModeId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    const-string v0, "ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRefreshRate mCurrentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v1, v1, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    iput v1, v0, Lcom/android/server/wm/AppWindowToken;->mScreenFlushMode:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->requestTraversal()V

    :cond_1
    return-void
.end method

.method private updateResolution()V
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->getModeId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    return-void
.end method


# virtual methods
.method checkContains(Ljava/util/ArrayList;Ljava/lang/String;)Z
    .locals 7

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const-string v0, "\\."

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    const-string v2, ""

    const/4 v3, 0x0

    if-eqz v0, :cond_1

    array-length v4, v0

    const/4 v5, 0x2

    if-le v4, v5, :cond_1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v6, v0, v3

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v6, v0, v1

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "."

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v0, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    const-string v4, ""

    if-eq v2, v4, :cond_2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    return v1

    :cond_2
    return v3
.end method

.method getDefaultModeId()I
    .locals 1

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    return v0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_FHD:I

    return v0
.end method

.method getDensity(I)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    sget-object v0, Lcom/android/server/wm/ScreenModeManager;->sDpi2kList:[I

    sget-object v1, Lcom/android/server/wm/ScreenModeManager;->sDpiFhdList:[I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/ScreenModeManager;->densityForResolution(I[I[I)I

    move-result v0

    return v0

    :cond_1
    return p1

    :cond_2
    :goto_0
    sget-object v0, Lcom/android/server/wm/ScreenModeManager;->sDpiFhdList:[I

    sget-object v1, Lcom/android/server/wm/ScreenModeManager;->sDpi2kList:[I

    invoke-static {p1, v0, v1}, Lcom/android/server/wm/ScreenModeManager;->densityForResolution(I[I[I)I

    move-result v0

    return v0
.end method

.method getModeId(I)I
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->isFixedRefreshRate()Z

    move-result v0

    if-eqz v0, :cond_0

    iget p1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-ne p1, v1, :cond_1

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_FHD:I

    return v0

    :cond_1
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    if-ne v0, v1, :cond_2

    if-nez p1, :cond_2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_FHD:I

    return v0

    :cond_2
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    if-nez v0, :cond_3

    if-ne p1, v1, :cond_3

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_2K:I

    return v0

    :cond_3
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    return v0
.end method

.method getPackageMode(ILcom/android/server/wm/AppWindowToken;)I
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    iget-object v1, p2, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const-string v1, ""

    iget-object v2, p2, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    iget-object v2, p2, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    return p1

    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1

    :cond_1
    return p1
.end method

.method getRefreshRate(I)I
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_FHD:I

    if-ne p1, v0, :cond_0

    goto :goto_1

    :cond_0
    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_2K:I

    if-eq p1, v0, :cond_2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_FHD:I

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method getScreenFlushMode(Lcom/android/server/wm/WindowState;)I
    .locals 2

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenModeManager;->getScreenRefreshRate(Lcom/android/server/wm/WindowState;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->getModeId(I)I

    move-result v1

    return v1
.end method

.method getScreenRefreshRate(Lcom/android/server/wm/WindowState;)I
    .locals 4

    iget-object v0, p1, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->getRefreshRate(I)I

    move-result v1

    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    if-nez v2, :cond_0

    return v1

    :cond_0
    iget v2, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    if-eqz v0, :cond_1

    return v1

    :cond_1
    iget-object v2, p1, Lcom/android/server/wm/WindowState;->mAppToken:Lcom/android/server/wm/AppWindowToken;

    iget v2, v2, Lcom/android/server/wm/AppWindowToken;->mScreenFlushMode:I

    return v2

    :cond_2
    return v1
.end method

.method init()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initDisplayMode()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initDpiList()V

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    iget v1, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_2K:I

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->requestScreenMode(I)V

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    new-instance v0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->setResolution()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initCtsModeList()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initReceiver()V

    invoke-virtual {p0}, Lcom/android/server/wm/ScreenModeManager;->initOnlineConfig()V

    return-void
.end method

.method initCtsModeList()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    const-string v1, "android.view.cts/.DisplayRefreshRateCtsActivity"

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCtsModePackage:Ljava/util/HashMap;

    const-string v1, "android.view.cts/.DisplayRefreshRateCtsActivity"

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->initLocalModeList(I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/ScreenModeManager;->initLocalModeList(I)V

    return-void
.end method

.method initDisplayMode()V
    .locals 12

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mDisplay:Landroid/view/Display;

    invoke-virtual {v0}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_4

    aget-object v2, v0, v1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/high16 v5, 0x42700000    # 60.0f

    const/16 v6, 0x5a0

    const-wide v7, 0x3fb999999999999aL    # 0.1

    if-ne v4, v6, :cond_0

    sub-float v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v9, v4

    cmpg-double v4, v9, v7

    if-gez v4, :cond_0

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_2K:I

    goto :goto_1

    :cond_0
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/high16 v9, 0x42b40000    # 90.0f

    if-ne v4, v6, :cond_1

    sub-float v4, v3, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v10, v4

    cmpg-double v4, v10, v7

    if-gez v4, :cond_1

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    const/16 v6, 0x438

    if-ne v4, v6, :cond_2

    sub-float v4, v3, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v7

    if-gez v4, :cond_2

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_FHD:I

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v4

    if-ne v4, v6, :cond_3

    sub-float v4, v3, v9

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    float-to-double v4, v4

    cmpg-double v4, v4, v7

    if-gez v4, :cond_3

    invoke-virtual {v2}, Landroid/view/Display$Mode;->getModeId()I

    move-result v4

    iput v4, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_FHD:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    const-string v1, "ScreenModeManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "init ScreenMode MODE_SAVEPOWER_2K="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_2K:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MODE_FULLSPEED_2K="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_2K:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MODE_SAVEPOWER_FHD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_SAVEPOWER_FHD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " MODE_FULLSPEED_FHD="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/wm/ScreenModeManager;->MODE_FULLSPEED_FHD:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method initDpiList()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x502001c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ScreenModeManager;->sDpi2kList:[I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x502001d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    sput-object v0, Lcom/android/server/wm/ScreenModeManager;->sDpiFhdList:[I

    return-void
.end method

.method initLocalModeList(I)V
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const v0, 0x502001f

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    const v0, 0x5020020

    :cond_1
    :goto_0
    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    array-length v2, v1

    if-lez v2, :cond_4

    const/4 v2, 0x0

    :goto_1
    :try_start_0
    array-length v3, v1

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lcom/android/server/wm/ScreenModeManager;->mFixedModePackage:Ljava/util/HashMap;

    aget-object v4, v1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v2

    :cond_4
    :goto_2
    return-void
.end method

.method initOnlineConfig()V
    .locals 4

    const-string v0, "ScreenModeManager"

    const-string/jumbo v1, "init ScreenMode OnlineConfig"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$ScreenModeManager$q3AqKYZ0qBlPD32nvoZmfrgyEgI;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$ScreenModeManager$q3AqKYZ0qBlPD32nvoZmfrgyEgI;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method initReceiver()V
    .locals 3

    sget-object v0, Lcom/android/server/wm/ScreenModeManager;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/wm/ScreenModeManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ScreenModeManager$1;-><init>(Lcom/android/server/wm/ScreenModeManager;)V

    sput-object v0, Lcom/android/server/wm/ScreenModeManager;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/android/server/wm/ScreenModeManager;->sPkgReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    :cond_0
    return-void
.end method

.method isCtsActivity(Lcom/android/server/wm/AppWindowToken;)Z
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCtsModePackage:Ljava/util/HashMap;

    iget-object v1, p1, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_0

    const/4 v1, 0x0

    return v1

    :cond_0
    const/4 v1, 0x1

    return v1
.end method

.method isFixedRefreshRate()Z
    .locals 2

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method setResolution()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_screen_resolution_adjust"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    if-ne v0, v2, :cond_0

    iput v3, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    goto :goto_0

    :cond_0
    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mResolotionSettings:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    const/4 v4, 0x3

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v5, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    if-ne v0, v2, :cond_2

    const/4 v3, 0x1

    nop

    :cond_2
    move v1, v3

    iget-boolean v2, p0, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z

    if-eq v1, v2, :cond_3

    iput-boolean v1, p0, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z

    :try_start_0
    iget-object v2, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mActivityManager:Landroid/app/IActivityManager;

    invoke-interface {v2, v1}, Landroid/app/IActivityManager;->killEmbryoProcesses(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "ScreenModeManager"

    const-string v4, "DisplayCompat: failed to kill embryo procs."

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    :goto_1
    const-string v2, "ScreenModeManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "current resolution settings:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setScreenFlushModeLocked(Lcom/android/server/wm/AppWindowToken;I)V
    .locals 4

    if-eqz p1, :cond_3

    invoke-virtual {p0, p2, p1}, Lcom/android/server/wm/ScreenModeManager;->getPackageMode(ILcom/android/server/wm/AppWindowToken;)I

    move-result v0

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    invoke-virtual {p0, p1}, Lcom/android/server/wm/ScreenModeManager;->isCtsActivity(Lcom/android/server/wm/AppWindowToken;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    iput v0, p1, Lcom/android/server/wm/AppWindowToken;->mScreenFlushMode:I

    iget v0, p1, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    iget v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ScreenModeManager;->getModeId(I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    const-string v0, "ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateRefreshRate immediately mCurrentMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " modeId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/wm/ScreenModeManager;->mCurrentModeId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mFocusedApp:Lcom/android/server/wm/AppWindowToken;

    if-nez v0, :cond_3

    :cond_1
    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager;->mDelayedAppToken:Lcom/android/server/wm/AppWindowToken;

    const-string v0, "ScreenModeManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "post to setScreenFlushModeLocked for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Lcom/android/server/wm/AppWindowToken;->mTmpScreenFlushMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/server/wm/AppWindowToken;->mActivityName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->removeMessages(I)V

    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->isActivityTypeHome()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v2, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x2bc

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    iget-object v2, p0, Lcom/android/server/wm/ScreenModeManager;->mScreenModeHandler:Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    :cond_3
    :goto_0
    return-void
.end method
