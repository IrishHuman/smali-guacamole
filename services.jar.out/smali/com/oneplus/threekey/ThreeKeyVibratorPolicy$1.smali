.class Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;
.super Ljava/lang/Object;
.source "ThreeKeyVibratorPolicy.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;


# direct methods
.method constructor <init>(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;->this$0:Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget-object v0, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;->this$0:Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    invoke-static {v0}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->access$000(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ThreeKeyVibratorPolicy"

    const-string v1, "Runnable mMiddleVibration"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/16 v0, 0x3f5

    const/16 v1, 0x78

    const/16 v8, 0x64

    const/4 v9, 0x2

    iget-object v2, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;->this$0:Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    invoke-static {v2}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->access$100(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy$1;->this$0:Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;

    invoke-static {v3}, Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;->access$200(Lcom/oneplus/threekey/ThreeKeyVibratorPolicy;)Landroid/os/Vibrator;

    move-result-object v3

    move v4, v0

    move v5, v1

    move v6, v8

    move v7, v9

    invoke-static/range {v2 .. v7}, Lcom/oneplus/util/VibratorSceneUtils;->doVibrateWithSceneMultipleTimes(Landroid/content/Context;Landroid/os/Vibrator;IIII)Z

    return-void
.end method
