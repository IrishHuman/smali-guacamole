.class Lcom/android/server/OnePlusLoggingService$MDMRunnable;
.super Ljava/lang/Object;
.source "OnePlusLoggingService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusLoggingService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "MDMRunnable"
.end annotation


# static fields
.field private static final MDM_APPID:Ljava/lang/String; = "NYNCG4I0TI"

.field private static final MDM_EVENT:Ljava/lang/String; = "usersleep"

.field private static final MDM_OPSM_CONFIG:Ljava/lang/String; = "oc"

.field private static final OPSM_DISABLED_BY_SYSTEM:I = -0x1


# instance fields
.field private mContext:Landroid/content/Context;

.field private mJobService:Landroid/app/job/JobService;

.field private mParams:Landroid/app/job/JobParameters;


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private finishJob(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mJobService:Landroid/app/job/JobService;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mJobService:Landroid/app/job/JobService;

    iget-object v1, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v0, v1, p1}, Landroid/app/job/JobService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    const/4 v0, 0x1

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {}, Lcom/android/server/OnePlusLoggingService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/server/OnePlusLoggingService;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "run the scheduled job, elapsedTime="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toHours(J)J

    move-result-wide v3

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    iget-object v3, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "optimal_power_save_mode_enabled"

    const/4 v5, -0x1

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    new-instance v4, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v5, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    const-string v6, "NYNCG4I0TI"

    invoke-direct {v4, v5, v6}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v6, "oc"

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v6, "usersleep"

    invoke-virtual {v4, v6, v5}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    goto :goto_0

    :cond_1
    invoke-static {}, Lcom/android/server/OnePlusLoggingService;->access$000()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/OnePlusLoggingService;->access$100()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Not report MDM this time!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->finishJob(Z)V

    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mContext:Landroid/content/Context;

    return-void
.end method

.method public setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mJobService:Landroid/app/job/JobService;

    iput-object p2, p0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->mParams:Landroid/app/job/JobParameters;

    return-void
.end method
