.class Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;
.super Ljava/lang/Object;
.source "OPCustomFingeprintAnimVideoPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->onBindViewHolder(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

.field final synthetic val$anim:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

.field final synthetic val$position:I

.field final synthetic val$vh:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;ILcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iput p2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$position:I

    iput-object p3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$vh:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    iput-object p4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$anim:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$400(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$500(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    const v1, 0x7f0802e8

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    invoke-static {v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$500(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    move-result-object v0

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewShadow:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$vh:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewBorder:Landroid/view/View;

    const v1, 0x7f0802e6

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$vh:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;->viewShadow:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$vh:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$502(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$anim:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget v1, v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$600(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->this$1:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;->this$0:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;

    iget v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter$1;->val$position:I

    invoke-static {v0, v1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->access$702(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)I

    return-void
.end method
