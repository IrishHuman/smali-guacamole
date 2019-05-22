.class public Lcom/oneplus/aod/AodDisplayViewManager;
.super Ljava/lang/Object;
.source "AodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;
    }
.end annotation


# instance fields
.field private KEY_CLOCK_STYLE:Ljava/lang/String;

.field private KEY_DISPLAY_TEXT:Ljava/lang/String;

.field private ON_FINGERPRINT_HIDE_CLOCK:Z

.field private final TAG:Ljava/lang/String;

.field private mAnimationBgLeft:Landroid/graphics/Bitmap;

.field private mAnimationBgRight:Landroid/graphics/Bitmap;

.field private mAodMainView:Lcom/oneplus/aod/AodMain;

.field private mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

.field private mContext:Landroid/content/Context;

.field private mDozeHost:Lcom/android/systemui/doze/DozeHost;

.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mHandler:Landroid/os/Handler;

.field private mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

.field private mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field private mLayoutDir:I

.field private mLightAnimator:Landroid/animation/ValueAnimator;

.field private mNotificationAnimView:Landroid/view/View;

.field private mNotificationIconCtrl:Lcom/oneplus/aod/AodNotificationIconAreaController;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mScrimView:Landroid/view/View;

.field private final mSettingObserver:Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

.field private mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

.field private mStatus:I

.field private mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

.field private mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

.field private final mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/systemui/doze/DozeHost;Lcom/android/systemui/statusbar/phone/StatusBar;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "AodDisplayViewManager"

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->TAG:Ljava/lang/String;

    const-string/jumbo v0, "sys.aod.hide.clock"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->ON_FINGERPRINT_HIDE_CLOCK:Z

    const-string v0, "aod_clock_style"

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_CLOCK_STYLE:Ljava/lang/String;

    const-string v0, "aod_display_text"

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;-><init>(Lcom/oneplus/aod/AodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

    new-instance v0, Lcom/oneplus/aod/AodDisplayViewManager$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodDisplayViewManager$1;-><init>(Lcom/oneplus/aod/AodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    new-instance v0, Lcom/oneplus/aod/AodDisplayViewManager$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/AodDisplayViewManager$3;-><init>(Lcom/oneplus/aod/AodDisplayViewManager;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    const v0, 0x7f0a02f1

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodMain;

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    const v0, 0x7f0a03f2

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/SingleNotificationView;

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->getLayoutDirection()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLayoutDir:I

    const v0, 0x7f0a0441

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/AodThreeKeyStatusView;

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    const v0, 0x7f0a005d

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mScrimView:Landroid/view/View;

    iput-object p1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getInstance(Landroid/content/Context;)Lcom/android/systemui/statusbar/phone/DozeParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    iput-object p3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v2}, Lcom/android/systemui/doze/DozeHost;->addCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    iput-object p4, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    const v0, 0x7f0a02ba

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    new-instance v0, Lcom/oneplus/aod/ClockViewCtrl;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    iget-object v3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-direct {v0, p1, v2, v3}, Lcom/oneplus/aod/ClockViewCtrl;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardUpdateMonitor;)V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->updateClockVisibility()V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getInstance(Landroid/content/Context;)Lcom/android/keyguard/KeyguardUpdateMonitor;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

    invoke-virtual {v2}, Lcom/oneplus/aod/ClockViewCtrl;->getClockStyle()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    new-instance v0, Lcom/oneplus/aod/AodNotificationIconAreaController;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    iget-object v3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v3

    invoke-direct {v0, p1, v2, v3}, Lcom/oneplus/aod/AodNotificationIconAreaController;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;I)V

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/AodNotificationIconAreaController;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_CLOCK_STYLE:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/SingleNotificationView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodThreeKeyStatusView;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/AodDisplayViewManager;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodMain;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodNotificationIconAreaController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/AodNotificationIconAreaController;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/AodDisplayViewManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_CLOCK_STYLE:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oneplus/aod/AodDisplayViewManager;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    return-object v0
.end method

