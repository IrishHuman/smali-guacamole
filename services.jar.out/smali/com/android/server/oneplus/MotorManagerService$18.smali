.class Lcom/android/server/oneplus/MotorManagerService$18;
.super Landroid/app/IProcessObserver$Stub;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/MotorManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$18;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Landroid/app/IProcessObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onForegroundActivitiesChanged(IIZ)V
    .locals 0

    return-void
.end method

.method public onProcessDied(II)V
    .locals 3

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$500()I

    move-result v0

    if-ne v0, p1, :cond_1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotorManagerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProcessDied pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$18;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$4100(Lcom/android/server/oneplus/MotorManagerService;)V

    :cond_1
    return-void
.end method
