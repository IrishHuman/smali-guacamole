.class Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;
.super Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;
.source "OneplusEngineerConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OneplusEningeerConfigUpdateInfo"
.end annotation


# static fields
.field private static final ATTR_CLASSNAME:Ljava/lang/String; = "className"

.field private static final ATTR_ORDER_COMMAND:Ljava/lang/String; = "order"

.field private static final ATTR_PACKAGE:Ljava/lang/String; = "packageName"

.field private static final ATTR_SHELL_COMMAND:Ljava/lang/String; = "command"

.field private static final ATTR_SWITCH_NAME:Ljava/lang/String; = "switchName"

.field private static final ATTR_SWITCH_STATE:Ljava/lang/String; = "switchState"

.field private static final SWITCH_ACTIVITY:Ljava/lang/String; = "activity_sw"

.field private static final SWITCH_ENGINEER_ORDER:Ljava/lang/String; = "engineer_order_sw"

.field private static final SWITCH_RESET_ATM:Ljava/lang/String; = "reset_atm_sw"

.field private static final SWITCH_SERVICE:Ljava/lang/String; = "service_sw"

.field private static final SWITCH_SHELL_COMMAND:Ljava/lang/String; = "shell_command_sw"


# instance fields
.field private final TAG_ACTIVITY:Ljava/lang/String;

.field private final TAG_ENGINEER_ORDER:Ljava/lang/String;

.field private final TAG_SERVICE:Ljava/lang/String;

.field private final TAG_SHELL_COMMAND:Ljava/lang/String;

.field private final TAG_SWITCH:Ljava/lang/String;

.field private mActivityBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mActivitySwitch:Z

.field private mEngineerOrderBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mEngineerOrderSwitch:Z

.field private final mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

.field private final mLock:Ljava/lang/Object;

.field private mResetAtmSwitch:Z

.field private mServiceBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mServiceSwitch:Z

.field private mShellCommandBlackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mShellCommandSwitch:Z

.field final synthetic this$0:Lcom/android/server/engineer/OneplusEngineerConfig;


