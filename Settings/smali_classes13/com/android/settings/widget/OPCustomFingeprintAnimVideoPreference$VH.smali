.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "VH"
.end annotation


# instance fields
.field imageView:Landroid/widget/ImageView;

.field layoutContainer:Landroid/widget/RelativeLayout;

.field textView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

.field viewBorder:Landroid/view/View;

.field viewShadow:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a027b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->imageView:Landroid/widget/ImageView;

    const v0, 0x7f0a05c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->textView:Landroid/widget/TextView;

    const v0, 0x7f0a05fa

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    const v0, 0x7f0a05fb

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewShadow:Landroid/view/View;

    const v0, 0x7f0a02e1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->layoutContainer:Landroid/widget/RelativeLayout;

    return-void
.end method
