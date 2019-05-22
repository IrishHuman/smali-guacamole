.class public Lcom/android/server/OemSceneGameModeView;
.super Landroid/widget/RelativeLayout;
.source "OemSceneGameModeView.java"


# static fields
.field public static final DONTSHOWAGAIN_DEFAULT:I = -0x1

.field public static final DONTSHOWAGAIN_OFF:I = 0x0

.field public static final DONTSHOWAGAIN_ON:I = 0x1

.field public static final ESPORTMODE_ANIMATION:I = 0x1

.field public static final GAMEMODE_ANIMATION:I

.field public static sDontShowAgainValue:I


# instance fields
.field protected mAnimate:Z

.field protected mContext:Landroid/content/Context;

.field protected mIsViewAdded:Z

.field protected mPanel:Lcom/android/server/OemSceneGameModePanel;

.field protected mViewRoot:Landroid/widget/RelativeLayout;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, -0x1

    sput v0, Lcom/android/server/OemSceneGameModeView;->sDontShowAgainValue:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;ILcom/android/server/OemSceneGameModePanel;Z)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mIsViewAdded:Z

    iput-boolean v0, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    iput-object p1, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    iput-object p3, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    iput-boolean p4, p0, Lcom/android/server/OemSceneGameModeView;->mAnimate:Z

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mViewRoot:Landroid/widget/RelativeLayout;

    invoke-virtual {p0}, Lcom/android/server/OemSceneGameModeView;->updateView()V

    return-void
.end method


# virtual methods
.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0xbb

    if-eq v0, v1, :cond_1

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/16 v1, 0x52

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0}, Lcom/android/server/OemSceneGameModePanel;->hide()V

    :cond_2
    return v1
.end method

.method public doSomething(I)V
    .locals 0

    return-void
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v0, p0, Lcom/android/server/OemSceneGameModeView;->mPanel:Lcom/android/server/OemSceneGameModePanel;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneGameModePanel;->configurationChanged(Landroid/content/res/Configuration;)V

    const-string v0, "OemSceneGameModeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemSceneGameModeView onConfigurationChanged, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p1, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "OemSceneGameModeView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OemSceneGameModeView mContext, orientation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/OemSceneGameModeView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    invoke-virtual {p0, p1, p2}, Lcom/android/server/OemSceneGameModeView;->setMeasuredDimension(II)V

    :try_start_0
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OemSceneGameModeView"

    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateView()V
    .locals 0

    return-void
.end method

.method public updateViewOptions()V
    .locals 0

    return-void
.end method

.method public updateViewState()V
    .locals 0

    return-void
.end method
