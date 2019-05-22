.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AnimStyleAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter<",
        "Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$300(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;I)V
    .locals 6

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$300(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->imageView:Landroid/widget/ImageView;

    iget v2, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;ILcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-boolean v1, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    const v3, 0x7f0802e6

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewShadow:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v1, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$502(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    goto :goto_0

    :cond_0
    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    const v3, 0x7f0802e8

    invoke-virtual {v1, v3}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewShadow:Landroid/view/View;

    const/4 v3, 0x4

    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$300(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v3, 0x5

    const v4, 0x7f0702cb

    if-ne p2, v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v5, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v5}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    float-to-int v4, v4

    iget-object v5, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->layoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v5, v2, v1, v4, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v4, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->layoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v4, v2, v1, v2, v3}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    :goto_1
    iget-object v1, p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->layoutContainer:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    return-void
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    check-cast p1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->onBindViewHolder(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;I)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d0143

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/view/View;)V

    return-object v1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    move-result-object p1

    return-object p1
.end method
