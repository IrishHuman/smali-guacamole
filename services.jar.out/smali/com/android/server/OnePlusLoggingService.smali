.class public Lcom/android/server/OnePlusLoggingService;
.super Landroid/app/job/JobService;
.source "OnePlusLoggingService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OnePlusLoggingService$MDMRunnable;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final FAST_REPORT:Z

.field private static final INTERVAL:J

.field private static final JOB_ONEPLUS_LOGGING:I = 0x594088bb

.field private static final TAG:Ljava/lang/String;

.field private static sOnePlusLoggingService:Landroid/content/ComponentName;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-class v0, Lcom/android/server/OnePlusLoggingService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/OnePlusLoggingService;->TAG:Ljava/lang/String;

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OnePlusLoggingService;->DEBUG:Z

    const-string/jumbo v0, "persist.sys.fast_report"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/OnePlusLoggingService;->FAST_REPORT:Z

    sget-boolean v0, Lcom/android/server/OnePlusLoggingService;->FAST_REPORT:Z

    if-eqz v0, :cond_0

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x3

    :goto_0
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    goto :goto_1

    :cond_0
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    goto :goto_0

    :goto_1
    sput-wide v0, Lcom/android/server/OnePlusLoggingService;->INTERVAL:J

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "android"

    const-class v2, Lcom/android/server/OnePlusLoggingService;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OnePlusLoggingService;->sOnePlusLoggingService:Landroid/content/ComponentName;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OnePlusLoggingService;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusLoggingService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static schedule(Landroid/content/Context;)V
    .locals 5

    const-string/jumbo v0, "jobscheduler"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    sget-boolean v1, Lcom/android/server/OnePlusLoggingService;->DEBUG:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/server/OnePlusLoggingService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "INTERVAL = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-wide v3, Lcom/android/server/OnePlusLoggingService;->INTERVAL:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    const v2, 0x594088bb

    sget-object v3, Lcom/android/server/OnePlusLoggingService;->sOnePlusLoggingService:Landroid/content/ComponentName;

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresDeviceIdle(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiresCharging(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    sget-wide v2, Lcom/android/server/OnePlusLoggingService;->INTERVAL:J

    invoke-virtual {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;->setPeriodic(J)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    return-void
.end method


# virtual methods
.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    new-instance v0, Lcom/android/server/OnePlusLoggingService$MDMRunnable;

    invoke-direct {v0}, Lcom/android/server/OnePlusLoggingService$MDMRunnable;-><init>()V

    invoke-virtual {v0, p0, p1}, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->setJobService(Landroid/app/job/JobService;Landroid/app/job/JobParameters;)V

    invoke-virtual {v0, p0}, Lcom/android/server/OnePlusLoggingService$MDMRunnable;->setContext(Landroid/content/Context;)V

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    const/4 v1, 0x1

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
