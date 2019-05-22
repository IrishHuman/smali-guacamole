.class final Lcom/android/server/OnePlusPowerController$1ProbeThread;
.super Ljava/lang/Thread;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusPowerController;->sendParallelHttpChinaH2Probes()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "ProbeThread"
.end annotation


# instance fields
.field private final PUBLIC_GOOGLE_AT_CHINA_HTTP:I

.field private final PUBLIC_GOOGLE_AT_CHINA_HTTPS:I

.field private final mHttpType:I

.field private mIsProbeOK:Z

.field final synthetic this$0:Lcom/android/server/OnePlusPowerController;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;


# direct methods
.method public constructor <init>(Lcom/android/server/OnePlusPowerController;ILjava/util/concurrent/CountDownLatch;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->this$0:Lcom/android/server/OnePlusPowerController;

    iput-object p3, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 p3, 0x0

    iput-boolean p3, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mIsProbeOK:Z

    iput p3, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->PUBLIC_GOOGLE_AT_CHINA_HTTP:I

    const/4 p3, 0x1

    iput p3, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->PUBLIC_GOOGLE_AT_CHINA_HTTPS:I

    iput p2, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mHttpType:I

    return-void
.end method


# virtual methods
.method public result()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mIsProbeOK:Z

    return v0
.end method

.method public run()V
    .locals 4

    iget v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mHttpType:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$5400(Lcom/android/server/OnePlusPowerController;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OnePlusPowerController;->access$5500(Lcom/android/server/OnePlusPowerController;Ljava/net/URL;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mIsProbeOK:Z

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mHttpType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->this$0:Lcom/android/server/OnePlusPowerController;

    iget-object v1, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->this$0:Lcom/android/server/OnePlusPowerController;

    invoke-static {v1}, Lcom/android/server/OnePlusPowerController;->access$5600(Lcom/android/server/OnePlusPowerController;)Ljava/net/URL;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/OnePlusPowerController;->access$5500(Lcom/android/server/OnePlusPowerController;Ljava/net/URL;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mIsProbeOK:Z

    :cond_1
    :goto_0
    iget-boolean v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->mIsProbeOK:Z

    if-eqz v0, :cond_2

    :goto_1
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/OnePlusPowerController$1ProbeThread;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    return-void
.end method
