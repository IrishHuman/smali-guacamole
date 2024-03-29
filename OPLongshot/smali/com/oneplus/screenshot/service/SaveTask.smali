.class public Lcom/oneplus/screenshot/service/SaveTask;
.super Landroid/os/AsyncTask;
.source "SaveTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field private static final INTENT_EXTRAS_LOAD_MEDIA_SET:Ljava/lang/String; = "load_media_set"

.field private static final INTENT_EXTRAS_NOT_READ_ONLY:Ljava/lang/String; = "isReadOnly"

.field private static final INTENT_EXTRAS_SIMPLEMODE:Ljava/lang/String; = "simplemode"

.field private static final LONGSHOT_DIR_NAME:Ljava/lang/String; = "Screenshots"

.field private static final LONGSHOT_FILE_NAME:Ljava/lang/String; = "Screenshot"

.field private static final OP_GALLERY_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoEditorActivity"

.field private static final OP_GALLERY_NEW_EDITOR_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery2.PhotoEditorActivity"

.field private static final OP_GALLERY_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.gallery"

.field private static final OP_GALLERY_VIEWER_ACTIVITY:Ljava/lang/String; = "com.oneplus.gallery.PhotoViewerActivity"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

.field private mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

.field private mNavibar:Landroid/graphics/Bitmap;

.field private mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

.field private mNotificationId:I

.field private mPreview:Landroid/graphics/Bitmap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Longshot."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v1, Lcom/oneplus/screenshot/service/SaveTask;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;Landroid/content/Context;Ljava/util/List;ILandroid/graphics/Bitmap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Landroid/graphics/Bitmap;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mPreview:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    iput-object p1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    iput-object p2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    iput p4, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotificationId:I

    new-instance v0, Lcom/oneplus/screenshot/util/ImageInfo;

    const-string v1, "Screenshots"

    const-string v2, "Screenshot"

    invoke-direct {v0, v1, v2}, Lcom/oneplus/screenshot/util/ImageInfo;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v1, "SaveTask"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/oneplus/screenshot/service/GlobalNotification;->getInstance(Landroid/content/Context;)Lcom/oneplus/screenshot/service/GlobalNotification;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNotification:Lcom/oneplus/screenshot/service/GlobalNotification;

    iput-object p5, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNavibar:Landroid/graphics/Bitmap;

    return-void
.end method

.method private notify(I)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0d0058

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    const/16 v3, 0x1388

    invoke-static {v0, v2, v1, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 6

    sget-object v0, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground , "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {}, Lcom/oneplus/screenshot/util/Utils;->setThreadPriority()V

    const/4 v1, 0x0

    :try_start_0
    sget v2, Lcom/oneplus/screenshot/longshot/dump/BitmapDumper;->DIV_HEIGHT:I

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mBitmaps:Ljava/util/List;

    invoke-static {v2, v3}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->joinBitmaps(ILjava/util/List;)Landroid/graphics/Bitmap;

    move-result-object v2

    move-object v1, v2

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNavibar:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mNavibar:Landroid/graphics/Bitmap;

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/bitmap/BitmapUtils;->drawNavibar(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v2

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v2

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    sget-object v4, Lcom/oneplus/screenshot/statistics/EventStatistics$Error;->MEMORY:Lcom/oneplus/screenshot/statistics/EventStatistics$Error;

    const-string v5, "Save"

    invoke-static {v3, v4, v5}, Lcom/oneplus/screenshot/statistics/EventStatistics;->addError(Landroid/content/Context;Lcom/oneplus/screenshot/statistics/EventStatistics$Error;Ljava/lang/String;)V

    :goto_0
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-static {v2, v3, v1}, Lcom/oneplus/screenshot/util/Utils;->saveToFile(Landroid/content/Context;Lcom/oneplus/screenshot/util/FileInfo;Landroid/graphics/Bitmap;)Z

    move-result v0

    goto :goto_1

    :cond_1
    sget-object v2, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    const-string v3, "image is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    return-object v2
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method protected onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v0}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveCancelled()V

    :cond_0
    return-void
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 14

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    sget-object v1, Lcom/oneplus/screenshot/service/SaveTask;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPostExecute, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    const-string v2, ""

    const/4 v3, 0x0

    invoke-static {v1, v3, v2, v3}, Lcom/oneplus/screenshot/longshot/util/Configs;->notifyToast(Landroid/content/Context;ZLjava/lang/String;I)V

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-direct {p0, v0}, Lcom/oneplus/screenshot/service/SaveTask;->notify(I)V

    goto :goto_1

    :cond_1
    sget-boolean v1, Lcom/oneplus/screenshot/longshot/util/Configs;->SUPPORT_NEW_EDIT_MODE:Z

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.oneplus.gallery2.PhotoEditorActivity"

    const-string v6, "simplemode"

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_1

    :cond_2
    iget-object v8, p0, Lcom/oneplus/screenshot/service/SaveTask;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mImageInfo:Lcom/oneplus/screenshot/util/ImageInfo;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/util/ImageInfo;->getUri()Landroid/net/Uri;

    move-result-object v9

    const-string v10, "com.oneplus.gallery"

    const-string v11, "com.oneplus.gallery.PhotoViewerActivity"

    const-string v12, "isReadOnly"

    const/4 v13, 0x0

    invoke-static/range {v8 .. v13}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    :goto_1
    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/screenshot/service/SaveTask;->mListener:Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;

    invoke-interface {v1}, Lcom/oneplus/screenshot/service/SaveTask$OnSaveListener;->onSaveFinished()V

    :cond_3
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/oneplus/screenshot/service/SaveTask;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method
