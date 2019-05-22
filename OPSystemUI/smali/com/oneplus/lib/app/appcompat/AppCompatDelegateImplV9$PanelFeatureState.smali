.class public final Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;
.super Ljava/lang/Object;
.source "AppCompatDelegateImplV9.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "PanelFeatureState"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState$SavedState;
    }
.end annotation


# instance fields
.field background:I

.field createdPanelView:Landroid/view/View;

.field decorView:Landroid/view/ViewGroup;

.field elevation:F

.field featureId:I

.field frozenActionViewState:Landroid/os/Bundle;

.field gravity:I

.field isHandled:Z

.field isOpen:Z

.field isPrepared:Z

.field listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

.field listPresenterContext:Landroid/content/Context;

.field menu:Lcom/oneplus/lib/menu/MenuBuilder;

.field public qwertyMode:Z

.field refreshDecorView:Z

.field refreshMenuContent:Z

.field shownPanelView:Landroid/view/View;

.field windowAnimations:I

.field x:I

.field y:I


# direct methods
.method constructor <init>(I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->featureId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->refreshDecorView:Z

    return-void
.end method


# virtual methods
.method getListMenuView(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)Lcom/oneplus/lib/menu/MenuView;
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_abc_list_menu_item_layout:I

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/menu/ListMenuPresenter;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->decorView:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getMenuView(Landroid/view/ViewGroup;)Lcom/oneplus/lib/menu/MenuView;

    move-result-object v0

    return-object v0
.end method

.method public hasPanelItems()Z
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->shownPanelView:Landroid/view/View;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->createdPanelView:Landroid/view/View;

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    return v2

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/ListMenuPresenter;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    if-lez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method setMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/menu/MenuBuilder;->removeMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->menu:Lcom/oneplus/lib/menu/MenuBuilder;

    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listMenuPresenter:Lcom/oneplus/lib/menu/ListMenuPresenter;

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/menu/MenuBuilder;->addMenuPresenter(Lcom/oneplus/lib/menu/MenuPresenter;)V

    :cond_2
    return-void
.end method

.method setStyle(Landroid/content/Context;)V
    .locals 5

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarPopupTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_0
    sget v2, Lcom/oneplus/commonctrl/R$attr;->panelMenuListTheme:I

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_1

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    :cond_1
    const v2, 0x1010490

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    iput v2, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->elevation:F

    :cond_2
    new-instance v2, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v3}, Lcom/oneplus/lib/app/appcompat/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object p1, v2

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->listPresenterContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme:[I

    invoke-virtual {p1, v2}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_panelBackground:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->background:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->AppCompatTheme_android_windowAnimationStyle:I

    invoke-virtual {v2, v4, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Lcom/oneplus/lib/app/appcompat/AppCompatDelegateImplV9$PanelFeatureState;->windowAnimations:I

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method
