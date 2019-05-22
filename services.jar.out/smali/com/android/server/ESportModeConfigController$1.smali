.class Lcom/android/server/ESportModeConfigController$1;
.super Landroid/os/Handler;
.source "ESportModeConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/ESportModeConfigController;->initHandler()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportModeConfigController;


# direct methods
.method constructor <init>(Lcom/android/server/ESportModeConfigController;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportModeConfigController$1;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/oneplus/config/ConfigGrabber;

    iget-object v1, p0, Lcom/android/server/ESportModeConfigController$1;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-static {v1}, Lcom/android/server/ESportModeConfigController;->access$000(Lcom/android/server/ESportModeConfigController;)Landroid/content/Context;

    move-result-object v1

    invoke-static {}, Lcom/android/server/ESportModeConfigController;->access$100()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/oneplus/config/ConfigGrabber;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/ESportModeConfigController$1;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-virtual {v0}, Lcom/oneplus/config/ConfigGrabber;->grabConfig()Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/ESportModeConfigController;->access$200(Lcom/android/server/ESportModeConfigController;Lorg/json/JSONArray;)V

    :goto_0
    return-void
.end method
