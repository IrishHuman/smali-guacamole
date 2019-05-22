.class public Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;
.super Ljava/lang/Object;
.source "PackageManagerServiceDynamicLogConfig.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static declared-synchronized dynamicallyConfigLogTag(Lcom/android/server/pm/PackageManagerService;Ljava/io/PrintWriter;[Ljava/lang/String;I)V
    .locals 6

    const-class v0, Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;

    monitor-enter v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigLogTag, opti:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", args.length:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v4, p2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const/4 v3, 0x0

    :goto_0
    array-length v4, p2

    if-ge v3, v4, :cond_0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dynamicallyConfigLogTag, args["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, "]:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, p2, v3

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    array-length v3, p2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_1

    const-string v3, "********** Invalid argument! Get detail help as bellow: **********"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/android/server/pm/PackageManagerServiceDynamicLogConfig;->logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :cond_1
    const/4 v3, 0x1

    :try_start_1
    aget-object v3, p2, v3

    move-object v1, v3

    const-string v3, "1"

    const/4 v4, 0x2

    aget-object v4, p2, v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    move v2, v3

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "dynamicallyConfigLogTag, tag:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", on:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v3, "all"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PREFERRED:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_UPGRADE:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_BACKUP:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_BROADCASTS:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHOW_INFO:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_FILTERS:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PERMISSIONS:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SHARED_LIBRARIES:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_TRIAGED_MISSING:Z

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_APP_DATA:Z

    goto/16 :goto_1

    :cond_2
    const-string/jumbo v3, "install"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INSTALL:Z

    goto :goto_1

    :cond_3
    const-string/jumbo v3, "remove"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_REMOVE:Z

    goto :goto_1

    :cond_4
    const-string/jumbo v3, "settings"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_SETTINGS:Z

    goto :goto_1

    :cond_5
    const-string/jumbo v3, "scan"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_SCANNING:Z

    goto :goto_1

    :cond_6
    const-string/jumbo v3, "verify"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_VERIFY:Z

    goto :goto_1

    :cond_7
    const-string v3, "abi"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_ABI_SELECTION:Z

    goto :goto_1

    :cond_8
    const-string/jumbo v3, "opt"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DEXOPT:Z

    goto :goto_1

    :cond_9
    const-string/jumbo v3, "match"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_INTENT_MATCHING:Z

    goto :goto_1

    :cond_a
    const-string/jumbo v3, "info"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_PACKAGE_INFO:Z

    goto :goto_1

    :cond_b
    const-string v3, "domain"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_c

    sput-boolean v2, Lcom/android/server/pm/PackageManagerService;->DEBUG_DOMAIN_VERIFICATION:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_1
    monitor-exit v0

    return-void

    :cond_c
    :try_start_2
    const-string v3, "Failed! Invalid argument! Type cmd for help: dumpsys package log"

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method static logoutTagConfigHelp(Ljava/io/PrintWriter;)V
    .locals 1

    const-string v0, "********************** Help begin:**********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "1 package all:  DEBUG_* "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log all 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "2 package install:  DEBUG_INSTALL "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log install 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "3 package remove:   DEBUG_REMOVE "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log remove 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "4 package settings: DEBUG_SETTINGS "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log settings 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "5 package scan:     DEBUG_PACKAGE_SCANNING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log scan 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "6 package verify:   DEBUG_VERIFY "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log verify 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "7 package abi:      DEBUG_ABI_SELECTION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log abi 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "8 package opt:      DEBUG_DEXOPT "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log opt 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "9 package match:    DEBUG_INTENT_MATCHING "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log match 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "10 package info:    DEBUG_PACKAGE_INFO "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log info 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "11 package info:    DEBUG_DOMAIN_VERIFICATION "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "cmd: dumpsys package log domain 0/1"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "----------------------------------"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    const-string v0, "********************** Help end.  **********************"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void
.end method
