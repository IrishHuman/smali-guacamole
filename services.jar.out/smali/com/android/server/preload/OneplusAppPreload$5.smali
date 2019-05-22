.class Lcom/android/server/preload/OneplusAppPreload$5;
.super Ljava/lang/Thread;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/preload/OneplusAppPreload;->resetartPendingLocationRequest(Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/preload/OneplusAppPreload;

.field final synthetic val$packageName:Ljava/lang/String;

.field final synthetic val$uid:I


# direct methods
.method constructor <init>(Lcom/android/server/preload/OneplusAppPreload;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->this$0:Lcom/android/server/preload/OneplusAppPreload;

    iput-object p3, p0, Lcom/android/server/preload/OneplusAppPreload$5;->val$packageName:Ljava/lang/String;

    iput p4, p0, Lcom/android/server/preload/OneplusAppPreload$5;->val$uid:I

    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload;->access$1100()Lcom/android/server/LocationManagerService;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/preload/OneplusAppPreload$5;->val$packageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/preload/OneplusAppPreload$5;->val$uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/LocationManagerService;->restartPendingResuest(Ljava/lang/String;I)V

    return-void
.end method
