.class Lcom/android/systemui/qs/tiles/ReadModeTile$4;
.super Lcom/android/systemui/qs/SystemSetting;
.source "ReadModeTile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/qs/tiles/ReadModeTile;-><init>(Lcom/android/systemui/qs/QSHost;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;


# direct methods
.method constructor <init>(Lcom/android/systemui/qs/tiles/ReadModeTile;Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SystemSetting;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method protected handleValueChanged(IZ)V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/qs/tiles/ReadModeTile$4;->this$0:Lcom/android/systemui/qs/tiles/ReadModeTile;

    invoke-virtual {v0}, Lcom/android/systemui/qs/tiles/ReadModeTile;->refreshState()V

    return-void
.end method
