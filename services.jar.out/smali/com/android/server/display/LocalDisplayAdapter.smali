.class final Lcom/android/server/display/LocalDisplayAdapter;
.super Lcom/android/server/display/DisplayAdapter;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;,
        Lcom/android/server/display/LocalDisplayAdapter$DisplayModeRecord;,
        Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;,
        Lcom/android/server/display/LocalDisplayAdapter$DPHandler;
    }
.end annotation


# static fields
.field private static final BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

.field private static final DEBUG:Z = false

.field private static final MSG_UPDATE_MODE_DP:I = 0x3

.field private static final MSG_UPDATE_MODE_FPS_60:I = 0x1

.field private static final MSG_UPDATE_MODE_FPS_90:I = 0x2

.field private static final OP_DP_ENABLE:I = 0x17

.field private static final PROPERTY_EMULATOR_CIRCULAR:Ljava/lang/String; = "ro.emulator.circular"

.field private static final TAG:Ljava/lang/String; = "LocalDisplayAdapter"

.field private static final UNIQUE_ID_PREFIX:Ljava/lang/String; = "local:"

.field private static mDPStatus:Z


# instance fields
.field MODE_FULLSPEED_2K:I

.field MODE_FULLSPEED_FHD:I

.field MODE_SAVEPOWER_2K:I

.field MODE_SAVEPOWER_FHD:I

.field final WIDTH_2K:I

.field final WIDTH_FHD:I

.field private final mDevices:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

.field private mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

.field private mSDM:Lcom/oneplus/display/SDManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/display/LocalDisplayAdapter;->BUILT_IN_DISPLAY_IDS_TO_SCAN:[I

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->mDPStatus:Z

    return-void

    :array_0
    .array-data 4
        0x0
        0x1
    .end array-data
.end method

.method public constructor <init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;)V
    .locals 6

    const-string v5, "LocalDisplayAdapter"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/display/DisplayAdapter;-><init>(Lcom/android/server/display/DisplayManagerService$SyncRoot;Landroid/content/Context;Landroid/os/Handler;Lcom/android/server/display/DisplayAdapter$Listener;Ljava/lang/String;)V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    const/16 v0, 0x438

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->WIDTH_FHD:I

    const/16 v0, 0x5a0

    iput v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->WIDTH_2K:I

    new-instance v0, Lcom/oneplus/display/SDManager;

    invoke-direct {v0, p2}, Lcom/oneplus/display/SDManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSDM:Lcom/oneplus/display/SDManager;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/display/LocalDisplayAdapter;->mDPStatus:Z

    return v0
.end method

.method static synthetic access$002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/display/LocalDisplayAdapter;->mDPStatus:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/oneplus/display/SDManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mSDM:Lcom/oneplus/display/SDManager;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/display/LocalDisplayAdapter;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/display/LocalDisplayAdapter;->tryDisconnectDisplayLocked(I)V

    return-void
.end method

