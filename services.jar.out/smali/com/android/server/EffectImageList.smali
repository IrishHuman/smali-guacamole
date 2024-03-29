.class public Lcom/android/server/EffectImageList;
.super Ljava/lang/Object;
.source "EffectImageList.java"


# static fields
.field public static final GROUP_ESPORTMODE:I = 0x2

.field public static final GROUP_GAMEMODE:I = 0x1

.field private static mPathInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mContext:Landroid/content/Context;

.field mFnaticOffAn:Landroid/view/animation/Animation;

.field mFnaticOnAn:Landroid/view/animation/Animation;

.field private mGroupNo:I

.field mList:Landroid/view/View;

.field mListener:Landroid/view/animation/Animation$AnimationListener;

.field private mOrigFnaticOffAnDuration:J

.field private mOrigFnaticOnAnDuration:J

.field mOwner:Lcom/android/server/OemSceneGameModeDialog;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILandroid/view/View;Landroid/view/animation/Animation$AnimationListener;Lcom/android/server/OemSceneGameModeDialog;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    iput-object p3, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    iput-object p4, p0, Lcom/android/server/EffectImageList;->mListener:Landroid/view/animation/Animation$AnimationListener;

    iput-object p5, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Lcom/android/server/EffectImageList;->init()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/server/EffectImageList;)I
    .locals 1

    iget v0, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    return v0
.end method

.method private init()V
    .locals 2

    iget v0, p0, Lcom/android/server/EffectImageList;->mGroupNo:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010009

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x501000a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010001

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mContext:Landroid/content/Context;

    const v1, 0x5010002

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    sget-object v1, Lcom/android/server/EffectImageList;->mPathInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    :goto_0
    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    new-instance v1, Lcom/android/server/EffectImageList$3;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$3;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-void
.end method

.method private updateDuration()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOnAnDuration:J

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    iget-wide v2, p0, Lcom/android/server/EffectImageList;->mOrigFnaticOffAnDuration:J

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public clearAnimation()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    return-void
.end method

.method public gone()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hide()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public hideAniamtion()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xe1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/server/EffectImageList$2;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$2;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public show()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public showAnimation()V
    .locals 3

    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_0

    const-wide/16 v1, 0x0

    goto :goto_0

    :cond_0
    const-wide/16 v1, 0xe1

    :goto_0
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    new-instance v1, Lcom/android/server/EffectImageList$1;

    invoke-direct {v1, p0}, Lcom/android/server/EffectImageList$1;-><init>(Lcom/android/server/EffectImageList;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOff()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/EffectImageList;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mFnaticOffAn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOn()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    invoke-direct {p0}, Lcom/android/server/EffectImageList;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/EffectImageList;->mList:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/EffectImageList;->mFnaticOnAn:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
