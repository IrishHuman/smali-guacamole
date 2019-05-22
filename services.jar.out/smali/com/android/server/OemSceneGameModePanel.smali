.class public Lcom/android/server/OemSceneGameModePanel;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;
    }
.end annotation


# static fields
.field private static final ACTION_PHONE_STATE:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field private static final DBG:Z

.field private static final MESSAGE_ANIMATION_DURATION:J = 0x1f4L

.field private static final SHORT_DURATION_TIMEOUT:J = 0x9c4L

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModePanel"

.field private static final UID_NO_3RD_CALLING:Ljava/lang/String; = "-1"

.field private static final URI_ESPORT_STATUS:Landroid/net/Uri;

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

.field private static sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

.field private static sDialogView:Landroid/view/View;


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mBtA2dpOn:Z

.field private mContext:Landroid/content/Context;

.field private mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

.field private mFgPkg:Ljava/lang/String;

.field private mGameModeUIAcquired:Z

.field private mHandler:Landroid/os/Handler;

.field private mHapticFeedbackSupportedApp:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mHideAnimator:Landroid/animation/ValueAnimator;

.field private mShowAnimator:Landroid/animation/ValueAnimator;

.field private mWManager:Landroid/view/WindowManager;

.field private mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

.field private mWindowManagerService:Landroid/view/IWindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    const-string v0, "esport_mode_enabled"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->URI_ESPORT_STATUS:Landroid/net/Uri;

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    const-string/jumbo v1, "window"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    const-class v1, Lcom/android/server/wm/WindowManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowManagerInternal;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    const/4 v1, 0x2

    new-array v2, v1, [F

    fill-array-data v2, :array_0

    invoke-static {v2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-array v1, v1, [F

    fill-array-data v1, :array_1

    invoke-static {v1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForCallState()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenFor3rdCallState()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->listenForA2dpConnection()V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$1;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    const-class v3, Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-static {p1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1, p0}, Lcom/android/server/ESportGuider;->setPanel(Lcom/android/server/OemSceneGameModePanel;)V

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    invoke-direct {v1, p0, p1, v2}, Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/OemSceneGameModePanel;->URI_ESPORT_STATUS:Landroid/net/Uri;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mEsportStatusContentObserver:Lcom/android/server/OemSceneGameModePanel$EsportStatusContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    invoke-static {}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->getInstance()Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor;->registerFrontPackageListener(Lcom/android/server/OnePlusUtil$OnePlusFrontMonitor$FrontPackageListener;)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->initHapticFeedbackAppList()V

    return-void

    nop

    nop

    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModePanel;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OemSceneGameModePanel;Lcom/android/server/OemSceneGameModeView;)Lcom/android/server/OemSceneGameModeView;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModePanel;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModePanel;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/OemSceneGameModePanel;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneGameModePanel;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return v0
.end method

.method static synthetic access$502(Lcom/android/server/OemSceneGameModePanel;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return p1
.end method

.method static synthetic access$600()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    return v0
.end method

.method private checkIfFullWidthFontType(Ljava/lang/String;)Z
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v2

    array-length v2, v2

    if-ne v1, v2, :cond_1

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public static getDialogHeight()I
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    return v0
.end method

.method private hide(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator()V

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1}, Lcom/android/server/ESportGuider;->hide()V

    sput-object v0, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    return-void
.end method

.method private inViewInBounds(Landroid/view/View;II)Z
    .locals 4

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    const/4 v1, 0x2

    new-array v1, v1, [I

    invoke-virtual {p1, v0}, Landroid/view/View;->getDrawingRect(Landroid/graphics/Rect;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    const/4 v2, 0x0

    aget v2, v1, v2

    const/4 v3, 0x1

    aget v3, v1, v3

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Rect;->offset(II)V

    invoke-virtual {v0, p2, p3}, Landroid/graphics/Rect;->contains(II)Z

    move-result v2

    return v2
.end method

.method private initHapticFeedbackAppList()V
    .locals 5

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x502000e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v4, ";"

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v1

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Support haptic feedback app list:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private listenFor3rdCallState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_notifications_3rd_calls_uid"

    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$9;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/server/OemSceneGameModePanel$9;-><init>(Lcom/android/server/OemSceneGameModePanel;Landroid/os/Handler;)V

    const/4 v3, 0x0

    const/4 v4, -0x1

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method private listenForA2dpConnection()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$10;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$10;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private listenForCallState()V
    .locals 3

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$8;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$8;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private show(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModePanel"

    const-string v1, "There is gaming mode UI shown. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v2

    if-nez v2, :cond_2

    move v1, v3

    nop

    :cond_2
    move v0, v1

    if-eqz v0, :cond_3

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->showSimple()V

    :goto_1
    return-void
.end method

.method private showDetail(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "new OemSceneGameModeDialog, mContext orientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    :try_start_0
    new-instance v2, Lcom/android/server/OemSceneGameModeDialog;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const v4, 0x509000b

    invoke-direct {v2, v3, v4, p0, p1}, Lcom/android/server/OemSceneGameModeDialog;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-ne v0, v1, :cond_0

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    sput-object v2, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    sput-object v2, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "OemSceneGameModePanel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mCurrentShowingView,  Exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v1, :cond_1

    sget-object v1, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogPort:Lcom/android/server/OemSceneGameModeView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    goto :goto_1

    :cond_1
    sget-object v1, Lcom/android/server/OemSceneGameModePanel;->sCurrentShowingViewDialogLand:Lcom/android/server/OemSceneGameModeView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    :goto_1
    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-nez v1, :cond_2

    const-string v1, "OemSceneGameModePanel"

    const-string/jumbo v3, "mCurrentShowingView is null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_2
    :goto_2
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/16 v7, 0x7d8

    const/16 v8, 0x8

    const/4 v9, -0x2

    move-object v4, v1

    invoke-direct/range {v4 .. v9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v2, 0x31

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v2, v2, 0x12

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v2, "GameModeMsg"

    invoke-virtual {v1, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v2, 0x5070017

    invoke-virtual {v1, v2}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    const-string v1, "OemSceneGameModePanel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "sDialogView: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/OemSceneGameModePanel;->sDialogView:Landroid/view/View;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    return-void
.end method

.method private showSimple()V
    .locals 14

    new-instance v0, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    const v3, 0x509000d

    invoke-direct {v0, v1, v3, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v1, 0x507001b

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v3, 0x5070012

    invoke-virtual {v1, v3}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v4, 0x507001d

    invoke-virtual {v3, v4}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const v5, 0x507001a

    invoke-virtual {v4, v5}, Lcom/android/server/OemSceneGameModeView;->findViewById(I)Landroid/view/View;

    const/16 v4, 0x19

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/OemSceneGameModePanel;->checkIfFullWidthFontType(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    const/16 v4, 0xf

    :cond_0
    iget-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->orientation:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_2

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-gt v5, v4, :cond_1

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    if-le v5, v4, :cond_2

    :cond_1
    new-instance v5, Lcom/android/server/OemSceneGameModeMessage;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    const v7, 0x509000e

    invoke-direct {v5, v6, v7, p0, v2}, Lcom/android/server/OemSceneGameModeMessage;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    iput-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    :cond_2
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    const/4 v9, -0x1

    const/4 v10, -0x2

    const/16 v11, 0x7d8

    const/16 v12, 0x8

    const/4 v13, -0x2

    move-object v8, v2

    invoke-direct/range {v8 .. v13}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    iput-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v5, 0x31

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v5, v5, 0x10

    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v5, "GameModeMsg"

    invoke-virtual {v2, v5}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModePanel;->layoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v2, v5, v6}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    const/16 v5, 0x400

    invoke-virtual {v2, v5}, Lcom/android/server/OemSceneGameModeView;->setSystemUiVisibility(I)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModePanel;->animateSimple()V

    return-void
.end method

.method private startHideAnimator()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    return-void
.end method

.method private startHideAnimator(Z)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$6;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$6;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$7;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$7;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHideAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startShownAnimator()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$3;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$3;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$4;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mShowAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method


# virtual methods
.method protected animateSimple()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModePanel;->startShownAnimator()V

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->startHideAnimator(Z)V

    return-void
.end method

.method public configurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    iput v2, v1, Landroid/content/res/Configuration;->orientation:I

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    if-eqz v1, :cond_0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    :cond_0
    return-void
.end method

.method public doneEsportModeGuiderHide()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneGameModePanel$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModePanel$5;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneGameModePanel;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModePanel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current fg pgk: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mHandler:Landroid/os/Handler;

    new-instance v2, Lcom/android/server/OemSceneGameModePanel$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModePanel$2;-><init>(Lcom/android/server/OemSceneGameModePanel;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_1
    return-void
.end method

.method public getFgPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mFgPkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWindowManager()Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mWManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    return-void
.end method

.method public isBtA2dpOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mBtA2dpOn:Z

    return v0
.end method

.method protected isDocked()Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    const/4 v3, 0x1

    :try_start_0
    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerService:Landroid/view/IWindowManager;

    invoke-interface {v4}, Landroid/view/IWindowManager;->getDockedStackSide()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v1

    :goto_0
    move v0, v4

    iget-object v4, p0, Lcom/android/server/OemSceneGameModePanel;->mWindowManagerInternal:Lcom/android/server/wm/WindowManagerInternal;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowManagerInternal;->isMinimizedDock()Z

    move-result v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move v2, v4

    goto :goto_1

    :catch_0
    move-exception v4

    const-string v5, "OemSceneGameModePanel"

    const-string v6, "Remote exception while checking dock status."

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    if-eqz v0, :cond_1

    if-nez v2, :cond_1

    move v1, v3

    nop

    :cond_1
    return v1
.end method

.method public isGameModeUIShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSupportHapticFeedbackApp(Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mHapticFeedbackSupportedApp:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public show()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    iget-object v1, p0, Lcom/android/server/OemSceneGameModePanel;->mCurrentShowingView:Lcom/android/server/OemSceneGameModeView;

    if-eqz v1, :cond_0

    const-string v0, "OemSceneGameModePanel"

    const-string v1, "There is gaming mode UI shown. Ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, -0x1

    sput v1, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->show(Z)V

    return-void
.end method

.method public showDialog(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneGameModePanel;->hide(Z)V

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    return-void
.end method

.method public silentShow(Z)V
    .locals 4

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "1"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method public toShowDetail(Z)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModePanel;->mGameModeUIAcquired:Z

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneGameModePanel;->showDetail(Z)V

    return-void
.end method
