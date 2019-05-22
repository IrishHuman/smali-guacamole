.class Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "ScreenModeManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 2

    const-string v0, "ScreenModeManager"

    const-string/jumbo v1, "updateConfig ScreenMode"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$MyConfigUpdater;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v0, p1}, Lcom/android/server/wm/ScreenModeManager;->access$100(Lcom/android/server/wm/ScreenModeManager;Lorg/json/JSONArray;)V

    return-void
.end method
