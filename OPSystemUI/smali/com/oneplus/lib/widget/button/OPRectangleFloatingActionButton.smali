.class public Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;
.super Landroid/widget/RelativeLayout;
.source "OPRectangleFloatingActionButton.java"


# instance fields
.field private mIsDisappear1:Z

.field private mIsDisappear2:Z

.field private mIsSwitchState:Z

.field private mNormalImageView:Landroid/widget/ImageView;

.field private mSwitchImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPRectangleFloatingActionButtonStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear1:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsDisappear2:Z

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mIsSwitchState:Z

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton:[I

    sget v1, Lcom/oneplus/commonctrl/R$style;->OnePlus_Widget_Design_RectangleFloatingActionButton:I

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_tint_color:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$drawable;->op_rectangle_floating_action_button:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    new-instance v4, Landroid/graphics/drawable/RippleDrawable;

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/oneplus/commonctrl/R$color;->white:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v4, v5, v3, v6}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    const-string v5, "layout_inflater"

    invoke-virtual {p1, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/view/LayoutInflater;

    sget v6, Lcom/oneplus/commonctrl/R$layout;->op_float_switch_button:I

    invoke-virtual {v5, v6, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    sget v6, Lcom/oneplus/commonctrl/R$id;->normal_imageview:I

    invoke-virtual {p0, v6}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    iput-object v6, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    sget v6, Lcom/oneplus/commonctrl/R$styleable;->OPRectangleFloatingActionButton_op_image:I

    invoke-virtual {v0, v6}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iget-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mNormalImageView:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    sget v7, Lcom/oneplus/commonctrl/R$id;->switch_imageview:I

    invoke-virtual {p0, v7}, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/oneplus/lib/widget/button/OPRectangleFloatingActionButton;->mSwitchImageView:Landroid/widget/ImageView;

    return-void
.end method
