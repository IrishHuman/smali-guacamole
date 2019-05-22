.class public Lcom/oneplus/aod/AodWindowManager;
.super Ljava/lang/Object;
.source "AodWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodWindowManager$SettingObserver;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mAodView:Lcom/oneplus/aod/AodMain;

.field private mAodWindowView:Landroid/widget/RelativeLayout;

.field private mContext:Landroid/content/Context;

.field private mDozing:Z

.field private mFpUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

.field private mHandler:Landroid/os/Handler;

.field private mIsWakeAndUnlock:Z

.field private mIsWindowRemoved:Z

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLSState:Lcom/android/systemui/plugin/LSState;

.field private mPm:Landroid/os/IPowerManager;

.field private final mRemoveWindow:Ljava/lang/Runnable;

.field private mSettingsOberver:Lcom/oneplus/aod/AodWindowManager$SettingObserver;

.field private mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field private mWakingUpReason:Ljava/lang/String;

.field private mWm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/RelativeLayout;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AodWindowManager"

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->TAG:Ljava/lang/String;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodWindowManager$SettingObserver;-><init>(Lcom/oneplus/aod/AodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    const-string v0, ""

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    new-instance v0, Lcom/oneplus/aod/AodWindowManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodWindowManager$1;-><init>(Lcom/oneplus/aod/AodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    new-instance v0, Lcom/oneplus/aod/AodWindowManager$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodWindowManager$2;-><init>(Lcom/oneplus/aod/AodWindowManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/AodWindowManager;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const v0, 0x7f0a02f1

    invoke-virtual {p2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodMain;

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mAodView:Lcom/oneplus/aod/AodMain;

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWm:Landroid/view/WindowManager;

    const-string v0, "power"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/IPowerManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IPowerManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mPm:Landroid/os/IPowerManager;

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mLSState:Lcom/android/systemui/plugin/LSState;

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodWindowManager$SettingObserver;->observe()V

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    invoke-static {p1, v0}, Lcom/oneplus/aod/AodUtils;->init(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/AodWindowManager;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/AodWindowManager;)Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mFpUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oneplus/aod/AodWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWakeAndUnlock:Z

    return p1
.end method

.method static synthetic access$300(Lcom/oneplus/aod/AodWindowManager;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWindowRemoved:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oneplus/aod/AodWindowManager;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWindowRemoved:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oneplus/aod/AodWindowManager;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/AodWindowManager;)Landroid/view/WindowManager;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWm:Landroid/view/WindowManager;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/AodWindowManager;)Lcom/oneplus/aod/AodWindowManager$SettingObserver;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    return-object v0
.end method

.method private getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;
    .locals 5

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    const/16 v1, 0x8ff

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v1, 0x500

    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/4 v2, 0x1

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x1b

    if-lt v3, v4, :cond_0

    iget v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const/high16 v4, 0x200000

    or-int/2addr v3, v4

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    :cond_0
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    const/4 v3, -0x2

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    const/4 v3, -0x1

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v3, 0x11

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenOrientation:I

    const-string v2, "OPAod"

    invoke-virtual {v0, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    const/4 v2, 0x3

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    return-object v0
.end method


# virtual methods
.method public onWakingAndUnlocking()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mPm:Landroid/os/IPowerManager;

    invoke-interface {v0}, Landroid/os/IPowerManager;->getWakingUpReason()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "AodWindowManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception e = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    const-string v1, "FINGERPRINT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/AodWindowManager;->stopDozing()V

    :cond_0
    return-void
.end method

.method public startDozing()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mDozing:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mFpUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mLSState:Lcom/android/systemui/plugin/LSState;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mFpUnlockController:Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mDozing:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWakeAndUnlock:Z

    const-string v1, ""

    iput-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->isAttachedToWindow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const-string v1, "AodWindowManager"

    const-string v2, "mAodView has already been added to window, do not add it again."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mWm:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/oneplus/aod/AodWindowManager;->getAodViewLayoutParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWindowRemoved:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getSystemUiVisibility()I

    move-result v1

    or-int/lit16 v1, v1, 0x700

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    return-void
.end method

.method public stopDozing()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mDozing:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodWindowManager;->mDozing:Z

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mStatusBarWindowManager:Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/StatusBarWindowManager;->isShowingLiveWallpaper(Z)Z

    move-result v1

    xor-int/2addr v1, v2

    const-string v2, "AodWindowManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleStopDozing: mIsWakeAndUnlock = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/oneplus/aod/AodWindowManager;->mIsWakeAndUnlock:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", hasLockWallpaper = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_1

    const-string v3, "AodWindowManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleStopDozing mWakingUpReason "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isCustomFingerprint()Z

    move-result v3

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    const-string v4, "FINGERPRINT"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const/16 v0, 0x46

    :goto_0
    goto :goto_1

    :cond_3
    iget-object v3, p0, Lcom/oneplus/aod/AodWindowManager;->mWakingUpReason:Ljava/lang/String;

    const-string v4, "FINGERPRINT_WALLPAPER"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_4

    const/16 v0, 0x64

    nop

    :cond_4
    goto :goto_0

    :goto_1
    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mAodWindowView:Landroid/widget/RelativeLayout;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    iget-object v2, p0, Lcom/oneplus/aod/AodWindowManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/oneplus/aod/AodWindowManager;->mRemoveWindow:Ljava/lang/Runnable;

    int-to-long v4, v0

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodWindowManager;->mSettingsOberver:Lcom/oneplus/aod/AodWindowManager$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method
