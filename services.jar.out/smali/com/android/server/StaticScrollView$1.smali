.class Lcom/android/server/StaticScrollView$1;
.super Ljava/lang/Object;
.source "StaticScrollView.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/StaticScrollView;->init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V
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

    iput-object p1, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$000(Lcom/android/server/StaticScrollView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/StaticScrollView$1;->this$0:Lcom/android/server/StaticScrollView;

    invoke-static {v0}, Lcom/android/server/StaticScrollView;->access$100(Lcom/android/server/StaticScrollView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method
