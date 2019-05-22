.class public Lcom/oneplus/lib/widget/AutoCompleteTextView;
.super Landroid/widget/EditText;
.source "AutoCompleteTextView.java"

# interfaces
.implements Landroid/widget/Filter$FilterListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$OnDismissListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;,
        Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;
    }
.end annotation


# instance fields
.field private mAdapter:Landroid/widget/ListAdapter;

.field private mBlockCompletion:Z

.field private mDropDownAnchorId:I

.field private mDropDownDismissedOnCompletion:Z

.field private mFilter:Landroid/widget/Filter;

.field private mHintResource:I

.field private mHintText:Ljava/lang/CharSequence;

.field private mHintView:Landroid/widget/TextView;

.field private mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private mLastKeyCode:I

.field private mOpenBefore:Z

.field private final mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

.field private final mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

.field private mPopupCanBeUpdated:Z

.field private final mPopupContext:Landroid/content/Context;

.field private mThreshold:I

.field private mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x101006b

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/oneplus/lib/widget/AutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILandroid/content/res/Resources$Theme;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {p0 .. p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v6, 0x1

    iput-boolean v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    const/4 v7, 0x0

    iput v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    const/4 v8, 0x0

    iput-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    iput-boolean v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    sget-object v9, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {v1, v2, v9, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v9

    if-eqz v5, :cond_0

    new-instance v7, Landroid/view/ContextThemeWrapper;

    invoke-direct {v7, v1, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;Landroid/content/res/Resources$Theme;)V

    iput-object v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_0
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_popupTheme:I

    invoke-virtual {v9, v10, v7}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v7

    if-eqz v7, :cond_1

    new-instance v10, Landroid/view/ContextThemeWrapper;

    invoke-direct {v10, v1, v7}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v10, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    goto :goto_0

    :cond_1
    iput-object v1, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    :goto_0
    iget-object v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    if-eq v7, v1, :cond_2

    iget-object v7, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    sget-object v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView:[I

    invoke-virtual {v7, v2, v10, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v7

    goto :goto_1

    :cond_2
    move-object v7, v9

    :goto_1
    sget v10, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownSelector:I

    invoke-virtual {v7, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    sget v11, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownWidth:I

    const/4 v12, -0x2

    invoke-virtual {v7, v11, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v11

    sget v13, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownHeight:I

    invoke-virtual {v7, v13, v12}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v12

    sget v13, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionHintView:I

    sget v14, Lcom/oneplus/commonctrl/R$layout;->op_simple_dropdown_hint:I

    invoke-virtual {v7, v13, v14}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v13

    sget v14, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionHint:I

    invoke-virtual {v7, v14}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v14

    if-eq v7, v9, :cond_3

    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    :cond_3
    new-instance v15, Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-direct {v15, v8, v2, v3, v4}, Lcom/oneplus/lib/widget/ListPopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object v15, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/16 v15, 0x10

    invoke-virtual {v8, v15}, Lcom/oneplus/lib/widget/ListPopupWindow;->setSoftInputMode(I)V

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v8, v6}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptPosition(I)V

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v8, v10}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListSelector(Landroid/graphics/drawable/Drawable;)V

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    new-instance v15, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;

    const/4 v6, 0x0

    invoke-direct {v15, v0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView$DropDownItemClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v8, v15}, Lcom/oneplus/lib/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v6, v11}, Lcom/oneplus/lib/widget/ListPopupWindow;->setWidth(I)V

    iget-object v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v6, v12}, Lcom/oneplus/lib/widget/ListPopupWindow;->setHeight(I)V

    iput v13, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v0, v14}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setCompletionHint(Ljava/lang/CharSequence;)V

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_dropDownAnchor:I

    const/4 v8, -0x1

    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPAutoCompleteTextView_android_completionThreshold:I

    const/4 v8, 0x2

    invoke-virtual {v9, v6, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    iput v6, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    invoke-virtual {v9}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getInputType()I

    move-result v6

    and-int/lit8 v8, v6, 0xf

    const/4 v15, 0x1

    if-ne v8, v15, :cond_4

    const/high16 v8, 0x10000

    or-int/2addr v6, v8

    invoke-virtual {v0, v6}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setRawInputType(I)V

    :cond_4
    invoke-virtual {v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setFocusable(Z)V

    new-instance v8, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;

    const/4 v15, 0x0

    invoke-direct {v8, v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView$MyWatcher;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    invoke-virtual {v0, v8}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    new-instance v8, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-direct {v8, v0, v15}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;-><init>(Lcom/oneplus/lib/widget/AutoCompleteTextView;Lcom/oneplus/lib/widget/AutoCompleteTextView$1;)V

    iput-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    iget-object v8, v0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-super {v0, v8}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oneplus/lib/widget/AutoCompleteTextView;Landroid/view/View;IJ)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method static synthetic access$600(Lcom/oneplus/lib/widget/AutoCompleteTextView;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->onClickImpl()V

    return-void
.end method

.method private buildImeCompletions()V
    .locals 12

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v1, :cond_3

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    const/16 v3, 0x14

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v2

    new-array v3, v2, [Landroid/view/inputmethod/CompletionInfo;

    const/4 v4, 0x0

    const/4 v5, 0x0

    move v6, v4

    move v4, v5

    :goto_0
    if-ge v4, v2, :cond_1

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->isEnabled(I)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v7

    invoke-interface {v0, v4}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v8

    new-instance v10, Landroid/view/inputmethod/CompletionInfo;

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-direct {v10, v8, v9, v6, v11}, Landroid/view/inputmethod/CompletionInfo;-><init>(JILjava/lang/CharSequence;)V

    aput-object v10, v3, v6

    add-int/lit8 v6, v6, 0x1

    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_1
    if-eq v6, v2, :cond_2

    new-array v4, v6, [Landroid/view/inputmethod/CompletionInfo;

    invoke-static {v3, v5, v4, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v3, v4

    :cond_2
    invoke-virtual {v1, p0, v3}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    :cond_3
    return-void
.end method

.method private onClickImpl()V
    .locals 1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->ensureImeVisible(Z)V

    :cond_0
    return-void
.end method

.method private performCompletion(Landroid/view/View;IJ)V
    .locals 8

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_4

    if-gez p2, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {v0, p2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    if-nez v0, :cond_1

    const-string v1, "AutoCompleteTextView"

    const-string v2, "performCompletion: no selected item"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->replaceText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    if-eqz p1, :cond_2

    if-gez p2, :cond_3

    :cond_2
    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedView()Landroid/view/View;

    move-result-object p1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemPosition()I

    move-result p2

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getSelectedItemId()J

    move-result-wide p3

    :cond_3
    iget-object v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    move-object v4, p1

    move v5, p2

    move-wide v6, p3

    invoke-interface/range {v2 .. v7}, Landroid/widget/AdapterView$OnItemClickListener;->onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    :cond_4
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownDismissedOnCompletion:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_5
    return-void
.end method

.method private updateDropDownForFilter(I)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getWindowVisibility()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v1

    if-gtz p1, :cond_1

    if-eqz v0, :cond_2

    :cond_1
    if-eqz v1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->hasFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->hasWindowFocus()Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    goto :goto_0

    :cond_2
    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public clearListSelection()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->clearListSelection()V

    return-void
.end method

.method protected convertSelectionToString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->convertResultToString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public dismissDropDown()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->displayCompletions(Landroid/view/View;[Landroid/view/inputmethod/CompletionInfo;)V

    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->dismiss()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    return-void
.end method

.method public doAfterTextChanged()V
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupCanBeUpdated:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performFiltering(Ljava/lang/CharSequence;I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    :cond_4
    :goto_0
    return-void
.end method

.method public doBeforeTextChanged()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mBlockCompletion:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mOpenBefore:Z

    return-void
.end method

.method public enoughToFilter()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v0

    iget v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mThreshold:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public ensureImeVisible(Z)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->enoughToFilter()Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    :cond_2
    return-void
.end method

.method public isPopupShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isShowing()Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    invoke-super {p0}, Landroid/widget/EditText;->onAttachedToWindow()V

    return-void
.end method

.method public onCommitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p1}, Landroid/view/inputmethod/CompletionInfo;->getPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->performItemClick(I)Z

    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    invoke-super {p0}, Landroid/widget/EditText;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDisplayHint(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onDisplayHint(I)V

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_1
    :goto_0
    return-void
.end method

.method public onFilterComplete(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->updateDropDownForFilter(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/widget/EditText;->onFocusChanged(ZILandroid/graphics/Rect;)V

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isTemporarilyDetached()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    :cond_1
    if-nez p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_2
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    const/16 v0, 0x14

    if-eq p1, v0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performValidation()V

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x3d

    if-ne p1, v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    :cond_3
    iput p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x0

    iput v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mLastKeyCode:I

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->clearListSelection()V

    :cond_4
    return v0
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    const/4 v0, 0x4

    if-ne p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p2, p0}, Landroid/view/KeyEvent$DispatcherState;->startTracking(Landroid/view/KeyEvent;Ljava/lang/Object;)V

    :cond_0
    return v1

    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getKeyDispatcherState()Landroid/view/KeyEvent$DispatcherState;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-virtual {v0, p2}, Landroid/view/KeyEvent$DispatcherState;->handleUpEvent(Landroid/view/KeyEvent;)V

    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isTracking()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCanceled()Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 4

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/widget/ListPopupWindow;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x3d

    if-eqz v0, :cond_2

    const/16 v3, 0x17

    if-eq p1, v3, :cond_0

    if-eq p1, v2, :cond_0

    const/16 v3, 0x42

    if-eq p1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    :cond_1
    return v1

    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_3

    if-ne p1, v2, :cond_3

    invoke-virtual {p2}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion()V

    return v1

    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    invoke-super {p0, p1}, Landroid/widget/EditText;->onWindowFocusChanged(Z)V

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->isDropDownAlwaysVisible()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->dismissDropDown()V

    :cond_0
    return-void
.end method

.method public performCompletion()V
    .locals 4

    const/4 v0, 0x0

    const/4 v1, -0x1

    const-wide/16 v2, -0x1

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->performCompletion(Landroid/view/View;IJ)V

    return-void
.end method

.method protected performFiltering(Ljava/lang/CharSequence;I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mFilter:Landroid/widget/Filter;

    invoke-virtual {v0, p1, p0}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public performValidation()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;->isValid(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mValidator:Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;

    invoke-interface {v1, v0}, Lcom/oneplus/lib/widget/AutoCompleteTextView$Validator;->fixText(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method protected replaceText(Ljava/lang/CharSequence;)V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->clearComposingText()V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;I)V

    return-void
.end method

.method public setCompletionHint(Ljava/lang/CharSequence;)V
    .locals 3

    iput-object p1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopupContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintResource:I

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x1020014

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintText:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setPromptView(Landroid/view/View;)V

    iput-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mHintView:Landroid/widget/TextView;

    :goto_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 2

    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/EditText;->setFrame(IIII)Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->showDropDown()V

    :cond_0
    return v0
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPassThroughClickListener:Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;

    invoke-static {v0, p1}, Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;->access$302(Lcom/oneplus/lib/widget/AutoCompleteTextView$PassThroughClickListener;Landroid/view/View$OnClickListener;)Landroid/view/View$OnClickListener;

    return-void
.end method

.method public showDropDown()V
    .locals 3

    invoke-direct {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->buildImeCompletions()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getAnchorView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    iget v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->getRootView()Landroid/view/View;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mDropDownAnchorId:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0, p0}, Lcom/oneplus/lib/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/AutoCompleteTextView;->isPopupShowing()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setInputMethodMode(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/ListPopupWindow;->setListItemExpandMax(I)V

    :cond_2
    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->show()V

    iget-object v0, p0, Lcom/oneplus/lib/widget/AutoCompleteTextView;->mPopup:Lcom/oneplus/lib/widget/ListPopupWindow;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOverScrollMode(I)V

    return-void
.end method
