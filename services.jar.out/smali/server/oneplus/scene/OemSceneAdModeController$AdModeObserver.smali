.class Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;
.super Landroid/database/ContentObserver;
.source "OemSceneAdModeController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneAdModeController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AdModeObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneAdModeController;


# direct methods
.method public constructor <init>(Lserver/oneplus/scene/OemSceneAdModeController;)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$AdModeObserver;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->access$300(Lserver/oneplus/scene/OemSceneAdModeController;)V

    return-void
.end method
