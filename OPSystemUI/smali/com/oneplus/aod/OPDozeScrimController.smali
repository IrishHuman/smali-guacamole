.class public Lcom/oneplus/aod/OPDozeScrimController;
.super Ljava/lang/Object;
.source "OPDozeScrimController.java"


# instance fields
.field private final mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

.field private mDozing:Z

.field private mFullyPulsing:Z

.field private final mHandler:Landroid/os/Handler;

.field private mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

.field private final mPulseOut:Ljava/lang/Runnable;

.field private final mPulseOutExtended:Ljava/lang/Runnable;

.field private mPulseReason:I

.field private final mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/phone/DozeParameters;Landroid/view/ViewGroup;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$1;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$2;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    new-instance v0, Lcom/oneplus/aod/OPDozeScrimController$3;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPDozeScrimController$3;-><init>(Lcom/oneplus/aod/OPDozeScrimController;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    const-string v0, "power"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const-string v1, "OPDozeScrimController"

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/aod/OPDozeScrimController;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OPDozeScrimController;)I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    return v0
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseStarted()V

    return-void
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oneplus/aod/OPDozeScrimController;)Lcom/android/systemui/statusbar/phone/DozeParameters;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oneplus/aod/OPDozeScrimController;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$702(Lcom/oneplus/aod/OPDozeScrimController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mFullyPulsing:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oneplus/aod/OPDozeScrimController;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseFinished()V

    return-void
.end method

.method static synthetic access$900(Lcom/oneplus/aod/OPDozeScrimController;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    return-object v0
.end method

.method private pulseFinished()V
    .locals 2

    invoke-static {}, Lcom/android/systemui/doze/DozeLog;->tracePulseFinish()V

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPDozeScrimController"

    const-string v1, "release pulse wake lock"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method

.method private pulseStarted()V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    invoke-static {v0}, Lcom/android/systemui/doze/DozeLog;->tracePulseStart(I)V

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    invoke-interface {v0}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseStarted()V

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onFinished()V

    :cond_0
    return-void
.end method


# virtual methods
.method public cancelPulsing()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const-string v0, "OPDozeScrimController"

    const-string v1, "Cancel pulsing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mFullyPulsing:Z

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOutExtended:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OPDozeScrimController;->pulseFinished()V

    :cond_0
    return-void
.end method

.method public extendPulse(I)V
    .locals 4

    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extendPulse: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iput p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseOut:Ljava/lang/Runnable;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v2, p1}, Lcom/android/systemui/statusbar/phone/DozeParameters;->getPulseVisibleDuration(I)I

    move-result v2

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public isPulsing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public pulse(Lcom/android/systemui/doze/DozeHost$PulseCallback;I)V
    .locals 3

    if-eqz p1, :cond_3

    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    iput p2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseReason:I

    iget-object v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mScrimCallback:Lcom/android/systemui/statusbar/phone/ScrimController$Callback;

    invoke-interface {v0}, Lcom/android/systemui/statusbar/phone/ScrimController$Callback;->onDisplayBlanked()V

    return-void

    :cond_1
    :goto_0
    const-string v0, "OPDozeScrimController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Pulse supressed. Dozing: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozeParameters:Lcom/android/systemui/statusbar/phone/DozeParameters;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " had callback? "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/aod/OPDozeScrimController;->mPulseCallback:Lcom/android/systemui/doze/DozeHost$PulseCallback;

    if-eqz v2, :cond_2

    const/4 v2, 0x1

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-interface {p1}, Lcom/android/systemui/doze/DozeHost$PulseCallback;->onPulseFinished()V

    return-void

    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "callback must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setDozing(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-ne v0, p1, :cond_0

    return-void

    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    iget-boolean v0, p0, Lcom/oneplus/aod/OPDozeScrimController;->mDozing:Z

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/OPDozeScrimController;->cancelPulsing()V

    :cond_1
    return-void
.end method
