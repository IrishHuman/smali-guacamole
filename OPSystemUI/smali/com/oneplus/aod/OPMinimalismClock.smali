.class public Lcom/oneplus/aod/OPMinimalismClock;
.super Landroid/widget/RelativeLayout;
.source "OPMinimalismClock.java"


# instance fields
.field private TAG:Ljava/lang/String;

.field private mHour:Landroid/widget/ImageView;

.field private mMin:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string v0, "OPMinimalismClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OPMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OPMinimalismClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OPMinimalismClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "OPMinimalismClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OPMinimalismClock;->init()V

    return-void
.end method

.method private init()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    const-string v1, "init"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    iget-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    const-string v1, "onAttachedToWindow"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/oneplus/aod/OPMinimalismClock;->refreshTime()V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    const v0, 0x7f0a0266

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPMinimalismClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    const v0, 0x7f0a0267

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPMinimalismClock;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    return-void
.end method

.method public refreshTime()V
    .locals 9

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "hh:mm"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v4, 0x1

    aget-object v4, v2, v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    const v6, 0x7f0806cd

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v5, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    const v6, 0x7f0806ce

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    int-to-float v5, v3

    const/high16 v6, 0x43b40000    # 360.0f

    mul-float/2addr v5, v6

    const/high16 v7, 0x41400000    # 12.0f

    div-float/2addr v5, v7

    int-to-float v7, v4

    const/high16 v8, 0x41f00000    # 30.0f

    mul-float/2addr v8, v7

    const/high16 v7, 0x42700000    # 60.0f

    div-float/2addr v8, v7

    add-float/2addr v5, v8

    int-to-float v8, v4

    mul-float/2addr v6, v8

    div-float/2addr v6, v7

    iget-object v7, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v7, v5}, Landroid/widget/ImageView;->setRotation(F)V

    iget-object v7, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setRotation(F)V

    return-void
.end method
