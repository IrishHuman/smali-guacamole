.class final Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$Factory;
.super Ljava/lang/Object;
.source "AnimatableScaleValue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "Factory"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static newInstance()Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 2

    new-instance v0, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue$1;)V

    return-object v0
.end method

.method static newInstance(Lorg/json/JSONObject;Lcom/airbnb/lottie/LottieComposition;)Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;
    .locals 4

    sget-object v0, Lcom/airbnb/lottie/model/ScaleXY$Factory;->INSTANCE:Lcom/airbnb/lottie/model/ScaleXY$Factory;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {p0, v1, p1, v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->newInstance(Lorg/json/JSONObject;FLcom/airbnb/lottie/LottieComposition;Lcom/airbnb/lottie/model/animatable/AnimatableValue$Factory;)Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;

    move-result-object v0

    invoke-virtual {v0}, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser;->parseJson()Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;

    move-result-object v0

    new-instance v1, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;

    iget-object v2, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->keyframes:Ljava/util/List;

    iget-object v3, v0, Lcom/airbnb/lottie/model/animatable/AnimatableValueParser$Result;->initialValue:Ljava/lang/Object;

    check-cast v3, Lcom/airbnb/lottie/model/ScaleXY;

    invoke-direct {v1, v2, v3}, Lcom/airbnb/lottie/model/animatable/AnimatableScaleValue;-><init>(Ljava/util/List;Lcom/airbnb/lottie/model/ScaleXY;)V

    return-object v1
.end method
