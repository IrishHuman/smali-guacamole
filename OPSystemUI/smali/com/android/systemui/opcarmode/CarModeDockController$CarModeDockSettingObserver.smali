.class Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;
.super Landroid/database/ContentObserver;
.source "CarModeDockController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/opcarmode/CarModeDockController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CarModeDockSettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/opcarmode/CarModeDockController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/opcarmode/CarModeDockController;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 6

    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$100(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/MetaDataLoader;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadAll()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "CarModeDockController"

    const-string v1, "onChange: meta not loaded. skip."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "oneplus_carmode_dock_show"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v3

    if-eq v3, v0, :cond_3

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v0}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$202(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z

    const-string v3, "CarModeDockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: show="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$300(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    move-result-object v3

    iget-object v4, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v4}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$200(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;->showCarModeDock(Z)V

    :cond_3
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$400(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/app/NotificationManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/app/NotificationManager;->getZenModeByType(I)I

    move-result v3

    if-lez v3, :cond_4

    move v2, v1

    nop

    :cond_4
    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$000(Lcom/android/systemui/opcarmode/CarModeDockController;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "oneplus_carmode_dock_mask_entry"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$500(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v3

    if-ne v3, v2, :cond_5

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$600(Lcom/android/systemui/opcarmode/CarModeDockController;)I

    move-result v3

    if-eq v3, v1, :cond_6

    :cond_5
    const-string v3, "CarModeDockController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onChange: dndEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$500(Lcom/android/systemui/opcarmode/CarModeDockController;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", maskEntry="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "->"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v5}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$600(Lcom/android/systemui/opcarmode/CarModeDockController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v2}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$502(Lcom/android/systemui/opcarmode/CarModeDockController;Z)Z

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3, v1}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$602(Lcom/android/systemui/opcarmode/CarModeDockController;I)I

    iget-object v3, p0, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockSettingObserver;->this$0:Lcom/android/systemui/opcarmode/CarModeDockController;

    invoke-static {v3}, Lcom/android/systemui/opcarmode/CarModeDockController;->access$300(Lcom/android/systemui/opcarmode/CarModeDockController;)Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/systemui/opcarmode/CarModeDockController$CarModeDockCallback;->refreshUI()V

    :cond_6
    return-void
.end method
