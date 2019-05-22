.class public Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;
.super Landroid/os/Handler;
.source "ScreenModeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/ScreenModeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ScreenModeHandler"
.end annotation


# static fields
.field private static final MSG_GET_ONLINECONFIG:I = 0x1

.field private static final MSG_UPDATE_REFRESH_RATE:I = 0x2

.field private static final MSG_UPDATE_RESOLUTION:I = 0x3


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/ScreenModeManager;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v0}, Lcom/android/server/wm/ScreenModeManager;->access$400(Lcom/android/server/wm/ScreenModeManager;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v0}, Lcom/android/server/wm/ScreenModeManager;->access$300(Lcom/android/server/wm/ScreenModeManager;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/wm/ScreenModeManager$ScreenModeHandler;->this$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v0}, Lcom/android/server/wm/ScreenModeManager;->access$200(Lcom/android/server/wm/ScreenModeManager;)V

    nop

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
