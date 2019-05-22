.class public Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;
.super Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;
.source "ThreeKeyVibratorPolicy.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ThreeKeyVibratorPolicy"


# instance fields
.field private DEBUG:Z

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mInit:Z

.field private final mMiddleVibration:Ljava/lang/Runnable;

.field private mVibrator:Landroid/os/Vibrator;

.field mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Lcom/oneplus/three_key/IThreeKeyPolicy$Stub;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    iput-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;

    invoke-direct {v0, p0}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;-><init>(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)V

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mMiddleVibration:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Landroid/os/Vibrator;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method private acquireWakeLock(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "ThreeKeyVibratorPolicy"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "ThreeKeyVibratorPolicy"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mWakeLock.acquire(), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    :cond_2
    return-void
.end method

.method private releaseWakeLock()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "mWakeLock.release()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    :cond_1
    return-void
.end method


# virtual methods
.method public setDown()V
    .locals 6

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "setDown"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x70

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    const-wide/16 v4, 0xfa

    const/16 v2, 0x1f4

    if-eqz v1, :cond_1

    const/16 v0, 0x3f5

    invoke-direct {p0, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->acquireWakeLock(I)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mMiddleVibration:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1}, Landroid/os/Vibrator;->cancel()V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v1, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0x8d

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->acquireWakeLock(I)V

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_2
    return-void
.end method

.method public setInitMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    return-void
.end method

.method public setMiddle()V
    .locals 5

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "setMiddle"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x70

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x1f4

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->acquireWakeLock(I)V

    const-string/jumbo v0, "sys.vib.three.delay"

    const/16 v1, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mMiddleVibration:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mMiddleVibration:Ljava/lang/Runnable;

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0x8d

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    const-wide/16 v1, 0x32

    if-eqz v0, :cond_2

    const/16 v0, 0xc8

    invoke-direct {p0, v0}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->acquireWakeLock(I)V

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method

.method public setUp()V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mInit:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "ThreeKeyVibratorPolicy"

    const-string/jumbo v1, "setUp"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/16 v2, 0x70

    const/4 v3, 0x0

    aput v2, v1, v3

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    invoke-virtual {v0}, Landroid/os/Vibrator;->cancel()V

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mMiddleVibration:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void

    :cond_1
    new-array v0, v0, [I

    const/16 v1, 0x8d

    aput v1, v0, v3

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v1, 0x12c

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(J)V

    return-void
.end method
