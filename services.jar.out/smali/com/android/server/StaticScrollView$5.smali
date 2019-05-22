.class Lcom/android/server/StaticScrollView$5;
.super Ljava/lang/Object;
.source "StaticScrollView.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StaticScrollView;->initSettingsAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/StaticScrollView;


# direct methods
.method constructor <init>(Lcom/android/server/StaticScrollView;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/StaticScrollView$5;->this$0:Lcom/android/server/StaticScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iget-object v1, p0, Lcom/android/server/StaticScrollView$5;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v1}, Lcom/android/server/StaticScrollView;->access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    float-to-int v2, v0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/StaticScrollView$5;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v2}, Lcom/android/server/StaticScrollView;->access$200(Lcom/android/server/StaticScrollView;)Landroid/widget/RelativeLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
