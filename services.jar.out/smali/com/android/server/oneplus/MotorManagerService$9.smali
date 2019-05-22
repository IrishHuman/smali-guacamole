.class Lcom/android/server/oneplus/MotorManagerService$9;
.super Ljava/lang/Object;
.source "MotorManagerService.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/oneplus/MotorManagerService;->showMotorUpLockedDialog()V
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

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$9;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$9;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    const-string v1, "MotorManagerService"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->access$700(Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;Landroid/os/IBinder;)I

    return-void
.end method
