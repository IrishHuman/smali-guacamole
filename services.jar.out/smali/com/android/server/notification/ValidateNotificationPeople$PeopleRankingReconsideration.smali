.class Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;
.super Lcom/android/server/notification/RankingReconsideration;
.source "ValidateNotificationPeople.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/ValidateNotificationPeople;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PeopleRankingReconsideration"
.end annotation


# static fields
.field private static final LOOKUP_TIME:J = 0x3e8L


# instance fields
.field private mContactAffinity:F

.field private final mContext:Landroid/content/Context;

.field private final mPendingLookups:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mRecord:Lcom/android/server/notification/NotificationRecord;

.field final synthetic this$0:Lcom/android/server/notification/ValidateNotificationPeople;


# direct methods
.method private constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    const-wide/16 v0, 0x3e8

    invoke-direct {p0, p3, v0, v1}, Lcom/android/server/notification/RankingReconsideration;-><init>(Ljava/lang/String;J)V

    const/4 p1, 0x0

    iput p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    iput-object p2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;Lcom/android/server/notification/ValidateNotificationPeople$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;-><init>(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;Ljava/util/LinkedList;)V

    return-void
.end method


# virtual methods
.method public applyChangesLocked(Lcom/android/server/notification/NotificationRecord;)V
    .locals 4

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v0

    iget v1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-virtual {p1, v1}, Lcom/android/server/notification/NotificationRecord;->setContactAffinity(F)V

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$500()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ValidateNoPeople"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "final affinity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/server/notification/NotificationRecord;->getContactAffinity()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method public getContactAffinity()F
    .locals 1

    iget v0, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    return v0
.end method

.method public setRecord(Lcom/android/server/notification/NotificationRecord;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    return-void
.end method

.method public work()V
    .locals 9

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$500()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ValidateNoPeople"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Executing: validation for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mKey:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mPendingLookups:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const-string/jumbo v6, "tel"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$400()Z

    move-result v6

    if-eqz v6, :cond_1

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking telephone URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$600(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v6, "mailto"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$400()Z

    move-result v6

    if-eqz v6, :cond_3

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking mailto URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$700(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Ljava/lang/String;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto :goto_1

    :cond_4
    sget-object v6, Landroid/provider/ContactsContract$Contacts;->CONTENT_LOOKUP_URI:Landroid/net/Uri;

    invoke-virtual {v6}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_6

    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$400()Z

    move-result v6

    if-eqz v6, :cond_5

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "checking lookup URI: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-static {v6, v7, v5}, Lcom/android/server/notification/ValidateNotificationPeople;->access$800(Lcom/android/server/notification/ValidateNotificationPeople;Landroid/content/Context;Landroid/net/Uri;)Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    move-result-object v4

    goto :goto_1

    :cond_6
    new-instance v6, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;

    invoke-direct {v6}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;-><init>()V

    move-object v4, v6

    const-string/jumbo v6, "name"

    invoke-virtual {v5}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "unsupported URI "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    :goto_1
    if-eqz v4, :cond_9

    iget-object v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v6}, Lcom/android/server/notification/ValidateNotificationPeople;->access$100(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v6

    monitor-enter v6

    :try_start_0
    iget-object v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getUserId()I

    move-result v8

    invoke-static {v7, v8, v3}, Lcom/android/server/notification/ValidateNotificationPeople;->access$900(Lcom/android/server/notification/ValidateNotificationPeople;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v8}, Lcom/android/server/notification/ValidateNotificationPeople;->access$100(Lcom/android/server/notification/ValidateNotificationPeople;)Landroid/util/LruCache;

    move-result-object v8

    invoke-virtual {v8, v7, v4}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-boolean v6, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v6, :cond_8

    const-string v6, "ValidateNoPeople"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "lookup contactAffinity is "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    iget v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    invoke-virtual {v4}, Lcom/android/server/notification/ValidateNotificationPeople$LookupResult;->getAffinity()F

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v6

    iput v6, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    goto :goto_2

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2

    :cond_9
    invoke-static {}, Lcom/android/server/notification/ValidateNotificationPeople;->access$400()Z

    move-result v6

    if-eqz v6, :cond_a

    const-string v6, "ValidateNoPeople"

    const-string/jumbo v7, "lookupResult is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_a
    :goto_2
    goto/16 :goto_0

    :cond_b
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_c

    const-string v2, "ValidateNoPeople"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Validation finished in "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string/jumbo v4, "ms"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_c
    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    if-eqz v2, :cond_f

    iget-object v2, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->this$0:Lcom/android/server/notification/ValidateNotificationPeople;

    invoke-static {v2}, Lcom/android/server/notification/ValidateNotificationPeople;->access$1000(Lcom/android/server/notification/ValidateNotificationPeople;)Lcom/android/server/notification/NotificationUsageStats;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mRecord:Lcom/android/server/notification/NotificationRecord;

    iget v4, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/4 v5, 0x0

    cmpl-float v4, v4, v5

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_d

    move v4, v5

    goto :goto_3

    :cond_d
    move v4, v6

    :goto_3
    iget v7, p0, Lcom/android/server/notification/ValidateNotificationPeople$PeopleRankingReconsideration;->mContactAffinity:F

    const/high16 v8, 0x3f800000    # 1.0f

    cmpl-float v7, v7, v8

    if-nez v7, :cond_e

    goto :goto_4

    :cond_e
    move v5, v6

    :goto_4
    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/server/notification/NotificationUsageStats;->registerPeopleAffinity(Lcom/android/server/notification/NotificationRecord;ZZZ)V

    :cond_f
    return-void
.end method
