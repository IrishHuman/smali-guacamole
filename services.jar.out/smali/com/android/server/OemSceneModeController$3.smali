.class Lcom/android/server/OemSceneModeController$3;
.super Ljava/lang/Object;
.source "OemSceneModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneModeController;->hideGameModeUI()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneModeController;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneModeController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneModeController$3;->this$0:Lcom/android/server/OemSceneModeController;

    invoke-static {v0}, Lcom/android/server/OemSceneModeController;->access$1800(Lcom/android/server/OemSceneModeController;)Lcom/android/server/OemSceneGameModePanel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    return-void
.end method