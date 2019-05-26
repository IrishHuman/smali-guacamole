.class public Lcom/android/server/policy/OemTwoPointersDetectionListener;
.super Ljava/lang/Object;
.source "OemTwoPointersDetectionListener.java"

# interfaces
.implements Landroid/view/WindowManagerPolicyConstants$PointerEventListener;


# static fields
.field private static final ACTION_TWO_FINGER_DETECTION:Ljava/lang/String; = "com.oneplus.intent.ACTION_TWO_FINGER_DETECTED"

.field private static final DEBUG:Z

.field private static final HOLD_TIME_OUT:J = 0x3e8L

.field public static IS_TWO_FINGER_DETECTION_SUPPORTED:Z = false

.field private static final TAG:Ljava/lang/String; = "OemTwoPointerDetection"

.field private static final TWO_FINGER_DETECTION_PACKAGE:Ljava/lang/String; = "com.oneplus.setupwizard"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurNumPointers:I

.field private mCurTwoDown:Z

.field private mIsTwoPointerDetectionEnable:Z

.field private mTimerHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemPhoneWindowManager;->DEBUG:Z

    sput-boolean v0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->DEBUG:Z

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x8e

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->IS_TWO_FINGER_DETECTION_SUPPORTED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mIsTwoPointerDetectionEnable:Z

    new-instance v0, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;

    invoke-direct {v0, p0}, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;-><init>(Lcom/android/server/policy/OemTwoPointersDetectionListener;)V

    iput-object v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mTimerHandler:Landroid/os/Handler;

    iput-object p1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/policy/OemTwoPointersDetectionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurTwoDown:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/policy/OemTwoPointersDetectionListener;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mIsTwoPointerDetectionEnable:Z

    return v0
.end method

.method static synthetic access$200()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->DEBUG:Z

    return v0
.end method


# virtual methods
.method public onPointerEvent(Landroid/view/MotionEvent;)V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mIsTwoPointerDetectionEnable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v1

    iput v1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurNumPointers:I

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v0, :cond_3

    and-int/lit16 v5, v0, 0xff

    const/4 v6, 0x5

    if-ne v5, v6, :cond_1

    goto :goto_0

    :cond_1
    if-eq v0, v3, :cond_2

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    and-int/lit16 v3, v0, 0xff

    const/4 v5, 0x6

    if-ne v3, v5, :cond_6

    :cond_2
    iget v3, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurNumPointers:I

    if-ge v3, v2, :cond_6

    iput-boolean v4, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurTwoDown:Z

    iget-object v2, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    :goto_0
    iget v5, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurNumPointers:I

    if-ne v5, v2, :cond_5

    iput-boolean v3, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurTwoDown:Z

    sget-boolean v2, Lcom/android/server/policy/OemTwoPointersDetectionListener;->DEBUG:Z

    if-eqz v2, :cond_4

    const-string v2, "OemTwoPointerDetection"

    const-string v3, "Started Two Finger Detection"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    iget-object v2, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mTimerHandler:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mTimerHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_5
    iput-boolean v4, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mCurTwoDown:Z

    :cond_6
    :goto_1
    return-void
.end method

.method public setTwoPointerDetectionEnable(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemTwoPointerDetection"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "TwoPointerDetectionEnable : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iput-boolean p1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mIsTwoPointerDetectionEnable:Z

    return-void
.end method

.method public startTwoFingerDetected(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemTwoPointerDetection"

    const-string v1, "Broadcast:Two Finger Detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oneplus.intent.ACTION_TWO_FINGER_DETECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v1, "com.oneplus.setupwizard"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    return-void
.end method
