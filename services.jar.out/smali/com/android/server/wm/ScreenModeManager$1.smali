.class Lcom/android/server/wm/ScreenModeManager$1;
.super Landroid/content/BroadcastReceiver;
.source "ScreenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wm/ScreenModeManager;->initReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field system_display_mode:I

.field system_resolution_auto:Z

.field final synthetic this$0:Lcom/android/server/wm/ScreenModeManager;


# direct methods
.method constructor <init>(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_display_mode:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_resolution_auto:Z

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    :try_start_0
    const-string v0, "com.android.compatibility.common.deviceinfo"

    const-string v1, "com.android.tradefed.utils.wifi"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v4

    if-eqz v4, :cond_1

    invoke-virtual {v4}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v5

    const-string v6, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, "com.android.compatibility.common.deviceinfo"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget v6, v6, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    const/4 v7, 0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget v6, v6, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    iput v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_display_mode:I

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iput v7, v6, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget-boolean v6, v6, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z

    iput-boolean v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_resolution_auto:Z

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z

    goto :goto_0

    :cond_0
    const-string v6, "com.android.tradefed.utils.wifi"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    iget v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_display_mode:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_1

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget v7, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_display_mode:I

    iput v7, v6, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    iget-object v6, p0, Lcom/android/server/wm/ScreenModeManager$1;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget-boolean v7, p0, Lcom/android/server/wm/ScreenModeManager$1;->system_resolution_auto:Z

    iput-boolean v7, v6, Lcom/android/server/wm/ScreenModeManager;->mIsResolutionAuto:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "ScreenModeManager"

    const-string/jumbo v2, "sPkgReceiver error."

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method
