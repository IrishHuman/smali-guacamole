.class final Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroid/support/v7/preference/PreferenceGroup$PreferenceInstanceStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;,
        Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mMaxPreferenceToShow:I

.field private final mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/PreferenceGroup;Landroid/support/v7/preference/PreferenceGroupAdapter;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getInitialExpandedChildrenCount()I

    move-result v0

    iput v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/PreferenceGroup;->setPreferenceInstanceStateCallback(Landroid/support/v7/preference/PreferenceGroup$PreferenceInstanceStateCallback;)V

    return-void
.end method

.method static synthetic access$002(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    return p1
.end method

.method static synthetic access$100(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)Landroid/support/v7/preference/PreferenceGroupAdapter;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    return-object v0
.end method

.method private createExpandButton(Ljava/util/List;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;"
        }
    .end annotation

    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    iget-object v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p1, p2}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;-><init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V

    new-instance v1, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;

    invoke-direct {v1, p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;-><init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    return-object v0
.end method

.method private showLimitedChildren()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    const v1, 0x7fffffff

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public createVisiblePreferencesList(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_1

    iget v4, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    if-ge v0, v4, :cond_0

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    instance-of v4, v3, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    goto :goto_0

    :cond_2
    invoke-direct {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->showLimitedChildren()Z

    move-result v2

    if-eqz v2, :cond_3

    iget v2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    if-le v0, v2, :cond_3

    invoke-direct {p0, v1, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Ljava/util/List;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v1
.end method

.method public onPreferenceVisibilityChange(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->showLimitedChildren()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public restoreInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 4

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;

    iget v1, v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;->mMaxPreferenceToShow:I

    iget v2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    if-eq v2, v1, :cond_1

    iput v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    iget-object v2, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mPreferenceGroupAdapter:Landroid/support/v7/preference/PreferenceGroupAdapter;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    :cond_1
    invoke-virtual {v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v2

    return-object v2

    :cond_2
    :goto_0
    return-object p1
.end method

.method public saveInstanceState(Landroid/os/Parcelable;)Landroid/os/Parcelable;
    .locals 2

    new-instance v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;-><init>(Landroid/os/Parcelable;)V

    iget v1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->mMaxPreferenceToShow:I

    iput v1, v0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$SavedState;->mMaxPreferenceToShow:I

    return-object v0
.end method
