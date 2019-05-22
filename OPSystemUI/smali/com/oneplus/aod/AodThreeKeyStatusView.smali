.class public Lcom/oneplus/aod/AodThreeKeyStatusView;
.super Landroid/widget/LinearLayout;
.source "AodThreeKeyStatusView.java"


# static fields
.field public static MODE_NONE:I

.field public static MODE_RING:I

.field public static MODE_SILENCE:I

.field public static MODE_VIBRATE:I


# instance fields
.field private TAG:Ljava/lang/String;

.field private mIcon:Landroid/widget/ImageView;

.field private mTextView:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_NONE:I

    const/4 v0, 0x1

    sput v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_SILENCE:I

    const/4 v0, 0x2

    sput v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_VIBRATE:I

    const/4 v0, 0x3

    sput v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_RING:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "AodThreeKeyStatusView"

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "AodThreeKeyStatusView"

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "AodThreeKeyStatusView"

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const-string v0, "AodThreeKeyStatusView"

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    const v0, 0x7f0a043f

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodThreeKeyStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0440

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodThreeKeyStatusView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    return-void
.end method

.method public onThreeKeyChanged(I)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_NONE:I

    if-ne p1, v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    sget v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_SILENCE:I

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800f7

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_1
    sget v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_VIBRATE:I

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800f5

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mIcon:Landroid/widget/ImageView;

    const v1, 0x7f0800f6

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    sget v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_SILENCE:I

    if-ne p1, v0, :cond_4

    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110696

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_4
    sget v0, Lcom/oneplus/aod/AodThreeKeyStatusView;->MODE_VIBRATE:I

    if-ne p1, v0, :cond_5

    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f1106ac

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/aod/AodThreeKeyStatusView;->mTextView:Landroid/widget/TextView;

    const v1, 0x7f110695

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    :cond_6
    :goto_1
    return-void
.end method
