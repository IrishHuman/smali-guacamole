.class Lcom/oneplus/screenshot/GlobalScreenshot$33;
.super Ljava/lang/Object;
.source "GlobalScreenshot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->startSmallScreenshot(Ljava/lang/Runnable;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "mScreenBitmap is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3200(Lcom/oneplus/screenshot/GlobalScreenshot;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Longshot.GlobalScreenshot"

    const-string v1, "longshot is interrupted"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/widget/ImageView;->setLayerType(ILandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2900(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->buildLayer()V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3300(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/animation/AnimationSet;

    sget-boolean v0, Lcom/oneplus/screenshot/longshot/util/Configs;->mNoFooter:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->onStart()V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3400(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$33;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v1}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$3500(Lcom/oneplus/screenshot/GlobalScreenshot;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->registerCallBack(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;)V

    :cond_2
    return-void
.end method
