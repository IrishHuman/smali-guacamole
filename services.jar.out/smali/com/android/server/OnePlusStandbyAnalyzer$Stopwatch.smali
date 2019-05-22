.class Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Stopwatch"
.end annotation


# instance fields
.field private mStartTimeMs:J

.field private mStopTimeMs:J

.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    return-void
.end method


# virtual methods
.method public isRunning()Z
    .locals 1

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->isStopped()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStarted()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStopped()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStopTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public lap()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->stop()J

    move-result-wide v0

    return-wide v0
.end method

.method public reset()V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStartTimeMs:J

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStopTimeMs:J

    return-void
.end method

.method public start()Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;
    .locals 2

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStartTimeMs:J

    :cond_0
    return-object p0
.end method

.method public stop()J
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStopTimeMs:J

    :cond_0
    iget-wide v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStopTimeMs:J

    iget-wide v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$Stopwatch;->mStartTimeMs:J

    sub-long/2addr v0, v2

    return-wide v0
.end method
