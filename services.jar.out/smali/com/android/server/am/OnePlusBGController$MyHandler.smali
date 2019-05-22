.class public Lcom/android/server/am/OnePlusBGController$MyHandler;
.super Landroid/os/Handler;
.source "OnePlusBGController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusBGController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# static fields
.field public static final MSG_BATT_SNAPSHOT_ON_END:I = 0x101d2

.field public static final MSG_BATT_SNAPSHOT_ON_START:I = 0x101d1

.field public static final MSG_EXECUTION_BGPOWER:I = 0x101d5

.field public static final MSG_EXECUTION_BGPOWER_PRELOAD_ONLY:I = 0x101da

.field public static final MSG_FGBG_CHANGE:I = 0x101d3

.field public static final MSG_INFORM_UID_TO_TOPPING:I = 0x101d9

.field public static final MSG_INFO_BGPOWER:I = 0x101d4

.field public static final MSG_INIT:I = 0x101d0

.field public static final MSG_NETWORK_REACHABILITY_CHANGE:I = 0x101db

.field public static final MSG_RESET_KILLED_BUDGET:I = 0x101d6

.field public static final MSG_UID_STATE_CHANGE:I = 0x101d8

.field public static final MSG_UPDATE_TRAFFIC_WHEN_SOFF:I = 0x101d7


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusBGController;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusBGController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_NETWORK_REACHABILITY_CHANGE== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->access$400(Lcom/android/server/am/OnePlusBGController;)Landroid/util/SparseArray;

    move-result-object v0

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusBGController$UidStat;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/am/OnePlusBGController;->access$000(Lcom/android/server/am/OnePlusBGController;I)D

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GMS uid "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " simulates uid-changing to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Lcom/android/server/am/OnePlusBGController$UidStat;->mState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " mAh: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1, v2}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {}, Lcom/android/server/am/OnePlusBGController;->access$300()I

    move-result v4

    iget-object v5, v0, Lcom/android/server/am/OnePlusBGController$UidStat;->mType:Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    invoke-static {v3, v4, v5, v1, v2}, Lcom/android/server/am/OnePlusBGController;->access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_0

    :cond_0
    const-string v1, "GMS\'s ustats is still null, skip this round"

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_0
    goto/16 :goto_2

    :sswitch_1
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OnePlusBGController;->handleOnUidStateChanged(II)V

    goto/16 :goto_2

    :sswitch_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_RESET_KILLED_BUDGET== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/HashSet;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v1

    if-lez v1, :cond_1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v1}, Lcom/android/server/am/OnePlusBGController;->access$200(Lcom/android/server/am/OnePlusBGController;Ljava/util/List;)V

    :cond_1
    goto :goto_2

    :sswitch_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "==MSG_FGBG_CHANGE== "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->arg1:I

    iget v1, p1, Landroid/os/Message;->arg2:I

    invoke-static {v1}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->fromValue(I)Lcom/android/server/am/OnePlusBGController$PROC_TYPE;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    iget-object v2, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v2, v0}, Lcom/android/server/am/OnePlusBGController;->access$000(Lcom/android/server/am/OnePlusBGController;I)D

    move-result-wide v2

    if-eqz v1, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "uid "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " change to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/android/server/am/OnePlusBGController$PROC_TYPE;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " mAh: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->makemAh(D)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-static {v4, v0, v1, v2, v3}, Lcom/android/server/am/OnePlusBGController;->access$100(Lcom/android/server/am/OnePlusBGController;ILcom/android/server/am/OnePlusBGController$PROC_TYPE;D)V

    goto :goto_1

    :cond_2
    const-string v4, "PROC_TYPE type == null"

    invoke-static {v4}, Lcom/android/server/am/OnePlusBGController;->myLog(Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :sswitch_4
    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->retrieveSensorHandle()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->registerOnlineConfig()V

    iget-object v0, p0, Lcom/android/server/am/OnePlusBGController$MyHandler;->this$0:Lcom/android/server/am/OnePlusBGController;

    invoke-virtual {v0}, Lcom/android/server/am/OnePlusBGController;->grabOnlineConfig()V

    nop

    :goto_2
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x101d0 -> :sswitch_4
        0x101d3 -> :sswitch_3
        0x101d6 -> :sswitch_2
        0x101d8 -> :sswitch_1
        0x101db -> :sswitch_0
    .end sparse-switch
.end method
