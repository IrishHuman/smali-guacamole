.class Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OnePlusJankManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusJankManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/am/OnePlusJankManager;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusJankManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/OnePlusJankManager$MyConfigUpdater;->this$0:Lcom/android/server/am/OnePlusJankManager;

    invoke-static {v0, p1}, Lcom/android/server/am/OnePlusJankManager;->access$1100(Lcom/android/server/am/OnePlusJankManager;Lorg/json/JSONArray;)V

    return-void
.end method
