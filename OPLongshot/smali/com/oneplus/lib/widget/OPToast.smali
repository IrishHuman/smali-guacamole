.class public Lcom/oneplus/lib/widget/OPToast;
.super Landroid/widget/Toast;
.source "OPToast.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/Toast;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public static makeText(Landroid/content/Context;II)Lcom/oneplus/lib/widget/OPToast;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/res/Resources$NotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lcom/oneplus/lib/widget/OPToast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;

    move-result-object v0

    return-object v0
.end method

.method public static makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Lcom/oneplus/lib/widget/OPToast;
    .locals 6

    new-instance v0, Lcom/oneplus/lib/widget/OPToast;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/widget/OPToast;-><init>(Landroid/content/Context;)V

    const-string v1, "layout_inflater"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPToast:[I

    sget v3, Lcom/oneplus/commonctrl/R$attr;->OPToastStyle:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_OPToast:I

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    sget v3, Lcom/oneplus/commonctrl/R$styleable;->OPToast_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->op_transient_notification_light:I

    invoke-virtual {v2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {v1, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    const v5, 0x102000b

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {v0, v4, p2}, Lcom/oneplus/lib/widget/OPToast;->setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V

    return-object v0
.end method

.method private static setViewAndDuation(Lcom/oneplus/lib/widget/OPToast;Landroid/view/View;I)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/widget/OPToast;->setView(Landroid/view/View;)V

    invoke-virtual {p0, p2}, Lcom/oneplus/lib/widget/OPToast;->setDuration(I)V

    return-void
.end method
