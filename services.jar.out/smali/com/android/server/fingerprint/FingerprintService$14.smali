.class Lcom/android/server/fingerprint/FingerprintService$14;
.super Landroid/database/ContentObserver;
.source "FingerprintService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/fingerprint/FingerprintService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/fingerprint/FingerprintService;


# direct methods
.method constructor <init>(Lcom/android/server/fingerprint/FingerprintService;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_grayscale_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$4502(Lcom/android/server/fingerprint/FingerprintService;I)I

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    iget-object v2, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v2}, Lcom/android/server/fingerprint/FingerprintService;->access$2600(Lcom/android/server/fingerprint/FingerprintService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "accessibility_display_grayscale_enabled"

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v4

    invoke-static {v2, v3, v0, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$4502(Lcom/android/server/fingerprint/FingerprintService;I)I

    :cond_1
    :goto_0
    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    const-string v1, "FingerprintService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GrayMode changed, self:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", mode:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$4500(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", client:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", temp:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$4600(Lcom/android/server/fingerprint/FingerprintService;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v4

    if-eqz v4, :cond_2

    move v4, v0

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v4}, Lcom/android/server/fingerprint/FingerprintService;->access$3100(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$100(Lcom/android/server/fingerprint/FingerprintService;)Lcom/android/server/fingerprint/ClientMonitor;

    move-result-object v1

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$4500(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1, v0}, Lcom/android/server/fingerprint/FingerprintService;->access$800(Lcom/android/server/fingerprint/FingerprintService;Z)V

    goto :goto_2

    :cond_4
    iget-object v1, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v1}, Lcom/android/server/fingerprint/FingerprintService;->access$4500(Lcom/android/server/fingerprint/FingerprintService;)I

    move-result v1

    if-ne v1, v0, :cond_5

    iget-object v0, p0, Lcom/android/server/fingerprint/FingerprintService$14;->this$0:Lcom/android/server/fingerprint/FingerprintService;

    invoke-static {v0, v2}, Lcom/android/server/fingerprint/FingerprintService;->access$4602(Lcom/android/server/fingerprint/FingerprintService;Z)Z

    :cond_5
    :goto_2
    return-void
.end method
