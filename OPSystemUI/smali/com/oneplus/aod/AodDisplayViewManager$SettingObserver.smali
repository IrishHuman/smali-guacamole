.class final Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;
.super Landroid/database/ContentObserver;
.source "AodDisplayViewManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodDisplayViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodDisplayViewManager;


# direct methods
.method public constructor <init>(Lcom/oneplus/aod/AodDisplayViewManager;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;I)V
    .locals 2

    invoke-super {p0, p1, p2, p3}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$600(Lcom/oneplus/aod/AodDisplayViewManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->updateClockDB()V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$400(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodMain;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v1}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/aod/ClockViewCtrl;->getClockStyle()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/AodMain;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$400(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/AodMain;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/AodMain;->updateLayout()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$700(Lcom/oneplus/aod/AodDisplayViewManager;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/AodDisplayViewManager$SettingObserver;->this$0:Lcom/oneplus/aod/AodDisplayViewManager;

    invoke-static {v0}, Lcom/oneplus/aod/AodDisplayViewManager;->access$300(Lcom/oneplus/aod/AodDisplayViewManager;)Lcom/oneplus/aod/ClockViewCtrl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oneplus/aod/ClockViewCtrl;->updateDisplayTextDB()V

    :cond_1
    :goto_0
    return-void
.end method
