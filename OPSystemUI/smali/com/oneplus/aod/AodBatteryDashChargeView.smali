.class public Lcom/oneplus/aod/AodBatteryDashChargeView;
.super Landroid/widget/ImageView;
.source "AodBatteryDashChargeView.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDark:Z

.field private mIconTint:I

.field private mLevel:I

.field private final mTintArea:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    iput v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mIconTint:I

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mTintArea:Landroid/graphics/Rect;

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    return-void
.end method

.method private getImageResId()I
    .locals 4

    const/4 v0, 0x0

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_0

    const v1, 0x7f080616

    goto :goto_0

    :cond_0
    const v1, 0x7f080617

    :goto_0
    move v0, v1

    goto/16 :goto_11

    :cond_1
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0xb

    if-lez v1, :cond_3

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_3

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_2

    const v1, 0x7f080618

    goto :goto_1

    :cond_2
    const v1, 0x7f080627

    :goto_1
    move v0, v1

    goto/16 :goto_11

    :cond_3
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x11

    if-le v1, v2, :cond_5

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_5

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_4

    const v1, 0x7f080628

    goto :goto_2

    :cond_4
    const v1, 0x7f080629

    :goto_2
    move v0, v1

    goto/16 :goto_11

    :cond_5
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x17

    if-le v1, v3, :cond_7

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_7

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_6

    const v1, 0x7f08062a

    goto :goto_3

    :cond_6
    const v1, 0x7f08062b

    :goto_3
    move v0, v1

    goto/16 :goto_11

    :cond_7
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x1d

    if-le v1, v2, :cond_9

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_9

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_8

    const v1, 0x7f08062c

    goto :goto_4

    :cond_8
    const v1, 0x7f08062d

    :goto_4
    move v0, v1

    goto/16 :goto_11

    :cond_9
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x23

    if-le v1, v3, :cond_b

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_b

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_a

    const v1, 0x7f08062e

    goto :goto_5

    :cond_a
    const v1, 0x7f08062f

    :goto_5
    move v0, v1

    goto/16 :goto_11

    :cond_b
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x29

    if-le v1, v2, :cond_d

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_d

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_c

    const v1, 0x7f080630

    goto :goto_6

    :cond_c
    const v1, 0x7f080631

    :goto_6
    move v0, v1

    goto/16 :goto_11

    :cond_d
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x2f

    if-le v1, v3, :cond_f

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_f

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_e

    const v1, 0x7f080632

    goto :goto_7

    :cond_e
    const v1, 0x7f080633

    :goto_7
    move v0, v1

    goto/16 :goto_11

    :cond_f
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x35

    if-le v1, v2, :cond_11

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_11

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_10

    const v1, 0x7f080634

    goto :goto_8

    :cond_10
    const v1, 0x7f080635

    :goto_8
    move v0, v1

    goto/16 :goto_11

    :cond_11
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x3b

    if-le v1, v3, :cond_13

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_13

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_12

    const v1, 0x7f080636

    goto :goto_9

    :cond_12
    const v1, 0x7f080637

    :goto_9
    move v0, v1

    goto/16 :goto_11

    :cond_13
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x41

    if-le v1, v2, :cond_15

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_15

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_14

    const v1, 0x7f080619

    goto :goto_a

    :cond_14
    const v1, 0x7f08061a

    :goto_a
    move v0, v1

    goto/16 :goto_11

    :cond_15
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x47

    if-le v1, v3, :cond_17

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_17

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_16

    const v1, 0x7f08061b

    goto :goto_b

    :cond_16
    const v1, 0x7f08061c

    :goto_b
    move v0, v1

    goto/16 :goto_11

    :cond_17
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x4d

    if-le v1, v2, :cond_19

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_19

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_18

    const v1, 0x7f08061d

    goto :goto_c

    :cond_18
    const v1, 0x7f08061e

    :goto_c
    move v0, v1

    goto/16 :goto_11

    :cond_19
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x53

    if-le v1, v3, :cond_1b

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1b

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1a

    const v1, 0x7f08061f

    goto :goto_d

    :cond_1a
    const v1, 0x7f080620

    :goto_d
    move v0, v1

    goto :goto_11

    :cond_1b
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v3, 0x59

    if-le v1, v2, :cond_1d

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v3, :cond_1d

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1c

    const v1, 0x7f080621

    goto :goto_e

    :cond_1c
    const v1, 0x7f080622

    :goto_e
    move v0, v1

    goto :goto_11

    :cond_1d
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x5f

    if-le v1, v3, :cond_1f

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-gt v1, v2, :cond_1f

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_1e

    const v1, 0x7f080623

    goto :goto_f

    :cond_1e
    const v1, 0x7f080624

    :goto_f
    move v0, v1

    goto :goto_11

    :cond_1f
    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-le v1, v2, :cond_21

    iget v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    const/16 v2, 0x64

    if-gt v1, v2, :cond_21

    iget-boolean v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mDark:Z

    if-nez v1, :cond_20

    const v1, 0x7f080625

    goto :goto_10

    :cond_20
    const v1, 0x7f080626

    :goto_10
    move v0, v1

    :cond_21
    :goto_11
    return v0
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 3

    invoke-super {p0}, Landroid/widget/ImageView;->onAttachedToWindow()V

    invoke-virtual {p0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070090

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    iget-object v1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07008f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public setLevel(IZ)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    if-ne p1, v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    iput p1, p0, Lcom/oneplus/aod/AodBatteryDashChargeView;->mLevel:I

    invoke-direct {p0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->getImageResId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/AodBatteryDashChargeView;->setImageResource(I)V

    :cond_1
    return-void
.end method
