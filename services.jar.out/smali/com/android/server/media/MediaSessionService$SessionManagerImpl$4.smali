.class Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;
.super Ljava/lang/Object;
.source "MediaSessionService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->dispatchAdjustVolumeLocked(Ljava/lang/String;IIZIII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

.field final synthetic val$direction:I

.field final synthetic val$flags:I

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$suggestedStream:I


# direct methods
.method constructor <init>(Lcom/android/server/media/MediaSessionService$SessionManagerImpl;Ljava/lang/String;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iput-object p2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    iput p3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iput p4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iput p5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    :try_start_0
    const-string v0, "com.oneplus.aod"

    const-string v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const-string v2, "MediaSessionService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "PackageName = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v2}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    iget-object v7, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$packageName:Ljava/lang/String;

    const-string v8, "MediaSessionService"

    invoke-interface/range {v3 .. v8}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v2, v2, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v2}, Lcom/android/server/media/MediaSessionService;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "MediaSessionService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->this$1:Lcom/android/server/media/MediaSessionService$SessionManagerImpl;

    iget-object v3, v3, Lcom/android/server/media/MediaSessionService$SessionManagerImpl;->this$0:Lcom/android/server/media/MediaSessionService;

    invoke-static {v3}, Lcom/android/server/media/MediaSessionService;->access$5100(Lcom/android/server/media/MediaSessionService;)Landroid/media/IAudioService;

    move-result-object v3

    iget v4, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    iget v5, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    iget v6, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    const-string v8, "MediaSessionService"

    move-object v7, v2

    invoke-interface/range {v3 .. v8}, Landroid/media/IAudioService;->adjustSuggestedStreamVolume(IIILjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "MediaSessionService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot adjust volume: direction="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$direction:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", suggestedStream="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$suggestedStream:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", flags="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/media/MediaSessionService$SessionManagerImpl$4;->val$flags:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :catch_1
    move-exception v0

    const-string v1, "MediaSessionService"

    const-string v2, "Error adjusting default volume."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    nop

    :goto_1
    return-void
.end method
