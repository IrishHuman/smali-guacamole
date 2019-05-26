.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.super Landroid/support/v7/preference/Preference;
.source "CollapsiblePreferenceGroupController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ExpandButton"
.end annotation


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/util/List;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    invoke-direct {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->initLayout()V

    invoke-direct {p0, p2, p3}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private initLayout()V
    .locals 1

    const v0, 0x7f0d008f

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setLayoutResource(I)V

    const v0, 0x7f08016f

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setIcon(I)V

    const v0, 0x7f120636

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setTitle(I)V

    const/16 v0, 0x3e7

    invoke-virtual {p0, v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setOrder(I)V

    return-void
.end method

.method private setSummary(Ljava/util/List;Ljava/util/List;)V
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    nop

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    invoke-interface {p2, v0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v2

    add-int/2addr v2, v1

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v3, v5, :cond_3

    invoke-interface {p2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/Preference;

    instance-of v6, v5, Landroid/support/v7/preference/PreferenceGroup;

    if-nez v6, :cond_2

    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_1

    :cond_0
    invoke-virtual {v5}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    if-nez v4, :cond_1

    move-object v4, v6

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f12124c

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v4, v9, v10

    aput-object v6, v9, v1

    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {p0, v4}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->setDividerAllowedAbove(Z)V

    return-void
.end method
