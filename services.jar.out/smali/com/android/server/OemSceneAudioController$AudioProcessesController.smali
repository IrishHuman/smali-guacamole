.class public Lcom/android/server/OemSceneAudioController$AudioProcessesController;
.super Ljava/lang/Object;
.source "OemSceneAudioController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneAudioController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AudioProcessesController"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneAudioController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneAudioController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneAudioController$AudioProcessesController;->this$0:Lcom/android/server/OemSceneAudioController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAudioController"

    const-string v1, "[scene] AudioProcessesController: config"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAudioController"

    const-string v1, "[scene] AudioProcessesController: start"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneAudioController$AudioProcessesController;->this$0:Lcom/android/server/OemSceneAudioController;

    invoke-static {v0}, Lcom/android/server/OemSceneAudioController;->access$000(Lcom/android/server/OemSceneAudioController;)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneAudioController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneAudioController"

    const-string v1, "[scene] AudioProcessesController: stop"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
