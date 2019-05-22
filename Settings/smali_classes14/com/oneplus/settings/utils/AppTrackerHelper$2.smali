.class Lcom/oneplus/settings/utils/AppTrackerHelper$2;
.super Ljava/lang/Object;
.source "AppTrackerHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/utils/AppTrackerHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

.field final synthetic val$mdmData:Ljava/util/Map;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/utils/AppTrackerHelper;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    iput-object p2, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->val$tag:Ljava/lang/String;

    iput-object p3, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->val$mdmData:Ljava/util/Map;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-static {v0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->access$000(Lcom/oneplus/settings/utils/AppTrackerHelper;)Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->this$0:Lcom/oneplus/settings/utils/AppTrackerHelper;

    invoke-static {v0}, Lcom/oneplus/settings/utils/AppTrackerHelper;->access$000(Lcom/oneplus/settings/utils/AppTrackerHelper;)Lnet/oneplus/odm/insight/tracker/AppTracker;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->val$tag:Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/settings/utils/AppTrackerHelper$2;->val$mdmData:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/AppTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_0
    return-void
.end method
