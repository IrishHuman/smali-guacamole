.class Lcom/android/server/OemSceneGameModePanel$2;
.super Ljava/lang/Object;
.source "OemSceneGameModePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemSceneGameModePanel;->frontPackageChanged(Ljava/lang/String;IILjava/lang/String;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemSceneGameModePanel;


# direct methods
.method constructor <init>(Lcom/android/server/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModePanel$2;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$2;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/OemSceneGameModePanel$2;->this$0:Lcom/android/server/OemSceneGameModePanel;

    invoke-static {v0}, Lcom/android/server/OemSceneGameModePanel;->access$100(Lcom/android/server/OemSceneGameModePanel;)Lcom/android/server/OemSceneGameModeView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModeView;->updateViewOptions()V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemSceneGameModePanel"

    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
