.class Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAdModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneAdModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "GameModeAutoContentObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneAdModeController;


# direct methods
.method public constructor <init>(Lserver/oneplus/scene/OemSceneAdModeController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 4

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v1}, Lserver/oneplus/scene/OemSceneAdModeController;->access$400(Lserver/oneplus/scene/OemSceneAdModeController;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "game_mode_status_auto"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lserver/oneplus/scene/OemSceneAdModeController;->access$500(Lserver/oneplus/scene/OemSceneAdModeController;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget-boolean v0, v0, Lserver/oneplus/scene/OemSceneAdModeController;->DEBUG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneAdModeController"

    const-string v1, "[scene] Game Auto changed! "

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$600(Lserver/oneplus/scene/OemSceneAdModeController;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    const/4 v1, 0x1

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget v2, v2, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    invoke-static {v0, v1, v2}, Lserver/oneplus/scene/OemSceneAdModeController;->access$700(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    const/4 v1, 0x0

    iget-object v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$GameModeAutoContentObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget v2, v2, Lserver/oneplus/scene/OemSceneAdModeController;->OP_AD_STRENGTH_DEFAULT:I

    invoke-static {v0, v1, v2}, Lserver/oneplus/scene/OemSceneAdModeController;->access$700(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V

    :goto_0
    return-void
.end method
