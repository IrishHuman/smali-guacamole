.class Lcom/android/server/BluetoothManagerService$OPBtPrefixConfigUpdater;
.super Ljava/lang/Object;
.source "BluetoothManagerService.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BluetoothManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OPBtPrefixConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BluetoothManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/BluetoothManagerService;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/BluetoothManagerService$OPBtPrefixConfigUpdater;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/BluetoothManagerService$OPBtPrefixConfigUpdater;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v0}, Lcom/android/server/BluetoothManagerService;->access$5500(Lcom/android/server/BluetoothManagerService;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/BluetoothManagerService$OPBtPrefixConfigUpdater;->this$0:Lcom/android/server/BluetoothManagerService;

    invoke-static {v1}, Lcom/android/server/BluetoothManagerService;->access$5500(Lcom/android/server/BluetoothManagerService;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
