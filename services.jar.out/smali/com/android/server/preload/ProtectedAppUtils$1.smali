.class Lcom/android/server/preload/ProtectedAppUtils$1;
.super Landroid/database/ContentObserver;
.source "ProtectedAppUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/ProtectedAppUtils;->init(Lcom/android/server/am/ActivityManagerService;Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/ProtectedAppUtils;


# direct methods
.method constructor <init>(Lcom/android/server/preload/ProtectedAppUtils;Landroid/os/Handler;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 3

    iget-object v0, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-static {v0}, Lcom/android/server/preload/ProtectedAppUtils;->access$000(Lcom/android/server/preload/ProtectedAppUtils;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-static {v1}, Lcom/android/server/preload/ProtectedAppUtils;->access$100(Lcom/android/server/preload/ProtectedAppUtils;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/preload/ProtectedAppUtils;->access$102(Lcom/android/server/preload/ProtectedAppUtils;Z)Z

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-static {v1, v2}, Lcom/android/server/preload/ProtectedAppUtils;->access$200(Lcom/android/server/preload/ProtectedAppUtils;Z)V

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-static {v1}, Lcom/android/server/preload/ProtectedAppUtils;->access$100(Lcom/android/server/preload/ProtectedAppUtils;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/preload/ProtectedAppUtils;->access$102(Lcom/android/server/preload/ProtectedAppUtils;Z)Z

    iget-object v1, p0, Lcom/android/server/preload/ProtectedAppUtils$1;->this$0:Lcom/android/server/preload/ProtectedAppUtils;

    invoke-static {v1, v2}, Lcom/android/server/preload/ProtectedAppUtils;->access$200(Lcom/android/server/preload/ProtectedAppUtils;Z)V

    :cond_1
    :goto_0
    return-void
.end method
