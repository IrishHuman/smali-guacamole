.class final Lcom/android/server/preload/OneplusAppPreload$SingleRecord;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SingleRecord"
.end annotation


# instance fields
.field public isOverBufferRecord:Z

.field public isRecordDone:Z

.field public isSentMDM:Z

.field public mDeadTime:J

.field public mPreloadTime:J

.field public mRealStartTime:J


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    return-void
.end method

.method public constructor <init>(JJJZ)V
    .locals 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    iput-wide p1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iput-wide p3, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-wide p5, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    iput-boolean p7, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const-wide/16 v3, 0x3e7

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    :cond_0
    return-void
.end method


# virtual methods
.method public getHitLabel()Ljava/lang/String;
    .locals 4

    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const-string v0, "NULL"

    return-object v0

    :cond_0
    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iget-wide v2, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x493e0

    cmp-long v2, v0, v2

    if-gez v2, :cond_1

    const-string v2, "A"

    return-object v2

    :cond_1
    const-wide/32 v2, 0x927c0

    cmp-long v2, v0, v2

    if-gez v2, :cond_2

    const-string v2, "B"

    return-object v2

    :cond_2
    const-wide/32 v2, 0x1b7740

    cmp-long v2, v0, v2

    if-gez v2, :cond_3

    const-string v2, "c"

    return-object v2

    :cond_3
    const-wide/32 v2, 0x36ee80

    cmp-long v2, v0, v2

    if-gez v2, :cond_4

    const-string v2, "D"

    return-object v2

    :cond_4
    const-wide/32 v2, 0x6ddd00

    cmp-long v2, v0, v2

    if-gez v2, :cond_5

    const-string v2, "E"

    return-object v2

    :cond_5
    const-string v2, "F"

    return-object v2
.end method

.method public getUsedPower(Ljava/lang/String;)F
    .locals 9

    const/4 v0, 0x0

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2900()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    return v0

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-eqz v1, :cond_2

    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_1

    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long/2addr v1, v3

    :goto_0
    goto :goto_1

    :cond_1
    iget-wide v1, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long/2addr v1, v3

    goto :goto_0

    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long/2addr v1, v3

    :goto_1
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$3000()J

    move-result-wide v3

    cmp-long v3, v1, v3

    const/high16 v4, 0x447a0000    # 1000.0f

    const/high16 v5, 0x42700000    # 60.0f

    if-lez v3, :cond_3

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2900()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;

    iget v3, v3, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mPrePowerUnit:F

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$3000()J

    move-result-wide v6

    long-to-float v6, v6

    mul-float/2addr v3, v6

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2900()Ljava/util/Map;

    move-result-object v6

    invoke-interface {v6, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;

    iget v6, v6, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mLaterPowerUnit:F

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$3000()J

    move-result-wide v7

    sub-long v7, v1, v7

    long-to-float v7, v7

    mul-float/2addr v6, v7

    add-float/2addr v3, v6

    div-float/2addr v3, v4

    div-float/2addr v3, v5

    div-float/2addr v3, v5

    :goto_2
    goto :goto_3

    :cond_3
    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2900()Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;

    iget v3, v3, Lcom/android/server/preload/OneplusAppPreload$PowerUnit;->mPrePowerUnit:F

    long-to-float v6, v1

    mul-float/2addr v3, v6

    div-float/2addr v3, v4

    div-float/2addr v3, v5

    div-float/2addr v3, v5

    goto :goto_2

    :goto_3
    const-string v0, "OneplusAppPreload"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " Duration : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, ", result : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method public isHit()Z
    .locals 4

    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iget-wide v2, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long/2addr v0, v2

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$2800()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setAsOverBuffer()V
    .locals 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    iput-boolean v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    const-wide/16 v0, 0x3e7

    iput-wide v0, p0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    return-void
.end method
