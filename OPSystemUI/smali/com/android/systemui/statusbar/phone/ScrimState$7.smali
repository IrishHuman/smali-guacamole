.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$7;
.super Lcom/android/systemui/statusbar/phone/ScrimState;
.source "ScrimState.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/ScrimState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/systemui/statusbar/phone/ScrimState;-><init>(Ljava/lang/String;IILcom/android/systemui/statusbar/phone/ScrimState$1;)V

    return-void
.end method


# virtual methods
.method public prepare(Lcom/android/systemui/statusbar/phone/ScrimState;)V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindAlpha:F

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontAlpha:F

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/plugin/LSState;->getFingerprintUnlockControl()Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/FingerprintUnlockController;->getMode()I

    move-result v0

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/systemui/util/OPUtils;->isHomeApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x320

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x12c

    iput-wide v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mAnimationDuration:J

    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->AOD:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-eq p1, v0, :cond_2

    sget-object v0, Lcom/android/systemui/statusbar/phone/ScrimState;->PULSING:Lcom/android/systemui/statusbar/phone/ScrimState;

    if-ne p1, v0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    goto :goto_2

    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimInFront:Lcom/android/systemui/statusbar/ScrimView;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x1000000

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mScrimBehind:Lcom/android/systemui/statusbar/ScrimView;

    invoke-virtual {p0, v0, v1, v2}, Lcom/android/systemui/statusbar/phone/ScrimState$7;->updateScrimColor(Lcom/android/systemui/statusbar/ScrimView;FI)V

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentInFrontTint:I

    iput v2, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mCurrentBehindTint:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$7;->mBlankScreen:Z

    :goto_2
    return-void
.end method
