.class final Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;
.super Landroid/util/Property;
.source "FitWidthBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property<",
        "Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;
    .locals 1

    invoke-virtual {p1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->getVerticalOffset()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;->get(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public set(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;->setVerticalOffset(I)V

    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable$1;->set(Landroid/support/v17/leanback/graphics/FitWidthBitmapDrawable;Ljava/lang/Integer;)V

    return-void
.end method
