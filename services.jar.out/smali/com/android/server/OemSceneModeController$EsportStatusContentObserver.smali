.class public Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OemSceneModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EsportStatusContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method public constructor <init>(Lcom/android/server/OemSceneModeController;Landroid/content/Context;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0, p3}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$600(Lcom/android/server/OemSceneModeController;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$EsportStatusContentObserver;->this$0:Lcom/android/server/OemSceneModeController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/OemSceneModeController;->access$700(Lcom/android/server/OemSceneModeController;Z)V

    :cond_0
    return-void
.end method
