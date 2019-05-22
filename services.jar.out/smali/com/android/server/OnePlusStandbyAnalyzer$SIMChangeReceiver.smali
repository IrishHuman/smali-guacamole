.class Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SIMChangeReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OnePlusStandbyAnalyzer;


# direct methods
.method private constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/OnePlusStandbyAnalyzer;Lcom/android/server/OnePlusStandbyAnalyzer$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;-><init>(Lcom/android/server/OnePlusStandbyAnalyzer;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "ss"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ABSENT"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v2, "[SIMChange] NO-SIM, stop the timmer immediately"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$200(Lcom/android/server/OnePlusStandbyAnalyzer;)Lcom/android/server/OnePlusStandbyAnalyzer$NoSignalTimer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/OnePlusStandbyAnalyzer$NoSignalTimer;->stop()V

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$302(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    goto :goto_0

    :cond_1
    const-string v2, "[SIMChange] HAVE-SIM"

    invoke-static {v2}, Lcom/android/server/OnePlusStandbyAnalyzer;->myLog(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$SIMChangeReceiver;->this$0:Lcom/android/server/OnePlusStandbyAnalyzer;

    const/4 v3, 0x1

    invoke-static {v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer;->access$302(Lcom/android/server/OnePlusStandbyAnalyzer;Z)Z

    :cond_2
    :goto_0
    return-void
.end method
