.class Lcom/android/systemui/qs/tiles/OtgTile$1;
.super Landroid/content/BroadcastReceiver;
.source "OtgTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/tiles/OtgTile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/OtgTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/OtgTile;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/OtgTile$1;->this$0:Lcom/android/systemui/qs/tiles/OtgTile;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    const-string v0, "oneplus.intent.action.otg_auto_shutdown"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/OtgTile$1;->this$0:Lcom/android/systemui/qs/tiles/OtgTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/OtgTile;->refreshState()V

    :cond_0
    return-void
.end method
