.class Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;
.super Landroid/database/ContentObserver;
.source "CarModeHideStarting.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/CarModeHideStarting;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "DriveModeObserver"
.end annotation


# instance fields
.field private mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

.field private mContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/server/am/CarModeHideStarting;


# direct methods
.method public constructor <init>(Lcom/android/server/am/CarModeHideStarting;Landroid/os/Handler;Landroid/content/Context;Lcom/android/server/am/CarModeHideStarting;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->this$0:Lcom/android/server/am/CarModeHideStarting;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object p3, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_switch"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/server/am/CarModeHideStarting;->updateDriveMode(Z)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oneplus_carmode_dock_show"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

    if-ne v1, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/server/am/CarModeHideStarting;->updateCarDockShown(Z)V

    return-void
.end method

.method public registerObserver()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_switch"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_dock_show"

    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    iget-object v0, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_switch"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/server/am/CarModeHideStarting;->updateDriveMode(Z)V

    iget-object v1, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v4, "oneplus_carmode_dock_show"

    invoke-static {v1, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v4, p0, Lcom/android/server/am/CarModeHideStarting$DriveModeObserver;->mCarModeHideStarting:Lcom/android/server/am/CarModeHideStarting;

    if-ne v1, v3, :cond_1

    move v2, v3

    nop

    :cond_1
    invoke-virtual {v4, v2}, Lcom/android/server/am/CarModeHideStarting;->updateCarDockShown(Z)V

    return-void
.end method
