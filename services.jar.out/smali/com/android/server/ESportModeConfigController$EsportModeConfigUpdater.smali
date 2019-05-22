.class Lcom/android/server/ESportModeConfigController$EsportModeConfigUpdater;
.super Ljava/lang/Object;
.source "ESportModeConfigController.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/ESportModeConfigController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "EsportModeConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/ESportModeConfigController;


# direct methods
.method constructor <init>(Lcom/android/server/ESportModeConfigController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/ESportModeConfigController$EsportModeConfigUpdater;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 1

    iget-object v0, p0, Lcom/android/server/ESportModeConfigController$EsportModeConfigUpdater;->this$0:Lcom/android/server/ESportModeConfigController;

    invoke-static {v0, p1}, Lcom/android/server/ESportModeConfigController;->access$200(Lcom/android/server/ESportModeConfigController;Lorg/json/JSONArray;)V

    return-void
.end method
