.class public Lcom/oneplus/lib/menu/MenuPopupWindow;
.super Lcom/oneplus/lib/widget/ListPopupWindow;
.source "MenuPopupWindow.java"

# interfaces
.implements Lcom/oneplus/lib/menu/MenuItemHoverListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "MenuPopupWindow"

.field private static sSetTouchModalMethod:Ljava/lang/reflect/Method;


# instance fields
.field private mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    :try_start_0
    const-class v0, Landroid/widget/PopupWindow;

    const-string v1, "setTouchModal"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not find method setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method


# virtual methods
.method public createDropDownListView(Landroid/content/Context;Z)Lcom/oneplus/lib/widget/DropDownListView;
    .locals 1

    new-instance v0, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;

    invoke-direct {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/menu/MenuPopupWindow$MenuDropDownListView;->setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V

    return-object v0
.end method

.method public onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverEnter(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    invoke-interface {v0, p1, p2}, Lcom/oneplus/lib/menu/MenuItemHoverListener;->onItemHoverExit(Lcom/oneplus/lib/menu/MenuBuilder;Landroid/view/MenuItem;)V

    :cond_0
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    move-object v1, p1

    check-cast v1, Landroid/transition/Transition;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    :cond_0
    return-void
.end method

.method public setHoverListener(Lcom/oneplus/lib/menu/MenuItemHoverListener;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mHoverListener:Lcom/oneplus/lib/menu/MenuItemHoverListener;

    return-void
.end method

.method public setTouchModal(Z)V
    .locals 5

    sget-object v0, Lcom/oneplus/lib/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_0

    :try_start_0
    sget-object v0, Lcom/oneplus/lib/menu/MenuPopupWindow;->sSetTouchModalMethod:Ljava/lang/reflect/Method;

    iget-object v1, p0, Lcom/oneplus/lib/menu/MenuPopupWindow;->mPopup:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MenuPopupWindow"

    const-string v2, "Could not invoke setTouchModal() on PopupWindow. Oh well."

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_0
    return-void
.end method
