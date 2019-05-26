.class public Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;
.super Landroid/support/v7/preference/Preference;
.source "OPCustomFingeprintAnimVideoPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;,
        Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;,
        Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;,
        Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;
    }
.end annotation


# static fields
.field public static final ANIM_STYLE_0:I = 0x3

.field public static final ANIM_STYLE_1:I = 0x0

.field public static final ANIM_STYLE_2:I = 0x1

.field public static final ANIM_STYLE_3:I = 0x2

.field public static final ANIM_STYLE_4:I = 0x9

.field private static final TAG:Ljava/lang/String; = "VideoPreference"

.field private static final TYPE_GESTURE_NAVIGATION_BAR:I = 0x3


# instance fields
.field private mAdapter:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

.field mAnimationAvailable:Z
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mAnims:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mAspectRadio:F

.field private final mContext:Landroid/content/Context;

.field private mCurrentVH:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

.field mMediaPlayer:Landroid/media/MediaPlayer;
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation
.end field

.field private mPreviewResource:I

.field private mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

.field private mSelectedAnimIndex:I

.field private mVideoPath:Landroid/net/Uri;

.field private mVideoPaused:Z

.field private mVideoReady:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    sget-object v1, Lcom/android/settings/R$styleable;->VideoPreference:[I

    const/4 v2, 0x0

    invoke-virtual {v0, p2, v1, v2, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    :try_start_0
    invoke-virtual {v0, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "op_custom_unlock_animation_style"

    const/4 v5, -0x2

    invoke-static {v3, v4, v2, v5}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v4

    move v1, v4

    new-instance v4, Landroid/net/Uri$Builder;

    invoke-direct {v4}, Landroid/net/Uri$Builder;-><init>()V

    const-string v5, "android.resource"

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-static {v4, v5}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;Landroid/net/Uri;)Landroid/media/MediaPlayer;

    move-result-object v4

    iput-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v4}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    invoke-virtual {p0, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setVisible(Z)V

    const v5, 0x7f0d0144

    sget-object v6, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    const v5, 0x7f0d0145

    :cond_0
    invoke-virtual {p0, v5}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setLayoutResource(I)V

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    new-instance v6, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$xNjQuqlzU7hQu-C5vLxvtUk8_xY;

    invoke-direct {v6, p0}, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$xNjQuqlzU7hQu-C5vLxvtUk8_xY;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v2, v6}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    sget-object v6, Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-76bRwQYPctZEhfpNbtqN2ejOb4;->INSTANCE:Lcom/android/settings/widget/-$$Lambda$OPCustomFingeprintAnimVideoPreference$-76bRwQYPctZEhfpNbtqN2ejOb4;

    invoke-virtual {v2, v6}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    iput-boolean v4, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    invoke-virtual {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->updateAspectRatio()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setVisible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_1

    :catch_0
    move-exception v1

    :try_start_1
    const-string v2, "VideoPreference"

    const-string v3, "Animation resource not found. Will not show animation."

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    return-void

    :goto_1
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method static synthetic access$000(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return v0
.end method

.method static synthetic access$002(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setSelectedAnim(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;)Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mCurrentVH:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$VH;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->changeAnimStyle(I)V

    return-void
.end method

.method static synthetic access$702(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)I
    .locals 0

    iput p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    return p1
.end method

.method private changeAnimStyle(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->playAnimByStyle(I)V

    return-void
.end method

.method private getCustomAnimationId(I)I
    .locals 2

    const v0, 0x7f110014

    const/16 v1, 0x9

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    const v0, 0x7f110014

    goto :goto_0

    :pswitch_0
    const v0, 0x7f110013

    goto :goto_0

    :pswitch_1
    const v0, 0x7f110016

    goto :goto_0

    :pswitch_2
    const v0, 0x7f110015

    goto :goto_0

    :pswitch_3
    const v0, 0x7f110014

    goto :goto_0

    :cond_0
    const v0, 0x7f110017

    nop

    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSelectedAnimIndex()I
    .locals 3

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-boolean v2, v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v0
.end method

.method private initStyleAnimViews()V
    .locals 13

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    const/4 v0, 0x0

    sget-object v1, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->MCL:Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    invoke-static {}, Lcom/oneplus/custom/utils/OpCustomizeSettings;->getCustomType()Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/custom/utils/OpCustomizeSettings$CUSTOM_TYPE;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120e84

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f080380

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->isSM8150Products()Z

    move-result v2

    const/16 v3, 0x9

    const/4 v4, 0x2

    const v5, 0x7f080383

    const v6, 0x7f120d5d

    const v7, 0x7f080382

    const v8, 0x7f080381

    const v9, 0x7f120d5b

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-eqz v2, :cond_1

    new-instance v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v12, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, p0, v9, v8, v10}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    new-instance v8, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v12, 0x7f120d5e

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7, v11}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v7, v8

    new-instance v8, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v4, v8

    new-instance v5, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v6, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v8, 0x7f120d5f

    invoke-virtual {v6, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const v8, 0x7f080384

    invoke-direct {v5, p0, v6, v8, v3}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v1, v5

    goto :goto_0

    :cond_1
    new-instance v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v12, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v12, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v2, p0, v9, v8, v10}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    new-instance v8, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    const v12, 0x7f120d5c

    invoke-virtual {v9, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p0, v9, v7, v11}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v7, v8

    new-instance v8, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v9, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v8, p0, v6, v5, v4}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Ljava/lang/String;II)V

    move-object v4, v8

    :goto_0
    iget-object v5, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "op_custom_unlock_animation_style"

    const/4 v8, -0x2

    invoke-static {v5, v6, v10, v8}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-eq v5, v3, :cond_2

    packed-switch v5, :pswitch_data_0

    iput-boolean v11, v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :pswitch_0
    iput-boolean v11, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :pswitch_1
    iput-boolean v11, v4, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :pswitch_2
    iput-boolean v11, v7, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :pswitch_3
    iput-boolean v11, v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    iput-boolean v11, v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    :cond_3
    :goto_1
    if-eqz v0, :cond_4

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v1, :cond_5

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isNavigationTypeIsGesture()Z
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "op_navigation_bar_type"

    invoke-static {v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Landroid/provider/Settings$SettingNotFoundException;->printStackTrace()V

    return v0
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    return-void
.end method

.method static synthetic lambda$new$1(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    return-void
.end method

.method private playAnimByStyle(I)V
    .locals 3

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    :cond_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "android.resource"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->getCustomAnimationId(I)I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    :try_start_0
    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPath:Landroid/net/Uri;

    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepare()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private setAnimStyle(I)V
    .locals 3

    const-string v0, "VideoPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setAnimStyle value:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "op_custom_unlock_animation_style"

    const/4 v2, -0x2

    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    invoke-static {}, Lcom/oneplus/settings/utils/OPUtils;->sendAppTrackerForFodAnimStyle()V

    return-void
.end method

.method private setSelectedAnim(I)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    if-ne p1, v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    goto :goto_1

    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iput-boolean v0, v2, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->selected:Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method


# virtual methods
.method public isVideoPaused()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 11

    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnimationAvailable:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const v0, 0x7f0a05f4

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    new-instance v1, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$1;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    const v1, 0x7f0a05f3

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3}, Lcom/oneplus/settings/utils/OPUtils;->isBlackModeOn(Landroid/content/ContentResolver;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "#282828"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    goto :goto_0

    :cond_1
    const-string v3, "#f5f5f5"

    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    :goto_0
    const v3, 0x7f0a05f9

    invoke-virtual {p1, v3}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/TextureView;

    const v4, 0x7f0a05f6

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a05f5

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/ImageView;

    const v6, 0x7f0a05f2

    invoke-virtual {p1, v6}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/settings/widget/AspectRatioFrameLayout;

    iget v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mPreviewResource:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    iget v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    invoke-virtual {v6, v7}, Lcom/android/settings/widget/AspectRatioFrameLayout;->setAspectRatio(F)V

    new-instance v7, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;

    invoke-direct {v7, p0, v4, v5}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$2;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;Landroid/widget/ImageView;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v7}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    const v7, 0x7f0a015b

    invoke-virtual {p1, v7}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iput-object v7, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v7, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;

    iget-object v8, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->setOrientation(I)V

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    invoke-virtual {v9, v7}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    new-instance v10, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;

    invoke-direct {v10, p0, v8}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$SpaceItemDecoration;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;I)V

    invoke-virtual {v9, v10}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->addOPItemDecoration(Lcom/oneplus/lib/widget/recyclerview/OPItemDecoration;)V

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->initStyleAnimViews()V

    new-instance v9, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    invoke-direct {v9, p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;-><init>(Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;)V

    iput-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAdapter:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    iget-object v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mRecyclerView:Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;

    iget-object v10, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAdapter:Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimStyleAdapter;

    invoke-virtual {v9, v10}, Lcom/oneplus/lib/widget/recyclerview/OPRecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->getSelectedAnimIndex()I

    move-result v9

    iput v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    iget v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    if-ltz v9, :cond_2

    iget v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    iget-object v10, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    if-ge v9, v10, :cond_2

    iget v9, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    invoke-virtual {v7, v9}, Lcom/oneplus/lib/widget/recyclerview/LinearLayoutManager;->scrollToPosition(I)V

    :cond_2
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->isNavigationTypeIsGesture()Z

    move-result v9

    if-nez v9, :cond_3

    const/4 v9, 0x5

    invoke-virtual {v1, v8, v9, v8, v9}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->requestLayout()V

    :cond_3
    return-void
.end method

.method public onDetached()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    return-void
.end method

.method public onViewInvisible()V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onViewVisible(Z)V
    .locals 2

    iput-boolean p1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoPaused:Z

    iget-boolean v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mVideoReady:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->seekTo(I)V

    :cond_0
    return-void
.end method

.method public saveSelectedAnim()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAnims:Ljava/util/List;

    iget v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mSelectedAnimIndex:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;

    iget v0, v0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference$AnimEntity;->animIndex:I

    invoke-direct {p0, v0}, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->setAnimStyle(I)V

    return-void
.end method

.method updateAspectRatio()V
    .locals 2
    .annotation build Landroid/support/annotation/VisibleForTesting;
    .end annotation

    iget-object v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/settings/widget/OPCustomFingeprintAnimVideoPreference;->mAspectRadio:F

    return-void
.end method
