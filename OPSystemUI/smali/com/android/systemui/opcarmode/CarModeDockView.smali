.class public Lcom/android/systemui/opcarmode/CarModeDockView;
.super Landroid/widget/FrameLayout;
.source "CarModeDockView.java"


# instance fields
.field private mController:Lcom/android/systemui/opcarmode/CarModeDockController;

.field private mDividerView:Landroid/view/View;

.field private mDockPanel:Landroid/view/View;

.field private mIcons:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "CarModeDockView"

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 3

    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0131

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDockPanel:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a012f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDividerView:Landroid/view/View;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a8

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00a9

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00aa

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->getRootView()Landroid/view/View;

    move-result-object v1

    const v2, 0x7f0a00ab

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "CarModeDockView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onFinishInflate: mIcons.size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public refreshUI()V
    .locals 8

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->getMetaDataLoader()Lcom/android/systemui/opcarmode/MetaDataLoader;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->getMetaDataLoader()Lcom/android/systemui/opcarmode/MetaDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getBackgroundData()Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v2}, Lcom/android/systemui/opcarmode/CarModeDockController;->isDndEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDockPanel:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->getDndBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->getDndDividerColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDockPanel:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->getBackgroundColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    iget-object v2, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mDividerView:Landroid/view/View;

    invoke-virtual {v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->getDividerColor()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getIconData()Ljava/util/ArrayList;

    move-result-object v2

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mIcons:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v6}, Lcom/android/systemui/opcarmode/CarModeDockController;->getMaskEntry()I

    move-result v6

    if-ne v6, v3, :cond_2

    add-int/lit8 v3, v3, 0x1

    :cond_2
    iget-object v6, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {v6}, Lcom/android/systemui/opcarmode/CarModeDockController;->isDndEnabled()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-virtual {v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->getDndIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    goto :goto_2

    :cond_3
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-virtual {v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->getIconDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    :goto_2
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-virtual {v7}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->getClickListener()Landroid/view/View$OnClickListener;

    move-result-object v7

    invoke-direct {p0, v5, v6, v7}, Lcom/android/systemui/opcarmode/CarModeDockView;->setImageView(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;Landroid/view/View$OnClickListener;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-void

    :cond_5
    :goto_3
    return-void
.end method

.method public setController(Lcom/android/systemui/opcarmode/CarModeDockController;)V
    .locals 2

    const-string v0, "CarModeDockView"

    const-string/jumbo v1, "setController"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockView;->mController:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/CarModeDockView;->refreshUI()V

    return-void
.end method
