.class public Lcom/android/server/OemSceneGameModeDialog;
.super Lcom/android/server/OemSceneGameModeView;
.source "OemSceneGameModeDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final BACKGROUND_EFFECT_DURATION:I = 0x12c

.field private static DBG:Z = false

.field private static final HAPTIC_FEEDBACK_PROMPT_DELAY:I = 0x3e8

.field private static final LINE_EFFECT_INTERVAL:I = 0x10

.field private static final MSG_GAME_MODE_ON_TACKER_APPID:Ljava/lang/String; = "RBS8PPYT2W"

.field public static final NOTIFY_STYLE_BLOCK:I = 0x1

.field public static final NOTIFY_STYLE_HEADSUP:I = 0x0

.field public static final NOTIFY_STYLE_WORDS:I = 0x2

.field private static final NUMBER_OF_LINES_PIC:I = 0x1d

.field private static final POP_WIN_Y_OFFSET:I = -0xf0

.field private static final TAG:Ljava/lang/String; = "OemSceneGameModeDialog"

.field private static final VALUE_ON:Ljava/lang/String; = "1"

.field public static mInitialDontShowAgainChecked:Z

.field private static sGameModeOptionKey1:Ljava/lang/String;

.field private static sGameModeOptionKey2:Ljava/lang/String;

.field private static sHandlerThread:Landroid/os/HandlerThread;

.field private static sHapticFeedbackEverPrompted:Z


# instance fields
.field private mCurrentOrientation:I

.field private mDetailView:Landroid/widget/RelativeLayout;

.field private mDismiss:Landroid/widget/TextView;

.field private mDontShowAgain:Landroid/widget/CheckBox;

.field private mDontShowAgainText:Landroid/widget/TextView;

.field private mESportGuider:Lcom/android/server/ESportGuider;

.field private mEffect1:Lcom/android/server/GameModeEffectImage;

.field private mEffect2:Lcom/android/server/GameModeEffectImage;

.field private mEffect3:Lcom/android/server/GameModeEffectImage;

.field private mEffect4:Lcom/android/server/GameModeEffectImage;

.field private mEffect5:Lcom/android/server/GameModeEffectImage;

.field private mEffect6:Lcom/android/server/GameModeEffectImage;

.field private mEffect7:Lcom/android/server/GameModeEffectImage;

.field private mEffect8:Lcom/android/server/GameModeEffectImage;

.field private mEffect9:Lcom/android/server/GameModeEffectImage;

.field private mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

.field private mEffectImageListGameMode:Lcom/android/server/EffectImageList;

.field private mEffectList:Landroid/widget/RelativeLayout;

.field private mEsportEffectList:Landroid/view/View;

.field private mEsportToggleOff:Landroid/widget/ImageView;

.field private mFnaticAnimationTask:Ljava/lang/Runnable;

.field private mFnaticIcon:Landroid/widget/ImageView;

.field private mFnaticModeOn:Z

.field private mFnaticModeTitle:Landroid/widget/TextView;

.field private mFnaticSwitch:Landroid/widget/Switch;

.field private mGameModeEffectList:Landroid/view/View;

.field private mGameModeOptionSwitch1:Landroid/widget/Switch;

.field private mGameModeOptionSwitch2:Landroid/widget/Switch;

.field private mGameModeOptionSwitchAd:Landroid/widget/Switch;

.field private mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

.field private mGameModeOptionTitle1:Landroid/widget/TextView;

.field private mGameModeOptionTitle2:Landroid/widget/TextView;

.field private mGameModeOptionTitleAd:Landroid/widget/TextView;

.field private mGameModeOptionTitleHaptic:Landroid/widget/TextView;

.field private mGameModeOptionTitleText1:Ljava/lang/String;

.field private mGameModeOptionTitleText2:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsOnClickHappen:Z

.field private mMainHandler:Landroid/os/Handler;

.field private mModeToggle:Landroid/widget/RelativeLayout;

.field private mMoreSettingsToggle:Landroid/view/View;

.field private mNotifyStyleDetail:Landroid/widget/TextView;

.field private mNotifyStyleToggle:Landroid/view/View;

.field private mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

.field private mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

.field private mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

