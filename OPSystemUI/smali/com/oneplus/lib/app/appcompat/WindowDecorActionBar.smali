.class public Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;
.super Lcom/oneplus/lib/app/appcompat/ActionBar;
.source "WindowDecorActionBar.java"

# interfaces
.implements Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final ALLOW_SHOW_HIDE_ANIMATIONS:Z

.field private static final sHideInterpolator:Landroid/view/animation/Interpolator;

.field private static final sShowInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

.field mContentAnimations:Z

.field mContentView:Landroid/view/View;

.field mContext:Landroid/content/Context;

.field mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

.field private mCurWindowVisibility:I

.field mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

.field mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

.field mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

.field mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field private mHasEmbeddedTabs:Z

.field mHiddenByApp:Z

.field mHiddenBySystem:Z

.field final mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field mHideOnContentScroll:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

.field private mShowingForMode:Z

.field mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    nop

    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Z)V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    if-nez p2, :cond_0

    const v2, 0x1020002

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 1

    invoke-direct {p0}, Lcom/oneplus/lib/app/appcompat/ActionBar;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabs:Ljava/util/ArrayList;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mSavedTabPosition:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$1;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$2;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    new-instance v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar$3;-><init>(Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->init(Landroid/view/View;)V

    return-void
.end method

.method static checkShowingFlags(ZZZ)Z
    .locals 1

    const/4 v0, 0x1

    if-eqz p2, :cond_0

    return v0

    :cond_0
    if-nez p0, :cond_2

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method private getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;
    .locals 3

    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    return-object v0

    :cond_0
    instance-of v0, p1, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    if-eqz v0, :cond_1

    move-object v0, p1

    check-cast v0, Lcom/oneplus/lib/widget/actionbar/Toolbar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/actionbar/Toolbar;->getSupportWrap()Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    return-object v0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t make a decor toolbar out of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    const-string v1, "null"

    :goto_0
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init(Landroid/view/View;)V
    .locals 9

    sget v0, Lcom/oneplus/commonctrl/R$id;->decor_content_parent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setActionBarVisibilityCallback(Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout$ActionBarVisibilityCallback;)V

    :cond_0
    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getDecorToolbar(Landroid/view/View;)Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    sget v0, Lcom/oneplus/commonctrl/R$id;->action_context_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    sget v0, Lcom/oneplus/commonctrl/R$id;->action_bar_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContextView:Lcom/oneplus/lib/app/appcompat/ActionBarContextView;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, v0, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    move v1, v2

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    if-eqz v1, :cond_2

    iput-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_2
    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-static {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;

    move-result-object v4

    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v5

    if-nez v5, :cond_4

    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    move v5, v3

    goto :goto_2

    :cond_4
    :goto_1
    move v5, v2

    :goto_2
    invoke-virtual {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHomeButtonEnabled(Z)V

    invoke-virtual {v4}, Lcom/oneplus/lib/app/appcompat/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v5

    invoke-direct {p0, v5}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHasEmbeddedTabs(Z)V

    iget-object v5, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    const/4 v6, 0x0

    sget-object v7, Lcom/oneplus/commonctrl/R$styleable;->ActionBar:[I

    sget v8, Lcom/oneplus/commonctrl/R$attr;->actionBarStyle:I

    invoke-virtual {v5, v6, v7, v8, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_hideOnContentScroll:I

    invoke-virtual {v5, v6, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setHideOnContentScrollEnabled(Z)V

    :cond_5
    sget v2, Lcom/oneplus/commonctrl/R$styleable;->ActionBar_elevation:I

    invoke-virtual {v5, v2, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    if-eqz v2, :cond_6

    int-to-float v3, v2

    invoke-virtual {p0, v3}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setElevation(F)V

    :cond_6
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    return-void

    :cond_7
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " can only be used with a compatible window decor layout"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5

    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTabContainer(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setEmbeddedTabView(Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;)V

    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    invoke-virtual {v1, v3}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    goto :goto_2

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mTabScrollView:Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/oneplus/lib/app/appcompat/ScrollingTabContainerView;->setVisibility(I)V

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    move v4, v2

    goto :goto_3

    :cond_4
    move v4, v3

    :goto_3
    invoke-interface {v1, v4}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setCollapsible(Z)V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_5

    if-eqz v0, :cond_5

    goto :goto_4

    :cond_5
    move v2, v3

    :goto_4
    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHasNonEmbeddedTabs(Z)V

    return-void
.end method

.method private updateVisibility(Z)V
    .locals 3

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenByApp:Z

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    iget-boolean v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowingForMode:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->checkShowingFlags(ZZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doShow(Z)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mNowShowing:Z

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->doHide(Z)V

    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public collapseActionView()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->hasExpandedActionView()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->collapseActionView()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method completeDeferredDestroyActionMode()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    invoke-interface {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;->onDestroyActionMode(Lcom/oneplus/lib/app/appcompat/ActionMode;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredDestroyActionMode:Lcom/oneplus/lib/app/appcompat/ActionMode;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDeferredModeDestroyCallback:Lcom/oneplus/lib/app/appcompat/ActionMode$Callback;

    :cond_0
    return-void
.end method

.method public doHide(Z)V
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setTransitioning(Z)V

    new-instance v0, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v2

    neg-int v2, v2

    int-to-float v2, v2

    if-eqz p1, :cond_2

    const/4 v3, 0x2

    new-array v3, v3, [I

    fill-array-data v3, :array_0

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v4, v3}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    aget v1, v3, v1

    int-to-float v1, v1

    sub-float/2addr v2, v1

    :cond_2
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v1}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v1, v3}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-boolean v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    :cond_3
    sget-object v3, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sHideInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    const-wide/16 v3, 0xfa

    invoke-virtual {v0, v3, v4}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v0, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :goto_0
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->setVisibility(I)V

    iget v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    sget-boolean v0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->ALLOW_SHOW_HIDE_ANIMATIONS:Z

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowHideAnimationEnabled:Z

    if-nez v0, :cond_1

    if-eqz p1, :cond_4

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    if-eqz p1, :cond_2

    const/4 v2, 0x2

    new-array v2, v2, [I

    fill-array-data v2, :array_0

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-virtual {v3, v2}, Lcom/oneplus/lib/app/appcompat/ActionBarContainer;->getLocationInWindow([I)V

    const/4 v3, 0x1

    aget v3, v2, v3

    int-to-float v3, v3

    sub-float/2addr v0, v3

    :cond_2
    iget-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v2, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    new-instance v2, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-direct {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;-><init>()V

    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v3}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mUpdateListener:Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;

    invoke-virtual {v3, v4}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->setUpdateListener(Landroid/support/v4/view/ViewPropertyAnimatorUpdateListener;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    invoke-virtual {v2, v3}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-boolean v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4, v0}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v4}, Landroid/support/v4/view/ViewCompat;->animate(Landroid/view/View;)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/support/v4/view/ViewPropertyAnimatorCompat;->translationY(F)Landroid/support/v4/view/ViewPropertyAnimatorCompat;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->play(Landroid/support/v4/view/ViewPropertyAnimatorCompat;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    :cond_3
    sget-object v1, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->sShowInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setInterpolator(Landroid/view/animation/Interpolator;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    const-wide/16 v4, 0xfa

    invoke-virtual {v2, v4, v5}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setDuration(J)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->setListener(Landroid/support/v4/view/ViewPropertyAnimatorListener;)Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    iput-object v2, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v2}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->start()V

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v2}, Landroid/support/v4/view/ViewCompat;->setAlpha(Landroid/view/View;F)V

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v4/view/ViewCompat;->setTranslationY(Landroid/view/View;F)V

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mShowListener:Landroid/support/v4/view/ViewPropertyAnimatorListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/support/v4/view/ViewPropertyAnimatorListener;->onAnimationEnd(Landroid/view/View;)V

    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    :cond_6
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContentAnimations:Z

    return-void
.end method

.method public getNavigationMode()I
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    if-nez v0, :cond_1

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/oneplus/commonctrl/R$attr;->actionBarWidgetTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    if-eqz v2, :cond_0

    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mThemedContext:Landroid/content/Context;

    return-object v0
.end method

.method public hideForSystem()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_0
    return-void
.end method

.method public onContentScrollStarted()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;->cancel()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurrentShowAnim:Lcom/oneplus/lib/app/appcompat/ViewPropertyAnimatorCompatSet;

    :cond_0
    return-void
.end method

.method public onContentScrollStopped()V
    .locals 0

    return-void
.end method

.method public onWindowVisibilityChanged(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mCurWindowVisibility:I

    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayHomeAsUpEnabled(Z)V

    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2

    const/4 v0, 0x4

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->setDisplayOptions(II)V

    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->getDisplayOptions()I

    move-result v0

    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDisplayHomeAsUpSet:Z

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    and-int v2, p1, p2

    not-int v3, p2

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-interface {v1, v2}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setDisplayOptions(I)V

    return-void
.end method

.method public setElevation(F)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mContainerView:Lcom/oneplus/lib/app/appcompat/ActionBarContainer;

    invoke-static {v0, p1}, Landroid/support/v4/view/ViewCompat;->setElevation(Landroid/view/View;F)V

    return-void
.end method

.method public setHideOnContentScrollEnabled(Z)V
    .locals 2

    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->isInOverlayMode()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Action bar must be in overlay mode (Window.FEATURE_OVERLAY_ACTION_BAR) to enable hide on content scroll"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHideOnContentScroll:Z

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mOverlayLayout:Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/appcompat/ActionBarOverlayLayout;->setHideOnContentScrollEnabled(Z)V

    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setHomeButtonEnabled(Z)V

    return-void
.end method

.method public setWindowTitle(Ljava/lang/CharSequence;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mDecorToolbar:Lcom/oneplus/lib/widget/actionbar/DecorToolbar;

    invoke-interface {v0, p1}, Lcom/oneplus/lib/widget/actionbar/DecorToolbar;->setWindowTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public showForSystem()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->mHiddenBySystem:Z

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/lib/app/appcompat/WindowDecorActionBar;->updateVisibility(Z)V

    :cond_0
    return-void
.end method
