.class Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;
.super Ljava/lang/Object;
.source "QSTileHost.java"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/HotspotController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/qs/QSTileHost$OperatorCustom;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onHotspotChanged(ZI)V
    .locals 0

    return-void
.end method

.method public onOperatorHotspotChanged(Z)V
    .locals 4

    invoke-static {}, Lcom/android/systemui/qs/QSTileHost;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperatorHotspotChanged / disableByOperator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / recordPosition:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)I

    move-result v0

    const/4 v1, -0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const-string v2, "hotspot"

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$200(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$102(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;I)I

    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0, p1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$302(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Z)Z

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$300(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const-string v2, "hotspot"

    invoke-static {v1, v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$200(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$102(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;I)I

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->this$0:Lcom/android/systemui/qs/QSTileHost;

    const-string v1, "hotspot"

    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/QSTileHost;->removeTile(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$300(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v0}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)I

    move-result v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const-string v1, "hotspot"

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    invoke-static {v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$100(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;)I

    move-result v2

    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$400(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    const-string v0, "QSTileHost"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onOperatorHotspotChanged / else / disableByOperator:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " / existTile(HOTSPOT):"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHost$OperatorCustom$1;->this$1:Lcom/android/systemui/qs/QSTileHost$OperatorCustom;

    const-string v3, "hotspot"

    invoke-static {v2, v3}, Lcom/android/systemui/qs/QSTileHost$OperatorCustom;->access$200(Lcom/android/systemui/qs/QSTileHost$OperatorCustom;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
