.class final Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;
.super Ljava/lang/Object;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PackagePreloadResult"
.end annotation


# instance fields
.field private mPackageName:Ljava/lang/String;

.field private mRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$SingleRecord;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method public constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    const-string p1, ""

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method private getLabel(J)Ljava/lang/String;
    .locals 2

    const-wide/32 v0, 0x493e0

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const-string v0, "A"

    return-object v0

    :cond_0
    const-wide/32 v0, 0x927c0

    cmp-long v0, p1, v0

    if-gez v0, :cond_1

    const-string v0, "B"

    return-object v0

    :cond_1
    const-wide/32 v0, 0x1b7740

    cmp-long v0, p1, v0

    if-gez v0, :cond_2

    const-string v0, "c"

    return-object v0

    :cond_2
    const-wide/32 v0, 0x36ee80

    cmp-long v0, p1, v0

    if-gez v0, :cond_3

    const-string v0, "D"

    return-object v0

    :cond_3
    const-wide/32 v0, 0x6ddd00

    cmp-long v0, p1, v0

    if-gez v0, :cond_4

    const-string v0, "E"

    return-object v0

    :cond_4
    const-string v0, "F"

    return-object v0
.end method

.method private getRecordToString(Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)Ljava/lang/String;
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-wide v2, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    const/4 v3, 0x0

    const/4 v6, 0x1

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const-wide/16 v7, 0x0

    const-string v9, "NULL"

    const-string v10, "FALSE"

    const-wide/16 v11, 0x0

    iget-boolean v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    const/16 v16, 0x5

    const/16 v17, 0x4

    const/16 v18, 0x3

    const/16 v19, 0x2

    const/16 v4, 0x8

    if-eqz v13, :cond_1

    const-string v5, "%1$50s  %2$20d  %3$20d  %4$20d  %5$5s  %6$25d  %7$5s  %8$5.2f\n"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v13, v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    aput-object v13, v4, v3

    iget-wide v14, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v6

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v19

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v18

    const-string v3, "OVERBuf"

    aput-object v3, v4, v17

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v16

    const/4 v3, 0x6

    aput-object v9, v4, v3

    invoke-static {v11, v12}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v6, 0x7

    aput-object v3, v4, v6

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1
    if-eqz v2, :cond_2

    iget-wide v13, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    move-wide/from16 v20, v7

    iget-wide v6, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v5, v13, v6

    invoke-direct {v0, v5, v6}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->getLabel(J)Ljava/lang/String;

    move-result-object v9

    const-string v10, "TRUE"

    move-wide v7, v5

    goto :goto_1

    :cond_2
    move-wide/from16 v20, v7

    iget-wide v5, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_3

    iget-wide v5, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    iget-wide v7, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v7, v5, v7

    const-string v10, "FALSE"

    goto :goto_1

    :cond_3
    iget-boolean v5, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v5, :cond_4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iget-wide v7, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    sub-long v7, v5, v7

    const-string v10, "FALSE"

    goto :goto_1

    :cond_4
    move-wide/from16 v7, v20

    :goto_1
    iget-object v5, v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v5}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->getUsedPower(Ljava/lang/String;)F

    move-result v5

    float-to-double v5, v5

    const-string v11, "%1$50s  %2$20d  %3$20d  %4$20d  %5$5s  %6$25d  %7$5s  %8$5.2f\n"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v12, v0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    aput-object v12, v4, v3

    iget-wide v12, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v4, v12

    iget-wide v12, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v19

    iget-wide v12, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mDeadTime:J

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v18

    aput-object v10, v4, v17

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v4, v16

    const/4 v3, 0x6

    aput-object v9, v4, v3

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    const/4 v12, 0x7

    aput-object v3, v4, v12

    invoke-static {v11, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method


# virtual methods
.method public addHitCount()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-wide v0, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    const-wide/16 v3, 0x0

    cmp-long v0, v0, v3

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v2

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v3, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isOverBufferRecord:Z

    if-nez v3, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mRealStartTime:J

    iput-boolean v2, v1, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    return-void

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public addOverBufferRecord()V
    .locals 3

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {v0}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-virtual {v0}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->setAsOverBuffer()V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addPreloadCount()V
    .locals 5

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {v0}, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "OneplusAppPreload"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreloadCount : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, v0, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->mPreloadTime:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public cleanOldData()V
    .locals 4

    :try_start_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public cleanStrangeData()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v3, v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isRecordDone:Z

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v3}, Lcom/android/server/preload/OneplusAppPreload;->access$700(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/am/ActivityManagerService;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService;->getTaskInPreloadStack(Ljava/lang/String;)Lcom/android/server/am/TaskRecord;

    move-result-object v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v1, v1, -0x1

    add-int/lit8 v0, v0, -0x1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public getRecords()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/preload/OneplusAppPreload$SingleRecord;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->mRecords:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    invoke-direct {p0, v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->getRecordToString(Lcom/android/server/preload/OneplusAppPreload$SingleRecord;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
