.class public Lcom/oneplus/lib/menu/MenuPopupHelper;
.super Ljava/lang/Object;
.source "MenuPopupHelper.java"


# instance fields
.field private mAnchorView:Landroid/view/View;

.field private final mContext:Landroid/content/Context;

.field private mDropDownGravity:I

.field private mForceShowIcon:Z

.field private final mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

.field private mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

.field private final mOverflowOnly:Z

.field private mPopup:Lcom/oneplus/lib/menu/MenuPopup;

.field private final mPopupStyleAttr:I

.field private final mPopupStyleRes:I

.field private mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZI)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/oneplus/lib/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZII)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;ZII)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x800003

    iput v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mDropDownGravity:I

    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupHelper$1;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupHelper$1;-><init>(Lcom/oneplus/lib/menu/MenuPopupHelper;)V

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iput-object p3, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iput-boolean p4, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOverflowOnly:Z

    iput p5, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iput p6, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleRes:I

    return-void
.end method

.method private createPopup()Lcom/oneplus/lib/menu/MenuPopup;
    .locals 14

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x11

    if-lt v3, v4, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    goto :goto_0

    :cond_0
    invoke-virtual {v1, v2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    :goto_0
    iget v3, v2, Landroid/graphics/Point;->x:I

    iget v4, v2, Landroid/graphics/Point;->y:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget-object v4, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/oneplus/commonctrl/R$dimen;->op_abc_cascading_menus_min_smallest_width:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v5, 0x1

    goto :goto_1

    :cond_1
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_2

    new-instance v12, Lcom/oneplus/lib/menu/CascadingMenuPopup;

    iget-object v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v8, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v9, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v10, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v11, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v6, v12

    invoke-direct/range {v6 .. v11}, Lcom/oneplus/lib/menu/CascadingMenuPopup;-><init>(Landroid/content/Context;Landroid/view/View;IIZ)V

    goto :goto_2

    :cond_2
    new-instance v6, Lcom/oneplus/lib/menu/StandardMenuPopup;

    iget-object v8, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    iget-object v9, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    iget-object v10, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    iget v11, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleAttr:I

    iget v12, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopupStyleRes:I

    iget-boolean v13, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOverflowOnly:Z

    move-object v7, v6

    invoke-direct/range {v7 .. v13}, Lcom/oneplus/lib/menu/StandardMenuPopup;-><init>(Landroid/content/Context;Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/View;IIZ)V

    :goto_2
    iget-object v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mMenu:Lcom/oneplus/lib/menu/MenuBuilder;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->addMenu(Lcom/oneplus/lib/menu/MenuBuilder;)V

    iget-object v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mInternalOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    iget-object v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->setAnchorView(Landroid/view/View;)V

    iget-object v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    iget-boolean v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mForceShowIcon:Z

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->setForceShowIcon(Z)V

    iget v7, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mDropDownGravity:I

    invoke-virtual {v6, v7}, Lcom/oneplus/lib/menu/MenuPopup;->setGravity(I)V

    return-object v6
.end method

.method private showPopup(IIZZZ)V
    .locals 9

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->getPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    invoke-virtual {v0, p4}, Lcom/oneplus/lib/menu/MenuPopup;->setShowTitle(Z)V

    if-eqz p3, :cond_2

    iget v1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mDropDownGravity:I

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-static {v2}, Landroid/support/v4/view/ViewCompat;->getLayoutDirection(Landroid/view/View;)I

    move-result v2

    invoke-static {v1, v2}, Landroid/support/v4/view/GravityCompat;->getAbsoluteGravity(II)I

    move-result v1

    and-int/lit8 v1, v1, 0x7

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    if-nez p5, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    add-int/2addr p1, v2

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopup;->getHorizontalOffset()I

    move-result p1

    :cond_1
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setHorizontalOffset(I)V

    invoke-virtual {v0, p2}, Lcom/oneplus/lib/menu/MenuPopup;->setVerticalOffset(I)V

    iget-object v2, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    const/high16 v3, 0x42400000    # 48.0f

    mul-float/2addr v3, v2

    const/high16 v4, 0x40000000    # 2.0f

    div-float/2addr v3, v4

    float-to-int v3, v3

    new-instance v4, Landroid/graphics/Rect;

    sub-int v5, p1, v3

    sub-int v6, p2, v3

    add-int v7, p1, v3

    add-int v8, p2, v3

    invoke-direct {v4, v5, v6, v7, v8}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v0, v4}, Lcom/oneplus/lib/menu/MenuPopup;->setEpicenterBounds(Landroid/graphics/Rect;)V

    :cond_2
    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopup;->show()V

    return-void
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopup;->dismiss()V

    :cond_0
    return-void
.end method

.method public getPopup()Lcom/oneplus/lib/menu/MenuPopup;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->createPopup()Lcom/oneplus/lib/menu/MenuPopup;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    return-object v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    invoke-virtual {v0}, Lcom/oneplus/lib/menu/MenuPopup;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onDismiss()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    invoke-interface {v0}, Landroid/widget/PopupWindow$OnDismissListener;->onDismiss()V

    :cond_0
    return-void
.end method

.method public setAnchorView(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    return-void
.end method

.method public setForceShowIcon(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mForceShowIcon:Z

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setForceShowIcon(Z)V

    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mDropDownGravity:I

    return-void
.end method

.method public setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public setPresenterCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPresenterCallback:Lcom/oneplus/lib/menu/MenuPresenter$Callback;

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mPopup:Lcom/oneplus/lib/menu/MenuPopup;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/menu/MenuPopup;->setCallback(Lcom/oneplus/lib/menu/MenuPresenter$Callback;)V

    :cond_0
    return-void
.end method

.method public showSubMenu()V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->tryShow(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "MenuPopupHelper cannot be used without an anchor"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public tryShow()Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->tryShow(Z)Z

    move-result v0

    return v0
.end method

.method public tryShow(IIZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v2, p0

    move v3, p1

    move v4, p2

    move v7, p3

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/lib/menu/MenuPopupHelper;->showPopup(IIZZZ)V

    return v1
.end method

.method public tryShow(Z)Z
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/oneplus/lib/menu/MenuPopupHelper;->tryShow(ZZ)Z

    move-result v0

    return v0
.end method

.method public tryShow(ZZ)Z
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/menu/MenuPopupHelper;->isShowing()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupHelper;->mAnchorView:Landroid/view/View;

    if-nez v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v5, p1

    move v7, p2

    invoke-direct/range {v2 .. v7}, Lcom/oneplus/lib/menu/MenuPopupHelper;->showPopup(IIZZZ)V

    return v1
.end method
