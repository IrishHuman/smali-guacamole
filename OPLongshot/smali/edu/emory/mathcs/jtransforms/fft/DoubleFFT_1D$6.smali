.class Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;
.super Ljava/lang/Object;
.source "DoubleFFT_1D.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->bluestein_real_full([DII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

.field final synthetic val$a:[D

.field final synthetic val$ak:[D

.field final synthetic val$firstIdx:I

.field final synthetic val$isign:I

.field final synthetic val$lastIdx:I

.field final synthetic val$offa:I


# direct methods
.method constructor <init>(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;IIII[D[D)V
    .locals 0

    iput-object p1, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    iput p2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$isign:I

    iput p3, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$firstIdx:I

    iput p4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$lastIdx:I

    iput p5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$offa:I

    iput-object p6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$ak:[D

    iput-object p7, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$a:[D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$isign:I

    const/4 v1, 0x2

    if-lez v0, :cond_0

    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$firstIdx:I

    :goto_0
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$lastIdx:I

    if-ge v0, v2, :cond_1

    mul-int v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$offa:I

    add-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$a:[D

    aget-wide v6, v6, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$a:[D

    aget-wide v6, v6, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$firstIdx:I

    :goto_1
    iget v2, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$lastIdx:I

    if-ge v0, v2, :cond_1

    mul-int v2, v1, v0

    add-int/lit8 v3, v2, 0x1

    iget v4, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$offa:I

    add-int/2addr v4, v0

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$a:[D

    aget-wide v6, v6, v4

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v2

    mul-double/2addr v6, v8

    aput-wide v6, v5, v2

    iget-object v5, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$ak:[D

    iget-object v6, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->val$a:[D

    aget-wide v6, v6, v4

    neg-double v6, v6

    iget-object v8, p0, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D$6;->this$0:Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;

    invoke-static {v8}, Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;->access$000(Ledu/emory/mathcs/jtransforms/fft/DoubleFFT_1D;)[D

    move-result-object v8

    aget-wide v8, v8, v3

    mul-double/2addr v6, v8

    aput-wide v6, v5, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method
