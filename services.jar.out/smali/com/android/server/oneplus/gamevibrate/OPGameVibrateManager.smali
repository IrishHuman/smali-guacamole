.class public Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;
.super Ljava/lang/Object;
.source "OPGameVibrateManager.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static INIT_AREA_DATA:[I = null

.field private static final ONLINECONFIG_PROJECT_NAME:Ljava/lang/String; = "OPGameVibrateManager"

.field private static PER_DATA_LENGTH:I = 0x0

.field private static final TAG:Ljava/lang/String; = "OPGameVibrateManager"

.field private static final TRUSTED_POINT_OBSERVER_NODE:Ljava/lang/String; = "/sys/devices/platform/soc/89c000.i2c/i2c-2/2-005a/leds/vibrator/haptic_audio_tp_size"

.field private static currentGamePackage:Ljava/lang/String;

.field public static sEnabled:Z

.field private static sGameStartFlag:Z

.field public static final supportedGame:[Ljava/lang/String;


# instance fields
.field private count:I

.field private duplicate:Z

.field private handler:Landroid/os/Handler;

.field private intervals:[I

.field private mConfigObserver:Lcom/oneplus/config/ConfigObserver;

.field private mConfigUpdater:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;

.field private mContext:Landroid/content/Context;

.field private mGameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mLock:Ljava/lang/Object;

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "com.tencent.ig"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->supportedGame:[Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sGameStartFlag:Z

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    const/16 v0, 0xa

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->INIT_AREA_DATA:[I

    const/4 v0, 0x5

    sput v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->PER_DATA_LENGTH:I

    return-void

    nop

    :array_0
    .array-data 4
        0x1
        0xa46
        0x3c1
        0xd7
        0xd9
        0x1
        0x4c
        0x278
        0xd2
        0xd3
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->intervals:[I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    iput-boolean v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->duplicate:Z

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->runnable:Ljava/lang/Runnable;

    return-void

    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0xa
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    const/16 v0, 0xc

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->intervals:[I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->handler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    iput-boolean v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->duplicate:Z

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$3;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->runnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mConfigUpdater:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;

    invoke-direct {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->registerOnlineConfig()V

    invoke-direct {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->grabOnlineConfig()V

    return-void

    :array_0
    .array-data 4
        0x1
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0x5
        0xa
    .end array-data
.end method

.method static synthetic access$100(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->duplicate:Z

    return v0
.end method

.method static synthetic access$202(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->duplicate:Z

    return p1
.end method

.method static synthetic access$300(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I
    .locals 1

    iget v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    return p1
.end method

.method static synthetic access$308(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)I
    .locals 2

    iget v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->count:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->intervals:[I

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->handler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->performScreenShot()V

    return-void
.end method

.method private grabOnlineConfig()V
    .locals 3

    const-string v0, "OPGameVibrateManager"

    const-string v1, "[OnlineConfig] grabOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mContext:Landroid/content/Context;

    const-string v2, "OPGameVibrateManager"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mConfigUpdater:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method

.method private static native nativeGameVibrateInit()V
.end method

.method private static native nativeGameVibrateRelease()V
.end method

.method private static native nativeGetZoneInfo()[I
.end method

.method private static native nativeProcessBitmap(Landroid/graphics/Bitmap;)I
.end method

.method private static native nativeSetPointerData(IIII)V
.end method

.method private static native nativeSetScreenSize(II)V
.end method

.method private static native nativeSetZoneInfo([I)V
.end method

.method private performScreenShot()V
    .locals 8

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    move-result v3

    new-instance v4, Landroid/graphics/Rect;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iget v6, v2, Landroid/graphics/Point;->y:I

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget v1, v2, Landroid/graphics/Point;->x:I

    iget v5, v2, Landroid/graphics/Point;->y:I

    invoke-static {v4, v1, v5, v3}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v1

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_0

    const-string v5, "OPGameVibrateManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "after set, config = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v4}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeProcessBitmap(Landroid/graphics/Bitmap;)I

    :cond_0
    return-void
.end method

.method private registerOnlineConfig()V
    .locals 5

    const-string v0, "OPGameVibrateManager"

    const-string v1, "[OnlineConfig] registerOnlineConfig"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/oneplus/config/ConfigObserver;

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mConfigUpdater:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;

    const-string v3, "OPGameVibrateManager"

    const/4 v4, 0x0

    invoke-direct {v0, v1, v4, v2, v3}, Lcom/oneplus/config/ConfigObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;Lcom/oneplus/config/ConfigObserver$ConfigUpdater;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mConfigObserver:Lcom/oneplus/config/ConfigObserver;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigObserver;->register()V

    return-void
.end method

.method private setGameStartFlag(Z)V
    .locals 0

    sput-boolean p1, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sGameStartFlag:Z

    return-void
.end method

.method private startEventObserver()V
    .locals 2

    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/devices/platform/soc/89c000.i2c/i2c-2/2-005a/leds/vibrator/haptic_audio_tp_size"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;

    invoke-direct {v0, p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$2;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    const-string v1, "DEVPATH=/devices/platform/soc/89c000.i2c/i2c-2/2-005a"

    invoke-virtual {v0, v1}, Landroid/os/UEventObserver;->startObserving(Ljava/lang/String;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getGameStartFlag()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sGameStartFlag:Z

    return v0
.end method

.method public getZoneInfo()[I
    .locals 11

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    sget-object v6, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    move-object v5, v4

    if-eqz v4, :cond_0

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    invoke-virtual {v4, v7, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    const-string v7, " "

    const-string v8, ""

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ","

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    sget v8, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->PER_DATA_LENGTH:I

    if-le v7, v8, :cond_2

    array-length v7, v6

    new-array v7, v7, [I

    const/4 v8, 0x0

    :goto_1
    array-length v9, v6

    if-ge v8, v9, :cond_1

    aget-object v9, v6, v8

    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v9

    aput v9, v7, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    const-string v8, "OPGameVibrateManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "getAreaData, result = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v7}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_2

    :catch_0
    move-exception v8

    :try_start_2
    invoke-virtual {v8}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v7

    :cond_2
    nop

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_5

    :catch_1
    move-exception v2

    :goto_3
    :try_start_4
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_4

    :catchall_0
    move-exception v2

    goto :goto_7

    :catch_2
    move-exception v2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_5

    :catchall_1
    move-exception v1

    goto :goto_9

    :catch_3
    move-exception v2

    goto :goto_3

    :goto_4
    goto :goto_6

    :cond_3
    :goto_5
    nop

    :goto_6
    :try_start_7
    monitor-exit v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    sget-object v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->INIT_AREA_DATA:[I

    return-object v0

    :goto_7
    nop

    if-eqz v1, :cond_4

    :try_start_8
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_8

    :catch_4
    move-exception v3

    :try_start_9
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_4
    :goto_8
    throw v2

    :goto_9
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    throw v1
.end method

.method public init(Ljava/lang/String;)V
    .locals 3

    const-string v0, "OPGameVibrateManager"

    const-string v1, " init "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sput-object p1, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    invoke-static {}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeGameVibrateInit()V

    invoke-direct {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->startEventObserver()V

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->saveZoneInfo(ZZ)V

    invoke-direct {p0, v2}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->setGameStartFlag(Z)V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->getGameStartFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetPointerData(IIII)V

    goto :goto_0

    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetPointerData(IIII)V

    goto :goto_0

    :pswitch_3
    goto :goto_0

    :pswitch_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetPointerData(IIII)V

    goto :goto_0

    :pswitch_5
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v0

    const/4 v1, 0x1

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getX(I)F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    float-to-int v3, v3

    invoke-static {v0, v1, v2, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetPointerData(IIII)V

    nop

    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    const-string v0, "OPGameVibrateManager"

    const-string v1, " release "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->handler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-static {}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeGameVibrateRelease()V

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->setGameStartFlag(Z)V

    iput-boolean v1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->duplicate:Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public saveZoneInfo(ZZ)V
    .locals 8

    iget-object v0, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mLock:Ljava/lang/Object;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    new-array v1, v1, [I

    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    sget-object v5, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    if-eqz p1, :cond_0

    const-string v2, "OPGameVibrateManager"

    const-string v3, "game data file already exist, return"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0

    return-void

    :cond_0
    new-instance v2, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    sget-object v5, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_1

    if-eqz p1, :cond_1

    const-string v2, "OPGameVibrateManager"

    const-string/jumbo v3, "init zone info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v2, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->INIT_AREA_DATA:[I

    move-object v1, v2

    :cond_1
    if-eqz p2, :cond_2

    const-string v2, "OPGameVibrateManager"

    const-string/jumbo v3, "save zone info"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeGetZoneInfo()[I

    move-result-object v2

    move-object v1, v2

    if-eqz v1, :cond_2

    array-length v2, v1

    sget v3, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->PER_DATA_LENGTH:I

    if-ge v2, v3, :cond_2

    const-string v2, "OPGameVibrateManager"

    const-string v3, "get zone info from kernel error"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    return-void

    :cond_2
    const/4 v2, 0x0

    :try_start_1
    new-instance v3, Ljava/io/FileOutputStream;

    new-instance v4, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getDataSystemDirectory()Ljava/io/File;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->mGameMap:Ljava/util/Map;

    sget-object v7, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->currentGamePackage:Ljava/lang/String;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v2, v3

    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    nop

    :try_start_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v3

    :goto_0
    :try_start_3
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_3

    :catch_1
    move-exception v3

    :try_start_4
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_3

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_1

    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    :try_start_6
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-eqz v2, :cond_3

    :try_start_7
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :goto_1
    goto :goto_2

    :catch_4
    move-exception v3

    goto :goto_0

    :cond_3
    :goto_2
    :try_start_8
    monitor-exit v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    return-void

    :goto_3
    if-eqz v2, :cond_4

    :try_start_9
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    goto :goto_4

    :catch_5
    move-exception v4

    :try_start_a
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    :cond_4
    :goto_4
    throw v3

    :catchall_1
    move-exception v1

    monitor-exit v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    throw v1
.end method

.method public setScreenSize()V
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->getGameStartFlag()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/hardware/display/DisplayManagerGlobal;->getInstance()Landroid/hardware/display/DisplayManagerGlobal;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManagerGlobal;->getRealDisplay(I)Landroid/view/Display;

    move-result-object v0

    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    iget v2, v1, Landroid/graphics/Point;->x:I

    iget v3, v1, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetScreenSize(II)V

    :cond_0
    return-void
.end method

.method public setZoneInfo([I)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->nativeSetZoneInfo([I)V

    return-void
.end method
