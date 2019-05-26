.class Lcom/android/server/policy/OemTwoPointersDetectionListener$1;
.super Landroid/os/Handler;
.source "OemTwoPointersDetectionListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/OemTwoPointersDetectionListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemTwoPointersDetectionListener;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemTwoPointersDetectionListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;->this$0:Lcom/android/server/policy/OemTwoPointersDetectionListener;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;->this$0:Lcom/android/server/policy/OemTwoPointersDetectionListener;

    invoke-static {v0}, Lcom/android/server/policy/OemTwoPointersDetectionListener;->access$000(Lcom/android/server/policy/OemTwoPointersDetectionListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;->this$0:Lcom/android/server/policy/OemTwoPointersDetectionListener;

    invoke-static {v0}, Lcom/android/server/policy/OemTwoPointersDetectionListener;->access$100(Lcom/android/server/policy/OemTwoPointersDetectionListener;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/policy/OemTwoPointersDetectionListener;->access$200()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "OemTwoPointerDetection"

    const-string v1, "Fired Two Pointer Detection"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/policy/OemTwoPointersDetectionListener$1;->this$0:Lcom/android/server/policy/OemTwoPointersDetectionListener;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/policy/OemTwoPointersDetectionListener;->startTwoFingerDetected(Z)V

    :cond_1
    return-void
.end method
