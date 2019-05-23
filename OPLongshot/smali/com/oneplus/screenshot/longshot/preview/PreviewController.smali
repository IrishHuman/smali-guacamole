.class public Lcom/oneplus/screenshot/longshot/preview/PreviewController;
.super Ljava/lang/Object;
.source "PreviewController.java"

# interfaces
.implements Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;
    }
.end annotation


# static fields
.field private static final MSG_BG_CREATE_PREVIEW:I = 0x3e8


# instance fields
.field private PAGE_HEIGHT:I

.field private READY_TO_PREVIEW_CAHCHE_COUNT:I

.field private TAG:Ljava/lang/String;

.field private isPreviewStop:Z

.field private isStarted:Z

.field private mBackgroundHandler:Landroid/os/Handler;

.field private mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

.field private mCurrentBitmapCacheIndex:I

.field private mCurrentpage:I

.field private mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

.field private mMoveDistance:I

.field private mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotContext;Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Longshot.PreviewController"

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    const/4 v0, 0x4

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->READY_TO_PREVIEW_CAHCHE_COUNT:I

    const/16 v0, 0x258

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->PAGE_HEIGHT:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentpage:I

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    new-instance v1, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$1;-><init>(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    iput v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mMoveDistance:I

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    new-instance v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {v0, p2, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;-><init>(Landroid/content/Context;Lcom/oneplus/screenshot/longshot/state/LongshotContext;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;)V

    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/screenshot/longshot/preview/PreviewController;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateBitmapFinish(Z)V

    return-void
.end method

.method private addBitmap(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 11

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "add bitmapCache index:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    const/4 v6, 0x1

    if-eqz v5, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getTop()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v2

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v7, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v7, " with top h:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " w:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v7

    add-int/lit8 v2, v7, 0x1

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v7, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v7, " with bitmap h:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v7, " w:"

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_1
    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    if-eqz v5, :cond_2

    if-eqz p3, :cond_2

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBottom()Landroid/graphics/Bitmap;

    move-result-object v5

    sget-object v7, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v5, v7, v6}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    invoke-virtual {p1}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v6

    add-int/lit8 v2, v6, 0x2

    iget-object v6, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v6, v5, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateDrawable(Landroid/graphics/Bitmap;I)V

    const-string v6, " with bottom h:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    const-string v6, " w:"

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    :cond_2
    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    iget-object v7, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "addBitmap time:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long v9, v5, v3

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateBitmapFinish(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->updateFinish(Z)V

    return-void
.end method

.method private updateNextBitmapCache()V
    .locals 11

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    iget v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-gt v3, v2, :cond_1

    invoke-virtual {v0, v2}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    const/4 v4, 0x1

    if-nez v2, :cond_0

    move v5, v4

    goto :goto_1

    :cond_0
    move v5, v1

    :goto_1
    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isLastCache()Z

    move-result v6

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->isStithComplete()Z

    move-result v7

    invoke-virtual {v3, v2}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->setIndex(I)V

    iget-object v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " updateNextBitmapCache JoinCache size:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->size()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " mCurrentBitmapCacheIndex:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v10, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " isFirst:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isLastCache:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " isStitched:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v10, " index:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getIndex()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0, v3, v5, v6}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V

    if-eqz v7, :cond_2

    iget v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    add-int/2addr v8, v4

    iput v8, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    :cond_0
    return-void
.end method

.method public getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreviewLength()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->getPreviewLength()I

    move-result v0

    return v0
.end method

.method public isPreviewComplete()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    return v0
.end method

.method public onBackgroundScrollcomplete()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    const-string v1, " onBackgroundScrollcomplete"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onBackgroundScrollcomplete()V

    return-void
.end method

.method public onScrollChanged(II)V
    .locals 0

    return-void
.end method

.method public onScrollcomplete()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;->onPreviewComplete()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStart isStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    const-string v1, " onStart:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStart()V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v1}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getFirstCache()Lcom/oneplus/screenshot/longshot/cache/ImageCache;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/oneplus/screenshot/longshot/cache/ImageCache;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setFirstBitmap(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " onStop isStarted:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onStop()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->TAG:Ljava/lang/String;

    const-string v1, " onStop:"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public removeCallback(Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;)V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCallback:Lcom/oneplus/screenshot/longshot/preview/PreviewController$Callback;

    return-void
.end method

.method public requestNextBitmapCache()V
    .locals 0

    return-void
.end method

.method public setNavibar(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setNavibarView(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public setStatusbar(Landroid/graphics/Bitmap;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mPreviewWindow:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v0, p1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->setStatusbrView(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public updateBitmapCache()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isPreviewStop:Z

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mCurrentBitmapCacheIndex:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mLongshotContext:Lcom/oneplus/screenshot/longshot/state/LongshotContext;

    invoke-interface {v0}, Lcom/oneplus/screenshot/longshot/state/LongshotContext;->getJoinCache()Lcom/oneplus/screenshot/longshot/cache/JoinCache;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/cache/JoinCache;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/cache/BitmapCache;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iput v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->PAGE_HEIGHT:I

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->isStarted:Z

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->updateNextBitmapCache()V

    :cond_1
    return-void
.end method

.method public updatePreview(Lcom/oneplus/screenshot/longshot/cache/BitmapCache;ZZ)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    iput p2, v0, Landroid/os/Message;->arg1:I

    iput p3, v0, Landroid/os/Message;->arg2:I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewController;->mBackgroundHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
