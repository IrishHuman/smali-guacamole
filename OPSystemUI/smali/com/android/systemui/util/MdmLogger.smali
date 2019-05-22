.class public Lcom/android/systemui/util/MdmLogger;
.super Ljava/lang/Object;
.source "MdmLogger.java"


# static fields
.field private static final DEBUG:Z

.field private static mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

.field private static sAutomatic:Z

.field private static sCurOrien:Ljava/lang/String;

.field private static sHandler:Landroid/os/Handler;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sIgnoreOnce:Z

.field private static sInstance:Lcom/android/systemui/util/MdmLogger;

.field private static sNpvExpanded:Z

.field private static sQsEvent:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sQsExpanded:Z

.field private static sStatusBarPulled:Z

.field private static sTagMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sTouchGear:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "debug.mdm.systemui"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->DEBUG:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sTouchGear:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    sput-boolean v1, Lcom/android/systemui/util/MdmLogger;->sAutomatic:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.AirplaneModeTile"

    const-string v2, "quick_airplane"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BatterySaverTile"

    const-string v2, "quick_battery"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.BluetoothTile"

    const-string v2, "quick_bt"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CastTile"

    const-string v2, "quick_cast"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.CellularTile"

    const-string v2, "quick_mobile"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ColorInversionTile"

    const-string v2, "quick_invert"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.DataSaverTile"

    const-string v2, "quick_ds"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.FlashlightTile"

    const-string v2, "quick_fl"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.GameModeTile"

    const-string v2, "quick_game"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.HotspotTile"

    const-string v2, "quick_hot"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.LocationTile"

    const-string v2, "quick_location"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NfcTile"

    const-string v2, "quick_nfc"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.NightDisplayTile"

    const-string v2, "quick_night"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.ReadModeTile"

    const-string v2, "quick_read"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.RotationLockTile"

    const-string v2, "quick_ar"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.VPNTile"

    const-string v2, "quick_vpn"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WifiTile"

    const-string v2, "quick_wifi"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.WorkModeTile"

    const-string v2, "quick_work"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    const-string v1, "Tile.OtgTile"

    const-string v2, "quick_otg"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lnet/oneplus/odm/insight/tracker/AppTracker;

    invoke-direct {v0, p1}, Lnet/oneplus/odm/insight/tracker/AppTracker;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "MdmLogger"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/systemui/util/MdmLogger;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method static synthetic access$000()Lnet/oneplus/odm/insight/tracker/AppTracker;
    .locals 1

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->mAppTracker:Lnet/oneplus/odm/insight/tracker/AppTracker;

    return-object v0
.end method

.method public static brightnessSliderClicked()V
    .locals 3

    const-string v0, "quick_bright"

    const-string v1, "manual"

    sget-boolean v2, Lcom/android/systemui/util/MdmLogger;->sAutomatic:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static getOrientationEvent()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "landscape_pull"

    return-object v0

    :cond_0
    const-string v0, "portrait_pull"

    return-object v0
.end method

.method private static handleQsUpdate(Z)V
    .locals 3

    if-eqz p0, :cond_0

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "pull_down"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    goto :goto_0

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->reportQsEvents()V

    :goto_0
    return-void
.end method

.method public static init(Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/systemui/util/MdmLogger;

    invoke-direct {v0, p0}, Lcom/android/systemui/util/MdmLogger;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sInstance:Lcom/android/systemui/util/MdmLogger;

    :cond_0
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    const-string v0, "MdmLogger"

    const-string v1, "MdmLogger is initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private static initQsEvent()V
    .locals 3

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_tile"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_bright"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_settings"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "click_notif"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string/jumbo v1, "swipe_notif"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->getOrientationEvent()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/systemui/util/MdmLogger;->sCurOrien:Ljava/lang/String;

    return-void
.end method

.method private static isLandscape()Z
    .locals 2

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "MdmLogger"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "log:tag="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", label="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/systemui/util/MdmLogger$1;

    invoke-direct {v1, p1, p2, p0}, Lcom/android/systemui/util/MdmLogger$1;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public static logQsPanel(Ljava/lang/String;)V
    .locals 2

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "click_settings"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "click_notif"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    :cond_1
    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    const-string v1, "1"

    invoke-virtual {v0, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public static logQsTile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sTagMap:Ljava/util/Map;

    invoke-interface {v0, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const-string v1, "MdmLogger"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot get tag from tileTag : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static notifyBrightnessMode(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sAutomatic:Z

    return-void
.end method

.method public static notifyNpvExpanded(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    if-eqz p0, :cond_1

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    const-string v0, "landscape_full_screen"

    const-string/jumbo v1, "status_bar"

    const-string v2, "1"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->handleQsUpdate(Z)V

    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    return-void
.end method

.method public static notifyQsExpanded(Z)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    if-ne v0, p0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    invoke-static {p0}, Lcom/android/systemui/util/MdmLogger;->handleQsUpdate(Z)V

    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    return-void
.end method

.method public static onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 1

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sNpvExpanded:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sQsExpanded:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/util/MdmLogger;->sIgnoreOnce:Z

    return-void

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->reportQsEvents()V

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->initQsEvent()V

    return-void
.end method

.method private static reportQsEvents()V
    .locals 4

    sget-object v0, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v2, Lcom/android/systemui/util/MdmLogger;->sCurOrien:Ljava/lang/String;

    sget-object v3, Lcom/android/systemui/util/MdmLogger;->sQsEvent:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v2, v1, v3}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setStatusBarState(Z)V
    .locals 3

    invoke-static {}, Lcom/android/systemui/util/MdmLogger;->isLandscape()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    if-eqz v0, :cond_1

    if-nez p0, :cond_1

    const-string v0, "landscape_full_screen"

    const-string/jumbo v1, "status_bar"

    const-string v2, "0"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/util/MdmLogger;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    sput-boolean p0, Lcom/android/systemui/util/MdmLogger;->sStatusBarPulled:Z

    return-void
.end method
