.class public Lcom/oneplus/lib/preference/PreferenceGroupAdapter;
.super Landroid/widget/BaseAdapter;
.source "PreferenceGroupAdapter.java"

# interfaces
.implements Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
    }
.end annotation


# static fields
.field private static sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHasReturnedViewTypeCount:Z

.field private mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

.field private mHighlightedPosition:I

.field private volatile mIsSyncing:Z

.field private mPreferenceGroup:Lcom/oneplus/lib/preference/PreferenceGroup;

.field private mPreferenceLayouts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSyncRunnable:Ljava/lang/Runnable;

.field private mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    sput-object v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    return-void
.end method

.method public constructor <init>(Lcom/oneplus/lib/preference/PreferenceGroup;)V
    .locals 2

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;-><init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mSyncRunnable:Ljava/lang/Runnable;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/oneplus/lib/preference/PreferenceGroup;

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/oneplus/lib/preference/PreferenceGroup;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/preference/PreferenceGroup;->setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceGroupAdapter;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->syncMyPreferences()V

    return-void
.end method

.method private addPreferenceClassName(Lcom/oneplus/lib/preference/Preference;)V
    .locals 3

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/oneplus/lib/preference/Preference;Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-static {v1, v0}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_0

    mul-int/lit8 v2, v1, -0x1

    add-int/lit8 v1, v2, -0x1

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v2, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private createPreferenceLayout(Lcom/oneplus/lib/preference/Preference;Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;
    .locals 2

    if-eqz p2, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;-><init>(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$1;)V

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->access$202(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;Ljava/lang/String;)Ljava/lang/String;

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->access$302(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    invoke-virtual {p1}, Lcom/oneplus/lib/preference/Preference;->getWidgetLayoutResource()I

    move-result v1

    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;->access$402(Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;I)I

    return-object v0
.end method

.method private flattenPreferenceGroup(Ljava/util/List;Lcom/oneplus/lib/preference/PreferenceGroup;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;",
            "Lcom/oneplus/lib/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    invoke-virtual {p2}, Lcom/oneplus/lib/preference/PreferenceGroup;->sortPreferences()V

    invoke-virtual {p2}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    invoke-virtual {p2, v1}, Lcom/oneplus/lib/preference/PreferenceGroup;->getPreference(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-boolean v3, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/Preference;->canRecycleLayout()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-direct {p0, v2}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->addPreferenceClassName(Lcom/oneplus/lib/preference/Preference;)V

    :cond_0
    instance-of v3, v2, Lcom/oneplus/lib/preference/PreferenceGroup;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceGroup;

    invoke-virtual {v3}, Lcom/oneplus/lib/preference/PreferenceGroup;->isOnSameScreenAsChildren()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-direct {p0, p1, v3}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/oneplus/lib/preference/PreferenceGroup;)V

    :cond_1
    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/Preference;->setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private getHighlightItemViewType()I
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getViewTypeCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private syncMyPreferences()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceGroup:Lcom/oneplus/lib/preference/PreferenceGroup;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->flattenPreferenceGroup(Ljava/util/List;Lcom/oneplus/lib/preference/PreferenceGroup;)V

    iput-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    monitor-enter p0

    const/4 v1, 0x0

    :try_start_1
    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mIsSyncing:Z

    invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/oneplus/lib/preference/Preference;
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/preference/Preference;

    return-object v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItem(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItem(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/Preference;->getId()J

    move-result-wide v0

    return-wide v0

    :cond_1
    :goto_0
    const-wide/high16 v0, -0x8000000000000000L

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v0

    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItem(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/Preference;->canRecycleLayout()Z

    move-result v1

    const/4 v2, -0x1

    if-nez v1, :cond_2

    return v2

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/oneplus/lib/preference/Preference;Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-gez v1, :cond_3

    return v2

    :cond_3
    return v1
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItem(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->createPreferenceLayout(Lcom/oneplus/lib/preference/Preference;Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;)Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mTempPreferenceLayout:Lcom/oneplus/lib/preference/PreferenceGroupAdapter$PreferenceLayout;

    invoke-static {v1, v2}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;)I

    move-result v1

    if-ltz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItemViewType(I)I

    move-result v1

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getHighlightItemViewType()I

    move-result v2

    if-ne v1, v2, :cond_1

    :cond_0
    const/4 p2, 0x0

    :cond_1
    invoke-virtual {v0, p2, p3}, Lcom/oneplus/lib/preference/Preference;->getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHighlightedPosition:I

    if-ne p1, v2, :cond_2

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    new-instance v2, Landroid/widget/FrameLayout;

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    sget-object v3, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->sWrapperLayoutParams:Landroid/view/ViewGroup$LayoutParams;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHighlightedDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v1, v2

    :cond_2
    return-object v1
.end method

.method public getViewTypeCount()I
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mHasReturnedViewTypeCount:Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->mPreferenceLayouts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    add-int/2addr v0, v1

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->getItem(I)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/Preference;->isSelectable()Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Lcom/oneplus/lib/preference/Preference;)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceGroupAdapter;->notifyDataSetChanged()V

    return-void
.end method
