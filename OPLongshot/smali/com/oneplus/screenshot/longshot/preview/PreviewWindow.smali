.class public Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;
.super Landroid/widget/RelativeLayout;
.source "PreviewWindow.java"


# static fields
.field private static TAG:Ljava/lang/String;


# instance fields
.field private mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "PreviewWindow:"

    sput-object v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    sget-object v0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " dispatchTouchEvent:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " mPreviewWindowController:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getToolType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->isIsPreviewShow()Z

    move-result v1

    if-eqz v1, :cond_0

    sput-boolean v2, Lcom/oneplus/screenshot/longshot/util/Configs;->STOP_BY_USER:Z

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1, v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setPreviewWindowController(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindow;->mPreviewWindowController:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    return-void
.end method
