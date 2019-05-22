.class public final synthetic Lcom/android/server/wm/-$$Lambda$ScreenModeManager$q3AqKYZ0qBlPD32nvoZmfrgyEgI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ScreenModeManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ScreenModeManager;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ScreenModeManager$q3AqKYZ0qBlPD32nvoZmfrgyEgI;->f$0:Lcom/android/server/wm/ScreenModeManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ScreenModeManager$q3AqKYZ0qBlPD32nvoZmfrgyEgI;->f$0:Lcom/android/server/wm/ScreenModeManager;

    invoke-static {v0}, Lcom/android/server/wm/ScreenModeManager;->lambda$initOnlineConfig$0(Lcom/android/server/wm/ScreenModeManager;)V

    return-void
.end method
