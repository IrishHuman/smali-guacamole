.class Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;
.super Ljava/lang/Object;
.source "OnePlusPowerConsumptionStatistic.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPowerConsumptionStatistic;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WatchTimer"
.end annotation


# instance fields
.field mIsStart:Z

.field mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

.field mTime:J

.field tag:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;Ljava/lang/String;F)V
    .locals 4

    iput-object p1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    new-instance v0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    iget-object v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->this$0:Lcom/android/server/am/OnePlusPowerConsumptionStatistic;

    invoke-direct {v0, v1}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;-><init>(Lcom/android/server/am/OnePlusPowerConsumptionStatistic;)V

    iput-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    iput-object p2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    const/high16 v0, 0x42700000    # 60.0f

    mul-float v1, p3, v0

    mul-float/2addr v1, v0

    const/high16 v0, 0x447a0000    # 1000.0f

    mul-float/2addr v1, v0

    float-to-long v0, v1

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " inited with existed accumulatedTimeByHrs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, ", mTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private getTime()J
    .locals 4

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;->lap()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method private writeStringToFile(Ljava/lang/String;F)V
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileWriter;

    invoke-direct {v3, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V

    const/4 v1, 0x0

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile write "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v2

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string/jumbo v5, "writeStringToFile sorry write wrong"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_3

    :catch_1
    move-exception v2

    :try_start_2
    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile sorry write wrong"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v2

    const-string v3, "OPCS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_0
    :goto_2
    return-void

    :goto_3
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile sorry write wrong"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "OPCS"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_4
    throw v2
.end method


# virtual methods
.method public declared-synchronized dumpInfo()V
    .locals 4

    monitor-enter p0

    :try_start_0
    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mIsStart : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->getTime()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flushToDisk()V
    .locals 4

    monitor-enter p0

    const/high16 v0, 0x3f800000    # 1.0f

    :try_start_0
    iget-wide v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    long-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x4a5bba00    # 3600000.0f

    div-float/2addr v0, v1

    new-instance v1, Ljava/math/BigDecimal;

    float-to-double v2, v0

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v2, 0x3

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v2

    invoke-virtual {v2}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    move v0, v2

    const-string v2, "/persist/engineermode/screenontimebyhours"

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->writeStringToFile(Ljava/lang/String;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - reset"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized start()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPCS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WatchTimer : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " - start"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;->start()Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x0

    :try_start_1
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mIsStart:Z

    iget-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    invoke-virtual {v2}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;->stop()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    invoke-static {}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic;->access$7300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "OPCS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "WatchTimer : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->tag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " - stop, mTime= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mTime:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$WatchTimer;->mStopwatch:Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusPowerConsumptionStatistic$Stopwatch;->reset()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
