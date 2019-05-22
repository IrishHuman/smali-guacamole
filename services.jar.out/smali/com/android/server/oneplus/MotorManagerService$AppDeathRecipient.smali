.class Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;
.super Ljava/lang/Object;
.source "MotorManagerService.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppDeathRecipient"
.end annotation


# instance fields
.field private final mAppTag:Ljava/lang/String;

.field private final mToken:Landroid/os/IBinder;

.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mToken:Landroid/os/IBinder;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/oneplus/MotorManagerService$1;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;-><init>(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;)Landroid/os/IBinder;
    .locals 1

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mToken:Landroid/os/IBinder;

    return-object v0
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has died"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$2200(Lcom/android/server/oneplus/MotorManagerService;)Landroid/os/IBinder;

    move-result-object v0

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$7500(Lcom/android/server/oneplus/MotorManagerService;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/util/LinkedList;->remove(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$7600()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "MotorManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " has not removed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$7600()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$7700(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v1

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$7710(Lcom/android/server/oneplus/MotorManagerService;)I

    :cond_0
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$7700(Lcom/android/server/oneplus/MotorManagerService;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$AppDeathRecipient;->mAppTag:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Lcom/android/server/oneplus/MotorManagerService;->access$2600(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
