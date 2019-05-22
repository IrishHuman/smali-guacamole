.class public Lcom/oneplus/scene/OimcCarModeObserver;
.super Ljava/lang/Object;
.source "OimcCarModeObserver.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final DBG:Z

.field private static final TAG:Ljava/lang/String; = "OimcCarModeObserver"

.field private static sInstance:Lcom/oneplus/scene/OimcCarModeObserver;


# instance fields
.field private mModeOn:Z

.field private mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/scene/OimcCarModeObserver;->DBG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mModeOn:Z

    return-void
.end method

.method public static final getInstance()Lcom/oneplus/scene/OimcCarModeObserver;
    .locals 1

    sget-object v0, Lcom/oneplus/scene/OimcCarModeObserver;->sInstance:Lcom/oneplus/scene/OimcCarModeObserver;

    if-nez v0, :cond_0

    new-instance v0, Lcom/oneplus/scene/OimcCarModeObserver;

    invoke-direct {v0}, Lcom/oneplus/scene/OimcCarModeObserver;-><init>()V

    sput-object v0, Lcom/oneplus/scene/OimcCarModeObserver;->sInstance:Lcom/oneplus/scene/OimcCarModeObserver;

    :cond_0
    sget-object v0, Lcom/oneplus/scene/OimcCarModeObserver;->sInstance:Lcom/oneplus/scene/OimcCarModeObserver;

    return-object v0
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isOn()Z
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mModeOn:Z

    return v0
.end method

.method public setCarModeOn(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mModeOn:Z

    return-void
.end method

.method public setZenHelper(Lcom/android/server/notification/ZenModeHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    return-void
.end method

.method public start(Ljava/lang/Object;)I
    .locals 8

    sget-boolean v0, Lcom/oneplus/scene/OimcCarModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcCarModeObserver"

    const-string v1, "car mode: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mModeOn:Z

    iget-object v1, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    invoke-virtual {v1, v0}, Lcom/android/server/notification/ZenModeHelper;->getZenModeByType(I)I

    move-result v0

    iget-object v2, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-string v6, "carmodeon"

    const/4 v7, 0x1

    move v3, v0

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/notification/ZenModeHelper;->setManualZenModeByType(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    const/4 v1, 0x0

    return v1
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 7

    sget-boolean v0, Lcom/oneplus/scene/OimcCarModeObserver;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OimcCarModeObserver"

    const-string v1, "car mode: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mModeOn:Z

    iget-object v1, p0, Lcom/oneplus/scene/OimcCarModeObserver;->mZenModeHelper:Lcom/android/server/notification/ZenModeHelper;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "carmodeoff"

    const/4 v6, 0x1

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/notification/ZenModeHelper;->setManualZenModeByType(ILandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;I)V

    return v0
.end method
