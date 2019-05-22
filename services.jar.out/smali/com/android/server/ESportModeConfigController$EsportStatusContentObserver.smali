.class Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "ESportModeConfigController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportModeConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EsportStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportModeConfigController;


# direct methods
.method public constructor <init>(Lcom/android/server/ESportModeConfigController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;->this$0:Lcom/android/server/ESportModeConfigController;

    iget-object v1, p0, Lcom/android/server/ESportModeConfigController$EsportStatusContentObserver;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-static {v1}, Lcom/android/server/ESportModeConfigController;->access$400(Lcom/android/server/ESportModeConfigController;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/ESportModeConfigController;->access$302(Lcom/android/server/ESportModeConfigController;Z)Z

    return-void
.end method
