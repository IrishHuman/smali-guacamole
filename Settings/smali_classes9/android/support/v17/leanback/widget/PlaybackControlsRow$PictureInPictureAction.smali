.class public Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;
.super Landroid/support/v17/leanback/widget/Action;
.source "PlaybackControlsRow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackControlsRow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PictureInPictureAction"
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    sget v0, Landroid/support/v17/leanback/R$id;->lb_control_picture_in_picture:I

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Landroid/support/v17/leanback/widget/Action;-><init>(J)V

    sget v0, Landroid/support/v17/leanback/R$styleable;->lbPlaybackControlsActionIcons_picture_in_picture:I

    invoke-static {p1, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow;->getStyledDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;->setIcon(Landroid/graphics/drawable/Drawable;)V

    sget v0, Landroid/support/v17/leanback/R$string;->lb_playback_controls_picture_in_picture:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;->setLabel1(Ljava/lang/CharSequence;)V

    const/16 v0, 0xab

    invoke-virtual {p0, v0}, Landroid/support/v17/leanback/widget/PlaybackControlsRow$PictureInPictureAction;->addKeyCode(I)V

    return-void
.end method
