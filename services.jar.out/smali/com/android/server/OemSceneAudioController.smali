.class public Lcom/android/server/OemSceneAudioController;
.super Ljava/lang/Object;
.source "OemSceneAudioController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneAudioController$AudioProcessesController;
    }
.end annotation


# static fields
.field public static DEBUG:Z = false

.field public static final TAG:Ljava/lang/String; = "OemSceneAudioController"

.field private static sInstance:Lcom/android/server/OemSceneAudioController;


# instance fields
.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/OemSceneAudioController;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneAudioController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneAudioController;->startAudioProcessesController()V

    return-void
.end method

.method private getActiveAudioUids()[Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mContext:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    :cond_0
    const-string v0, ""

    iget-object v1, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneAudioController;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "get_uid"

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAudioController;->parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAudioController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneAudioController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneAudioController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneAudioController;->sInstance:Lcom/android/server/OemSceneAudioController;

    return-object v0
.end method

.method private killProcesses([Ljava/lang/String;)V
    .locals 8

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    aget-object v2, p1, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    const-string v3, "OemSceneAudioController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " mute uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " by zen mode."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/16 v4, 0x2710

    if-lt v3, v4, :cond_2

    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v4

    invoke-static {v3}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v6

    const-string/jumbo v7, "killUidByZenMode"

    invoke-interface {v4, v5, v6, v7}, Landroid/app/IActivityManager;->killUid(IILjava/lang/String;)V

    const-string v4, "OemSceneAudioController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " mute uid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " by zen mode."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "OemSceneAudioController"

    const-string v2, "Error calling killUid"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private parseActiveAudioUidsStr(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAudioController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "parseActiveAudioUidsStr():uids="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_2
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private startAudioProcessesController()V
    .locals 1

    invoke-direct {p0}, Lcom/android/server/OemSceneAudioController;->getActiveAudioUids()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneAudioController;->killProcesses([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getAudioProcessesController()Lcom/android/server/OemSceneAudioController$AudioProcessesController;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneAudioController$AudioProcessesController;-><init>(Lcom/android/server/OemSceneAudioController;)V

    iput-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController;->mAudioProcessesController:Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    return-object v0
.end method
