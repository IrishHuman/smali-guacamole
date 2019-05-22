.class final Lcom/android/server/preload/OneplusAppPreload$PowerUnit;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "PowerUnit"
.end annotation


# instance fields
.field public mLaterPowerUnit:F

.field public mPrePowerUnit:F


# direct methods
.method public constructor <init>(FF)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mPrePowerUnit:F

    iput p2, p0, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mLaterPowerUnit:F

    return-void
.end method
