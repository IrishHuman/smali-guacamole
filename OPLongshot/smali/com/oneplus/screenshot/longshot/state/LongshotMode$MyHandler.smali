.class public Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;
.super Landroid/os/Handler;
.source "LongshotMode.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/screenshot/longshot/state/LongshotMode;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;


# direct methods
.method public constructor <init>(Lcom/oneplus/screenshot/longshot/state/LongshotMode;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget v1, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-static {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->access$000(Lcom/oneplus/screenshot/longshot/state/LongshotMode;I)V

    goto :goto_0

    :pswitch_1
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/oneplus/screenshot/longshot/state/LongshotMode$MyHandler;->this$0:Lcom/oneplus/screenshot/longshot/state/LongshotMode;

    invoke-virtual {v2, v1}, Lcom/oneplus/screenshot/longshot/state/LongshotMode;->handleReject(Ljava/lang/String;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3e8
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
