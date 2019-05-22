.class Lcom/android/server/policy/DeviceKeyHandler$1;
.super Ljava/lang/Object;
.source "DeviceKeyHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/DeviceKeyHandler;->onScreenTurningOn()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/DeviceKeyHandler;


# direct methods
.method constructor <init>(Lcom/android/server/policy/DeviceKeyHandler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/DeviceKeyHandler$1;->this$0:Lcom/android/server/policy/DeviceKeyHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const-string v0, "/proc/touchpanel/gesture_switch"

    const/16 v1, 0x31

    invoke-static {v0, v1}, Lcom/android/server/policy/FileUtils;->writeIntLine(Ljava/lang/String;I)Z

    const-string v0, "DeviceKeyHandler"

    const-string/jumbo v1, "in AOD mode enable gesture"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
