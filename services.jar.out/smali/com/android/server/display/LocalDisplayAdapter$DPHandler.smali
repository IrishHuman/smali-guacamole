.class final Lcom/android/server/display/LocalDisplayAdapter$DPHandler;
.super Landroid/os/Handler;
.source "LocalDisplayAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/LocalDisplayAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "DPHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/LocalDisplayAdapter;


# direct methods
.method public constructor <init>(Lcom/android/server/display/LocalDisplayAdapter;Landroid/os/Looper;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->access$100(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/oneplus/display/SDManager;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-static {v0}, Lcom/android/server/display/LocalDisplayAdapter;->access$100(Lcom/android/server/display/LocalDisplayAdapter;)Lcom/oneplus/display/SDManager;

    move-result-object v0

    const/16 v1, 0x17

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/display/SDManager;->SetPanelMode(IZ)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/android/server/display/LocalDisplayAdapter$DPHandler;->this$0:Lcom/android/server/display/LocalDisplayAdapter;

    invoke-virtual {v0}, Lcom/android/server/display/LocalDisplayAdapter;->setScreenMode()V

    invoke-static {v1}, Lcom/android/server/display/LocalDisplayAdapter;->access$002(Z)Z

    nop

    :cond_2
    :goto_0
    return-void
.end method
