.class public Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;
.super Ljava/lang/Object;
.source "RecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RecycledViewPool"
.end annotation


# instance fields
.field private mAttachCount:I

.field private mMaxScrap:Landroid/util/SparseIntArray;

.field private mScrap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mAttachCount:I

    return-void
.end method

.method private getScrapHeapForType(I)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-nez v0, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    const/4 v2, 0x5

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    :cond_0
    return-object v0
.end method


# virtual methods
.method public getRecycledView(I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mScrap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-object v2

    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public putRecycledView(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 4

    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->getItemViewType()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->getScrapHeapForType(I)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$RecycledViewPool;->mMaxScrap:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-gt v2, v3, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;->resetInternal()V

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method
