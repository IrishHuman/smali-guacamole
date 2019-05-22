.class Lcom/android/server/statusbar/StatusBarManagerService$3;
.super Ljava/lang/Object;
.source "StatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/statusbar/StatusBarManagerService;->onInputShown(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/statusbar/StatusBarManagerService;

.field final synthetic val$reserved:I

.field final synthetic val$shown:Z


# direct methods
.method constructor <init>(Lcom/android/server/statusbar/StatusBarManagerService;ZI)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    iput-boolean p2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$shown:Z

    iput p3, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$reserved:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    if-eqz v0, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->this$0:Lcom/android/server/statusbar/StatusBarManagerService;

    invoke-static {v0}, Lcom/android/server/statusbar/StatusBarManagerService;->access$100(Lcom/android/server/statusbar/StatusBarManagerService;)Lcom/android/internal/statusbar/IStatusBar;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$shown:Z

    iget v2, p0, Lcom/android/server/statusbar/StatusBarManagerService$3;->val$reserved:I

    invoke-interface {v0, v1, v2}, Lcom/android/internal/statusbar/IStatusBar;->onInputShown(ZI)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :cond_0
    :goto_0
    return-void
.end method
