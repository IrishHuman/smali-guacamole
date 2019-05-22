.class Lserver/oneplus/scene/OemSceneAdModeController$1;
.super Ljava/lang/Object;
.source "OemSceneAdModeController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lserver/oneplus/scene/OemSceneAdModeController;->setModeByDefault(ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lserver/oneplus/scene/OemSceneAdModeController;

.field final synthetic val$enable:Z

.field final synthetic val$strength:I


# direct methods
.method constructor <init>(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V
    .locals 0

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iput-boolean p2, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->val$enable:Z

    iput p3, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->val$strength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->this$0:Lserver/oneplus/scene/OemSceneAdModeController;

    iget-boolean v1, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->val$enable:Z

    iget v2, p0, Lserver/oneplus/scene/OemSceneAdModeController$1;->val$strength:I

    invoke-static {v0, v1, v2}, Lserver/oneplus/scene/OemSceneAdModeController;->access$000(Lserver/oneplus/scene/OemSceneAdModeController;ZI)V

    return-void
.end method
