.class Lcom/android/server/oneplus/MotorManagerService$2;
.super Landroid/media/AudioManager$AudioRecordingCallback;
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

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$2;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Landroid/media/AudioManager$AudioRecordingCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onRecordingConfigChanged(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/media/AudioRecordingConfiguration;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioRecordingConfiguration;

    invoke-virtual {v2}, Landroid/media/AudioRecordingConfiguration;->getClientPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$302(Z)Z

    goto :goto_1

    :cond_1
    if-nez v1, :cond_2

    const-string v0, ""

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$202(Ljava/lang/String;)Ljava/lang/String;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$302(Z)Z

    :cond_2
    :goto_1
    return-void
.end method
