.class public Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;
.super Ljava/lang/Object;
.source "FingerprintAnimationCtrl.java"


# static fields
.field private static final DEBUG:Z

.field public static TYPE_ANIMATION_TOUCH_DOWN:I

.field public static TYPE_ANIMATION_TOUCH_UP:I

.field public static TYPE_NONE:I


# instance fields
.field private final KEY_ANIMATION_RES:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private mAnimPostDelayTime:J

.field private mAnimPostDelayTimeOnAod:J

.field private mAnimationState:I

.field private mContext:Landroid/content/Context;

.field private mCurAnimationType:I

.field private mDownAnimFrameNum:I

.field private mDownAnimStartIndex:I

.field private mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

.field private mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field private mHandler:Landroid/os/Handler;

.field private mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

.field mSettingsObserver:Landroid/database/ContentObserver;

.field private mUpAnimFrameNum:I

.field private mUpAnimStartIndex:I

.field private mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

.field private mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    const/4 v0, 0x0

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    const/4 v0, 0x2

    sput v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    return-void
.end method

.method constructor <init>(Landroid/view/ViewGroup;Landroid/content/Context;)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FingerprintAnimationCtrl"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v0, "op_custom_unlock_animation_style"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->KEY_ANIMATION_RES:Ljava/lang/String;

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    iput v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl$1;-><init>(Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    const v0, 0x7f0a02fc

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    const v0, 0x7f0a02fd

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110283

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f110284

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v4, "Parse fingerprint animation post delay time error"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    iput-wide v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/database/ContentObserver;->onChange(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "op_custom_unlock_animation_style"

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, -0x1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method protected checkAnimationValueValid()V
    .locals 5

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_custom_unlock_animation_style"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3, v0}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " checkAnimationValueValid: current: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " new: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isMCLVersion()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "op_custom_unlock_animation_style"

    iget v4, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3, v4, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void

    :cond_0
    iput v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownStartFrameIndex(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownPlayFrameNum(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpStartFrameIndex(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2, v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpPlayFrameNum(Landroid/content/Context;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    return-void
.end method

.method public playAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "playAnimation: type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-eq p1, v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->stopAnimation(I)V

    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne p1, v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v0, :cond_2

    return-void

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->start(Z)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    goto :goto_0

    :cond_3
    sget v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v0, :cond_4

    return-void

    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->start(Z)V

    :cond_5
    :goto_0
    return-void
.end method

.method public resetState()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v1, "resetState"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->resetResource()V

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->resetResource()V

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    return-void
.end method

.method public stopAnimation(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stopAnimation: current state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", mOnGoingAnimationView = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->stop()V

    :cond_2
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mOnGoingAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    :cond_3
    iput p1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    return-void
.end method

.method public updateAnimationRes(Z)V
    .locals 10

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " updateanimationRes to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mDownAnimationHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", mUpAnimationHelper = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_1

    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTime:J

    goto :goto_0

    :cond_1
    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimPostDelayTimeOnAod:J

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v2, :cond_2

    new-instance v9, Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getDownAnimationRes(I)[I

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimStartIndex:I

    iget v8, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimFrameNum:I

    move-object v2, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->updateAnimPostDelayTime(J)V

    :goto_1
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-nez v2, :cond_3

    new-instance v9, Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mCurAnimationType:I

    invoke-static {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationResHelper;->getUpAnimationRes(I)[I

    move-result-object v4

    iget v7, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimStartIndex:I

    iget v8, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimFrameNum:I

    move-object v2, v9

    move-wide v5, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;-><init>(Landroid/widget/ImageView;[IJII)V

    iput-object v9, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    goto :goto_2

    :cond_3
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v2, v0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->updateAnimPostDelayTime(J)V

    :goto_2
    return-void
.end method

.method public updateLayoutDimension()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07020c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07020b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    iput v0, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationView:Lcom/android/systemui/fingerprint/FingerprintAnimationView;

    invoke-virtual {v3, v2}, Lcom/android/systemui/fingerprint/FingerprintAnimationView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V
    .locals 3

    sget-boolean v0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->DEBUG:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "register fp animation\'s callback = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", animationState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_NONE:I

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TAG:Ljava/lang/String;

    const-string v1, "It shouldn\'t go into the state."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_DOWN:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mDownAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mAnimationState:I

    sget v1, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->TYPE_ANIMATION_TOUCH_UP:I

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FingerprintAnimationCtrl;->mUpAnimationHelper:Lcom/android/systemui/fingerprint/FrameAnimationHelper;

    invoke-virtual {v0, p1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V

    :cond_3
    :goto_0
    return-void
.end method