.field private mResolver:Landroid/content/ContentResolver;

.field private mRotationState:I

.field private mSettings:Landroid/view/View;

.field private mSettingsFake:Landroid/view/View;

.field private mSettingsIcon:Landroid/widget/ImageView;

.field private mSettingsIconFake:Landroid/widget/ImageView;

.field private mSettingsScrollView:Lcom/android/server/StaticScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->mInitialDontShowAgainChecked:Z

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    sput-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sGameModeOptionKey1:Ljava/lang/String;

    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sGameModeOptionKey2:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/server/OemSceneGameModeView;-><init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    new-instance v1, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v1}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitleText1:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitleText2:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mResolver:Landroid/content/ContentResolver;

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initView()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/OemSceneGameModeDialog;)Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/OemSceneGameModePanelPopupWindow;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    return-object v0
.end method

.method static synthetic access$1002(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    return p0
.end method

.method static synthetic access$1100(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnIconAnimation()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/RelativeLayout;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/server/OemSceneGameModeDialog;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/android/server/OemSceneGameModeDialog;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/ImageView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticIcon:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/OemSceneGameModeDialog;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/server/OemSceneGameModeDialog;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/OemSceneGameModeDialog;)Lcom/android/server/StaticScrollView;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/server/OemSceneGameModeDialog;)Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    return-object v0
.end method

.method static synthetic access$800(Lcom/android/server/OemSceneGameModeDialog;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/server/OemSceneGameModeDialog;Lnet/oneplus/odm/insight/tracker/OSTracker;)Lnet/oneplus/odm/insight/tracker/OSTracker;
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    return-object p1
.end method

.method static synthetic access$900()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    return v0
.end method

.method private disableClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private enableClick()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    return-void
.end method

.method private initEffectEntryView()V
    .locals 14

    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v5, 0x5070002

    const v6, 0x506004a

    const v7, 0x50d002a

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v9, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v11, 0x5070003

    const v12, 0x506004d

    const v13, 0x50d002c

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070004

    const v5, 0x506004e

    const v6, 0x50d002d

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070005

    const v11, 0x5060044

    const v12, 0x50d0049

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070006

    const v5, 0x5060042

    const v6, 0x50d004a

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070007

    const v11, 0x5060040

    const v12, 0x50d004b

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    goto/16 :goto_0

    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v5, 0x5070002

    const v6, 0x506004a

    const v7, 0x50d002a

    move-object v2, v0

    move-object v4, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v9, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v11, 0x5070003

    const v12, 0x506004d

    const v13, 0x50d002c

    move-object v8, v0

    move-object v10, p0

    invoke-direct/range {v8 .. v13}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070004

    const v5, 0x506004e

    const v6, 0x50d002d

    move-object v1, v0

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070005

    const v11, 0x506004a

    const v12, 0x50d002a

    move-object v7, v0

    move-object v9, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070006

    const v5, 0x506004d

    const v6, 0x50d002c

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070007

    const v11, 0x506004e

    const v12, 0x50d002d

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x5070008

    const v5, 0x5060044

    const v6, 0x50d0049

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v10, 0x5070009

    const v11, 0x5060042

    const v12, 0x50d004a

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    new-instance v0, Lcom/android/server/GameModeEffectImage;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v4, 0x507000a

    const v5, 0x5060040

    const v6, 0x50d004b

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/server/GameModeEffectImage;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    :cond_1
    :goto_0
    return-void
.end method

.method private initEffectImageList()V
    .locals 13

    new-instance v6, Lcom/android/server/EffectImageList;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeEffectList:Landroid/view/View;

    const/4 v2, 0x1

    const/4 v4, 0x0

    move-object v0, v6

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/server/EffectImageList;-><init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    new-instance v0, Lcom/android/server/EffectImageList;

    iget-object v8, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    iget-object v10, p0, Lcom/android/server/OemSceneGameModeDialog;->mEsportEffectList:Landroid/view/View;

    const/4 v9, 0x2

    const/4 v11, 0x0

    move-object v7, v0

    move-object v12, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/server/EffectImageList;-><init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    return-void
.end method

