.class public Lcom/oneplus/scene/OimcGameModeObserver;
.super Ljava/lang/Object;
.source "OimcGameModeObserver.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final DBG:Z

.field private static final GAME_MODE_ANSWER_NO_INCALLUI:Ljava/lang/String; = "game_mode_answer_no_incallui"

.field private static final TAG:Ljava/lang/String; = "OimcGameModeObserver"

.field private static sInstance:Lcom/oneplus/scene/OimcGameModeObserver;


# instance fields
.field private mModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/scene/OimcGameModeObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcGameModeObserver;->mModeOn:Z

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/scene/OimcGameModeObserver;
    .locals 1

    sget-object v0, Lcom/oneplus/scene/OimcGameModeObserver;->sInstance:Lcom/oneplus/scene/OimcGameModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/scene/OimcGameModeObserver;

    invoke-direct {v0}, Lcom/oneplus/scene/OimcGameModeObserver;-><init>()V

    sput-object v0, Lcom/oneplus/scene/OimcGameModeObserver;->sInstance:Lcom/oneplus/scene/OimcGameModeObserver;

    :cond_0
    sget-object v0, Lcom/oneplus/scene/OimcGameModeObserver;->sInstance:Lcom/oneplus/scene/OimcGameModeObserver;

    return-object v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isAnswerCallBySpeaker(Landroid/content/Context;)Z
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_answer_no_incallui"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method public isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/scene/OimcGameModeObserver;->mModeOn:Z

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/scene/OimcGameModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcGameModeObserver"

    const-string v1, "game mode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcGameModeObserver;->mModeOn:Z

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/oneplus/scene/OimcGameModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcGameModeObserver"

    const-string v1, "game mode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcGameModeObserver;->mModeOn:Z

    return v0
.end method
