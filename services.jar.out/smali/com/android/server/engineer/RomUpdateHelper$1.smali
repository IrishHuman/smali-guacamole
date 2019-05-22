.class Lcom/android/server/engineer/RomUpdateHelper$1;
.super Landroid/content/BroadcastReceiver;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/engineer/RomUpdateHelper;->initUpdateBroadcastReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/engineer/RomUpdateHelper;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/RomUpdateHelper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/RomUpdateHelper$1;->this$0:Lcom/android/server/engineer/RomUpdateHelper;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    invoke-static {}, Lcom/android/server/engineer/RomUpdateHelper;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "RomUpdateHelper"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/engineer/RomUpdateHelper$1;->this$0:Lcom/android/server/engineer/RomUpdateHelper;

    invoke-virtual {v2}, Lcom/android/server/engineer/RomUpdateHelper;->getFilterName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", onReceive intent = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p2, :cond_2

    :try_start_0
    const-string v0, "ROM_UPDATE_CONFIG_LIST"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/server/engineer/RomUpdateHelper$1;->this$0:Lcom/android/server/engineer/RomUpdateHelper;

    invoke-static {v1}, Lcom/android/server/engineer/RomUpdateHelper;->access$100(Lcom/android/server/engineer/RomUpdateHelper;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/engineer/RomUpdateHelper$1;->this$0:Lcom/android/server/engineer/RomUpdateHelper;

    invoke-virtual {v1}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateFromProvider()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_2
    :goto_0
    return-void
.end method
