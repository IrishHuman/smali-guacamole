.class Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;
.super Landroid/os/Handler;
.source "PreviewWindowController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$002(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;Z)Z

    iget v1, p1, Landroid/os/Message;->arg1:I

    const/4 v3, 0x1

    if-ne v1, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    move v1, v2

    invoke-static {}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " MSG_UPDATE_PREVIEW mPictureDrawable.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mScrollContainer.getHeight():"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " isLastUpdate:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getBitmapSize()I

    move-result v2

    const/4 v3, 0x3

    if-lt v2, v3, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    if-lt v2, v4, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$400(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)I

    move-result v2

    const/4 v4, 0x2

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2, v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$402(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;I)I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$500(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$600(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/os/Handler;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$700(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Ljava/lang/Runnable;

    move-result-object v3

    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->START_SCROLL_DELAY:I

    int-to-long v4, v4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    invoke-static {}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "MSG_UPDATE_PREVIEW SCROLL_START_DELAY:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v4, Lcom/oneplus/screenshot/longshot/util/Configs;->START_SCROLL_DELAY:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v2}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$200(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->getMeasureHeigh()I

    move-result v2

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->access$300(Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;)Landroid/widget/ScrollView;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ScrollView;->getHeight()I

    move-result v4

    if-ge v2, v4, :cond_3

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;

    invoke-virtual {v2, v3}, Lcom/oneplus/screenshot/longshot/preview/PreviewWindowController;->onScrollStop(I)V

    :cond_3
    :goto_0
    return-void
.end method
