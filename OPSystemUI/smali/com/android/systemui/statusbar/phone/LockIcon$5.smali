.class Lcom/android/systemui/statusbar/phone/LockIcon$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "LockIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/LockIcon;->getFacelockRetryAnimator()Landroid/animation/AnimatorSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/LockIcon;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/LockIcon;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/LockIcon$5;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$5;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$5;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleY(F)V

    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$5;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleX(F)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/LockIcon$5;->this$0:Lcom/android/systemui/statusbar/phone/LockIcon;

    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/LockIcon;->setScaleY(F)V

    return-void
.end method
