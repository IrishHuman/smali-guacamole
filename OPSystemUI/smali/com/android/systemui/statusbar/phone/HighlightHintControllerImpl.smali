.class public Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;
.super Ljava/lang/Object;
.source "HighlightHintControllerImpl.java"

# interfaces
.implements Lcom/android/systemui/statusbar/phone/HighlightHintController;
.implements Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;


# instance fields
.field private mBarState:I

.field private mBgColor:I

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCarModeBgColor:I

.field private mCarModeShow:Z

.field private mExpandedVisible:Z

.field private mHeadUpShow:Z

.field private mHighlightHintShow:Z

.field private mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

.field private mKeyguardShow:Z

.field private mNotificationData:Lcom/android/systemui/statusbar/NotificationData;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeBgColor:I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    const-class v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitor;

    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->addCallback(Lcom/android/systemui/statusbar/policy/KeyguardMonitor$Callback;)V

    return-void
.end method

.method private dumpInfo()V
    .locals 4

    sget-boolean v0, Lcom/android/systemui/util/OPUtils;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mHighlightHintShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " showNotification:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " HeadsUp:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, " expanededAfterUnlock:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void
.end method

.method private onCarModeHighlightHintInfoUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintInfoChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onCarModeHighlightHintStateChange()V
    .locals 4

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowCarModeHighlightHint()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    if-eq v0, v1, :cond_0

    const-string v1, "HighlightHintCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onCarModeHighlightHintStateChange show:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    invoke-interface {v2, v3}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onCarModeHighlightHintStateChange(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onHighlightHintInfoUpdate()V
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-interface {v1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onHighlightHintStateChange()V
    .locals 3

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->shouldShowHighlightHint()Z

    move-result v0

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    if-eq v0, v1, :cond_0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->dumpInfo()V

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-interface {v2}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private shouldShowCarModeHighlightHint()Z
    .locals 2

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->showCarModeNotification()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    if-nez v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintStateChange()V

    invoke-interface {p1}, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;->onHighlightHintInfoChange()V

    return-void
.end method

.method public bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->addCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public getHighlighColor()I
    .locals 1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    return v0
.end method

.method public getNotificationData()Lcom/android/systemui/statusbar/NotificationData;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    return-object v0
.end method

.method public isCarModeHighlightHintSHow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeShow:Z

    return v0
.end method

.method public isHighLightHintShow()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHighlightHintShow:Z

    return v0
.end method

.method public launchCarModeAp(Landroid/content/Context;)V
    .locals 2

    const-string v0, "HighlightHintCtrl"

    const-string v1, "launchCarModeAp"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Notification;->getIntentOnStatusBar()Landroid/content/Intent;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    invoke-virtual {p1, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    :cond_1
    return-void
.end method

.method public onBarStatechange(I)V
    .locals 3

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-eq v0, p1, :cond_0

    iput p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    const-string v0, "HighlightHintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBarStatechange barstate:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onExpandedVisibleChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onHeadUpPinnedModeChange(Z)V
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-eq v0, p1, :cond_0

    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    :cond_0
    return-void
.end method

.method public onKeyguardShowingChanged()V
    .locals 3

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardMonitor:Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/KeyguardMonitorImpl;->isShowing()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_0

    const-string v0, "HighlightHintCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyguardShowingChanged mKeyguardShow:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mKeyguardShow:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    return-void
.end method

.method public onNotificationUpdate(Lcom/android/systemui/statusbar/NotificationData;)V
    .locals 1

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBgColor:I

    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintStateChange()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onHighlightHintInfoUpdate()V

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v0}, Lcom/android/systemui/statusbar/NotificationData;->getCarModeHighlightHintNotification()Landroid/service/notification/StatusBarNotification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification;->getBackgroundColorOnStatusBar()I

    move-result v0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCarModeBgColor:I

    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintInfoUpdate()V

    invoke-direct {p0}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->onCarModeHighlightHintStateChange()V

    return-void
.end method

.method public removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->removeCallback(Lcom/android/systemui/statusbar/phone/HighlightHintController$OnHighlightHintStateChangeListener;)V

    return-void
.end method

.method public shouldShowHighlightHint()Z
    .locals 4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mExpandedVisible:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mBarState:I

    if-nez v0, :cond_1

    move v0, v2

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mNotificationData:Lcom/android/systemui/statusbar/NotificationData;

    invoke-virtual {v3}, Lcom/android/systemui/statusbar/NotificationData;->showNotification()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/phone/HighlightHintControllerImpl;->mHeadUpShow:Z

    if-nez v3, :cond_2

    if-nez v0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method public showOvalLayout()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
