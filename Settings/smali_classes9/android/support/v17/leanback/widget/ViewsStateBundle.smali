.class Landroid/support/v17/leanback/widget/ViewsStateBundle;
.super Ljava/lang/Object;
.source "ViewsStateBundle.java"


# static fields
.field public static final LIMIT_DEFAULT:I = 0x64

.field public static final UNLIMITED:I = 0x7fffffff


# instance fields
.field private mChildStates:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/util/SparseArray<",
            "Landroid/os/Parcelable;",
            ">;>;"
        }
    .end annotation
.end field

.field private mLimitNumber:I

.field private mSavePolicy:I


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/16 v0, 0x64

    iput v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    return-void
.end method

.method static getSaveStatesKey(I)Ljava/lang/String;
    .locals 1

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected applyPolicyChanges()V
    .locals 2

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    if-lez v0, :cond_1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v0

    iget v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    if-eq v0, v1, :cond_6

    :cond_0
    new-instance v0, Landroid/support/v4/util/LruCache;

    iget v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    goto :goto_1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    :cond_2
    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_4

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    goto :goto_1

    :cond_4
    :goto_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    const v1, 0x7fffffff

    if-eqz v0, :cond_5

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->maxSize()I

    move-result v0

    if-eq v0, v1, :cond_6

    :cond_5
    new-instance v0, Landroid/support/v4/util/LruCache;

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    :cond_6
    :goto_1
    return-void
.end method

.method public clear()V
    .locals 1

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    :cond_0
    return-void
.end method

.method public final getLimitNumber()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    return v0
.end method

.method public final getSavePolicy()I
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    return v0
.end method

.method public final loadFromBundle(Landroid/os/Bundle;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->evictAll()V

    invoke-virtual {p1}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final loadView(Landroid/view/View;I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v1, v0}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    if-eqz v1, :cond_0

    invoke-virtual {p1, v1}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_0
    return-void
.end method

.method public remove(I)V
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-static {p1}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final saveAsBundle()Landroid/os/Bundle;
    .locals 6

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v0}, Landroid/support/v4/util/LruCache;->snapshot()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    nop

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/SparseArray;

    invoke-virtual {v1, v4, v5}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    goto :goto_0

    :cond_1
    return-object v1

    :cond_2
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final saveOffscreenView(Landroid/view/View;I)V
    .locals 1

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->saveViewUnchecked(Landroid/view/View;I)V

    goto :goto_0

    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->remove(I)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public final saveOnScreenView(Landroid/os/Bundle;Landroid/view/View;I)Landroid/os/Bundle;
    .locals 3

    iget v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    if-eqz v0, :cond_1

    invoke-static {p3}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p2, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    if-nez p1, :cond_0

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    move-object p1, v2

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :cond_1
    return-object p1
.end method

.method protected final saveViewUnchecked(Landroid/view/View;I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    if-eqz v0, :cond_0

    invoke-static {p2}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->getSaveStatesKey(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    invoke-virtual {p1, v1}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mChildStates:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v0, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public final setLimitNumber(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mLimitNumber:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->applyPolicyChanges()V

    return-void
.end method

.method public final setSavePolicy(I)V
    .locals 0

    iput p1, p0, Landroid/support/v17/leanback/widget/ViewsStateBundle;->mSavePolicy:I

    invoke-virtual {p0}, Landroid/support/v17/leanback/widget/ViewsStateBundle;->applyPolicyChanges()V

    return-void
.end method
