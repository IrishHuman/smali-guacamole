.class public final Landroid/support/v17/leanback/widget/ClassPresenterSelector;
.super Landroid/support/v17/leanback/widget/PresenterSelector;
.source "ClassPresenterSelector.java"


# instance fields
.field private final mClassMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final mPresenters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v17/leanback/widget/PresenterSelector;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mClassMap:Ljava/util/HashMap;

    return-void
.end method


# virtual methods
.method public addClassPresenter(Ljava/lang/Class;Landroid/support/v17/leanback/widget/Presenter;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v17/leanback/widget/Presenter;",
            ")",
            "Landroid/support/v17/leanback/widget/ClassPresenterSelector;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-object p0
.end method

.method public addClassPresenterSelector(Ljava/lang/Class;Landroid/support/v17/leanback/widget/PresenterSelector;)Landroid/support/v17/leanback/widget/ClassPresenterSelector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Landroid/support/v17/leanback/widget/PresenterSelector;",
            ")",
            "Landroid/support/v17/leanback/widget/ClassPresenterSelector;"
        }
    .end annotation

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mClassMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p2}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenters()[Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    aget-object v3, v0, v1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-object p0
.end method

.method public getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;
    .locals 3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x0

    :cond_0
    iget-object v2, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mClassMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v2, v1, Landroid/support/v17/leanback/widget/PresenterSelector;

    if-eqz v2, :cond_1

    move-object v2, v1

    check-cast v2, Landroid/support/v17/leanback/widget/PresenterSelector;

    invoke-virtual {v2, p1}, Landroid/support/v17/leanback/widget/PresenterSelector;->getPresenter(Ljava/lang/Object;)Landroid/support/v17/leanback/widget/Presenter;

    move-result-object v2

    if-eqz v2, :cond_1

    return-object v2

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-nez v1, :cond_2

    if-nez v0, :cond_0

    :cond_2
    move-object v2, v1

    check-cast v2, Landroid/support/v17/leanback/widget/Presenter;

    return-object v2
.end method

.method public getPresenters()[Landroid/support/v17/leanback/widget/Presenter;
    .locals 2

    iget-object v0, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v17/leanback/widget/ClassPresenterSelector;->mPresenters:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Landroid/support/v17/leanback/widget/Presenter;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/support/v17/leanback/widget/Presenter;

    return-object v0
.end method
