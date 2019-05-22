.class Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusPerfController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusPerfController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DoFrameInBGConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusPerfController;


# direct methods
.method private constructor <init>(Lcom/android/server/am/OnePlusPerfController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;->this$0:Lcom/android/server/am/OnePlusPerfController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/am/OnePlusPerfController;Lcom/android/server/am/OnePlusPerfController$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;-><init>(Lcom/android/server/am/OnePlusPerfController;)V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusPerfController$DoFrameInBGConfigUpdater;->this$0:Lcom/android/server/am/OnePlusPerfController;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusPerfController;->access$100(Lcom/android/server/am/OnePlusPerfController;Lorg/json/JSONArray;)V

    return-void
.end method
