.class Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;
.super Ljava/lang/Object;
.source "OPFloatingActionButton.java"

# interfaces
.implements Lcom/oneplus/lib/widget/button/OPShadowViewDelegate;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/lib/widget/button/OPFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$201(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setShadowPadding(IIII)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v0}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$000(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    iget-object v1, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v1}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v1

    add-int/2addr v1, p1

    iget-object v2, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v2}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v2

    add-int/2addr v2, p2

    iget-object v3, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v3}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v3

    add-int/2addr v3, p3

    iget-object v4, p0, Lcom/oneplus/lib/widget/button/OPFloatingActionButton$1;->this$0:Lcom/oneplus/lib/widget/button/OPFloatingActionButton;

    invoke-static {v4}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->access$100(Lcom/oneplus/lib/widget/button/OPFloatingActionButton;)I

    move-result v4

    add-int/2addr v4, p4

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oneplus/lib/widget/button/OPFloatingActionButton;->setPadding(IIII)V

    return-void
.end method
