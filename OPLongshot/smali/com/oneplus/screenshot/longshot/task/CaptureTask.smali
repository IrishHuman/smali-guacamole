.class public Lcom/oneplus/screenshot/longshot/task/CaptureTask;
.super Landroid/os/AsyncTask;
.source "CaptureTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Integer;",
        "Ljava/lang/Void;",
        "Ljava/util/List<",
        "Landroid/graphics/Bitmap;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final DEGREE_0:I = 0x0

.field private static final DEGREE_180:I = 0xb4

.field private static final DEGREE_270:I = 0x5a

.field private static final DEGREE_90:I = 0x10e

.field private static final TAG:Ljava/lang/String; = "Longshot.CaptureTask"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDisplayMetrics:Landroid/util/DisplayMetrics;

.field private mIsFirst:Z

.field private mIsNavgationBarVisiable:Z

.field private mIsStatusbarVisiable:Z

.field private mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

.field private mMatrix:Landroid/graphics/Matrix;

.field private mRotation:I

.field private mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;Landroid/content/Context;Landroid/util/DisplayMetrics;Landroid/os/IBinder;ZZZ)V
    .locals 3

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    new-instance v0, Landroid/graphics/Matrix;

    invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mMatrix:Landroid/graphics/Matrix;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mRotation:I

    iput-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    iput-boolean v1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    iput-object p2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iput-object p4, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    iput-boolean p5, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    iput-boolean p6, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    iput-boolean p7, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    const-string v0, "Longshot.CaptureTask"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CaptureTask , mIsFirst:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getDegreesForRotation(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    const/4 v0, 0x0

    return v0

    :pswitch_0
    const/16 v0, 0x5a

    return v0

    :pswitch_1
    const/16 v0, 0xb4

    return v0

    :pswitch_2
    const/16 v0, 0x10e

    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01da

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v2, v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    sub-int/2addr v3, v0

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method

.method private getQuality(F)I
    .locals 1

    float-to-int v0, p1

    return v0
.end method

.method private getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b01d9

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    move v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-static {p1, v4, v3, v1, v2}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object v4

    return-object v4
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->doInBackground([Ljava/lang/Integer;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Integer;)Ljava/util/List;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Integer;",
            ")",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    move-object/from16 v1, p0

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const/4 v4, 0x0

    aget-object v0, p1, v4

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-long v6, v0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v8, v0

    const-wide/16 v9, 0x0

    cmp-long v0, v6, v9

    if-lez v0, :cond_0

    :try_start_0
    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    const-string v0, "Longshot.CaptureTask"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "start , delay:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v0, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    new-instance v9, Landroid/graphics/Rect;

    iget-object v10, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v10, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    iget-object v11, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mDisplayMetrics:Landroid/util/DisplayMetrics;

    iget v11, v11, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-direct {v9, v4, v4, v10, v11}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v10

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v11

    const-string v12, "Longshot.capture"

    const-wide/16 v13, 0x8

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    invoke-static {v9, v10, v11, v4}, Landroid/view/SurfaceControl;->screenshot(Landroid/graphics/Rect;III)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    const-string v12, "Longshot.hwBitmap.copy"

    invoke-static {v13, v14, v12}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    sget-object v12, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {v0, v12, v4}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    const/4 v12, 0x0

    const/4 v13, 0x0

    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsFirst:Z

    if-eqz v14, :cond_2

    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsStatusbarVisiable:Z

    if-eqz v14, :cond_1

    invoke-direct {v1, v4}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getStatusbarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v12

    :cond_1
    iget-boolean v14, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mIsNavgationBarVisiable:Z

    if-eqz v14, :cond_2

    invoke-direct {v1, v4}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->getNavigationBarScreenshot(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v13

    :cond_2
    invoke-interface {v8, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    move-object/from16 v16, v0

    const-string v0, "Longshot.CaptureTask"

    move-object/from16 v17, v4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "capture done w = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " h = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mWindowToken:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, v1, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mWindowToken:Landroid/os/IBinder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " cost time:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v18, v6

    sub-long v5, v14, v2

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v8
.end method

.method protected onCancelled()V
    .locals 0

    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->onPostExecute(Ljava/util/List;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    if-eqz v0, :cond_0

    const-string v0, "Longshot.CaptureTask"

    const-string v1, "onCaptureFinished"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/task/CaptureTask;->mListener:Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;

    invoke-interface {v0, p1}, Lcom/oneplus/screenshot/longshot/task/CaptureTask$OnCaptureListener;->onCaptureFinished(Ljava/util/List;)V

    :cond_0
    return-void
.end method
