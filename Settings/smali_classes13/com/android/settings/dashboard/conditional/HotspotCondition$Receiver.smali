.class public Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/HotspotCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object v0

    const-class v1, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-virtual {v0, v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object v0

    check-cast v0, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->refreshState()V

    :cond_0
    return-void
.end method
