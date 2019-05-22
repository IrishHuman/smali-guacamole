.class final Lcom/android/server/wm/ScreenModeManager$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "ScreenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final mOPScreenModeUri:Landroid/net/Uri;

.field private final mOPScreenResolutionUri:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/wm/ScreenModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string/jumbo v0, "oneplus_screen_refresh_rate"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->mOPScreenModeUri:Landroid/net/Uri;

    const-string/jumbo v0, "oneplus_screen_resolution_adjust"

    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->mOPScreenResolutionUri:Landroid/net/Uri;

    iget-object p1, p1, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->mOPScreenModeUri:Landroid/net/Uri;

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->mOPScreenResolutionUri:Landroid/net/Uri;

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    if-nez p2, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget-object v0, v0, Lcom/android/server/wm/ScreenModeManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_screen_refresh_rate"

    const/4 v2, 0x2

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iget v1, v1, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    if-eq v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v1}, Lcom/android/server/wm/ScreenModeManager;->access$000(Lcom/android/server/wm/ScreenModeManager;)Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;

    move-result-object v1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    iput v0, v1, Lcom/android/server/wm/ScreenModeManager;->mScreenModeSettings:I

    :cond_1
    iget-object v1, p0, Lcom/android/server/wm/ScreenModeManager$SettingsObserver;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-virtual {v1}, Lcom/android/server/wm/ScreenModeManager;->setResolution()V

    return-void
.end method
