.class Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;
.super Ljava/lang/Object;
.source "PlaybackTransportRowPresenter.java"

# interfaces
.implements Landroid/support/v17/leanback/widget/ControlBarPresenter$OnControlClickedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;


# direct methods
.method constructor <init>(Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onControlClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/ControlBarPresenter$BoundData;)V
    .locals 3

    move-object v0, p3

    check-cast v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;

    iget-object v0, v0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$BoundData;->mRowViewHolder:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getOnItemViewClickedListener()Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;

    move-result-object v1

    invoke-virtual {v0}, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$ViewHolder;->getRow()Landroid/support/v17/leanback/widget/Row;

    move-result-object v2

    invoke-interface {v1, p1, p2, v0, v2}, Landroid/support/v17/leanback/widget/BaseOnItemViewClickedListener;->onItemClicked(Landroid/support/v17/leanback/widget/Presenter$ViewHolder;Ljava/lang/Object;Landroid/support/v17/leanback/widget/RowPresenter$ViewHolder;Ljava/lang/Object;)V

    :cond_0
    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    if-eqz v1, :cond_1

    instance-of v1, p2, Landroid/support/v17/leanback/widget/Action;

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter$2;->this$0:Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;

    iget-object v1, v1, Landroid/support/v17/leanback/widget/PlaybackTransportRowPresenter;->mOnActionClickedListener:Landroid/support/v17/leanback/widget/OnActionClickedListener;

    move-object v2, p2

    check-cast v2, Landroid/support/v17/leanback/widget/Action;

    invoke-interface {v1, v2}, Landroid/support/v17/leanback/widget/OnActionClickedListener;->onActionClicked(Landroid/support/v17/leanback/widget/Action;)V

    :cond_1
    return-void
.end method
