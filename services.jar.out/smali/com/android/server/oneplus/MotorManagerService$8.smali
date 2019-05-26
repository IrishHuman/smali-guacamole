.class Lcom/android/server/oneplus/MotorManagerService$8;
.super Landroid/os/CountDownTimer;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/MotorManagerService;->showUpMotorWarning()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;

.field final synthetic val$button:Landroid/widget/Button;

.field final synthetic val$defaultColor:I


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/MotorManagerService;JJLandroid/widget/Button;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$8;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    iput-object p6, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$button:Landroid/widget/Button;

    iput p7, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$defaultColor:I

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/os/CountDownTimer;-><init>(JJ)V

    return-void
.end method


# virtual methods
.method public onFinish()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$button:Landroid/widget/Button;

    iget v1, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$defaultColor:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setTextColor(I)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$button:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$8;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v1}, Lcom/android/server/oneplus/MotorManagerService;->access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x50d0087

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$button:Landroid/widget/Button;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setClickable(Z)V

    return-void
.end method

.method public onTick(J)V
    .locals 4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$8;->val$button:Landroid/widget/Button;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/server/oneplus/MotorManagerService$8;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v2}, Lcom/android/server/oneplus/MotorManagerService;->access$1800(Lcom/android/server/oneplus/MotorManagerService;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x50d0087

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, "S)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
