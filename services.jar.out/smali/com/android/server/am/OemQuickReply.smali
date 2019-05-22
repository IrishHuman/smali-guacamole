.class public Lcom/android/server/am/OemQuickReply;
.super Ljava/lang/Object;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OemQuickReply$SettingsObserver;,
        Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    }
.end annotation


# static fields
.field public static IME_BUTTON_SIZE:I = 0x0

.field public static IME_BUTTON_SIZE_BASE:I = 0x0

.field public static IME_FLOATING_WIN_TOLERANCE:I = 0x0

.field public static IME_FLOATING_WIN_TOLERANCE_BASE:I = 0x0

.field public static IME_LIMIT_WIDTH:I = 0x0

.field public static IME_MARGIN_BOTTOM:I = 0x0

.field public static IME_MARGIN_BOTTOM_BASE:I = 0x0

.field public static IME_MARGIN_LEFT:I = 0x0

.field public static IME_MARGIN_LEFT_BASE:I = 0x0

.field public static IME_MARGIN_RIGHT:I = 0x0

.field public static IME_MARGIN_RIGHT_BASE:I = 0x0

.field public static final IME_POSITION_CENTER:I = 0x1

.field public static final IME_POSITION_LEFT:I = 0x2

.field public static final IME_POSITION_RIGHT:I = 0x0

.field public static IME_SUB_WIN_TOLERANCE:I = 0x0

.field public static IME_SUB_WIN_TOLERANCE_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_MID:I = 0x0

.field public static IM_BUTTON_MARGIN_MID_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_RIGHT:I = 0x0

.field public static IM_BUTTON_MARGIN_RIGHT_BASE:I = 0x0

.field public static IM_BUTTON_MARGIN_TOP:I = 0x0

.field public static IM_BUTTON_MARGIN_TOP_BASE:I = 0x0

.field public static IM_BUTTON_SIZE:I = 0x0

.field public static IM_BUTTON_SIZE_BASE:I = 0x0

.field public static final IM_DIM_AMOUNT:F = 0.4f

.field public static IM_LIMIT_WIDTH:I = 0x0

.field public static IM_LIMIT_WIDTH_BASE:I = 0x0

.field public static final IS_SUPPORT_QUICK_REPLY:Z

.field public static OEM_IME_PACKAGE_LIST:Ljava/util/List; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_IM_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "OemQuickReply"

.field public static mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

.field public static sIMEposition:I

.field private static sImEnabledList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sImeAdjustEnabled:Z

.field public static sImeKilledList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/android/server/am/OemQuickReply;

.field public static sIsQuickReplyRunning:Z

.field public static sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;


# instance fields
.field private mAMS:Lcom/android/server/am/ActivityManagerService;

.field private mContext:Landroid/content/Context;

.field private mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mImeControlsBtnX:I

.field private mImeControlsBtnXMax:I

.field private mImeControlsBtnXMin:I

.field public mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

.field private mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

.field mQuickReplyFullBtnView:Landroid/view/View;

.field mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

.field mQuickReplyImeBtnView:Landroid/view/View;

.field mQuickReplyImeLayout:Landroid/widget/FrameLayout;

.field private mQuickReplyRunningApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mQuickReplySettingsBtnView:Landroid/view/View;

.field mQuickReplySwitchBtnView:Landroid/view/View;

.field private mResumedApp:Lcom/android/server/am/ActivityRecord;

.field private mScreenHeight:I

.field private mScreenWidth:I

.field private mSettingsObserver:Lcom/android/server/am/OemQuickReply$SettingsObserver;

.field private final mUnsupportedImeList:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWMS:Lcom/android/server/wm/WindowManagerService;

.field private mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mWindowManager:Landroid/view/WindowManager;


