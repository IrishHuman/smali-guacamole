.class public Lcom/android/systemui/fingerprint/FrameAnimationHelper;
.super Ljava/lang/Object;
.source "FrameAnimationHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    }
.end annotation


# instance fields
.field private final MSG_DECODE_BITMAP:I

.field private TAG:Ljava/lang/String;

.field private mAnimPostDelayTime:J

.field private mAnimationView:Landroid/widget/ImageView;

.field private mBitmapArray:[Landroid/graphics/Bitmap;

.field private mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

.field private mDecodeIndex:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mLoop:Z

.field private mOrder:I

.field private mPlayFrameNum:I

.field private mStartFrameIndex:I

.field private runnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/widget/ImageView;[IJII)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "FrameAnimationHelper"

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const/16 v0, 0x100

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->MSG_DECODE_BITMAP:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    new-instance v0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$2;-><init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    move-wide v0, p3

    nop

    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    iput-object p2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    iput p5, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    iput p6, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[I
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)J
    .locals 2

    iget-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    return-wide v0
.end method

.method static synthetic access$1100(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    return-object v0
.end method

.method static synthetic access$1202(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->decodeBitmap()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/systemui/fingerprint/FrameAnimationHelper;I)I
    .locals 0

    iput p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return p1
.end method

.method static synthetic access$408(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 2

    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)I
    .locals 1

    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)[Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/systemui/fingerprint/FrameAnimationHelper;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private decodeBitmap()V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    :try_start_0
    iget v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    iget v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    add-int/2addr v2, v3

    if-lt v2, v1, :cond_1

    return-void

    :cond_1
    iget v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    iget-object v4, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    aget v4, v4, v2

    invoke-static {v0, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v4

    iget-object v5, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aput-object v4, v5, v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    return-void
.end method


# virtual methods
.method public prepareResource()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "prepareResource startFrameIndex = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mStartFrameIndex:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " frameNum = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-nez v0, :cond_1

    iget v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mPlayFrameNum:I

    new-array v0, v0, [Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->startHandlerThread()V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method public resetResource()V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string v1, "resetResource"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mBitmapArray:[Landroid/graphics/Bitmap;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v3, 0x100

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v2, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->quit()V

    :cond_2
    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    iput v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mDecodeIndex:I

    return-void
.end method

.method public start(Z)V
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->prepareResource()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    iput-boolean p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const v2, 0x106000d

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x32

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public startHandlerThread()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "HandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$1;-><init>(Lcom/android/systemui/fingerprint/FrameAnimationHelper;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    :cond_0
    return-void
.end method

.method public stop()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mOrder:I

    iput-boolean v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mLoop:Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->runnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->removeCallbacks(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimationView:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    :cond_1
    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public updateAnimPostDelayTime(J)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    move-wide v0, p1

    nop

    :cond_0
    iput-wide v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mAnimPostDelayTime:J

    return-void
.end method

.method public waitAnimationFinished(Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mFrames:[I

    array-length v0, v0

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fingerprint/FrameAnimationHelper;->mCallback:Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;

    invoke-interface {v0}, Lcom/android/systemui/fingerprint/FrameAnimationHelper$Callbacks;->animationFinished()V

    :cond_1
    return-void
.end method
