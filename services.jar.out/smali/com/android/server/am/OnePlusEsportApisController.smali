.class public Lcom/android/server/am/OnePlusEsportApisController;
.super Ljava/lang/Object;
.source "OnePlusEsportApisController.java"


# static fields
.field private static DEBUG:Z = false

.field private static KEEP_ALIVE:[I = null

.field private static final TAG:Ljava/lang/String; = "OnePlusEsportApisController"

.field private static final gDefault:Landroid/util/Singleton;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Singleton<",
            "Lcom/android/server/am/OnePlusEsportApisController;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mInEsortRestrictBackground:Z

.field private mInKeepAlive:Z

.field private mPerfManager:Landroid/util/BoostFramework;

.field private mPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/am/OnePlusEsportApisController;->DEBUG:Z

    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/am/OnePlusEsportApisController;->KEEP_ALIVE:[I

    new-instance v0, Lcom/android/server/am/OnePlusEsportApisController$1;

    invoke-direct {v0}, Lcom/android/server/am/OnePlusEsportApisController$1;-><init>()V

    sput-object v0, Lcom/android/server/am/OnePlusEsportApisController;->gDefault:Landroid/util/Singleton;

    return-void

    :array_0
    .array-data 4
        0x42c14000    # 96.625f
        0x1
    .end array-data
.end method

.method private constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInEsortRestrictBackground:Z

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInKeepAlive:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPerfManager:Landroid/util/BoostFramework;

    iput-object v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPerfManager:Landroid/util/BoostFramework;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusEsportApisController$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OnePlusEsportApisController;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/android/server/am/OnePlusEsportApisController;
    .locals 1

    sget-object v0, Lcom/android/server/am/OnePlusEsportApisController;->gDefault:Landroid/util/Singleton;

    invoke-virtual {v0}, Landroid/util/Singleton;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/OnePlusEsportApisController;

    return-object v0
.end method


# virtual methods
.method public forceSetRestrictBackground(Z)V
    .locals 1

    iput-boolean p1, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInEsortRestrictBackground:Z

    iget-object v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/net/NetworkPolicyManagerService;->setRestrictBackgroundByEsport(Z)V

    return-void
.end method

.method public initNetworkPolicy(Lcom/android/server/net/NetworkPolicyManagerService;)V
    .locals 2

    if-nez p1, :cond_0

    const-string v0, "OnePlusEsportApisController"

    const-string/jumbo v1, "networkPolicy is NULL!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPolicyManagerService:Lcom/android/server/net/NetworkPolicyManagerService;

    return-void
.end method

.method public setKeepAlive(Z)Z
    .locals 5

    const/4 v0, 0x1

    iget-boolean v1, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInKeepAlive:Z

    if-eq v1, p1, :cond_5

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget-object v3, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPerfManager:Landroid/util/BoostFramework;

    sget-object v4, Lcom/android/server/am/OnePlusEsportApisController;->KEEP_ALIVE:[I

    invoke-virtual {v3, v2, v4}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    move-result v2

    if-eq v2, v1, :cond_1

    sget-boolean v1, Lcom/android/server/am/OnePlusEsportApisController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "OnePlusEsportApisController"

    const-string/jumbo v2, "success acquire KEEP_ALIVE"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInKeepAlive:Z

    goto :goto_0

    :cond_1
    const-string v1, "OnePlusEsportApisController"

    const-string v2, "KEEP_ALIVE failed!"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget-object v3, p0, Lcom/android/server/am/OnePlusEsportApisController;->mPerfManager:Landroid/util/BoostFramework;

    invoke-virtual {v3}, Landroid/util/BoostFramework;->perfLockRelease()I

    move-result v3

    if-ne v3, v1, :cond_4

    sget-boolean v1, Lcom/android/server/am/OnePlusEsportApisController;->DEBUG:Z

    if-eqz v1, :cond_3

    const-string v1, "OnePlusEsportApisController"

    const-string/jumbo v3, "success release KEEP_ALIVE"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iput-boolean v2, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInKeepAlive:Z

    goto :goto_0

    :cond_4
    const-string v1, "OnePlusEsportApisController"

    const-string v2, "KEEP_ALIVE release failed"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_5
    :goto_0
    return v0
.end method

.method public setRestrictBackground(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OnePlusEsportApisController;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "OnePlusEsportApisController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setRestrictBackground: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mInEs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInEsortRestrictBackground:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-nez p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusEsportApisController;->mInEsortRestrictBackground:Z

    if-nez v0, :cond_1

    return-void

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/server/am/OnePlusEsportApisController;->forceSetRestrictBackground(Z)V

    return-void
.end method
