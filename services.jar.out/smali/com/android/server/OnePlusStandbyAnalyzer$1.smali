.class Lcom/android/server/OnePlusStandbyAnalyzer$1;
.super Landroid/telephony/PhoneStateListener;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/telephony/PhoneStateListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnomalyStatusChange([I)V
    .locals 7

    if-eqz p1, :cond_3

    :try_start_0
    array-length v0, p1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    const-string v0, "OPSA"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "oops!, onAnomalyStatusChange, type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    aget v3, p1, v2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", count="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v3, 0x1

    aget v4, p1, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    aget v0, p1, v2

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    if-eqz v0, :cond_2

    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->mType:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    if-ne v4, v0, :cond_0

    iget-object v4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    iget-object v4, v4, Lcom/android/server/OnePlusStandbyAnalyzer;->mTeleChgInfo_Diff_List:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;

    aget v5, p1, v3

    iget-object v6, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v6}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$500(Lcom/android/server/OnePlusStandbyAnalyzer;)Z

    move-result v6

    invoke-virtual {v4, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$TeleChgInfo;->updateCurrent(IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {v0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v4

    aget v1, v1, v4

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    sget-object v4, Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;->TELE_ABN_TRIGGER:Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->enableQXDM(ZLcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Lcom/android/server/OnePlusStandbyAnalyzer$QXDM_REASON;Z)V

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "oops!, the enum-definition is not matched with telephony"

    invoke-static {v1}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    goto :goto_3

    :cond_3
    const-string/jumbo v0, "onAnomalyStatusChange: wrong parameter !"

    invoke-static {v0}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_2
    goto :goto_4

    :goto_3
    nop

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$1;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$400(Lcom/android/server/OnePlusStandbyAnalyzer;Landroid/telephony/ServiceState;)V

    return-void
.end method