# direct methods
.method static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const/16 v3, 0x24

    aput v3, v1, v2

    invoke-static {v1}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    sput-boolean v2, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    sput-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    const-string/jumbo v0, "persist.quickreply.imeside"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/16 v0, 0x30a

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH_BASE:I

    const/16 v0, 0x60

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE_BASE:I

    const/16 v0, 0x54

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE_BASE:I

    const/16 v0, 0x2a

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP_BASE:I

    const/16 v0, 0x3c

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT_BASE:I

    const/16 v0, 0x30

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID_BASE:I

    const/16 v0, 0x438

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    const/16 v0, 0x28

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT_BASE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT_BASE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM_BASE:I

    const/16 v0, 0x12c

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE_BASE:I

    const/16 v0, 0x64

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE:I

    sput v0, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE_BASE:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sImeKilledList:Ljava/util/ArrayList;

    const-string v0, ""

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    const-string v0, "com.google.android.packageinstaller"

    const-string v1, "com.android.packageinstaller"

    const-string v2, "com.oneplus.applocker"

    const-string v3, "com.android.systemui"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.google.android.packageinstaller"

    const-string v2, "com.android.packageinstaller"

    const-string v3, "com.oneplus.applocker"

    const-string v4, "com.android.systemui"

    const-string v5, "com.whatsapp"

    const-string v6, "com.instagram.android"

    const-string v7, "com.tencent.mm"

    const-string v8, "com.tencent.mobileqq"

    const-string v9, "com.facebook.mlite"

    const-string v10, "com.tencent.tim"

    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.baidu.input_yijia"

    const-string v2, "com.android.inputmethod.latin"

    const-string v3, "com.google.android.inputmethod.pinyin"

    const-string v4, "com.google.android.apps.handwriting.ime"

    const-string v5, "com.google.android.inputmethod.latin"

    const-string v6, "com.touchtype.swiftkey"

    const-string v7, "com.jb.emoji.gokeyboard"

    const-string v8, "com.jb.gokeyboard"

    const-string v9, "com.cootek.smartinputv5"

    const-string v10, "abc.apple.emoji.theme.gif.keyboard"

    const-string v11, "com.emoji.keyboard.touchpal"

    const-string v12, "com.grammarly.android.keyboard"

    const-string v13, "com.syntellia.fleksy.keyboard"

    const-string v14, "com.gamelounge.chroomakeyboard"

    filled-new-array/range {v1 .. v14}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/am/OemQuickReply;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->addIMButton()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeAllButton()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/server/am/OemQuickReply;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->addIMEcontrolsButton(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->setIMEButtonAlpha()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMstack()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/server/am/OemQuickReply;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->updateImeVis(I)V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateAllParam()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateSettings()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/wm/WindowManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/ActivityRecord;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/ActivityRecord;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/server/am/OemQuickReply;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    return v0
.end method

.method static synthetic access$602(Lcom/android/server/am/OemQuickReply;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/server/am/OemQuickReply;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/am/OemQuickReply;)I
    .locals 1

    iget v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/am/OemQuickReply;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    return-void
.end method

.method public static acquireBoost()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    if-nez v0, :cond_1

    new-instance v0, Lcom/oneplus/sdk/utils/OpBoostFramework;

    invoke-direct {v0}, Lcom/oneplus/sdk/utils/OpBoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    :cond_1
    sget-object v0, Lcom/android/server/am/OemQuickReply;->sPerfLock:Lcom/oneplus/sdk/utils/OpBoostFramework;

    const/4 v1, 0x0

    const/16 v2, 0x5dc

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/sdk/utils/OpBoostFramework;->acquireBoostFor(II)I

    return-void
.end method

.method private addIMButton()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x5090017

    invoke-virtual {v0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    new-instance v4, Lcom/android/server/am/OemQuickReply$3;

    invoke-direct {v4, p0}, Lcom/android/server/am/OemQuickReply$3;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/OemQuickReply$4;

    invoke-direct {v4, p0}, Lcom/android/server/am/OemQuickReply$4;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v3, v4, v5}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090018

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    new-instance v3, Lcom/android/server/am/OemQuickReply$5;

    invoke-direct {v3, p0}, Lcom/android/server/am/OemQuickReply$5;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    iget-object v4, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v3, v4}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x5090019

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    new-instance v2, Lcom/android/server/am/OemQuickReply$6;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$6;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_2
    return-void
