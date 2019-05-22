.class public Lcom/android/server/OemSceneGameModeMessage;
.super Lcom/android/server/OemSceneGameModeView;
.source "OemSceneGameModeMessage.java"


# static fields
.field private static DBG:Z = false

.field private static final MSG_GAME_MODE_ON_TACKER_APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field private static final RELAUNCH_MSG_DELAYED:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeMessage"

.field private static final VALUE_ON:Ljava/lang/String; = "1"


# instance fields
.field private layoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mBackground:Landroid/view/View;

.field private mEsportTriggerBtn:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field private mIcon:Landroid/widget/ImageView;

.field private mMoreSettingsBtn:Landroid/widget/TextView;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mTitle:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneGameModeMessage;->DBG:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 1

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeMessage;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneGameModeMessage;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModeMessage;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$102(Lcom/android/server/OemSceneGameModeMessage;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeMessage;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method


# virtual methods
.method public doSomething(I)V
    .locals 0

    return-void
.end method

.method public updateView()V
    .locals 7

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10501a0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v3, 0x507001c

    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    iget v3, v2, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    iget v4, v2, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v1

    iget v5, v2, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    iget v6, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v4, 0x507001a

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v4, 0x507001b

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mTitle:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v4, 0x507001d

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    const v4, 0x5070012

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    new-instance v5, Lcom/android/server/OemSceneGameModeMessage$1;

    invoke-direct {v5, p0}, Lcom/android/server/OemSceneGameModeMessage$1;-><init>(Lcom/android/server/OemSceneGameModeMessage;)V

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v3, v4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    new-instance v4, Lcom/android/server/OemSceneGameModeMessage$2;

    invoke-direct {v4, p0}, Lcom/android/server/OemSceneGameModeMessage$2;-><init>(Lcom/android/server/OemSceneGameModeMessage;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeMessage;->updateViewState()V

    return-void
.end method

.method public updateViewState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "1"

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "esport_mode_enabled"

    const/4 v4, -0x2

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mIcon:Landroid/widget/ImageView;

    const v3, 0x5060038

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mIcon:Landroid/widget/ImageView;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeMessage;->mContext:Landroid/content/Context;

    const/high16 v4, 0x5040000

    invoke-virtual {v3, v4}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mTitle:Landroid/widget/TextView;

    const v3, 0x50d004f

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    const v3, 0x50d0033

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    const v3, 0x506008c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mIcon:Landroid/widget/ImageView;

    const v3, 0x506004f

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mIcon:Landroid/widget/ImageView;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setColorFilter(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mTitle:Landroid/widget/TextView;

    const v3, 0x50d0051

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    const v3, 0x50d0037

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mBackground:Landroid/view/View;

    const v3, 0x5060098

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mEsportTriggerBtn:Landroid/widget/TextView;

    const v3, 0x5040001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_0
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v2}, Lcom/android/server/OemSceneGameModePanel;->isDocked()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeMessage;->mMoreSettingsBtn:Landroid/widget/TextView;

    const v3, -0x777778

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_1
    return-void
.end method
