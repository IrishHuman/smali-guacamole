.class public Lcom/android/server/GameModeEffectImage;
.super Ljava/lang/Object;
.source "GameModeEffectImage.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDrawableId:I

.field private mEffect:Landroid/view/View;

.field mFnaticOffMoveLeft:Landroid/view/animation/Animation;

.field mFnaticOffMoveRight:Landroid/view/animation/Animation;

.field mFnaticOnMoveLeft:Landroid/view/animation/Animation;

.field mFnaticOnMoveRight:Landroid/view/animation/Animation;

.field private mIcon:Landroid/widget/ImageView;

.field private mLayout:Landroid/view/View;

.field private mOrigAnimMoveLeftDuration:J

.field private mOrigAnimMoveRevertLeftDuration:J

.field private mOrigAnimMoveRevertRightDuration:J

.field private mOrigAnimMoveRightDuration:J

.field private mOwner:Lcom/android/server/OemSceneGameModeDialog;

.field private mTextView:Landroid/widget/TextView;

.field private mTitle:I

.field private mV:Landroid/widget/ImageView;

.field private mVAnimation:Landroid/graphics/drawable/AnimationDrawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/server/OemSceneGameModeDialog;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/GameModeEffectImage;->mDrawableId:I

    invoke-virtual {p2, p3}, Lcom/android/server/OemSceneGameModeDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    iput p5, p0, Lcom/android/server/GameModeEffectImage;->mTitle:I

    iput-object p2, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->init()V

    return-void
.end method

.method private generateNewLineInText(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    if-nez p1, :cond_0

    return-object p1

    :cond_0
    const-string v1, "\\s+"

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    const/4 v2, 0x0

    aget-object v2, v1, v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    move v2, v3

    array-length v3, v1

    if-ge v2, v3, :cond_1

    aget-object v3, v1, v2

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v3, v2, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    :cond_2
    return-object p1
.end method

.method private init()V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->initView()V

    return-void
.end method

.method private initView()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mIcon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mIcon:Landroid/widget/ImageView;

    iget v1, p0, Lcom/android/server/GameModeEffectImage;->mDrawableId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mEffect:Landroid/view/View;

    const v1, 0x507003f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/server/GameModeEffectImage;->mTitle:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/GameModeEffectImage;->generateNewLineInText(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010007

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010005

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010006

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mContext:Landroid/content/Context;

    const v1, 0x5010008

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRightDuration:J

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveLeftDuration:J

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertRightDuration:J

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->getDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertLeftDuration:J

    return-void
.end method

.method private updateDuration()V
    .locals 6

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    const-wide/16 v2, 0x0

    if-nez v1, :cond_0

    move-wide v4, v2

    goto :goto_0

    :cond_0
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRightDuration:J

    :goto_0
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_1

    move-wide v4, v2

    goto :goto_1

    :cond_1
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveLeftDuration:J

    :goto_1
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_2

    move-wide v4, v2

    goto :goto_2

    :cond_2
    iget-wide v4, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertRightDuration:J

    :goto_2
    invoke-virtual {v0, v4, v5}, Landroid/view/animation/Animation;->setDuration(J)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mOwner:Lcom/android/server/OemSceneGameModeDialog;

    invoke-virtual {v1}, Lcom/android/server/OemSceneGameModeDialog;->needToAnimate()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_3

    :cond_3
    iget-wide v2, p0, Lcom/android/server/GameModeEffectImage;->mOrigAnimMoveRevertLeftDuration:J

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    return-void
.end method


# virtual methods
.method public setFnaticIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public setGameModeIcon()V
    .locals 2

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506005c

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    return-void
.end method

.method public startFnaticOffMoveLeft()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOffMoveRight()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mV:Landroid/widget/ImageView;

    const v1, 0x506003b

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOffMoveRightWithListner(Landroid/view/animation/Animation$AnimationListener;)V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, p1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOffMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOnMoveLeft()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveLeft:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method public startFnaticOnMoveRight()V
    .locals 2

    invoke-direct {p0}, Lcom/android/server/GameModeEffectImage;->updateDuration()V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    iget-object v0, p0, Lcom/android/server/GameModeEffectImage;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/server/GameModeEffectImage;->mFnaticOnMoveRight:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method
