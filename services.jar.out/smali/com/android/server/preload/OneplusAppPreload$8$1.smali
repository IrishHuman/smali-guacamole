.class Lcom/android/server/preload/OneplusAppPreload$8$1;
.super Ljava/lang/Thread;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload$8;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/preload/OneplusAppPreload$8;


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload$8;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$8$1;->this$1:Lcom/android/server/preload/OneplusAppPreload$8;

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "OneplusAppPreload"

    const-string v1, "Start to reportMDM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/preload/OneplusAppPreload$8$1;->this$1:Lcom/android/server/preload/OneplusAppPreload$8;

    iget-object v0, v0, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v0}, Lcom/android/server/preload/OneplusAppPreload;->access$2600(Lcom/android/server/preload/OneplusAppPreload;)V

    const-string v0, "OneplusAppPreload"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mLastReportMdmTime : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/preload/OneplusAppPreload$8$1;->this$1:Lcom/android/server/preload/OneplusAppPreload$8;

    iget-object v2, v2, Lcom/android/server/preload/OneplusAppPreload$8;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    invoke-static {v2}, Lcom/android/server/preload/OneplusAppPreload;->access$2400(Lcom/android/server/preload/OneplusAppPreload;)J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
