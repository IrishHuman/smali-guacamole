.class Lcom/android/systemui/qs/customize/QSEditPageManager$1;
.super Landroid/support/v7/widget/GridLayoutManager;
.source "QSEditPageManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/customize/QSEditPageManager;->setupRecyclerView(Landroid/support/v7/widget/RecyclerView;Ljava/util/List;Lcom/android/systemui/qs/customize/ItemLocations;Lcom/android/systemui/qs/customize/QSEditViewPager;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/customize/QSEditPageManager;Landroid/content/Context;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-direct {p0, p2, p3}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public canScrollVertically()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/GridLayoutManager;->generateDefaultLayoutParams()Landroid/support/v7/widget/RecyclerView$LayoutParams;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07062d

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070604

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    iget-object v1, p0, Lcom/android/systemui/qs/customize/QSEditPageManager$1;->this$0:Lcom/android/systemui/qs/customize/QSEditPageManager;

    invoke-static {v1}, Lcom/android/systemui/qs/customize/QSEditPageManager;->access$000(Lcom/android/systemui/qs/customize/QSEditPageManager;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    return-object v0
.end method