.method private initHandler()V
    .locals 2

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    sget-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemSceneGameModeDialog"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    sget-object v0, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    :cond_0
    new-instance v0, Landroid/os/Handler;

    sget-object v1, Lcom/android/server/OemSceneGameModeDialog;->sHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/server/OemSceneGameModeDialog$11;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneGameModeDialog$11;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    return-void
.end method

.method private initView()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$18;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$18;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    return-void
.end method

.method private promptHapticFeedbackOption()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_ui_haptic_feedback_prompted"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$9;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$9;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private refreshFnaticModeStatus()V
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "esport_mode_enabled"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    return-void
.end method

.method private setGameModeDlgSwitchTrackColor(Landroid/content/Context;Landroid/widget/Switch;)V
    .locals 9

    :try_start_0
    invoke-virtual {p2}, Landroid/widget/Switch;->getTrackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/StateListDrawable;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/LayerDrawable;

    const v3, 0x5070035

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    const v1, 0x5040001

    invoke-virtual {p1, v1}, Landroid/content/Context;->getColor(I)I

    move-result v1

    invoke-static {v1}, Landroid/graphics/Color;->valueOf(I)Landroid/graphics/Color;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Color;->red()F

    move-result v4

    invoke-virtual {v1}, Landroid/graphics/Color;->green()F

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Color;->blue()F

    move-result v6

    invoke-virtual {v1}, Landroid/graphics/Color;->alpha()F

    move-result v7

    const v8, 0x3e4ccccd    # 0.2f

    mul-float/2addr v7, v8

    invoke-static {v4, v5, v6, v7}, Landroid/graphics/Color;->valueOf(FFFF)Landroid/graphics/Color;

    move-result-object v4

    const/4 v5, 0x5

    invoke-virtual {v4}, Landroid/graphics/Color;->toArgb()I

    move-result v6

    invoke-virtual {v3, v5, v6}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while setGameModeDlgSwitchTrackColor"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setToFnaticOffLayout()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "setToFnaticOffLayout"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050004

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->resetHeight()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    :cond_1
    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffIconAnimation()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffBackgroundAnimation()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffColorAnimation()V

    return-void
.end method

.method private startCloseEffectListHeightAniamtion()V
    .locals 7

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startCloseEffectListHeightAniamtion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    iget v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v2}, Lcom/android/server/StaticScrollView;->getCurrentHeight()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x5050004

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    float-to-int v3, v3

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, v1

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, v3

    aput v6, v4, v5

    invoke-static {v4}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_1

    const-wide/16 v5, 0x0

    goto :goto_0

    :cond_1
    const-wide/16 v5, 0x12c

    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v5, Lcom/android/server/OemSceneGameModeDialog$13;

    invoke-direct {v5, p0, v2, v1}, Lcom/android/server/OemSceneGameModeDialog$13;-><init>(Lcom/android/server/OemSceneGameModeDialog;II)V

    invoke-virtual {v4, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startExpandEffectListHeightAniamtion()V
    .locals 6

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startExpandEffectListHeightAniamtion"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getHeight()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5050003

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v2}, Lcom/android/server/StaticScrollView;->getCurrentHeight()I

    move-result v2

    const/4 v3, 0x2

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v0

    aput v5, v3, v4

    const/4 v4, 0x1

    int-to-float v5, v1

    aput v5, v3, v4

    invoke-static {v3}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_2

    const-wide/16 v4, 0x0

    goto :goto_1

    :cond_2
    const-wide/16 v4, 0x12c

    :goto_1
    invoke-virtual {v3, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v4, Lcom/android/server/OemSceneGameModeDialog$12;

    invoke-direct {v4, p0, v2, v0}, Lcom/android/server/OemSceneGameModeDialog$12;-><init>(Lcom/android/server/OemSceneGameModeDialog;II)V

    invoke-virtual {v3, v4}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {v3}, Landroid/animation/ValueAnimator;->start()V

    return-void
.end method

.method private startFnaticOffAnimation()V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOffAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "startFnaticOffAnimation"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startCloseEffectListHeightAniamtion()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOff()V

    :cond_1
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffBackgroundAnimation()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffColorAnimation()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffIconAnimation()V

    return-void
.end method

.method private startFnaticOffBackgroundAnimation()V
    .locals 7

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOffBackgroundAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5060090

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x506008d

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x506008a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5060092

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v5, v4}, Lcom/android/server/StaticScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void
.end method

