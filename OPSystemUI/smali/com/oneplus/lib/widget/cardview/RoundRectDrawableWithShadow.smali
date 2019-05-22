.class Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;
.super Landroid/graphics/drawable/Drawable;
.source "RoundRectDrawableWithShadow.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;
    }
.end annotation


# static fields
.field static final COS_45:D

.field static sRoundRectHelper:Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;


# instance fields
.field private mAddPaddingForCorners:Z

.field final mCardBounds:Landroid/graphics/RectF;

.field mCornerRadius:F

.field mCornerShadowPaint:Landroid/graphics/Paint;

.field mCornerShadowPath:Landroid/graphics/Path;

.field private mDirty:Z

.field mEdgeShadowPaint:Landroid/graphics/Paint;

.field final mInsetShadow:I

.field mPaint:Landroid/graphics/Paint;

.field mRawMaxShadowSize:F

.field mRawShadowSize:F

.field private final mShadowEndColor:I

.field mShadowSize:F

.field private final mShadowStartColor:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-wide v0, 0x4046800000000000L    # 45.0

    invoke-static {v0, v1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    sput-wide v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->COS_45:D

    return-void
.end method

.method private buildComponents(Landroid/graphics/Rect;)V
    .locals 6

    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p1, Landroid/graphics/Rect;->left:I

    int-to-float v2, v2

    iget v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    add-float/2addr v2, v3

    iget v3, p1, Landroid/graphics/Rect;->top:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    iget v4, p1, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    iget v5, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    sub-float/2addr v4, v5

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v5, v5

    sub-float/2addr v5, v0

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;->set(FFFF)V

    invoke-direct {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->buildShadowCorners()V

    return-void
.end method

.method private buildShadowCorners()V
    .locals 26

    move-object/from16 v0, p0

    new-instance v1, Landroid/graphics/RectF;

    iget v2, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v2

    iget v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v3, v3

    iget v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v5, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/graphics/RectF;-><init>(FFFF)V

    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    iget v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v3, v3

    iget v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->inset(FF)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    if-nez v3, :cond_0

    new-instance v3, Landroid/graphics/Path;

    invoke-direct {v3}, Landroid/graphics/Path;-><init>()V

    iput-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    goto :goto_0

    :cond_0
    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    :goto_0
    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    sget-object v4, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v3, v4}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    neg-float v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->rLineTo(FF)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43340000    # 180.0f

    const/high16 v6, 0x42b40000    # 90.0f

    const/4 v7, 0x0

    invoke-virtual {v3, v2, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    const/high16 v4, 0x43870000    # 270.0f

    const/high16 v6, -0x3d4c0000    # -90.0f

    invoke-virtual {v3, v1, v4, v6, v7}, Landroid/graphics/Path;->arcTo(Landroid/graphics/RectF;FFZ)V

    iget-object v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    iget v3, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v6, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v4, v6

    div-float/2addr v3, v4

    iget-object v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/RadialGradient;

    const/4 v9, 0x0

    const/4 v10, 0x0

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v11, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float/2addr v11, v8

    const/4 v15, 0x3

    new-array v12, v15, [I

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v8, v12, v7

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowStartColor:I

    const/16 v16, 0x1

    aput v8, v12, v16

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowEndColor:I

    const/16 v17, 0x2

    aput v8, v12, v17

    new-array v13, v15, [F

    aput v5, v13, v7

    aput v3, v13, v16

    const/high16 v5, 0x3f800000    # 1.0f

    aput v5, v13, v17

    sget-object v14, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object v8, v6

    invoke-direct/range {v8 .. v14}, Landroid/graphics/RadialGradient;-><init>(FFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/LinearGradient;

    const/16 v19, 0x0

    iget v6, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v6

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v20, v6, v8

    const/16 v21, 0x0

    iget v6, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v6

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float v22, v6, v8

    new-array v6, v15, [I

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v8, v6, v7

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowStartColor:I

    aput v8, v6, v16

    iget v8, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowEndColor:I

    aput v8, v6, v17

    new-array v8, v15, [F

    fill-array-data v8, :array_0

    sget-object v25, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    move-object/from16 v18, v5

    move-object/from16 v23, v6

    move-object/from16 v24, v8

    invoke-direct/range {v18 .. v25}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v4, v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    return-void

    :array_0
    .array-data 4
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method static calculateHorizontalPadding(FFZ)F
    .locals 6

    if-eqz p2, :cond_0

    float-to-double v0, p0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    return p0
.end method

.method static calculateVerticalPadding(FFZ)F
    .locals 6

    const/high16 v0, 0x3fc00000    # 1.5f

    if-eqz p2, :cond_0

    mul-float/2addr v0, p0

    float-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    sget-wide v4, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->COS_45:D

    sub-double/2addr v2, v4

    float-to-double v4, p1

    mul-double/2addr v2, v4

    add-double/2addr v0, v2

    double-to-float v0, v0

    return v0

    :cond_0
    mul-float/2addr v0, p0

    return v0
.end method

.method private drawShadow(Landroid/graphics/Canvas;)V
    .locals 12

    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mInsetShadow:I

    int-to-float v2, v2

    add-float/2addr v1, v2

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v8, 0x40000000    # 2.0f

    div-float/2addr v2, v8

    add-float/2addr v1, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v3, v8, v1

    sub-float/2addr v2, v3

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-lez v2, :cond_0

    move v2, v5

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    move v9, v2

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v6, v8, v1

    sub-float/2addr v2, v6

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    move v4, v5

    nop

    :cond_1
    move v10, v4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v9, :cond_2

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_2
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43340000    # 180.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v9, :cond_3

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v2, v2

    iget v4, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mShadowSize:F

    add-float v6, v2, v4

    iget-object v7, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_3
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x43870000    # 270.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_4

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float v4, v8, v1

    sub-float v5, v2, v4

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_4
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v11

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v1

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v2, 0x42b40000    # 90.0f

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->rotate(F)V

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPath:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    if-eqz v10, :cond_5

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    mul-float/2addr v8, v1

    sub-float v5, v2, v8

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    neg-float v6, v2

    iget-object v7, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    move-object v2, p1

    move v4, v0

    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    :cond_5
    invoke-virtual {p1, v11}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;)V
    .locals 4

    iget-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mDirty:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->buildComponents(Landroid/graphics/Rect;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mDirty:Z

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawShadowSize:F

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->drawShadow(Landroid/graphics/Canvas;)V

    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawShadowSize:F

    neg-float v0, v0

    div-float/2addr v0, v1

    invoke-virtual {p1, v2, v0}, Landroid/graphics/Canvas;->translate(FF)V

    sget-object v0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->sRoundRectHelper:Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;

    iget-object v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCardBounds:Landroid/graphics/RectF;

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-object v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow$RoundRectHelper;->drawRoundRect(Landroid/graphics/Canvas;Landroid/graphics/RectF;FLandroid/graphics/Paint;)V

    return-void
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 4

    iget v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v0, v1, v2}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateVerticalPadding(FFZ)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    iget v1, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mRawMaxShadowSize:F

    iget v2, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerRadius:F

    iget-boolean v3, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mAddPaddingForCorners:Z

    invoke-static {v1, v2, v3}, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->calculateHorizontalPadding(FFZ)F

    move-result v1

    float-to-double v1, v1

    invoke-static {v1, v2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v1

    double-to-int v1, v1

    invoke-virtual {p1, v1, v0, v1, v0}, Landroid/graphics/Rect;->set(IIII)V

    const/4 v2, 0x1

    return v2
.end method

.method protected onBoundsChange(Landroid/graphics/Rect;)V
    .locals 1

    invoke-super {p0, p1}, Landroid/graphics/drawable/Drawable;->onBoundsChange(Landroid/graphics/Rect;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mDirty:Z

    return-void
.end method

.method public setAlpha(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAlpha(I)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mCornerShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    iget-object v0, p0, Lcom/oneplus/lib/widget/cardview/RoundRectDrawableWithShadow;->mEdgeShadowPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method