.method private animateNotification()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [F

    fill-array-data v0, :array_0

    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    const-wide/16 v1, 0x7d0

    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    new-instance v1, Lcom/oneplus/aod/AodDisplayViewManager$2;

    invoke-direct {v1, p0}, Lcom/oneplus/aod/AodDisplayViewManager$2;-><init>(Lcom/oneplus/aod/AodDisplayViewManager;)V

    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x40000000    # 2.0f
    .end array-data
.end method

.method private resetNotificationAnimView()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setScaleY(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgRight:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const v2, 0x7f0a02b9

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgRight:Landroid/graphics/Bitmap;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const v2, 0x7f0a02b8

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    iput-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    :cond_1
    return-void
.end method

.method private updateView()V
    .locals 5

    const-string v0, "AodDisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateView: state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    const/4 v1, 0x0

    const/4 v2, 0x4

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mScrimView:Landroid/view/View;

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/SingleNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodThreeKeyStatusView;->setVisibility(I)V

    invoke-direct {p0}, Lcom/oneplus/aod/AodDisplayViewManager;->resetNotificationAnimView()V

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mScrimView:Landroid/view/View;

    const v3, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v3}, Landroid/view/View;->setAlpha(F)V

    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v0, v3, :cond_3

    invoke-static {}, Lcom/oneplus/aod/AodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcom/oneplus/aod/AodUtils;->isAlwaysOnEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/oneplus/aod/AodUtils;->isAlwaysOnEnabledWithTimer()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    goto :goto_1

    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/SingleNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodThreeKeyStatusView;->setVisibility(I)V

    goto :goto_2

    :cond_3
    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    if-ne v0, v4, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/SingleNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodThreeKeyStatusView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/AodMain;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSingleNotificationView:Lcom/oneplus/aod/SingleNotificationView;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/SingleNotificationView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mThreeKeyView:Lcom/oneplus/aod/AodThreeKeyStatusView;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodThreeKeyStatusView;->setVisibility(I)V

    :cond_5
    :goto_2
    invoke-static {}, Lcom/oneplus/aod/AodUtils;->isNotificationLightEnabled()Z

    move-result v0

    if-eqz v0, :cond_8

    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    if-ne v0, v4, :cond_7

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLightAnimator:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v0

    if-nez v0, :cond_8

    :cond_6
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const v1, 0x7f0a02b9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationAnimView:Landroid/view/View;

    const v2, 0x7f0a02b8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f4

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgRight:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0800f3

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgRight:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v2, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAnimationBgLeft:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    invoke-direct {p0}, Lcom/oneplus/aod/AodDisplayViewManager;->animateNotification()V

    goto :goto_3

    :cond_7
    invoke-direct {p0}, Lcom/oneplus/aod/AodDisplayViewManager;->resetNotificationAnimView()V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getAodNotificationIconCtrl()Lcom/oneplus/aod/AodNotificationIconAreaController;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mNotificationIconCtrl:Lcom/oneplus/aod/AodNotificationIconAreaController;

    return-object v0
.end method

.method public onConfigChanged(I)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLayoutDir:I

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mAodMainView:Lcom/oneplus/aod/AodMain;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->updateRTL()V

    iput p1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mLayoutDir:I

    :cond_0
    return-void
.end method

.method public onFingerPressed(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->ON_FINGERPRINT_HIDE_CLOCK:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "AodDisplayViewManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFingerPressed pressed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mScrimView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mScrimView:Landroid/view/View;

    const v1, 0x3e99999a    # 0.3f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method public removeDozeHostCallback()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mDozeHost:Lcom/android/systemui/doze/DozeHost;

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mHostCallback:Lcom/android/systemui/doze/DozeHost$Callback;

    invoke-interface {v0, v1}, Lcom/android/systemui/doze/DozeHost;->removeCallback(Lcom/android/systemui/doze/DozeHost$Callback;)V

    :cond_0
    return-void
.end method

.method public resetStatus()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    invoke-direct {p0}, Lcom/oneplus/aod/AodDisplayViewManager;->updateView()V

    return-void
.end method

.method public startDozing()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mClockViewCtrl:Lcom/oneplus/aod/ClockViewCtrl;

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->startDozing()V

    return-void
.end method

.method public unregisterCallback()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mSettingObserver:Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public updateForPulseReason(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatusbar:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->mIsDozingCustom()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "AodDisplayViewManager"

    const-string/jumbo v1, "setState: don\'t set view  if not dozing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isInteractive()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "AodDisplayViewManager"

    const-string/jumbo v1, "setState: don\'t set view  if waking up"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_5

    const/16 v1, 0x8

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x1

    if-ne p1, v1, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    const/4 v1, 0x6

    if-ne p1, v1, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_4
    const/16 v1, 0x9

    if-ne p1, v1, :cond_6

    return-void

    :cond_5
    :goto_0
    const/4 v0, 0x1

    :cond_6
    :goto_1
    const-string v1, "AodDisplayViewManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", from="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    if-eq v1, v0, :cond_7

    iput v0, p0, Lcom/oneplus/aod/AodDisplayViewManager;->mStatus:I

    invoke-direct {p0}, Lcom/oneplus/aod/AodDisplayViewManager;->updateView()V

    :cond_7
    return-void
.end method
