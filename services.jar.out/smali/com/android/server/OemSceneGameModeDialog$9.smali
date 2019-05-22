.class Lcom/android/server/OemSceneGameModeDialog$9;
.super Ljava/lang/Object;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModeDialog;->promptHapticFeedbackOption()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog$9;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$9;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$9;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModeDialog;->access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog$9;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    invoke-static {v1}, Lcom/android/server/OemSceneGameModeDialog;->access$300(Lcom/android/server/OemSceneGameModeDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog$9;->this$0:Lcom/android/server/OemSceneGameModeDialog;

    iget-object v0, v0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_ui_haptic_feedback_prompted"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {v3}, Lcom/android/server/OemSceneGameModeDialog;->access$1002(Z)Z

    :cond_0
    return-void
.end method
