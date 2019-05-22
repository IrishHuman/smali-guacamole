.class Lcom/android/server/am/OemQuickReply$3;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemQuickReply;->addIMButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3

    :try_start_0
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "click to full button app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$200(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/wm/WindowManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->exitQuickReply(Landroid/os/IBinder;)V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply;->setQuickReplyRunning(Z)V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$3;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$400(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/ActivityRecord;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemQuickReply"

    const-string v2, "click to full button fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    const/4 v0, 0x1

    return v0
.end method
