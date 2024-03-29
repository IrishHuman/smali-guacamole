.class public Lcom/android/systemui/qs/PagedTileLayout$TilePage;
.super Lcom/android/systemui/qs/TileLayout;
.source "PagedTileLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/PagedTileLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TilePage"
.end annotation


# instance fields
.field private mMaxRows:I

.field public mQsRows:I

.field private oldOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/qs/TileLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x3

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    return-void
.end method

.method private getRows()I
    .locals 2

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b008d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0
    
    iget v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mQsRows:I
    
    invoke-static {}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->isLandscapeMode()Z
    
    move-result v1
    
    if-eqz v1, :cond_potrait
    
    const v0, 0x2
    
    :cond_potrait
    return v0
.end method


# virtual methods
.method public isFull()Z
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mColumns:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    mul-int/2addr v1, v2

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateResources()Z
    .locals 5
    
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->readRenovateMods()V
    
    invoke-direct {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->getRows()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mMaxRows:I

    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->requestLayout()V

    :cond_1
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->readRenovateMods()V
    
    invoke-super {p0}, Lcom/android/systemui/qs/TileLayout;->updateResources()Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v1, :cond_2

    goto :goto_1

    :cond_2
    goto :goto_2

    :cond_3
    :goto_1
    move v2, v3

    :goto_2
    return v2
.end method

.method public readRenovateMods()V
    .locals 1
    
    sget v0, Lcom/android/mwilky/Renovate;->mQsRows:I

    iput v0, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->mQsRows:I
	
    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 6

    invoke-super {p0, p1}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget v1, p1, Landroid/content/res/Configuration;->orientation:I

    iget v2, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->oldOrientation:I

    if-eq v2, v1, :cond_0
	
    invoke-virtual {p0}, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->updateResources()Z

    iput v1, p0, Lcom/android/systemui/qs/PagedTileLayout$TilePage;->oldOrientation:I
    
	:cond_0
    return-void
.end method

.method static isLandscapeMode()Z
    .locals 2
    
    invoke-static {}, Lcom/android/systemui/SystemUIApplication;->getContext()Landroid/content/Context;

    move-result-object v0
    
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
