.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;
.super Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SpaceItemDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;->getItemOffsets(Landroid/graphics/Rect;Landroid/view/View;Lcom/oneplus/lib/widget/recyclerview/RecyclerView;Lcom/oneplus/lib/widget/recyclerview/RecyclerView$State;)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070386

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p1, Landroid/graphics/Rect;->left:I

    return-void
.end method
