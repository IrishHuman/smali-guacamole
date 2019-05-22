.class Lcom/android/server/am/OemQuickReply$1;
.super Ljava/lang/Object;
.source "OemQuickReply.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/am/OemQuickReply;->notifyImeShow(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;

.field final synthetic val$imePkgName:Ljava/lang/String;

.field final synthetic val$notifyCount:Ljava/lang/Integer;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    iput-object p2, p0, Lcom/android/server/am/OemQuickReply$1;->val$imePkgName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/am/OemQuickReply$1;->val$notifyCount:Ljava/lang/Integer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x50d009a

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getWindowParams()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    iget v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v3, v3, 0x10

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1}, Lcom/android/server/am/OemQuickReply;->access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply$1;->val$imePkgName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply$1;->val$notifyCount:Ljava/lang/Integer;

    const/4 v5, 0x1

    if-nez v4, :cond_0

    goto :goto_0

    :cond_0
    iget-object v4, p0, Lcom/android/server/am/OemQuickReply$1;->val$notifyCount:Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    add-int/2addr v5, v4

    :goto_0
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, ""

    nop

    :goto_1
    iget-object v3, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v3}, Lcom/android/server/am/OemQuickReply;->access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v3}, Lcom/android/server/am/OemQuickReply;->access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v5}, Lcom/android/server/am/OemQuickReply;->access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ";"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    sget-boolean v2, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v2, :cond_2

    const-string v2, "OemQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifyImeShow save record:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$1;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v2}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "quickreply_ime_unsupported"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
