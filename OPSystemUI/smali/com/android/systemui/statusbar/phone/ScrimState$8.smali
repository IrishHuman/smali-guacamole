.class final enum Lcom/android/systemui/statusbar/phone/ScrimState$8;
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
    .locals 2

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$8;->mBlankScreen:Z

    iget v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$8;->mScrimBehindAlphaKeyguard:F

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$8;->mCurrentBehindAlpha:F

    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/phone/ScrimState$8;->mCurrentInFrontAlpha:F

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ScrimState$8;->mAnimateChange:Z

    return-void
.end method
