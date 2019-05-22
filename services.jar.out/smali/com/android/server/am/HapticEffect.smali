.class public Lcom/android/server/am/HapticEffect;
.super Landroid/media/audiofx/AudioEffect;
.source "HapticEffect.java"


# static fields
.field public static final CMD_SET_MODE:I = 0x0

.field public static final CMD_SET_VOLUME:I = 0x1

.field private static final EFFECT_TYPE_HAPTIC:Ljava/util/UUID;

.field private static final EFFECT_TYPE_NULL:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HapticEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const-string v0, "17852d51-161e-11e2-892e-0800200c9a66"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/HapticEffect;->EFFECT_TYPE_HAPTIC:Ljava/util/UUID;

    return-void
.end method

.method public constructor <init>(II)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    sget-object v0, Lcom/android/server/am/HapticEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    sget-object v1, Lcom/android/server/am/HapticEffect;->EFFECT_TYPE_HAPTIC:Ljava/util/UUID;

    invoke-direct {p0, v0, v1, p1, p2}, Landroid/media/audiofx/AudioEffect;-><init>(Ljava/util/UUID;Ljava/util/UUID;II)V

    return-void
.end method


# virtual methods
.method public setEnabled(Z)I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    invoke-super {p0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setMode(S)I
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x2

    new-array v1, v1, [I

    const/4 v2, 0x1

    new-array v3, v2, [S

    const/4 v4, 0x0

    aput v4, v1, v4

    aput v4, v1, v2

    aput-short p1, v3, v4

    invoke-super {p0, v1, v3}, Landroid/media/audiofx/AudioEffect;->setParameter([I[S)I

    move-result v0

    return v0
.end method

.method public setVolume(F)I
    .locals 6

    float-to-double v0, p1

    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x4024000000000000L    # 10.0

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [I

    const/4 v3, 0x1

    new-array v4, v3, [I

    const/4 v5, 0x0

    aput v3, v2, v5

    aput v5, v2, v3

    const/high16 v3, 0x45800000    # 4096.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    aput v3, v4, v5

    invoke-super {p0, v2, v4}, Landroid/media/audiofx/AudioEffect;->setParameter([I[I)I

    move-result v1

    return v1
.end method
