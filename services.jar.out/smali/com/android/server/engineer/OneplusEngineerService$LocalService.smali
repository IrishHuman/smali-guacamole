.class final Lcom/android/server/engineer/OneplusEngineerService$LocalService;
.super Landroid/engineer/OneplusEngineerInternal;
.source "OneplusEngineerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerService;


# direct methods
.method private constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerService$LocalService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-direct {p0}, Landroid/engineer/OneplusEngineerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Lcom/android/server/engineer/OneplusEngineerService$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/engineer/OneplusEngineerService$LocalService;-><init>(Lcom/android/server/engineer/OneplusEngineerService;)V

    return-void
.end method


# virtual methods
.method public handleStartActivity(Landroid/content/pm/ActivityInfo;Ljava/lang/String;II)Z
    .locals 3

    if-nez p1, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerService$LocalService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v1, v0}, Lcom/android/server/engineer/OneplusEngineerService;->isActivityInBlackListInternal(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method public handleStartServiceOrBindService(Landroid/content/Intent;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerService$LocalService;->this$0:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/engineer/OneplusEngineerService;->isServiceInBlackListInternal(Landroid/content/ComponentName;)Z

    move-result v0

    return v0

    :cond_1
    return v0
.end method