.end method

.method private addIMEcontrolsButton(I)V
    .locals 5

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput p1, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-nez v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const v1, 0x509001a

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    goto :goto_0

    :cond_0
    const v1, 0x509001b

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    const v2, 0x5070060

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeLayout:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    const v2, 0x507005c

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnCenter:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/android/server/am/OemQuickReply$7;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$7;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/OemQuickReply$8;

    invoke-direct {v2, p0}, Lcom/android/server/am/OemQuickReply$8;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const-wide/16 v3, 0x1388

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    :goto_1
    return-void
.end method

.method private getAppBounds()Landroid/graphics/Rect;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/am/OemQuickReply;
    .locals 2

    const-class v0, Lcom/android/server/am/OemQuickReply;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    if-nez v1, :cond_0

    new-instance v1, Lcom/android/server/am/OemQuickReply;

    invoke-direct {v1, p0}, Lcom/android/server/am/OemQuickReply;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    :cond_0
    sget-object v1, Lcom/android/server/am/OemQuickReply;->sInstance:Lcom/android/server/am/OemQuickReply;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public static getQuickReplyList(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    :cond_0
    packed-switch p0, :pswitch_data_0

    return-object v1

    :pswitch_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_1

    sget-object v1, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    nop

    :cond_1
    return-object v1

    :pswitch_1
    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getWindowManager()Landroid/view/WindowManager;
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWindowManager:Landroid/view/WindowManager;

    return-object v0
.end method

.method private init()V
    .locals 3

    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "OemQuickReplyThread"

    const/4 v2, -0x8

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v1, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;-><init>(Lcom/android/server/am/OemQuickReply;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    new-instance v1, Lcom/android/server/am/OemQuickReply$SettingsObserver;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/OemQuickReply$SettingsObserver;-><init>(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;)V

    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mSettingsObserver:Lcom/android/server/am/OemQuickReply$SettingsObserver;

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateAllParam()V

    return-void
.end method

.method public static isForceShowStatusBar(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const-string v0, "com.tencent.mobileqq"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "com.tencent.tim"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    return v1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method public static isQuickReplyIM(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_SYSTEM_SUPPORT_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IM_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1
.end method

.method public static isQuickReplyIME(Ljava/lang/String;)Z
    .locals 2

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/server/am/OemQuickReply;->OEM_IME_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isQuickReplyWin(Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    if-eqz p0, :cond_2

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7dc

    if-eq v0, v2, :cond_1

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x7d3

    if-ne v0, v2, :cond_2

    :cond_1
    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningUid()I

    move-result v0

    const/16 v2, 0x3e8

    if-ne v0, v2, :cond_2

    invoke-interface {p0}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/WindowManager$LayoutParams;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QuickReply"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    return v1
.end method

.method private loadImeRecord()V
    .locals 11

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_ime_unsupported"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_2

    aget-object v5, v1, v4

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    iget-object v7, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    aget-object v8, v6, v3

    const/4 v9, 0x1

    aget-object v10, v6, v9

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v8, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_1

    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "loadImeRecord pkg="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v10, v6, v3

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, " count="

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v9, v6, v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method private removeAllButton()V
    .locals 3

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->removeIMEcontrolsButton()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_2
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    :cond_3
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-interface {v0, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_4
    iput-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    :cond_5
    return-void
.end method

.method private removeIMEcontrolsButton()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->removeMessages(I)V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    :cond_1
    return-void
.end method

.method private setIMEButtonAlpha()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3e99999a    # 0.3f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method private tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_2

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ActivityRecord;

    if-eqz v1, :cond_0

    :try_start_0
    invoke-virtual {v1}, Lcom/android/server/am/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_0

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService;->exitFreeformMode(Landroid/os/IBinder;)V

    const-string v2, "OemQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exitFreeformMode for: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    const-string v3, "OemQuickReply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitFreeformMode fail to exit freeform for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    :cond_0
    :goto_1
    nop

    :goto_2
    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    :cond_2
    return-void
.end method

.method private updateAllParam()V
    .locals 17

    move-object/from16 v0, p0

    new-instance v1, Landroid/util/DisplayMetrics;

    invoke-direct {v1}, Landroid/util/DisplayMetrics;-><init>()V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v2

    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    iget v3, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v4, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    if-ne v2, v4, :cond_0

    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    if-ne v3, v4, :cond_0

    return-void

    :cond_0
    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    iget v4, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    sput v4, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    iget v4, v0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    int-to-float v4, v4

    const/high16 v5, 0x44870000    # 1080.0f

    div-float/2addr v4, v5

    sget v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    sget v5, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE_BASE:I

    int-to-float v5, v5

    mul-float/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sput v5, Lcom/android/server/am/OemQuickReply;->IME_FLOATING_WIN_TOLERANCE:I

    iget v5, v0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    const/16 v6, 0x870

    const/4 v7, 0x0

    if-gt v5, v6, :cond_1

    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sput v7, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    const/16 v5, 0x30

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    :cond_1
    const-string/jumbo v5, "persist.override.quickreply.imwidth"

    invoke-static {v5, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v5

    const-string/jumbo v6, "persist.override.quickreply.imewidth"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    if-lez v6, :cond_2

    sput v6, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Override IME width to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-lez v5, :cond_3

    sput v5, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Override IM width to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    const-string/jumbo v7, "persist.sys.quickreply.imewidth"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, ""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    sget-boolean v7, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v7, :cond_4

    const-string v7, "OemQuickReply"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Update IM_LIMIT_WIDTH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " IME_LIMIT_WIDTH="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v9, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x2

    const/4 v11, -0x2

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/16 v14, 0x7d3

    const v15, 0x1000508

    const/16 v16, -0x2

    move-object v9, v7

    invoke-direct/range {v9 .. v16}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIIIII)V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x33

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->gravity:I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    sget v8, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_TOP:I

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const v8, 0x50e0013

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyGoFull"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    or-int/lit8 v8, v8, 0x12

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyGoSettings"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplySwitch"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    new-instance v7, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v7}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v8, v0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const/16 v8, 0x7dc

    iput v8, v7, Landroid/view/WindowManager$LayoutParams;->type:I

    iget-object v7, v0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    const-string v8, "QuickReplyIMEcontrols"

    invoke-virtual {v7, v8}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    return-void
.end method

.method private updateIMButtonParam()V
    .locals 5

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_0
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    mul-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    add-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    mul-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_RIGHT:I

    add-int/2addr v4, v2

    sget v2, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v4, v2

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IM_BUTTON_MARGIN_MID:I

    sub-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :goto_1
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_3
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySettingsBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSettingsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_4
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplySwitchBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImSwitchWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_5
    return-void
.end method

.method private updateIMEcontrolParam()V
    .locals 5

    sget-object v0, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v2, 0x0

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v3, :cond_1

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_1
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    if-ge v1, v3, :cond_2

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v3, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v3, v3, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_2
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v3, v3, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    sub-int/2addr v3, v4

    sget v4, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v3, v4

    iput v3, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_RIGHT:I

    add-int/2addr v1, v3

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    iput v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    if-le v1, v2, :cond_3

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    :cond_3
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    if-le v1, v2, :cond_8

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    goto/16 :goto_0

    :cond_4
    sget v1, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v3, 0x2

    if-ne v1, v3, :cond_8

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v2, :cond_5

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_5
    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->left:I

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    if-le v1, v2, :cond_6

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->left:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_6
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    add-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_LEFT:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMin:I

    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mScreenHeight:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_7

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDisplayCutoutSafe:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    :cond_7
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    sget-object v2, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v2, v2, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v2, v3

    if-le v1, v2, :cond_8

    sget-object v1, Lcom/android/server/am/OemQuickReply;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v1, v1, Lcom/android/server/wm/DisplayFrames;->mDock:Landroid/graphics/Rect;

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_BUTTON_SIZE:I

    sub-int/2addr v1, v2

    iput v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnXMax:I

    :cond_8
    :goto_0
    iget v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->x:I

    :cond_9
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v2, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sub-int/2addr v2, v3

    sub-int/2addr v2, v0

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->y:I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_a

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    iget-object v3, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v1, v2, v3}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_a
    return-void
.end method

.method private updateIMstack()V
    .locals 5

    :try_start_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    iget-object v0, v0, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityRecord;->getTask()Lcom/android/server/am/TaskRecord;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget v2, v0, Lcom/android/server/am/TaskRecord;->taskId:I

    invoke-virtual {p0}, Lcom/android/server/am/OemQuickReply;->getImBound()Landroid/graphics/Rect;

    move-result-object v3

    const/4 v4, 0x3

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/am/ActivityManagerService;->resizeTask(ILandroid/graphics/Rect;I)V

    :cond_0
    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMEcontrolParam()V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateIMButtonParam()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemQuickReply"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateIMstack: sIMEposition="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " fail. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private updateImeVis(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, p1, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateImeBtnVis to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private updateSettings()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "op_quickreply_ime_adjust"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    move v1, v2

    sget-boolean v2, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eq v2, v1, :cond_1

    sput-boolean v1, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->killIMEs()V

    const-string v2, "OemQuickReply"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSettings(), sImeAdjustEnabled="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v4, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string/jumbo v2, "op_quickreply_im_list"

    invoke-static {v0, v2}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    sget-boolean v3, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v3, :cond_2

    const-string v3, "OemQuickReply"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "updateSettings(), imList="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    sput-object v3, Lcom/android/server/am/OemQuickReply;->sImEnabledList:Ljava/util/List;

    :cond_3
    return-void
.end method


# virtual methods
.method public focusChangedLw(Lcom/android/server/policy/WindowManagerPolicy$WindowState;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getImePackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/am/OemQuickReply;->shouldLimitIMELw(Ljava/lang/String;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x7

    const/4 v2, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    :cond_1
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_2

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIM(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    return-void
.end method

.method public getImBound()Landroid/graphics/Rect;
    .locals 6

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_2

    sget v3, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    const/4 v4, 0x2

    const/4 v5, 0x0

    if-ne v3, v4, :cond_1

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    sub-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    goto :goto_0

    :cond_1
    iget v3, v2, Landroid/graphics/Rect;->left:I

    iput v3, v0, Landroid/graphics/Rect;->left:I

    iput v5, v0, Landroid/graphics/Rect;->top:I

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sget v4, Lcom/android/server/am/OemQuickReply;->IM_LIMIT_WIDTH:I

    add-int/2addr v3, v4

    iput v3, v0, Landroid/graphics/Rect;->right:I

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iput v3, v0, Landroid/graphics/Rect;->bottom:I

    :cond_2
    :goto_0
    return-object v0
.end method

.method public notifyImeShow(Ljava/lang/String;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sImeAdjustEnabled:Z

    if-eqz v0, :cond_2

    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mUnsupportedImeList:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    new-instance v2, Lcom/android/server/am/OemQuickReply$1;

    invoke-direct {v2, p0, p1, v0}, Lcom/android/server/am/OemQuickReply$1;-><init>(Lcom/android/server/am/OemQuickReply;Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->post(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public notifyImeVisibilityChanged(ZI)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getImePackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12c

    if-ge p2, v0, :cond_1

    iget p2, p0, Lcom/android/server/am/OemQuickReply;->mScreenWidth:I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x3

    sget v2, Lcom/android/server/am/OemQuickReply;->IME_MARGIN_BOTTOM:I

    sub-int v2, p2, v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    :goto_0
    return-void
.end method

.method public onConfigChanged()V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method

.method public setAMandWM(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/wm/WindowManagerService;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iput-object p2, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    return-void
.end method

.method public setKeyguardDone(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    :try_start_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mAMS:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemQuickReply"

    const-string/jumbo v2, "setKeyguardDone fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    :cond_1
    :goto_0
    nop

    :goto_1
    return-void
.end method

.method public setQuickReplyRunning(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eq v0, p1, :cond_3

    sput-boolean p1, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    new-instance v1, Lcom/android/server/am/OemQuickReply$2;

    invoke-direct {v1, p0}, Lcom/android/server/am/OemQuickReply$2;-><init>(Lcom/android/server/am/OemQuickReply;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->post(Ljava/lang/Runnable;)Z

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessage(I)Z

    :goto_0
    const-string/jumbo v0, "sys.quickreplay.running"

    if-eqz p1, :cond_2

    const-string v1, "1"

    goto :goto_1

    :cond_2
    const-string v1, "0"

    :goto_1
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setQuickReplyRunning to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v1, 0x6

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    :cond_4
    return-void
.end method

.method public setResumedApp(Lcom/android/server/am/ActivityRecord;)V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    :try_start_0
    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    if-eqz v0, :cond_1

    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setResumedApp app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mWMS:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, p1, Lcom/android/server/am/ActivityRecord;->appToken:Landroid/view/IApplicationToken$Stub;

    iget-object v2, p1, Lcom/android/server/am/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/WindowManagerService;->setQuickReplyResumed(Landroid/os/IBinder;Ljava/lang/String;)V

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mQuickReplyRunningApps:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    invoke-direct {p0, p1}, Lcom/android/server/am/OemQuickReply;->tryExitQuickReply(Lcom/android/server/am/ActivityRecord;)V

    :cond_3
    :goto_0
    iput-object p1, p0, Lcom/android/server/am/OemQuickReply;->mResumedApp:Lcom/android/server/am/ActivityRecord;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    const-string v1, "OemQuickReply"

    const-string/jumbo v2, "setResumedApp fail: "

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method public shouldLimitIMELw(Ljava/lang/String;Lcom/android/server/policy/WindowManagerPolicy$WindowState;)Z
    .locals 7

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->sIsQuickReplyRunning:Z

    if-eqz v0, :cond_8

    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->isQuickReplyIME(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    if-eqz p2, :cond_2

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getOwningPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getAppToken()Landroid/view/IApplicationToken;

    move-result-object v2

    if-nez v2, :cond_1

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->getVisibleFrameLw()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_SUB_WIN_TOLERANCE:I

    add-int/2addr v2, v3

    sget v3, Lcom/android/server/am/OemQuickReply;->IME_LIMIT_WIDTH:I

    if-le v2, v3, :cond_1

    goto :goto_0

    :cond_1
    move v2, v1

    goto :goto_1

    :cond_2
    :goto_0
    move v2, v0

    :goto_1
    if-eqz p2, :cond_3

    invoke-interface {p2}, Lcom/android/server/policy/WindowManagerPolicy$WindowState;->isFloatingIMEwinLw()Z

    move-result v3

    if-eqz v3, :cond_3

    move v3, v0

    goto :goto_2

    :cond_3
    move v3, v1

    :goto_2
    const/4 v4, 0x7

    if-nez v2, :cond_5

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    if-nez v3, :cond_6

    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    goto :goto_4

    :cond_5
    :goto_3
    iget-object v5, p0, Lcom/android/server/am/OemQuickReply;->mOemQuickReplyHandler:Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    :cond_6
    :goto_4
    if-nez v2, :cond_7

    goto :goto_5

    :cond_7
    move v0, v1

    :goto_5
    return v0

    :cond_8
    return v1
.end method

.method public systemReady()V
    .locals 3

    sget-boolean v0, Lcom/android/server/am/OemQuickReply;->IS_SUPPORT_QUICK_REPLY:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string/jumbo v0, "sys.quickreplay.running"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->init()V

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->updateSettings()V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_imbutton_x"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/am/OemQuickReply;->mImeControlsBtnX:I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "quickreply_ime_position"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/OemQuickReply;->sIMEposition:I

    invoke-direct {p0}, Lcom/android/server/am/OemQuickReply;->loadImeRecord()V

    return-void
.end method
