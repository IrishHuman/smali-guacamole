.class public Lcom/android/systemui/LatencyTester;
.super Lcom/android/systemui/SystemUI;
.source "LatencyTester.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/SystemUI;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/LatencyTester;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/LatencyTester;->fakeWakeAndUnlock()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/LatencyTester;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/LatencyTester;->fakeTurnOnScreen()V

    return-void
.end method

.method private fakeTurnOnScreen()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->isEnabled(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/internal/util/LatencyTracker;->getInstance(Landroid/content/Context;)Lcom/android/internal/util/LatencyTracker;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/internal/util/LatencyTracker;->onActionStart(I)V

    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-string v3, "android.policy:LATENCY_TESTS"

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/PowerManager;->wakeUp(JLjava/lang/String;)V

    return-void
.end method

.method private fakeWakeAndUnlock()V
    .locals 2

    const-class v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {p0, v0}, Lcom/android/systemui/LatencyTester;->getComponent(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBar;->getFingerprintUnlockController()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAcquired(I)V

    nop

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->onFingerprintAuthenticated(I)V

    return-void
.end method


# virtual methods
.method public start()V
    .locals 3

    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "com.android.systemui.latency.ACTION_TURN_ON_SCREEN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/systemui/LatencyTester$1;

    invoke-direct {v2, p0}, Lcom/android/systemui/LatencyTester$1;-><init>(Lcom/android/systemui/LatencyTester;)V

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method
