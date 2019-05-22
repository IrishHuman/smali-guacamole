.class Lcom/android/server/preload/OneplusAppPreload$1;
.super Ljava/lang/Thread;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload;->sendSingleMDMOnBoot()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const-string v0, "OneplusAppPreload"

    const-string v1, "Start sendSingleMDMOnBoot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$100(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v5, v4, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    if-nez v5, :cond_0

    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x1

    invoke-static {v5, v6, v4, v7}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;Z)V

    :cond_0
    goto :goto_1

    :cond_1
    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$000(Lcom/android/server/preload/OneplusAppPreload;)Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;->access$500(Lcom/android/server/preload/OneplusAppPreload$PreloadHitStatistics;)Ljava/util/HashMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$200(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;

    iget-boolean v5, v4, Lcom/android/server/preload/OneplusAppPreload$SingleRecord;->isSentMDM:Z

    if-nez v5, :cond_3

    iget-object v5, p0, Lcom/android/server/preload/OneplusAppPreload$1;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;->access$300(Lcom/android/server/preload/OneplusAppPreload$PackagePreloadResult;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v4, v7}, Lcom/android/server/preload/OneplusAppPreload;->access$400(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Lcom/android/server/preload/OneplusAppPreload$SingleRecord;Z)V

    :cond_3
    goto :goto_3

    :cond_4
    goto :goto_2

    :cond_5
    const-string v0, "OneplusAppPreload"

    const-string v1, "End sendSingleMDMOnBoot"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
