.class public final Lcom/android/server/am/OnePlusBGController$SnapShot;
.super Ljava/lang/Object;
.source "OnePlusBGController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "SnapShot"
.end annotation


# instance fields
.field private mBatteryDrop:I

.field private mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

.field private mmA:F

.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/OnePlusBGController;Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;IF)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    iput p3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mBatteryDrop:I

    iput p4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mmA:F

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->access$1200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    sget-object v2, Lcom/android/server/am/OnePlusBGController$4;->$SwitchMap$com$android$server$am$OnePlusBGController$SNAPSHOT_TYPE:[I

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->mSnapShotType:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3}, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    const/4 v4, 0x0

    packed-switch v2, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    const-string v2, "======CALCULATE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$4400(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$4500(Lcom/android/server/am/OnePlusBGController;)V

    goto :goto_0

    :cond_0
    const-string v2, "No round-flush, so skip calculating..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v4}, Lcom/android/server/am/OnePlusBGController;->access$4402(Lcom/android/server/am/OnePlusBGController;Z)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[End] Calculate & Judge in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    goto/16 :goto_2

    :pswitch_1
    const-string v2, "======ONESHOT======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$4000(Lcom/android/server/am/OnePlusBGController;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "Exceed the reset period, just budget reset..."

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$1100(Lcom/android/server/am/OnePlusBGController;)V

    return-void

    :cond_1
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$1200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->flushExternel()V

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$1200(Lcom/android/server/am/OnePlusBGController;)Lcom/android/server/am/BatteryStatsService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/BatteryStatsService;->getActiveStatistics()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->access$4100(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/BatteryStats;)V

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->access$4100(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v5

    const/4 v6, -0x1

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(II)V

    if-eqz v2, :cond_3

    iget-object v5, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v5}, Lcom/android/server/am/OnePlusBGController;->access$4100(Lcom/android/server/am/OnePlusBGController;)Lcom/android/internal/os/BatteryStatsHelper;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v7, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mSippersOfOneShot size="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, v7, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v6, v6, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, v7, Lcom/android/server/am/OnePlusBGController;->cptor:Ljava/util/Comparator;

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v7, v7, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-static {v6, v7}, Lcom/android/server/am/OnePlusBGController;->access$4200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    sget-boolean v6, Lcom/android/server/am/OnePlusBGController;->DEBUG_BGC:Z

    if-eqz v6, :cond_2

    iget-object v6, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    const-string v7, "ONESHOT"

    iget-object v8, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget-object v8, v8, Lcom/android/server/am/OnePlusBGController;->mSippersOfOneShot:Ljava/util/List;

    invoke-static {v6, v7, v8, v4}, Lcom/android/server/am/OnePlusBGController;->access$4300(Lcom/android/server/am/OnePlusBGController;Ljava/lang/String;Ljava/util/List;Z)V

    :cond_2
    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4, v3}, Lcom/android/server/am/OnePlusBGController;->access$4402(Lcom/android/server/am/OnePlusBGController;Z)Z

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "stats == null"

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "@@@@[START] SnapShot in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    sget-object v4, Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;->CALCULATE:Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;

    invoke-virtual {v3, v4}, Lcom/android/server/am/OnePlusBGController;->snapShot(Lcom/android/server/am/OnePlusBGController$SNAPSHOT_TYPE;)V

    goto :goto_2

    :pswitch_2
    const-string v2, "======INIT_OBSERVE======"

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    new-array v2, v3, [I

    const/16 v3, 0x85

    aput v3, v2, v4

    invoke-static {v2}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3800(Lcom/android/server/am/OnePlusBGController;)V

    :cond_4
    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$SnapShot;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->access$3900(Lcom/android/server/am/OnePlusBGController;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "@@@@[START] Init-Observing in "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v0

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    nop

    :goto_2
    goto :goto_3

    :cond_5
    const-string/jumbo v0, "mBatteryStatsService == null"

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_3
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
