.class public Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UidSippermAhInfo"
.end annotation


# instance fields
.field private cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

.field private mBg_mAh:D

.field private mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

.field private mDayOfAbn_Handled_Count:I

.field private mDayOfBg_mAh:D

.field private mDayOfFg_mAh:D

.field private mDayOfPre_mAh:D

.field private mEverDayOfForceStoped:Z

.field private mFg_mAh:D

.field private mIsPreloadUid_When_Inserting_B:Z

.field private mIsSpecialPkg:Z

.field private mNeedReliefBudget:Z

.field private mUid:I

.field private recordList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/am/OnePlusBGController$mAhRecord;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 10

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;->UNKNOWN:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    iput-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsSpecialPkg:Z

    iput p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-eq v1, v3, :cond_0

    iget v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v3

    if-ne v1, v3, :cond_0

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsSpecialPkg:Z

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    monitor-enter p0

    const-wide/16 v3, 0x0

    cmpl-double v1, p3, v3

    if-ltz v1, :cond_2

    :try_start_0
    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, v9

    move-object v4, p2

    move-wide v7, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p2, v1, :cond_2

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$900()Ljava/util/HashSet;

    move-result-object v1

    iget v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    goto :goto_0

    :cond_1
    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :goto_1
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic access$3400(Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsSpecialPkg:Z

    return v0
.end method

.method private isAudioActive(I)Z
    .locals 3

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3500()Landroid/media/AudioManager;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3500()Landroid/media/AudioManager;

    move-result-object v1

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public addAbnHandledCount()V
    .locals 1

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    return-void
.end method

.method public cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V
    .locals 6

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$CLEAN_TYPE:[I

    invoke-virtual {p1}, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const-wide/16 v1, 0x0

    const/4 v3, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    goto :goto_0

    :pswitch_1
    iput v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    iput-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    :pswitch_2
    sget-object v0, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->HANDLED_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    const/4 v4, 0x1

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->ifNotoriousAbn()Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mark uid "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " as ever day-of-force-stopped"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iput-boolean v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v4, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-interface {v0, v3, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    nop

    :goto_0
    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    iput-wide v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    nop

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public dumpRecords()V
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$mAhRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDayOfBgmAh()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDayOfFgmAh()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getDayOfPreloadmAh()D
    .locals 2

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getTotoalDayOfmAh()D
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getUid()I
    .locals 1

    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ifNeedReliefBudget()Z
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public ifNotoriousAbn()Z
    .locals 2

    iget v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public informChgToFg()V
    .locals 1

    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public insert(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V
    .locals 10

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_11

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    const-wide/16 v3, 0x0

    cmpg-double v1, p2, v3

    if-gez v1, :cond_0

    iget-wide v5, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    move-wide p2, v5

    :cond_0
    sget-object v1, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B_RECONFIRM:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v1, :cond_1

    const-string/jumbo v1, "oops!! why insert type with PROC_TYPE.B_RECONFIRM"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :cond_1
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    iget-object v5, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-eq v5, p1, :cond_7

    iget-wide v5, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v5, p2, v5

    cmpg-double v7, v5, v3

    if-gez v7, :cond_2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "1.oops, diff is negative:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", just cleanUp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto/16 :goto_0

    :cond_2
    sget-object v7, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v7, :cond_3

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto/16 :goto_0

    :cond_3
    sget-object v7, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->F:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v7, :cond_6

    iget v7, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-direct {p0, v7}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->isAudioActive(I)Z

    move-result v7

    if-eqz v7, :cond_4

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#### Due to audio-active, uid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", add into Fg instead."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    goto :goto_0

    :cond_4
    iget-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v8, v5

    iput-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    iget-boolean v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    if-eqz v8, :cond_5

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "B->F Contribute Uid "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " diff "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " mAh into Fg, and reset Pre"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v8, v5

    iput-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3600()Landroid/os/Handler;

    move-result-object v3

    const v4, 0x101d9

    iget v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v3, v4, v8, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3600()Landroid/os/Handler;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_0

    :cond_5
    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    :cond_6
    :goto_0
    goto/16 :goto_1

    :cond_7
    iget-wide v5, v0, Lcom/android/server/am/OnePlusBGController$mAhRecord;->mmAh:D

    sub-double v5, p2, v5

    cmpg-double v3, v5, v3

    if-gez v3, :cond_8

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "2.oops, diff is negative:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v4, ", just cleanUp"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    sget-object v3, Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;->NEGATIVE_CLEAN:Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;

    invoke-virtual {p0, v3}, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cleanUp(Lcom/android/server/am/OnePlusBGController$CLEAN_TYPE;)V

    goto/16 :goto_1

    :cond_8
    sget-object v3, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v3, :cond_c

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBg_mAh:D

    iget-boolean v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    if-eqz v3, :cond_a

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$900()Ljava/util/HashSet;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B(PWIB)->B(Pre) Contribute Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " diff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh into Pre"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    goto/16 :goto_1

    :cond_9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B(PWIB)->B(NOT-Pre) Contribute Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " diff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh into Bg"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    goto :goto_1

    :cond_a
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$900()Ljava/util/HashSet;

    move-result-object v3

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "B(NOT-PWIB)->B(Pre) Contribute Uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " diff "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v5, v6}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " mAh into Pre"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    goto :goto_1

    :cond_b
    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    goto :goto_1

    :cond_c
    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mFg_mAh:D

    iget-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    add-double/2addr v3, v5

    iput-wide v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    :cond_d
    :goto_1
    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$3700()Z

    move-result v3

    if-nez v3, :cond_e

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    :cond_e
    nop

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->cur_type:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->recordList:Ljava/util/List;

    new-instance v9, Lcom/android/server/am/OnePlusBGController$mAhRecord;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    move-object v3, v9

    move-object v4, p1

    move-wide v7, p2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/OnePlusBGController$mAhRecord;-><init>(Lcom/android/server/am/OnePlusBGController$PROC_TYPE;JD)V

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    sget-object v0, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->B:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    if-ne p1, v0, :cond_10

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$900()Ljava/util/HashSet;

    move-result-object v0

    iget v3, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    iput-boolean v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    goto :goto_2

    :cond_f
    iput-boolean v1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    :cond_10
    :goto_2
    monitor-exit p0

    return-void

    :cond_11
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 14

    iget-wide v0, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    add-double/2addr v0, v2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    cmpl-double v5, v0, v5

    if-eqz v5, :cond_0

    iget-wide v5, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    const-wide/high16 v7, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v5, v7

    div-double/2addr v5, v0

    const-wide/high16 v9, 0x4059000000000000L    # 100.0

    mul-double/2addr v5, v9

    double-to-float v3, v5

    new-instance v5, Ljava/math/BigDecimal;

    float-to-double v11, v3

    invoke-direct {v5, v11, v12}, Ljava/math/BigDecimal;-><init>(D)V

    const/4 v6, 0x4

    const/4 v11, 0x3

    invoke-virtual {v5, v11, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v12

    invoke-virtual {v12}, Ljava/math/BigDecimal;->floatValue()F

    move-result v3

    iget-wide v12, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    mul-double/2addr v12, v7

    div-double/2addr v12, v0

    mul-double/2addr v12, v9

    double-to-float v2, v12

    new-instance v7, Ljava/math/BigDecimal;

    float-to-double v8, v2

    invoke-direct {v7, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    move-object v5, v7

    invoke-virtual {v5, v11, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v7

    invoke-virtual {v7}, Ljava/math/BigDecimal;->floatValue()F

    move-result v2

    const/high16 v7, 0x42c80000    # 100.0f

    sub-float/2addr v7, v3

    sub-float/2addr v7, v2

    new-instance v4, Ljava/math/BigDecimal;

    float-to-double v8, v7

    invoke-direct {v4, v8, v9}, Ljava/math/BigDecimal;-><init>(D)V

    invoke-virtual {v4, v11, v6}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v5

    invoke-virtual {v5}, Ljava/math/BigDecimal;->floatValue()F

    move-result v4

    :cond_0
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "# UidmAhInfo ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "], ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %), "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, " %)] [Rnk: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "] [Abn: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfAbn_Handled_Count:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, "] [Relief: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mNeedReliefBudget:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] [ForceStoped: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mEverDayOfForceStoped:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] [PWIB: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsPreloadUid_When_Inserting_B:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] [Pre: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$900()Ljava/util/HashSet;

    move-result-object v6

    iget v7, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mUid:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] [Spec: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mIsSpecialPkg:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, "] "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfFg_mAh:D

    iget-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfBg_mAh:D

    add-double/2addr v6, v8

    iget-wide v8, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mDayOfPre_mAh:D

    add-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method

.method public updateBucketRanking(Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$UidSippermAhInfo;->mBucketRanking:Lcom/android/server/am/OnePlusBGController$APP_BUCKET_RANKING;

    return-void
.end method
