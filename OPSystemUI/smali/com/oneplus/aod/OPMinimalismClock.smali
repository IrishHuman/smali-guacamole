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
    
    iput-object p1, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string v0, "OPMinimalismClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OPMinimalismClock;->init()V
    
    iput-object p1, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string v0, "OPMinimalismClock"

    iput-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->TAG:Ljava/lang/String;

    invoke-direct {p0}, Lcom/oneplus/aod/OPMinimalismClock;->init()V
    
    iput-object p1, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

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
    
    invoke-virtual {p0}, Lcom/oneplus/aod/OPMinimalismClock;->updateClockColors()V

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

.method public static getAccentColor(Landroid/content/Context;)I
    .registers 11
    .param p0, "Context"    # Landroid/content/Context;

    .line 323
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 324
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "oem_black_mode_accent_color"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 325
    .local v1, "HexColorBlack":Ljava/lang/String;
    const-string v2, "oem_white_mode_accent_color"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 326
    .local v2, "HexColorWhite":Ljava/lang/String;
    const-string v3, "oem_black_mode"

    const/4 v4, 0x2

    invoke-static {v0, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 327
    .local v3, "theme":I
    const-string v5, "oem_special_theme"

    const/4 v6, 0x0

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 328
    .local v5, "specialTheme":I
    const/4 v6, 0x1

    if-ne v5, v6, :cond_25

    .line 329
    const v4, -0x43fd3

    return v4

    .line 330
    :cond_25
    const/16 v7, 0x10

    const/16 v8, 0xb

    if-ne v3, v6, :cond_42

    .line 331
    const-string v9, "oem_black_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_38

    .line 332
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 334
    :cond_38
    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 335
    invoke-static {v1, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    return v4

    .line 337
    :cond_42
    if-nez v3, :cond_5b

    .line 338
    const-string v9, "oem_white_mode_accent_color_index"

    invoke-static {v0, v9, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v8, :cond_51

    .line 339
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    return v4

    .line 341
    :cond_51
    invoke-virtual {v2, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 342
    invoke-static {v2, v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v4, v6

    return v4

    .line 344
    :cond_5b
    const/4 v6, -0x1

    if-ne v3, v4, :cond_5f

    .line 345
    return v6

    .line 347
    :cond_5f
    return v6
.end method

.method public updateClockColors()V
    .registers 12

    .line 293
    iget-object v0, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 294
    .local v0, "ContentResolver":Landroid/content/ContentResolver;
    const-string v1, "tweaks_unlock_aod_colors"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "isCustomClock":I
    const-string v3, "tweaks_unlock_aod_accent_colors"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 296
    .local v3, "isCustomClockAccent":I
    const-string v4, "tweaks_aod_text_color_system_accent"

    invoke-static {v0, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 297
    .local v4, "isCustomClockSystemAccent":I
    const-string v5, "tweaks_aod_accent_text_color_system_accent"

    invoke-static {v0, v5, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 298
    .local v2, "isCustomClockAccentSystemAccent":I
    const-string v5, "tweaks_aod_text_color"

    iget-object v6, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f06013a

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v6

    invoke-static {v0, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    .line 299
    .local v5, "minColor":I
    const-string v6, "tweaks_aod_accent_text_color"

    iget-object v7, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f06013b

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getColor(I)I

    move-result v7

    invoke-static {v0, v6, v7}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    .line 300
    .local v6, "hourColor":I
    iget-object v7, p0, Lcom/oneplus/aod/OPMinimalismClock;->mContext:Landroid/content/Context;

    invoke-static {v7}, Lcom/oneplus/aod/OPMinimalismClock;->getAccentColor(Landroid/content/Context;)I

    move-result v7

    .line 301
    .local v7, "accentColor":I
    const/4 v8, 0x1

    if-ne v1, v8, :cond_60

    .line 302
    if-ne v4, v8, :cond_58

    .line 303
    iget-object v9, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v7, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_61

    .line 305
    :cond_58
    iget-object v9, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    sget-object v10, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v9, v5, v10}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_61

    .line 301
    :cond_60
    nop

    .line 308
    :goto_61
    if-nez v1, :cond_69

    .line 309
    iget-object v9, p0, Lcom/oneplus/aod/OPMinimalismClock;->mMin:Landroid/widget/ImageView;

    invoke-virtual {v9}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_6a

    .line 308
    :cond_69
    nop

    .line 311
    :goto_6a
    if-ne v3, v8, :cond_7e

    .line 312
    if-ne v2, v8, :cond_76

    .line 313
    iget-object v8, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v7, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7f

    .line 315
    :cond_76
    iget-object v8, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    sget-object v9, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v8, v6, v9}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    goto :goto_7f

    .line 311
    :cond_7e
    nop

    .line 318
    :goto_7f
    if-nez v3, :cond_87

    .line 319
    iget-object v8, p0, Lcom/oneplus/aod/OPMinimalismClock;->mHour:Landroid/widget/ImageView;

    invoke-virtual {v8}, Landroid/widget/ImageView;->clearColorFilter()V

    goto :goto_88

    .line 318
    :cond_87
    nop

    .line 321
    :goto_88
    return-void
.end method
