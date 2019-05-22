.class public Lcom/android/server/ESportMode$ESportSettingsContentObserver;
.super Landroid/database/ContentObserver;
.source "ESportMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ESportSettingsContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportMode;


# direct methods
.method public constructor <init>(Lcom/android/server/ESportMode;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportMode$ESportSettingsContentObserver;->this$0:Lcom/android/server/ESportMode;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    const-string v0, "0"

    iget-object v1, p0, Lcom/android/server/ESportMode$ESportSettingsContentObserver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v1}, Lcom/android/server/ESportMode;->access$200(Lcom/android/server/ESportMode;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enable_trigger"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    invoke-static {}, Lcom/android/server/ESportMode;->access$300()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ESportMode"

    const-string v1, "[scene] ESportMode Settings triggered!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/ESportMode$ESportSettingsContentObserver;->this$0:Lcom/android/server/ESportMode;

    iget-object v1, p0, Lcom/android/server/ESportMode$ESportSettingsContentObserver;->this$0:Lcom/android/server/ESportMode;

    invoke-static {v1}, Lcom/android/server/ESportMode;->access$400(Lcom/android/server/ESportMode;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/ESportMode;->updateStatus(I)V

    return-void
.end method