.method private startFnaticOffColorAnimation()V
    .locals 11

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOffColorAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x5040000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x5040001

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, -0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const v8, 0x10100a0

    const/4 v9, 0x0

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v9, [I

    aput-object v7, v5, v6

    new-array v7, v4, [I

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v7, v9

    const-string v2, "#8AFFFFFF"

    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v2

    aput v2, v7, v6

    move-object v2, v7

    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v5, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v1, v8, v6

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v9

    aput-object v3, v4, v6

    invoke-static {v8, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$16;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$16;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$17;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$17;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5060087

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x5060088

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method private startFnaticOffIconAnimation()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOffIconAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setGameModeIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveRight()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOffMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->showAnimation()V

    :goto_0
    return-void
.end method

.method private startFnaticOnAnimation()V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnAnimation"

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "startFnaticOnAnimation"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v0}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v0, v1}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/4 v1, 0x0

    const/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnColorAnimation()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->hideAniamtion()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnBackgroundAnimation()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startExpandEffectListHeightAniamtion()V

    :cond_4
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mMainHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticAnimationTask:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_5
    return-void
.end method

.method private startFnaticOnBackgroundAnimation()V
    .locals 7

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnBackgroundAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5060091

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const/16 v2, 0x12c

    const/4 v3, 0x0

    if-nez v1, :cond_1

    move v1, v3

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x506008f

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v4

    if-nez v4, :cond_2

    move v4, v3

    goto :goto_1

    :cond_2
    move v4, v2

    :goto_1
    invoke-virtual {v1, v4}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x5060089

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x5060093

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/TransitionDrawable;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v5, v4}, Lcom/android/server/StaticScrollView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v5

    if-nez v5, :cond_3

    move v2, v3

    nop

    :cond_3
    invoke-virtual {v4, v2}, Landroid/graphics/drawable/TransitionDrawable;->startTransition(I)V

    return-void
.end method

