.class Lcom/android/systemui/statusbar/policy/GraphLight$1;
.super Ljava/lang/Object;
.source "GraphLight.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/GraphLight;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/GraphLight;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/GraphLight;)V
    .locals 0

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/GraphLight$1;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/GraphLight$1;->this$0:Lcom/android/systemui/statusbar/policy/GraphLight;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/GraphLight;->access$000(Lcom/android/systemui/statusbar/policy/GraphLight;)V

    return-void
.end method
