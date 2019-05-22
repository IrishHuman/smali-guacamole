.class Lcom/oneplus/settings/utils/AppTrackerHelper$1;
.super Ljava/lang/Object;
.source "AppTrackerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/AppTrackerHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

.field final synthetic val$label:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$value:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/AppTrackerHelper;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    iput-object p2, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$label:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$value:Ljava/lang/String;

    iput-object p4, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-static {v0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->access$000(Lcom/oneplus/settings/utils/AppTrackerHelper;)Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iget-object v1, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$label:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$value:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-static {v1}, Lcom/oneplus/settings/utils/AppTrackerHelper;->access$000(Lcom/oneplus/settings/utils/AppTrackerHelper;)Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$1;->val$tag:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
