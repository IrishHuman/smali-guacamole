.class final Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OPSceneModeObserver.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/scene/OPSceneModeObserver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final OP_BRICK_MODE_STATUS_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/oneplus/scene/OPSceneModeObserver;


# direct methods
.method constructor <init>(Lcom/oneplus/scene/OPSceneModeObserver;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    const-string p1, "op_breath_mode_status"

    invoke-static {p1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->OP_BRICK_MODE_STATUS_URI:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->access$000(Lcom/oneplus/scene/OPSceneModeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->OP_BRICK_MODE_STATUS_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0

    invoke-virtual {p0, p2}, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->update(Landroid/net/Uri;)V

    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v0}, Lcom/oneplus/scene/OPSceneModeObserver;->access$000(Lcom/oneplus/scene/OPSceneModeObserver;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    if-eqz p1, :cond_0

    iget-object v1, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->OP_BRICK_MODE_STATUS_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const-string v1, "1"

    const-string v2, "op_breath_mode_status"

    const/4 v3, -0x2

    invoke-static {v0, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v2}, Lcom/oneplus/scene/OPSceneModeObserver;->access$100(Lcom/oneplus/scene/OPSceneModeObserver;)Z

    move-result v2

    if-eq v2, v1, :cond_1

    iget-object v2, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v2, v1}, Lcom/oneplus/scene/OPSceneModeObserver;->access$102(Lcom/oneplus/scene/OPSceneModeObserver;Z)Z

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/systemui/plugin/LSState;->getInstance()Lcom/android/systemui/plugin/LSState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/systemui/plugin/LSState;->getPhoneStatusBar()Lcom/android/systemui/statusbar/phone/StatusBar;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->onBrickModeChanged(Z)V

    :cond_1
    const-string v1, "OPSceneModeObserver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mIsInBrickMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oneplus/scene/OPSceneModeObserver$SettingsObserver;->this$0:Lcom/oneplus/scene/OPSceneModeObserver;

    invoke-static {v3}, Lcom/oneplus/scene/OPSceneModeObserver;->access$100(Lcom/oneplus/scene/OPSceneModeObserver;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
