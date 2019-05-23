.class Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;
.super Ljava/lang/Object;
.source "SmallScreenContorller.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->getFadoutAnimation()Landroid/animation/ValueAnimator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;


# direct methods
.method constructor <init>(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->access$400(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;Z)V

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->access$500(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    invoke-static {v0}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->access$500(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$2;->this$0:Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;

    invoke-static {v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;->access$600(Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/screenshot/longshot/SmallScreen/SmallScreenContorller$DragCallback;->onDragEnd(Z)V

    :cond_0
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    return-void
.end method
