.class final Lcom/android/server/am/OemQuickReply$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "OemQuickReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OemQuickReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OemQuickReply;


# direct methods
.method constructor <init>(Lcom/android/server/am/OemQuickReply;Lcom/android/server/am/OemQuickReply$OemQuickReplyHandler;)V
    .locals 3

    iput-object p1, p0, Lcom/android/server/am/OemQuickReply$SettingsObserver;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    invoke-static {p1}, Lcom/android/server/am/OemQuickReply;->access$000(Lcom/android/server/am/OemQuickReply;)Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "op_quickreply_im_list"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    const-string/jumbo v0, "op_quickreply_ime_adjust"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p1, v0, v2, p0, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OemQuickReply$SettingsObserver;->this$0:Lcom/android/server/am/OemQuickReply;

    invoke-static {v0}, Lcom/android/server/am/OemQuickReply;->access$1800(Lcom/android/server/am/OemQuickReply;)V

    return-void
.end method
