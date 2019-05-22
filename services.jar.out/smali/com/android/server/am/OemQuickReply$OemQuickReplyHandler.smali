.class Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;
.super Landroid/os/Handler;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemQuickReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OemQuickReplyHandler"
.end annotation


# static fields
.field static final MSG_OEM_ADD_BUTTON:I = 0x1

.field static final MSG_OEM_ADD_IME_CONTROLS_BUTTON:I = 0x3

.field static final MSG_OEM_HANDLE_SWITCH_IM_BUTTON:I = 0x8

.field static final MSG_OEM_REMOVE_BUTTON:I = 0x2

.field static final MSG_OEM_REMOVE_IME_CONTROLS_BUTTON:I = 0x4

.field static final MSG_OEM_SET_IME_BUTTON_ALPHA:I = 0x5

.field static final MSG_OEM_UPDATE_ALL_PARAM:I = 0x9

.field static final MSG_OEM_UPDATE_IME_CONTROLS_VIS:I = 0x7

.field static final MSG_OEM_UPDATE_IM_BOUND:I = 0x6


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method public constructor <init>(Lcom/android/server/am/OemQuickReply;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_2

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1700(Lcom/android/server/am/OemQuickReply;)V

    goto/16 :goto_2

    :pswitch_1
    const-string v0, "OemQuickReply"

    const-string/jumbo v1, "handling MSG_OEM_HANDLE_SWITCH_IM_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v0, v0, Lcom/android/server/am/OemQuickReply;->mQuickReplyImeBtnView:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1300(Lcom/android/server/am/OemQuickReply;)V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v1, v1, Lcom/android/server/am/OemQuickReply;->mImeControlsWindowLP:Landroid/view/WindowManager$LayoutParams;

    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->height:I

    invoke-static {v0, v1}, Lcom/android/server/am/OemQuickReply;->access$1200(Lcom/android/server/am/OemQuickReply;I)V

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$500(Lcom/android/server/am/OemQuickReply;)Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;

    move-result-object v0

    const/4 v1, 0x6

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_2

    :cond_0
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1500(Lcom/android/server/am/OemQuickReply;)V

    goto/16 :goto_2

    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x4

    :goto_0
    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1, v0}, Lcom/android/server/am/OemQuickReply;->access$1600(Lcom/android/server/am/OemQuickReply;I)V

    goto :goto_2

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1500(Lcom/android/server/am/OemQuickReply;)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1400(Lcom/android/server/am/OemQuickReply;)V

    goto :goto_2

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1300(Lcom/android/server/am/OemQuickReply;)V

    goto :goto_2

    :pswitch_6
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    const-string v1, "OemQuickReply"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handling MSG_OEM_ADD_IME_CONTROLS_BUTTON imeHeight="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v1, v0}, Lcom/android/server/am/OemQuickReply;->access$1200(Lcom/android/server/am/OemQuickReply;I)V

    goto :goto_2

    :pswitch_7
    const-string v0, "OemQuickReply"

    const-string/jumbo v1, "handling MSG_OEM_REMOVE_BUTTON"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1100(Lcom/android/server/am/OemQuickReply;)V

    goto :goto_2

    :pswitch_8
    const-string v0, "OemQuickReply"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handling MSG_OEM_ADD_BUTTON "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    iget-object v2, v2, Lcom/android/server/am/OemQuickReply;->mQuickReplyFullBtnView:Landroid/view/View;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1000(Lcom/android/server/am/OemQuickReply;)V

    nop

    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