.method static getPowerModeForState(I)I
    .locals 2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v1, 0x6

    if-eq p0, v1, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 v0, 0x2

    return v0

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    return v0

    :cond_0
    const/4 v0, 0x4

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private tryConnectDisplayLocked(I)V
    .locals 18

    move-object/from16 v8, p0

    move/from16 v9, p1

    invoke-static/range {p1 .. p1}, Landroid/view/SurfaceControl;->getBuiltInDisplay(I)Landroid/os/IBinder;

    move-result-object v10

    if-eqz v10, :cond_6

    nop

    invoke-static {v10}, Landroid/view/SurfaceControl;->getDisplayConfigs(Landroid/os/IBinder;)[Landroid/view/SurfaceControl$PhysicalDisplayInfo;

    move-result-object v11

    if-nez v11, :cond_0

    const-string v0, "LocalDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No valid configs found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-static {v10}, Landroid/view/SurfaceControl;->getActiveConfig(Landroid/os/IBinder;)I

    move-result v12

    if-gez v12, :cond_1

    const-string v0, "LocalDisplayAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No active config found for display device "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    invoke-static {v10}, Landroid/view/SurfaceControl;->getActiveColorMode(Landroid/os/IBinder;)I

    move-result v0

    if-gez v0, :cond_2

    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to get active color mode for display device "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    :cond_2
    move v13, v0

    invoke-static {v10}, Landroid/view/SurfaceControl;->getDisplayColorModes(Landroid/os/IBinder;)[I

    move-result-object v14

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    const/4 v7, 0x1

    if-nez v15, :cond_3

    new-instance v16, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    move-object/from16 v0, v16

    move-object v1, v8

    move-object v2, v10

    move v3, v9

    move-object v4, v11

    move v5, v12

    move-object v6, v14

    move-object/from16 v17, v10

    move v10, v7

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/IBinder;I[Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)V

    move-object/from16 v15, v16

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, v9, v15}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    invoke-virtual {v8, v15, v10}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    goto :goto_0

    :cond_3
    move-object/from16 v17, v10

    move v10, v7

    invoke-virtual {v15, v11, v12, v14, v13}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->updatePhysicalDisplayInfoLocked([Landroid/view/SurfaceControl$PhysicalDisplayInfo;I[II)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    invoke-virtual {v8, v15, v0}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_4
    :goto_0
    if-ne v9, v10, :cond_7

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->removeMessages(I)V

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mSDM:Lcom/oneplus/display/SDManager;

    if-eqz v0, :cond_5

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mSDM:Lcom/oneplus/display/SDManager;

    const/16 v1, 0x17

    invoke-virtual {v0, v1, v10}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    :cond_5
    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->removeMessages(I)V

    iget-object v0, v8, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {v0, v10}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iget-object v1, v8, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_6
    move-object/from16 v17, v10

    :cond_7
    :goto_1
    return-void
.end method

.method private tryDisconnectDisplayLocked(I)V
    .locals 7

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    const/4 v2, 0x3

    if-ne p1, v1, :cond_0

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->removeMessages(I)V

    iget-object v3, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {v3, v2}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    const-wide/16 v5, 0x3e8

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    iget-object v4, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {v4, v1}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->removeMessages(I)V

    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/server/display/LocalDisplayAdapter;->mDPStatus:Z

    :cond_0
    iget-object v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    invoke-virtual {p0, v0, v2}, Lcom/android/server/display/LocalDisplayAdapter;->sendDisplayDeviceEventLocked(Lcom/android/server/display/DisplayDevice;I)V

    :cond_1
    return-void
.end method


# virtual methods
.method getOverlayContext()Landroid/content/Context;
    .locals 1

    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v0

    return-object v0
.end method

.method public registerLocked()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/display/DisplayAdapter;->registerLocked()V

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHotplugReceiver:Lcom/android/server/display/LocalDisplayAdapter$HotplugDisplayEventReceiver;

    new-instance v0, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    invoke-virtual {p0}, Lcom/android/server/display/LocalDisplayAdapter;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;-><init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mHandler:Lcom/android/server/display/LocalDisplayAdapter$DPHandler;

    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x7

    if-gt v0, v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/display/LocalDisplayAdapter;->tryConnectDisplayLocked(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public requestScreenMode(I)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    if-eqz v0, :cond_0

    const-string v1, "LocalDisplayAdapter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "requestScreenMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0, p1}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->requestModeLocked(I)Z

    :cond_0
    return-void
.end method

.method public setScreenMode()V
    .locals 13

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter;->mDevices:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter$LocalDisplayDevice;->getDisplayDeviceInfoLocked()Lcom/android/server/display/DisplayDeviceInfo;

    move-result-object v2

    iget v3, v2, Lcom/android/server/display/DisplayDeviceInfo;->modeId:I

    const/4 v4, -0x1

    if-eqz v0, :cond_4

    iget-object v5, v2, Lcom/android/server/display/DisplayDeviceInfo;->supportedModes:[Landroid/view/Display$Mode;

    nop

    :goto_0
    array-length v6, v5

    if-ge v1, v6, :cond_4

    aget-object v6, v5, v1

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    move-result v7

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    const/high16 v9, 0x42700000    # 60.0f

    const/16 v10, 0x5a0

    const v11, 0x3dcccccd    # 0.1f

    if-ne v8, v10, :cond_0

    sub-float v8, v7, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v11

    if-gez v8, :cond_0

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iput v8, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_2K:I

    goto :goto_1

    :cond_0
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    const/high16 v12, 0x42b40000    # 90.0f

    if-ne v8, v10, :cond_1

    sub-float v8, v7, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v11

    if-gez v8, :cond_1

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iput v8, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_2K:I

    goto :goto_1

    :cond_1
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    const/16 v10, 0x438

    if-ne v8, v10, :cond_2

    sub-float v8, v7, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v11

    if-gez v8, :cond_2

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iput v8, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    goto :goto_1

    :cond_2
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    move-result v8

    if-ne v8, v10, :cond_3

    sub-float v8, v7, v12

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v8, v11

    if-gez v8, :cond_3

    invoke-virtual {v6}, Landroid/view/Display$Mode;->getModeId()I

    move-result v8

    iput v8, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_FHD:I

    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_2K:I

    if-eq v3, v1, :cond_8

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_2K:I

    if-ne v3, v1, :cond_5

    goto :goto_3

    :cond_5
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    if-eq v3, v1, :cond_7

    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_FHD:I

    if-ne v3, v1, :cond_6

    goto :goto_2

    :cond_6
    const-string v1, "LocalDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "failed setScreenMode MODE_SAVEPOWER_2K="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_2K:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_FULLSPEED_2K="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_2K:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_SAVEPOWER_FHD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_FULLSPEED_FHD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_FHD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentlymode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " setmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "LocalDisplayAdapter"

    const-string v5, "find mode is failed"

    invoke-static {v1, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_7
    :goto_2
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    goto :goto_4

    :cond_8
    :goto_3
    iget v1, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_2K:I

    :goto_4
    const-string v4, "LocalDisplayAdapter"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setScreenMode MODE_SAVEPOWER_2K="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_2K:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_FULLSPEED_2K="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_2K:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_SAVEPOWER_FHD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " MODE_FULLSPEED_FHD="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_FULLSPEED_FHD:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " currentlymode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " setmode = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v4, p0, Lcom/android/server/display/LocalDisplayAdapter;->MODE_SAVEPOWER_FHD:I

    if-ne v3, v4, :cond_9

    return-void

    :cond_9
    invoke-virtual {p0, v1}, Lcom/android/server/display/LocalDisplayAdapter;->requestScreenMode(I)V

    return-void
.end method
