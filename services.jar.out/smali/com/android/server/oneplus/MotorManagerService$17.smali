.class Lcom/android/server/oneplus/MotorManagerService$17;
.super Ljava/lang/Object;
.source "MotorManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/MotorManagerService;->phoneFallDialog()V
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

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$17;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$3200()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$17;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorManagerService;->access$3300(Lcom/android/server/oneplus/MotorManagerService;)V

    :cond_0
    return-void
.end method
