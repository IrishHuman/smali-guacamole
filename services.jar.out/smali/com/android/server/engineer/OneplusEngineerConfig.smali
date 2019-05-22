.class public Lcom/android/server/engineer/OneplusEngineerConfig;
.super Lcom/android/server/engineer/RomUpdateHelper;
.source "OneplusEngineerConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;,
        Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;
    }
.end annotation


# static fields
.field private static final DATA_FILE_DIR:Ljava/lang/String; = "/data/engineermode/sys_engineer_config_list.xml"

.field private static final FILTER_NAME:Ljava/lang/String; = "sys_engineer_config_list"

.field private static final SYS_FILE_DIR:Ljava/lang/String; = "/system/etc/sys_engineer_config_list.xml"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/OneplusEngineerConfig;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;)V
    .locals 3

    const-string/jumbo v0, "sys_engineer_config_list"

    const-string v1, "/system/etc/sys_engineer_config_list.xml"

    const-string v2, "/data/engineermode/sys_engineer_config_list.xml"

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/android/server/engineer/RomUpdateHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-direct {v0, p0, p2}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;-><init>(Lcom/android/server/engineer/OneplusEngineerConfig;Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;)V

    new-instance v1, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-direct {v1, p0, p2}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;-><init>(Lcom/android/server/engineer/OneplusEngineerConfig;Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerConfig;->setUpdateInfo(Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;)V

    iput-object p2, p0, Lcom/android/server/engineer/OneplusEngineerConfig;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    :try_start_0
    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerConfig;->init()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerConfig;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public getUpdateFromProvider()V
    .locals 2

    invoke-super {p0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateFromProvider()V

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    invoke-interface {v0}, Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;->onEngineerConfigUpdateFromProvider()V

    :cond_0
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerConfig;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "update SecrecySwitchHelper config"

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method isActivityInBlackList(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->isActivityInBlackList(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isEngineerOrderInBlackList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->isEngineerOrderInBlackList(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method isServiceInBlackList(Landroid/content/ComponentName;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->isServiceInBlackList(Landroid/content/ComponentName;)Z

    move-result v1

    return v1
.end method

.method isShellCommandInBlackList(Ljava/lang/String;)Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->isShellCommandInBlackList(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method needResetAtm()Z
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/OneplusEngineerConfig;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    check-cast v0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->needResetAtm()Z

    move-result v1

    return v1
.end method
