.class Lcom/oneplus/screenshot/GlobalScreenshot$22;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalScreenshot.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/GlobalScreenshot;->createEidtModeEnterAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

.field final synthetic val$scale_center_x:F

.field final synthetic val$scale_center_y:F

.field final synthetic val$startScaleX:F

.field final synthetic val$startScaleY:F


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/GlobalScreenshot;FFFF)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    iput p2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$startScaleX:F

    iput p3, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$startScaleY:F

    iput p4, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$scale_center_x:F

    iput p5, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$scale_center_y:F

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 8

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$startScaleX:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleX(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$startScaleY:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setScaleY(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$scale_center_x:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotX(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    iget v2, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->val$scale_center_y:F

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setPivotY(F)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$1400(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/ImageView;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2200(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/RelativeLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2100(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2600(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/content/Context;

    move-result-object v2

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2700(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/os/AsyncTask;

    move-result-object v0

    check-cast v0, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;

    invoke-virtual {v0}, Lcom/oneplus/screenshot/SaveImageInBackgroundTask;->getImageUri()Landroid/net/Uri;

    move-result-object v3

    const-string v4, "com.oneplus.gallery"

    const-string v5, "com.oneplus.gallery.PhotoEditorActivity"

    const-string v6, "simplemode"

    const/4 v7, 0x1

    invoke-static/range {v2 .. v7}, Lcom/oneplus/screenshot/util/Utils;->launchGallery(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/GlobalScreenshot$22;->this$0:Lcom/oneplus/screenshot/GlobalScreenshot;

    invoke-static {v0}, Lcom/oneplus/screenshot/GlobalScreenshot;->access$2800(Lcom/oneplus/screenshot/GlobalScreenshot;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    return-void
.end method
