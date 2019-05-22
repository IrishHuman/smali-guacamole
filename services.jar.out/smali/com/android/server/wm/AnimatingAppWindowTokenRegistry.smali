.class Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;
.super Ljava/lang/Object;
.source "AnimatingAppWindowTokenRegistry.java"


# static fields
.field static OP_ENABLE_FINISH_ENTERING_AFTER_EXITING:Z


# instance fields
.field private mAnimatingTokens:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/wm/AppWindowToken;",
            ">;"
        }
    .end annotation
.end field

.field private mEndingDeferredFinish:Z

.field private mFinishedTokens:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTmpRunnableList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.vendor.transiting.after.exit"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->OP_ENABLE_FINISH_ENTERING_AFTER_EXITING:Z

    return-void
.end method

.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    return-void
.end method

.method private endDeferringFinished()V
    .locals 7

    iget-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_0
    if-ltz v2, :cond_6

    sget-boolean v3, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->OP_ENABLE_FINISH_ENTERING_AFTER_EXITING:Z

    if-eqz v3, :cond_5

    iget-object v3, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/AppWindowToken;

    iget-boolean v4, v3, Lcom/android/server/wm/AppWindowToken;->mEnteringAnimation:Z

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v0, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_1

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    :cond_1
    const-string v4, "AnimatingAppWindowTokenRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is mEnteringAnimation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_2
    iget-object v4, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v5, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Runnable;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v4, :cond_3

    sget-boolean v4, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v4, :cond_4

    :cond_3
    const-string v4, "AnimatingAppWindowTokenRegistry"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "token="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " is not mEnteringAnimation"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    goto :goto_2

    :cond_5
    iget-object v3, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_2
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_0

    :cond_6
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_3
    move v1, v2

    if-ltz v1, :cond_7

    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    add-int/lit8 v2, v1, -0x1

    goto :goto_3

    :cond_7
    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mTmpRunnableList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    nop

    return-void

    :catchall_0
    move-exception v1

    iput-boolean v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mEndingDeferredFinish:Z

    throw v1
.end method


# virtual methods
.method cancelOtherAnimating(Lcom/android/server/wm/AppWindowToken;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/AppWindowToken;

    if-eq v1, p1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wm/AppWindowToken;->cancelAnimation()V

    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mAnimatingTokens="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mFinishedTokens="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method notifyAboutToFinish(Lcom/android/server/wm/AppWindowToken;Ljava/lang/Runnable;)Z
    .locals 5

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v2}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    sget-boolean v2, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->OP_ENABLE_FINISH_ENTERING_AFTER_EXITING:Z

    if-eqz v2, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->endDeferringFinished()V

    const-string v1, "AnimatingAppWindowTokenRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "reset and invoke finish: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_1
    invoke-direct {p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->endDeferringFinished()V

    return v1

    :cond_2
    iget-object v1, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v1, :cond_3

    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v1, :cond_4

    :cond_3
    const-string v1, "AnimatingAppWindowTokenRegistry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "should defer animation: token="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    return v3
.end method

.method notifyFinished(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mFinishedTokens:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AnimatingAppWindowTokenRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyFinished, token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is removed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->endDeferringFinished()V

    :cond_2
    return-void
.end method

.method notifyStarting(Lcom/android/server/wm/AppWindowToken;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/wm/AnimatingAppWindowTokenRegistry;->mAnimatingTokens:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ANIM:Z

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    :cond_0
    const-string v0, "AnimatingAppWindowTokenRegistry"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "notifyStarting, token="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " is added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method
