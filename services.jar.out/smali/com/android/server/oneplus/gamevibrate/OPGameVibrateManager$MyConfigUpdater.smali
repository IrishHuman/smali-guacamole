.class Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;
.super Ljava/lang/Object;
.source "OPGameVibrateManager.java"

# interfaces
.implements Lcom/oneplus/config/ConfigObserver$ConfigUpdater;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyConfigUpdater"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;


# direct methods
.method private constructor <init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;-><init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V

    return-void
.end method


# virtual methods
.method public resolveConfigFromJSON(Lorg/json/JSONArray;)V
    .locals 4

    if-nez p1, :cond_0

    const-string v0, "OPGameVibrateManager"

    const-string v1, "[OnlineConfig] config is null!"

    invoke-static {v0, v1}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "enable"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    const-string v1, "OPGameVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] mEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-boolean v3, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;->sEnabled:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OPGameVibrateManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[OnlineConfig] Failed to process onlineconfig! \n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/server/OPLogger$Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public updateConfig(Lorg/json/JSONArray;)V
    .locals 0

    invoke-virtual {p0, p1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$MyConfigUpdater;->resolveConfigFromJSON(Lorg/json/JSONArray;)V

    return-void
.end method
