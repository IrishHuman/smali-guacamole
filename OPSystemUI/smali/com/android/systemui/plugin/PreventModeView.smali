.class public Lcom/android/systemui/plugin/PreventModeView;
.super Landroid/widget/RelativeLayout;
.source "PreventModeView.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mConfig:Landroid/content/res/Configuration;

.field private mContext:Landroid/content/Context;

.field private mInnerView:Landroid/widget/LinearLayout;

.field mOrientatin:I

.field private mPhone:Landroid/widget/ImageView;

.field private mRippleView:Lcom/android/systemui/plugin/RippleView;

.field private mScrim:Landroid/view/View;

.field private mTag:Landroid/widget/TextView;

.field private mTag2:Landroid/widget/TextView;

.field private mTagNum1:Landroid/widget/TextView;

.field private mTagNum2:Landroid/widget/TextView;

.field private mTitle:Landroid/widget/TextView;

.field private mTitleCancel:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "PreventModeView"

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->TAG:Ljava/lang/String;

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    iput-object p1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private playRippleAniamor()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->prepare()V

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->startRipple()V

    return-void
.end method

.method private relayout()V
    .locals 0

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const v0, 0x7f0a0347

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mInnerView:Landroid/widget/LinearLayout;

    const v0, 0x7f0a034a

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v0, 0x7f0a0348

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v0, 0x7f0a034b

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v0, 0x7f0a034c

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v0, 0x7f0a034d

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    const v0, 0x7f0a034e

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum1:Landroid/widget/TextView;

    const v0, 0x7f0a034f

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTagNum2:Landroid/widget/TextView;

    const v0, 0x7f0a038a

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugin/RippleView;

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    new-instance v0, Landroid/content/res/Configuration;

    iget-object v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    const v0, 0x7f0a03bf

    invoke-virtual {p0, v0}, Lcom/android/systemui/plugin/PreventModeView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mScrim:Landroid/view/View;

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mPhone:Landroid/widget/ImageView;

    const v1, 0x7f0807c7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    const v1, 0x7f1104b4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    const v1, 0x7f1104b5

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    const v1, 0x7f1104b6

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag2:Landroid/widget/TextView;

    const v1, 0x7f1104b7

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mConfig:Landroid/content/res/Configuration;

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iget v1, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    if-eq v0, v1, :cond_0

    iget v0, p1, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mOrientatin:I

    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->relayout()V

    :cond_0
    return-void
.end method

.method protected onVisibilityChanged(Landroid/view/View;I)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onVisibilityChanged(Landroid/view/View;I)V

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitleCancel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTitle:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mTag:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    if-eqz p2, :cond_0

    iget-object v0, p0, Lcom/android/systemui/plugin/PreventModeView;->mRippleView:Lcom/android/systemui/plugin/RippleView;

    invoke-virtual {v0}, Lcom/android/systemui/plugin/RippleView;->stopRipple()V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/plugin/PreventModeView;->playRippleAniamor()V

    :cond_1
    :goto_0
    return-void
.end method
