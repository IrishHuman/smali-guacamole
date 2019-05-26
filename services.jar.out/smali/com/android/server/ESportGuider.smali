.class public Lcom/android/server/ESportGuider;
.super Ljava/lang/Object;
.source "ESportGuider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/ESportGuider$ESportGuiderView;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "ESportGuider"

.field private static final VALUE_OFF:Ljava/lang/String; = "0"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field private static mInitialDontShowAgainChecked:Z

.field private static sInstance:Lcom/android/server/ESportGuider;


# instance fields
.field private mAcquired:Z

.field private mContext:Landroid/content/Context;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field private mDontShowAgainText:Landroid/widget/TextView;

.field private mESportGuideLayout:Landroid/widget/RelativeLayout;

.field private mEsportModeOn:Z

.field private mGuideButton:Landroid/widget/TextView;

.field private mGuiderBody:Landroid/view/View;

.field private mGuiderBodyLayout:Landroid/view/View;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotation:I

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/ESportGuider;->DBG:Z

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/ESportGuider;->mInitialDontShowAgainChecked:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/ESportGuider;->sInstance:Lcom/android/server/ESportGuider;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/ESportGuider;->mRotation:I

    iput-boolean v0, p0, Lcom/android/server/ESportGuider;->mEsportModeOn:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/ESportGuider;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    iput-boolean v0, p0, Lcom/android/server/ESportGuider;->mAcquired:Z

    iput-object p1, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mInflater:Landroid/view/LayoutInflater;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mResolver:Landroid/content/ContentResolver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/ESportGuider;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$100()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/ESportGuider;->mInitialDontShowAgainChecked:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/server/ESportGuider;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;
    .locals 1

    sget-object v0, Lcom/android/server/ESportGuider;->sInstance:Lcom/android/server/ESportGuider;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/ESportGuider;

    invoke-direct {v0, p0}, Lcom/android/server/ESportGuider;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/ESportGuider;->sInstance:Lcom/android/server/ESportGuider;

    :cond_0
    sget-object v0, Lcom/android/server/ESportGuider;->sInstance:Lcom/android/server/ESportGuider;

    return-object v0
.end method

.method private initView(Landroid/view/ViewGroup;)V
    .locals 5

    const v0, 0x507000c

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mGuiderBodyLayout:Landroid/view/View;

    const v0, 0x507000b

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mGuiderBody:Landroid/view/View;

    invoke-static {}, Lcom/android/server/OemSceneGameModePanel;->getDialogHeight()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mGuiderBody:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    invoke-static {}, Lcom/android/server/OemSceneGameModePanel;->getDialogHeight()I

    move-result v2

    iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/ESportGuider;->mGuiderBody:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v2, p0, Lcom/android/server/ESportGuider;->mGuiderBodyLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    invoke-static {}, Lcom/android/server/OemSceneGameModePanel;->getDialogHeight()I

    move-result v3

    iput v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    iget-object v3, p0, Lcom/android/server/ESportGuider;->mGuiderBodyLayout:Landroid/view/View;

    invoke-virtual {v3, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/android/server/ESportGuider;->mGuiderBodyLayout:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->invalidate()V

    :cond_0
    const v0, 0x507004f

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mGuideButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mGuideButton:Landroid/widget/TextView;

    new-instance v2, Lcom/android/server/ESportGuider$1;

    invoke-direct {v2, p0}, Lcom/android/server/ESportGuider$1;-><init>(Lcom/android/server/ESportGuider;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x5070025

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "esport_mode_guider_never_show"

    const/4 v3, -0x2

    const/4 v4, 0x0

    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_0
    move v0, v1

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/ESportGuider;->mInitialDontShowAgainChecked:Z

    const v1, 0x5070026

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/ESportGuider;->mDontShowAgainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mDontShowAgainText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/server/ESportGuider$2;

    invoke-direct {v2, p0}, Lcom/android/server/ESportGuider$2;-><init>(Lcom/android/server/ESportGuider;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-virtual {p0, p1}, Lcom/android/server/ESportGuider;->updateIntroEntryView(Landroid/view/ViewGroup;)V

    return-void
.end method

.method private isDualSimCard(Landroid/content/Context;)Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    return v2

    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private isSupportDualLTEProject(Landroid/content/Context;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120053

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected hide()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    if-eqz v0, :cond_1

    :try_start_0
    iget-object v0, p0, Lcom/android/server/ESportGuider;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->doneEsportModeGuiderHide()V

    :cond_0
    iget-object v0, p0, Lcom/android/server/ESportGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "ESportGuider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "removeView() exception: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/ESportGuider;->mAcquired:Z

    return-void
.end method

.method public isAcquired()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/ESportGuider;->mAcquired:Z

    return v0
.end method

.method public setPanel(Lcom/android/server/OemSceneGameModePanel;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportGuider;->mOemSceneGameModePanel:Lcom/android/server/OemSceneGameModePanel;

    return-void
.end method

.method protected declared-synchronized show()V
    .locals 7

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/ESportGuider;->hide()V

    new-instance v0, Lcom/android/server/ESportGuider$ESportGuiderView;

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    const v2, 0x5090006

    invoke-direct {v0, p0, v1, v2}, Lcom/android/server/ESportGuider$ESportGuiderView;-><init>(Lcom/android/server/ESportGuider;Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    invoke-direct {p0, v0}, Lcom/android/server/ESportGuider;->initView(Landroid/view/ViewGroup;)V

    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x1

    const/16 v4, 0x7d8

    const/16 v5, 0x8

    const/4 v6, -0x2

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    const/16 v1, 0x31

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v1, v1, 0x12

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const-string v1, "ESportGuider"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mWindowManager:Landroid/view/WindowManager;

    iget-object v2, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/ESportGuider;->mESportGuideLayout:Landroid/widget/RelativeLayout;

    const/16 v2, 0x400

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setSystemUiVisibility(I)V

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/ESportGuider;->mAcquired:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method updateIntroEntryView(Landroid/view/ViewGroup;)V
    .locals 10

    const v0, 0x507000d

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const v1, 0x507000e

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const v2, 0x507000f

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x5070041

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    const v6, 0x5070042

    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    invoke-virtual {v1, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const v9, 0x5060044

    invoke-virtual {v4, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x5060042

    invoke-virtual {v5, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x5060040

    invoke-virtual {v3, v9}, Landroid/widget/ImageView;->setImageResource(I)V

    const v9, 0x50d004d

    invoke-virtual {v7, v9}, Landroid/widget/TextView;->setText(I)V

    const v9, 0x50d004e

    invoke-virtual {v8, v9}, Landroid/widget/TextView;->setText(I)V

    iget-object v9, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/server/ESportGuider;->isSupportDualLTEProject(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    iget-object v9, p0, Lcom/android/server/ESportGuider;->mContext:Landroid/content/Context;

    invoke-direct {p0, v9}, Lcom/android/server/ESportGuider;->isDualSimCard(Landroid/content/Context;)Z

    move-result v9

    if-eqz v9, :cond_0

    const v9, 0x50d004f

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v9, 0x50d0049

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    return-void
.end method
