.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;
.super Ljava/lang/Object;
.source "PreviewWindowController.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onPreviewShow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    sub-int v1, p3, p5

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1112(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    const/4 v0, 0x0

    sub-int v1, p3, p5

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$CallBack;->onScrollChanged(II)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    new-array v0, v0, [I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/ScrollView;->getLocationInWindow([I)V

    invoke-static {}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " onScrollChange canScrollVertically:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/widget/ScrollView;->canScrollVertically(I)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " getScrollY:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMaxLength:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mUpdating:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$000(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " containerTop:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v3, v0, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mScrollContainer h:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ScrollView;->getHeight()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " mMoveDistance:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$1100(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$5;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v1, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    :cond_1
    return-void
.end method