# direct methods
.method constructor <init>(Lcom/android/server/engineer/OneplusEngineerConfig;Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->this$0:Lcom/android/server/engineer/OneplusEngineerConfig;

    invoke-direct {p0, p1}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;-><init>(Lcom/android/server/engineer/RomUpdateHelper;)V

    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mLock:Ljava/lang/Object;

    const-string/jumbo p1, "switch"

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->TAG_SWITCH:Ljava/lang/String;

    const-string p1, "activity"

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->TAG_ACTIVITY:Ljava/lang/String;

    const-string/jumbo p1, "service"

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->TAG_SERVICE:Ljava/lang/String;

    const-string/jumbo p1, "shell_command"

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->TAG_SHELL_COMMAND:Ljava/lang/String;

    const-string p1, "engineer_order"

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->TAG_ENGINEER_ORDER:Ljava/lang/String;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivityBlackList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceBlackList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mShellCommandBlackList:Ljava/util/List;

    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mEngineerOrderBlackList:Ljava/util/List;

    iput-object p2, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    return-void
.end method

.method private parseComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Landroid/content/ComponentName;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "packageName"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "className"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v3

    :try_start_0
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerConfig;->access$000()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parseComponentName, packageName = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", className = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v4

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v4
.end method

.method private parseEngineerOrder(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string/jumbo v0, "order"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerConfig;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseEngineerOrder, order = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method private parseShellCommand(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xmlpull/v1/XmlPullParser;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "command"

    const/4 v1, 0x0

    invoke-interface {p1, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v1

    :try_start_0
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerConfig;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "parseShellCommand, command = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :catchall_0
    move-exception v2

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method


# virtual methods
.method isActivityInBlackList(Landroid/content/ComponentName;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivitySwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v2, p1}, Lcom/android/server/engineer/OneplusEngineerUtils;->isComponentEquals(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method isEngineerOrderInBlackList(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mEngineerOrderSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mEngineerOrderBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method isServiceInBlackList(Landroid/content/ComponentName;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/ComponentName;

    invoke-static {v2, p1}, Lcom/android/server/engineer/OneplusEngineerUtils;->isComponentEquals(Landroid/content/ComponentName;Landroid/content/ComponentName;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method isShellCommandInBlackList(Ljava/lang/String;)Z
    .locals 4

    iget-boolean v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mShellCommandSwitch:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mShellCommandBlackList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1

    :cond_3
    :goto_1
    return v1
.end method

.method needResetAtm()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mResetAtmSwitch:Z

    return v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 13

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v1

    :try_start_0
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v3

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p1}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    invoke-interface {v3, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v4

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mLock:Ljava/lang/Object;

    monitor-enter v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    :try_start_1
    iget-object v6, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivityBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    iget-object v6, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceBlackList:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v5, 0x1

    if-eq v4, v5, :cond_d

    if-eqz v4, :cond_b

    const/4 v6, 0x2

    if-eq v4, v6, :cond_1

    goto/16 :goto_2

    :cond_1
    :try_start_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "switch"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    const-string/jumbo v8, "switchName"

    const/4 v9, 0x0

    invoke-interface {v3, v9, v8}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v10, "switchState"

    invoke-interface {v3, v9, v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v10

    if-nez v10, :cond_6

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerConfig;->access$000()Ljava/lang/String;

    move-result-object v10

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string/jumbo v12, "parse switch %s = %s"

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v8, v6, v1

    aput-object v9, v6, v5

    invoke-static {v11, v12, v6}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v10, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, "activity_sw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivitySwitch:Z

    goto :goto_1

    :cond_2
    const-string/jumbo v5, "service_sw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceSwitch:Z

    goto :goto_1

    :cond_3
    const-string/jumbo v5, "shell_command_sw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mShellCommandSwitch:Z

    goto :goto_1

    :cond_4
    const-string v5, "engineer_order_sw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mEngineerOrderSwitch:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v5, "reset_atm_sw"

    invoke-virtual {v5, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_6

    invoke-static {v9}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mResetAtmSwitch:Z

    :cond_6
    :goto_1
    goto :goto_2

    :cond_7
    const-string v5, "activity"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mActivityBlackList:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->parseComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_8
    const-string/jumbo v5, "service"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_9

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mServiceBlackList:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->parseComponentName(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_9
    const-string/jumbo v5, "shell_command"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_a

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mShellCommandBlackList:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->parseShellCommand(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_a
    const-string v5, "engineer_order"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_c

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mEngineerOrderBlackList:Ljava/util/List;

    invoke-direct {p0, v3, v5}, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->parseEngineerOrder(Lorg/xmlpull/v1/XmlPullParser;Ljava/util/List;)V

    const/4 v2, 0x1

    goto :goto_2

    :cond_b
    nop

    :cond_c
    :goto_2
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v5
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move v4, v5

    goto/16 :goto_0

    :cond_d
    nop

    :goto_3
    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    goto :goto_4

    :catchall_0
    move-exception v1

    :try_start_3
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v1
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :catchall_1
    move-exception v1

    goto :goto_5

    :catch_0
    move-exception v1

    :try_start_5
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerConfig;->access$000()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Got execption parsing permissions."

    invoke-static {v3, v4, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v0, :cond_e

    goto :goto_3

    :cond_e
    :goto_4
    if-eqz v2, :cond_f

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerConfig$OneplusEningeerConfigUpdateInfo;->mISwitchUpdateListener:Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;

    invoke-interface {v1}, Lcom/android/server/engineer/OneplusEngineerConfig$ISwitchUpdateListener;->onEngineerConfigUpdate()V

    :cond_f
    return-void

    :goto_5
    if-eqz v0, :cond_10

    invoke-virtual {v0}, Ljava/io/StringReader;->close()V

    :cond_10
    throw v1
.end method
