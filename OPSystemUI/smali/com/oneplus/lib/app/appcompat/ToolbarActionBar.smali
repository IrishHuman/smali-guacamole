.class Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;
.super Lcom/oneplus/lib/app/appcompat/ActionBar;
.source "ToolbarActionBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;,
        Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;
    }
.end annotation


# instance fields
.field mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field private mMenuCallbackSet:Z

.field mWindowCallback:Landroid/view/Window$Callback;


# direct methods
.method private getMenu()Landroid/view/Menu;
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuCallbackSet:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    new-instance v1, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;

    invoke-direct {v1, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$ActionMenuPresenterCallback;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    new-instance v2, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar$MenuBuilderCallback;-><init>(Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;)V

    invoke-interface {v0, v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setMenuCallbacks(Lcom/oneplus/lib/menu/MenuPresenter$Callback;Lcom/oneplus/lib/menu/MenuBuilder$Callback;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mMenuCallbackSet:Z

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public onKeyShortcut(ILandroid/view/KeyEvent;)Z
    .locals 5

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->getMenu()Landroid/view/Menu;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDeviceId()I

    move-result v2

    goto :goto_0

    :cond_0
    const/4 v2, -0x1

    :goto_0
    invoke-static {v2}, Landroid/view/KeyCharacterMap;->load(I)Landroid/view/KeyCharacterMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/KeyCharacterMap;->getKeyboardType()I

    move-result v3

    const/4 v4, 0x0

    if-eq v3, v1, :cond_1

    move v3, v1

    goto :goto_1

    :cond_1
    move v3, v4

    :goto_1
    invoke-interface {v0, v3}, Landroid/view/Menu;->setQwertyMode(Z)V

    invoke-interface {v0, p1, p2, v4}, Landroid/view/Menu;->performShortcut(ILandroid/view/KeyEvent;I)Z

    :cond_2
    return v1
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getViewGroup()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setElevation(F)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 0

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/ToolbarActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
