.class Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;
.super Landroid/os/Handler;
.source "PictureDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget v0, p1, Landroid/os/Message;->what:I

    const/16 v1, 0xbb8

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    :cond_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/Bitmap;

    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$100(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)I

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    add-int/2addr v4, v5

    iget-object v5, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v5}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$102(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    invoke-static {v3, v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$112(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;I)I

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$000(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v3, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v3}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$300(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable$1;->this$0:Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;

    invoke-static {v4}, Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;->access$200(Lcom/oneplus/screenshot/longshot/preview/PictureDrawable;)Ljava/lang/Runnable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method