.method private startFnaticOnColorAnimation()V
    .locals 11

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "startFnaticOnColorAnimation"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5040001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x5040000

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v4, 0x2

    new-array v5, v4, [[I

    const/4 v6, 0x1

    new-array v7, v6, [I

    const v8, 0x10100a0

    const/4 v9, 0x0

    aput v8, v7, v9

    aput-object v7, v5, v9

    new-array v7, v9, [I

    aput-object v7, v5, v6

    new-array v7, v4, [I

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v7, v9

    const-string v3, "#8AFFFFFF"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    aput v3, v7, v6

    move-object v3, v7

    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    new-instance v8, Landroid/content/res/ColorStateList;

    invoke-direct {v8, v5, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v7, v8}, Landroid/widget/CheckBox;->setButtonTintList(Landroid/content/res/ColorStateList;)V

    new-instance v7, Landroid/animation/ArgbEvaluator;

    invoke-direct {v7}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v8, v4, [Ljava/lang/Object;

    aput-object v0, v8, v9

    aput-object v2, v8, v6

    invoke-static {v7, v8}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v7

    new-instance v8, Landroid/animation/ArgbEvaluator;

    invoke-direct {v8}, Landroid/animation/ArgbEvaluator;-><init>()V

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v1, v4, v9

    aput-object v2, v4, v6

    invoke-static {v8, v4}, Landroid/animation/ValueAnimator;->ofObject(Landroid/animation/TypeEvaluator;[Ljava/lang/Object;)Landroid/animation/ValueAnimator;

    move-result-object v4

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$14;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$14;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v7, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    new-instance v6, Lcom/android/server/OemSceneGameModeDialog$15;

    invoke-direct {v6, p0}, Lcom/android/server/OemSceneGameModeDialog$15;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v4, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v8, 0x0

    invoke-virtual {v7, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    invoke-virtual {v4, v8, v9}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    :cond_1
    invoke-virtual {v7}, Landroid/animation/ValueAnimator;->start()V

    invoke-virtual {v4}, Landroid/animation/ValueAnimator;->start()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x5060039

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v10, 0x506003a

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setThumbDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8, v10}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/Switch;->setTrackDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v6}, Landroid/widget/Switch;->toggle()V

    return-void
.end method

.method private startFnaticOnIconAnimation()V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startFnaticOnIconAnimation, mCurrentOrientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect1:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect2:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect3:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOn()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->startFnaticOn()V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->setFnaticIcon()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v0}, Lcom/android/server/EffectImageList;->show()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect4:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect5:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect6:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect7:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect8:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveLeft()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffect9:Lcom/android/server/GameModeEffectImage;

    invoke-virtual {v0}, Lcom/android/server/GameModeEffectImage;->startFnaticOnMoveRight()V

    :goto_0
    return-void
.end method

.method private triggerToChangeFnaticMode()V
    .locals 4

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "triggerToChangeFnaticMode"

    new-instance v2, Ljava/lang/Exception;

    const-string/jumbo v3, "triggerToChangeFnaticMode"

    invoke-direct {v2, v3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "esport_mode_enable_trigger"

    const-string v2, "1"

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, p4}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    invoke-direct {p0, p2, v1}, Lcom/android/server/OemSceneGameModeDialog;->setGameModeDlgSwitchTrackColor(Landroid/content/Context;Landroid/widget/Switch;)V

    invoke-virtual {v0, p5}, Landroid/widget/TextView;->setText(I)V

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, -0x2

    invoke-static {v2, p6, v3, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v4, v3

    :goto_0
    move v2, v4

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    new-instance v4, Lcom/android/server/OemSceneGameModeDialog$10;

    invoke-direct {v4, p0, p6}, Lcom/android/server/OemSceneGameModeDialog$10;-><init>(Lcom/android/server/OemSceneGameModeDialog;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eqz v4, :cond_2

    if-eqz p7, :cond_1

    goto :goto_1

    :cond_1
    const/16 v3, 0x8

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public doSomething(I)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnAnimation()V

    goto :goto_0

    :cond_1
    const-string v0, "OemSceneGameModeDialog"

    const-string v1, "Do nothing"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public needToAnimate()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "onClick"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->dismiss()V

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mAnimate:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->scrollToTop()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$2;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$2;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOffAnimation()V

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    goto/16 :goto_1

    :cond_3
    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mSettingsScrollView.checkSettingsShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v3}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    if-ne v1, v0, :cond_5

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$3;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$3;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1, v2}, Lcom/android/server/StaticScrollView;->switchViewWithListener(ZLandroid/animation/Animator$AnimatorListener;)V

    goto :goto_1

    :cond_4
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    goto :goto_1

    :cond_5
    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onClick, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mSettingsScrollView.checkSettingsShow:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v3}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ",mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    invoke-virtual {v1}, Lcom/android/server/StaticScrollView;->checkSettingsShow()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-boolean v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v1, v2}, Lcom/android/server/StaticScrollView;->switchView(Z)V

    :cond_6
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->triggerToChangeFnaticMode()V

    :goto_1
    iget-boolean v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v0, :cond_9

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_7

    const-string v0, "OemSceneGameModeDialog"

    const-string v1, "add big alert enable esport"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    if-nez v0, :cond_8

    new-instance v0, Lnet/oneplus/odm/insight/tracker/OSTracker;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const-string v2, "RBS8PPYT2W"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/odm/insight/tracker/OSTracker;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    :cond_8
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string/jumbo v1, "type"

    const-string v2, "0"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mOSTracker:Lnet/oneplus/odm/insight/tracker/OSTracker;

    const-string v2, "esports_start"

    invoke-virtual {v1, v2, v0}, Lnet/oneplus/odm/insight/tracker/OSTracker;->onEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_9
    return-void
.end method

.method public updateNotifyType()V
    .locals 4

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x507002a

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_block_notification"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50d0031

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50d0030

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleDetail:Landroid/widget/TextView;

    const v2, 0x50d0032

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_2
    const-string v1, "OemSceneGameModeDialog"

    const-string v2, "Error while checking notify style"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507002b

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$1;

    invoke-direct {v2, p0, v0}, Lcom/android/server/OemSceneGameModeDialog$1;-><init>(Lcom/android/server/OemSceneGameModeDialog;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public updateView()V
    .locals 8

    sget-boolean v0, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneGameModeDialog"

    const-string/jumbo v1, "updateView"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/server/OemSceneGameModePanelPopupWindow;-><init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;)V

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    const/high16 v1, 0x40a00000    # 5.0f

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanelPopupWindow;->setElevation(F)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initHandler()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initEffectEntryView()V

    const v0, 0x5070017

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDetailView:Landroid/widget/RelativeLayout;

    const v0, 0x5070015

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x5070001

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    const v0, 0x5070010

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mEsportEffectList:Landroid/view/View;

    const v0, 0x5070019

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeEffectList:Landroid/view/View;

    const v0, 0x5070034

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    const v0, 0x5070014

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticIcon:Landroid/widget/ImageView;

    const v0, 0x5070030

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    const v0, 0x5070031

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    const v0, 0x5070032

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIcon:Landroid/widget/ImageView;

    const v0, 0x5070033

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIconFake:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$4;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$4;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$5;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$5;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x507002f

    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/server/StaticScrollView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsScrollView:Lcom/android/server/StaticScrollView;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettings:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIcon:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsFake:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/OemSceneGameModeDialog;->mSettingsIconFake:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    iget-object v7, p0, Lcom/android/server/OemSceneGameModeDialog;->mPopupWin:Lcom/android/server/OemSceneGameModePanelPopupWindow;

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/StaticScrollView;->init(Landroid/view/View;Landroid/widget/ImageView;Landroid/view/View;Landroid/widget/ImageView;Landroid/widget/RelativeLayout;Landroid/widget/PopupWindow;)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->initEffectImageList()V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070024

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDismiss:Landroid/widget/TextView;

    new-instance v1, Lcom/android/server/OemSceneGameModeDialog$6;

    invoke-direct {v1, p0}, Lcom/android/server/OemSceneGameModeDialog$6;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v1, 0x5070025

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "game_mode_panel_detail"

    const/4 v2, -0x2

    const/4 v3, 0x1

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v3, :cond_1

    move v0, v3

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    sget v2, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    const/4 v4, -0x1

    if-eq v2, v4, :cond_3

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    sget v4, Lcom/android/server/OemSceneGameModeDialog;->sDontShowAgainValue:I

    if-ne v4, v3, :cond_2

    move v1, v3

    nop

    :cond_2
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_1

    :cond_3
    iget-object v2, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    if-nez v0, :cond_4

    move v1, v3

    nop

    :cond_4
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_1
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgain:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    sput-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->mInitialDontShowAgainChecked:Z

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070026

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mDontShowAgainText:Landroid/widget/TextView;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$7;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$7;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507001f

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x507001e

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070021

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070020

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070027

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const v2, 0x5070022

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Switch;

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateViewOptions()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    const/high16 v2, 0x5070000

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mMoreSettingsToggle:Landroid/view/View;

    new-instance v2, Lcom/android/server/OemSceneGameModeDialog$8;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneGameModeDialog$8;-><init>(Lcom/android/server/OemSceneGameModeDialog;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_5

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " mEffectImageListGameMode.hide, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListGameMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->hide()V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->hide()V

    :cond_6
    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateNotifyType()V

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeDialog;->updateViewState()V

    return-void
.end method

.method public updateViewOptions()V
    .locals 17

    move-object/from16 v8, p0

    const-string/jumbo v0, "ro.product.name"

    const-string v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v0, "OnePlus7"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-nez v0, :cond_1

    const-string v0, "SS88"

    invoke-virtual {v9, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v11

    goto :goto_1

    :cond_1
    :goto_0
    move v0, v10

    :goto_1
    move v12, v0

    new-array v0, v10, [I

    const/16 v1, 0x7a

    aput v1, v0, v11

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v13

    iget-object v0, v8, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->isBtA2dpOn()Z

    move-result v14

    iget-object v0, v8, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    iget-object v1, v8, Lcom/android/server/OemSceneGameModeDialog;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModePanel;->getFgPkg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneGameModePanel;->isSupportHapticFeedbackApp(Ljava/lang/String;)Z

    move-result v15

    const/4 v0, 0x0

    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_2

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isA2dpOn: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, "/ isHapticFeedbackSupportedGame: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-eqz v12, :cond_3

    if-eqz v15, :cond_3

    if-nez v14, :cond_3

    const/4 v0, 0x1

    :cond_3
    move/from16 v16, v0

    iget-object v1, v8, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, v8, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070028

    const v4, 0x5070027

    const v5, 0x50d003c

    const-string/jumbo v6, "op_game_mode_vibrate_feedback"

    move-object v0, v8

    move/from16 v7, v16

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    iget-object v1, v8, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, v8, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070023

    const v4, 0x5070022

    const v5, 0x50d0039

    const-string/jumbo v6, "op_game_mode_ad_enable"

    move v7, v13

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    iget-object v1, v8, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, v8, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x507001f

    const v4, 0x507001e

    const v5, 0x50d0028

    const-string v6, "game_mode_answer_no_incallui"

    const/4 v7, 0x1

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    iget-object v1, v8, Lcom/android/server/OemSceneGameModeDialog;->mViewRoot:Landroid/widget/RelativeLayout;

    iget-object v2, v8, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    const v3, 0x5070021

    const v4, 0x5070020

    const v5, 0x50d0029

    const-string v6, "game_mode_notifications_3rd_calls"

    invoke-direct/range {v0 .. v7}, Lcom/android/server/OemSceneGameModeDialog;->updateOptionItem(Landroid/view/View;Landroid/content/Context;IIILjava/lang/String;Z)V

    iget-object v0, v8, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_game_mode_vibrate_feedback"

    const/4 v2, -0x2

    invoke-static {v0, v1, v11, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v10, :cond_4

    goto :goto_2

    :cond_4
    move v10, v11

    :goto_2
    move v0, v10

    if-eqz v16, :cond_5

    if-nez v0, :cond_5

    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->sHapticFeedbackEverPrompted:Z

    if-nez v1, :cond_5

    invoke-direct/range {p0 .. p0}, Lcom/android/server/OemSceneGameModeDialog;->promptHapticFeedbackOption()V

    :cond_5
    return-void
.end method

.method public updateViewState()V
    .locals 5

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->disableClick()V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->refreshFnaticModeStatus()V

    sget-boolean v1, Lcom/android/server/OemSceneGameModeDialog;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneGameModeDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateViewState, mFnaticModeOn:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mIsOnClickHappen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCurrentOrientation:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeOn:Z

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/server/ESportGuider;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportGuider;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    :cond_1
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mESportGuider:Lcom/android/server/ESportGuider;

    invoke-virtual {v1}, Lcom/android/server/ESportGuider;->isAcquired()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->startFnaticOnAnimation()V

    goto :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    :goto_0
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    const v2, 0x50d004f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    const/high16 v2, 0x3f000000    # 0.5f

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v3}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v3}, Landroid/widget/Switch;->setChecked(Z)V

    iget-boolean v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    if-nez v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->setToFnaticOffLayout()V

    :cond_4
    iget v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mCurrentOrientation:I

    if-ne v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectImageListEsportMode:Lcom/android/server/EffectImageList;

    invoke-virtual {v1}, Lcom/android/server/EffectImageList;->gone()V

    :cond_5
    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mEffectList:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mFnaticModeTitle:Landroid/widget/TextView;

    const v4, 0x50d0051

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle2:Landroid/widget/TextView;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch2:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionTitle1:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitch1:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchHaptic:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mGameModeOptionSwitchAd:Landroid/widget/Switch;

    invoke-virtual {v1, v4}, Landroid/widget/Switch;->setAlpha(F)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->setEnabled(Z)V

    iget-object v1, p0, Lcom/android/server/OemSceneGameModeDialog;->mNotifyStyleToggle:Landroid/view/View;

    invoke-virtual {v1, v4}, Landroid/view/View;->setAlpha(F)V

    invoke-direct {p0}, Lcom/android/server/OemSceneGameModeDialog;->enableClick()V

    :goto_1
    iput-boolean v3, p0, Lcom/android/server/OemSceneGameModeDialog;->mIsOnClickHappen:Z

    return-void
.end method
