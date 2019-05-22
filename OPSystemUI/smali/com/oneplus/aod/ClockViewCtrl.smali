.class public Lcom/oneplus/aod/ClockViewCtrl;
.super Ljava/lang/Object;
.source "ClockViewCtrl.java"


# static fields
.field public static KEY_CLOCK_STYLE:Ljava/lang/String;

.field private static mDisplayText:Ljava/lang/String;


# instance fields
.field private KEY_DISPLAY_TEXT:Ljava/lang/String;

.field private final TAG:Ljava/lang/String;

.field private mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

.field private mClockStyle:I

.field private mClockView:Lcom/oneplus/aod/OPTextClock;

.field private final mContext:Landroid/content/Context;

.field private mDateTimeView:Lcom/oneplus/aod/DateTimeView;

.field private mDateView:Lcom/oneplus/aod/OPTextDate;

.field private mDreaming:Z

.field private mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

.field private mOwnerInfo:Landroid/widget/TextView;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "aod_clock_style"

    sput-object v0, Lcom/oneplus/aod/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    const-string v0, ""

    sput-object v0, Lcom/oneplus/aod/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewGroup;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "ClockViewCtrl"

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->TAG:Ljava/lang/String;

    const-string v0, "aod_display_text"

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    const/4 v0, -0x1

    iput v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    iput-object p1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    const v0, 0x7f0a0108

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/DateTimeView;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    const v0, 0x7f0a00d6

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OPTextClock;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextClock;->setShowCurrentUserTime(Z)V

    const v0, 0x7f0a0109

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OPTextDate;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    const v0, 0x7f0a0059

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OPAnalogClock;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    const v0, 0x7f0a0265

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oneplus/aod/OPMinimalismClock;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    const v0, 0x7f0a0319

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateClockDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateDisplayTextDB()V

    return-void
.end method

.method public static getDisplayText()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/oneplus/aod/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    return-object v0
.end method

.method private refreshTime()V
    .locals 1

    sget-object v0, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView12:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/ClockViewCtrl;->setFormat12Hour(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/oneplus/aod/DateTimeView$Patterns;->clockView24:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/ClockViewCtrl;->setFormat24Hour(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updateLayout()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    if-nez v2, :cond_0

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070597

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    goto :goto_0

    :cond_0
    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    if-ne v2, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070596

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_1
    :goto_0
    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getClockStyle()I
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    return v0
.end method

.method public onDreamingStateChanged(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDreaming:Z

    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DateTimeView;->setEnableMarquee(Z)V

    goto :goto_0

    :cond_0
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DateTimeView;->setEnableMarquee(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onScreenTurnedOn()V
    .locals 1

    iget-boolean v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDreaming:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/DateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/ClockViewCtrl;->refreshTime()V

    :cond_0
    return-void
.end method

.method public onTimeChanged()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/DateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/ClockViewCtrl;->refreshTime()V

    return-void
.end method

.method public onUserInfoChanged(I)V
    .locals 0

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public onUserSwitchComplete(I)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/DateTimeView;->refresh()V

    iput p1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateClockDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateDisplayTextDB()V

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0}, Lcom/oneplus/aod/OPMinimalismClock;->refreshTime()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0}, Lcom/oneplus/aod/OPAnalogClock;->refreshTime()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OPTextClock;->setFormat12Hour(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 1

    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0}, Lcom/oneplus/aod/OPMinimalismClock;->refreshTime()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0}, Lcom/oneplus/aod/OPAnalogClock;->refreshTime()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, p1}, Lcom/oneplus/aod/OPTextClock;->setFormat24Hour(Ljava/lang/CharSequence;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public startDozing()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    invoke-virtual {v0}, Lcom/oneplus/aod/DateTimeView;->refresh()V

    invoke-direct {p0}, Lcom/oneplus/aod/ClockViewCtrl;->refreshTime()V

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateOwnerInfo()V

    return-void
.end method

.method public updateClockDB()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/oneplus/aod/ClockViewCtrl;->KEY_CLOCK_STYLE:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    iget v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DateTimeView;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-static {v0, v3, v1}, Lcom/oneplus/aod/DateTimeView$Patterns;->update(Landroid/content/Context;ZI)V

    invoke-direct {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateLayout()V

    invoke-virtual {p0}, Lcom/oneplus/aod/ClockViewCtrl;->updateClockVisibility()V

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClock: style = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateClockVisibility()V
    .locals 4

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClockVisibility: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x0

    const/16 v2, 0x8

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPMinimalismClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v3, 0x1

    if-ne v0, v3, :cond_1

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPMinimalismClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPMinimalismClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPTextDate;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mMiniClockView:Lcom/oneplus/aod/OPMinimalismClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPMinimalismClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mAnalogClockView:Lcom/oneplus/aod/OPAnalogClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPAnalogClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPTextClock;->setVisibility(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v0, v2}, Lcom/oneplus/aod/OPTextDate;->setVisibility(I)V

    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockView:Lcom/oneplus/aod/OPTextClock;

    iget v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextClock;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateView:Lcom/oneplus/aod/OPTextDate;

    iget v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/OPTextDate;->setClockStyle(I)V

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mDateTimeView:Lcom/oneplus/aod/DateTimeView;

    iget v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    invoke-virtual {v0, v1}, Lcom/oneplus/aod/DateTimeView;->setClockStyle(I)V

    return-void
.end method

.method public updateDisplayTextDB()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->KEY_DISPLAY_TEXT:Ljava/lang/String;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oneplus/aod/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    const-string v0, "ClockViewCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateClock: updateDisplayTextDB = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcom/oneplus/aod/ClockViewCtrl;->mDisplayText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/aod/ClockViewCtrl;->mUserId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public updateOwnerInfo()V
    .locals 3

    const-string v0, "ClockViewCtrl"

    const-string/jumbo v1, "updateOwnerInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x2

    const/16 v2, 0x8

    if-eq v0, v1, :cond_3

    iget v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mClockStyle:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-static {}, Lcom/oneplus/aod/ClockViewCtrl;->getDisplayText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    :goto_0
    return-void

    :cond_3
    :goto_1
    iget-object v0, p0, Lcom/oneplus/aod/ClockViewCtrl;->mOwnerInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method
