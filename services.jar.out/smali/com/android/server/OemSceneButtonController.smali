.class public Lcom/android/server/OemSceneButtonController;
.super Ljava/lang/Object;
.source "OemSceneButtonController.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;,
        Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;,
        Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;,
        Lcom/android/server/OemSceneButtonController$Param;,
        Lcom/android/server/OemSceneButtonController$KeyLockMode;
    }
.end annotation


# static fields
.field private static DBG:Z = false

.field private static final KEY_BLOCK:Ljava/lang/String; = "keyBlock"

.field private static final OPERATED:Ljava/lang/String; = "1"

.field public static final Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking_CarMode:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking_CarMode_KeyguardUnlocked:Lcom/oneplus/oimc/OIMCRule;

.field public static final Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

.field private static final SCREEN_GESTURE_OPERATED:Ljava/lang/String; = "persist.sys.osbc.operated"

.field private static final SEPARATOR:Ljava/lang/String; = "|"

.field private static final SPECIAL_FOR_HIDENAVBAR:Ljava/lang/String; = "Special for hideNavbar"

.field private static final SPECIAL_FOR_SHOWNAVBAR:Ljava/lang/String; = "Special for showNavbar"

.field private static final SPECIAL_PARAM:Ljava/lang/String; = "specialParam"

.field private static final URI_CAR_BTN_SETTING:Landroid/net/Uri;

.field private static final URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

.field private static final URI_GAME_BTN_SETTING:Landroid/net/Uri;

.field private static final URI_SCREEN_GESTURE:Landroid/net/Uri;

.field private static final VALUE_CONFIG:I = 0x3

.field private static final VALUE_DEFAULT:I = 0x1

.field private static final VALUE_OFF_INT:I = 0x0

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_INT:I = 0x1

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"

.field private static final VALUE_SCREEN_GESTURE:I = 0x3

.field private static final VALUE_START:I = 0x1

.field private static final VALUE_STOP:I = 0x2

.field private static sInstance:Lcom/android/server/OemSceneButtonController;


# instance fields
.field private final TAG:Ljava/lang/String;

.field private mCarModeButtonLockSettingContentObserver:Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;

.field private mContext:Landroid/content/Context;

.field private mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

.field private mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

.field private mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

.field private mHandler:Landroid/os/Handler;

.field protected mIsFunctionOn:Z

.field private mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

.field private mResolver:Landroid/content/ContentResolver;

.field private mUser:I


# direct methods
.method static constructor <clinit>()V
    .locals 27

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    const-string v0, "game_mode_lock_buttons"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    const-string/jumbo v0, "temp_disable_scene_button_lcok_feature"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    const-string/jumbo v0, "oneplus_carmode_inside"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_CAR_BTN_SETTING:Landroid/net/Uri;

    const-string/jumbo v0, "op_navigation_bar_type"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/OemSceneButtonController;->URI_SCREEN_GESTURE:Landroid/net/Uri;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v2, "KeyBlocking"

    const-string v1, "CarMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    new-array v7, v8, [Ljava/lang/String;

    const/4 v9, 0x3

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    const/4 v10, 0x0

    aput-object v3, v1, v10

    const/16 v11, 0xbb

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v12, 0x1

    aput-object v3, v1, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    const/4 v13, 0x2

    aput-object v3, v1, v13

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v10

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v1, v10

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v12

    new-array v1, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v1, v10

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v13

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v13

    const-string/jumbo v1, "specialParam"

    const-string v3, "Special for hideNavbar"

    filled-new-array {v1, v3}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v7, v9

    const/4 v3, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x3c

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v15, "KeyBlocking"

    const-string v1, "CarMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v17

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v2, "specialParam"

    const-string v3, "Special for showNavbar"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const/16 v16, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x63

    move-object v14, v0

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode_KeyguardUnlocked:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v21, "KeyBlocking"

    const-string v1, "GameMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v23

    new-array v1, v12, [Ljava/lang/String;

    const-string/jumbo v2, "specialParam"

    const-string v3, "Special for hideNavbar"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    const/16 v22, 0x1

    const/16 v24, 0x0

    const/16 v25, 0x32

    move-object/from16 v20, v0

    move-object/from16 v26, v1

    invoke-direct/range {v20 .. v26}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    new-instance v0, Lcom/oneplus/oimc/OIMCRule;

    const-string v15, "KeyBlocking"

    const-string v1, "BrickMode"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v17

    new-array v1, v9, [Ljava/lang/String;

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v2, v10

    invoke-static {v11}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v10

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v2, v10

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    new-array v2, v9, [Ljava/lang/String;

    const-string/jumbo v3, "keyBlock"

    aput-object v3, v2, v10

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v12

    sget-object v3, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v3}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v13

    invoke-static {v2}, Lcom/android/server/OemSceneButtonController;->makeParam([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v13

    const/16 v19, 0x46

    move-object v14, v0

    move-object/from16 v20, v1

    invoke-direct/range {v14 .. v20}, Lcom/oneplus/oimc/OIMCRule;-><init>(Ljava/lang/String;I[Ljava/lang/String;II[Ljava/lang/String;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "OemSceneButtonController"

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/OemSceneButtonController;->mIsFunctionOn:Z

    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    new-instance v2, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    new-instance v2, Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;

    iget-object v3, p0, Lcom/android/server/OemSceneButtonController;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, p0, v3, v4}, Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;-><init>(Lcom/android/server/OemSceneButtonController;Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v2, p0, Lcom/android/server/OemSceneButtonController;->mCarModeButtonLockSettingContentObserver:Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v3, "temp_disable_scene_button_lcok_feature"

    const-string v4, "0"

    const/4 v5, -0x2

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_GAME_BTN_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonSettingsContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonSettingsContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_DISABLE_GAME_BTN_FEATURE:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mGameModeButtonLockFeatureContentObserver:Lcom/android/server/OemSceneButtonController$GameModeButtonLockFeatureContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    iget-object v2, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/server/OemSceneButtonController;->URI_CAR_BTN_SETTING:Landroid/net/Uri;

    iget-object v4, p0, Lcom/android/server/OemSceneButtonController;->mCarModeButtonLockSettingContentObserver:Lcom/android/server/OemSceneButtonController$CarModeButtonLockSettingContentObserver;

    invoke-virtual {v2, v3, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    new-instance v2, Lcom/android/server/OemSceneButtonController$1;

    invoke-direct {v2, p0}, Lcom/android/server/OemSceneButtonController$1;-><init>(Lcom/android/server/OemSceneButtonController;)V

    const-class v3, Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Landroid/app/IActivityManager;->registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/OemSceneButtonController;)I
    .locals 1

    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    return v0
.end method

.method private getCarButtonSetting()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "oneplus_carmode_inside"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameButtonFeatureDisabled()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "temp_disable_scene_button_lcok_feature"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private getGameButtonSetting()Z
    .locals 4

    const-string v0, "1"

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v2, "game_mode_lock_buttons"

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;
    .locals 1

    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    if-nez v0, :cond_0

    new-instance v0, Lcom/android/server/OemSceneButtonController;

    invoke-direct {v0, p0}, Lcom/android/server/OemSceneButtonController;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    :cond_0
    sget-object v0, Lcom/android/server/OemSceneButtonController;->sInstance:Lcom/android/server/OemSceneButtonController;

    return-object v0
.end method

.method private getOnScreenNaviBarEnable()Z
    .locals 3

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string v1, "buttons_show_on_screen_navkeys"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1
.end method

.method private getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p1, :cond_2

    :try_start_0
    instance-of v1, p1, [Ljava/lang/String;

    if-eqz v1, :cond_2

    move-object v1, p1

    check-cast v1, [Ljava/lang/String;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    array-length v4, v1

    if-ge v3, v4, :cond_2

    aget-object v4, v1, v3

    const-string v5, "\\|"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "specialParam"

    aget-object v6, v4, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    array-length v5, v4

    const/4 v6, 0x2

    if-ge v5, v6, :cond_0

    const/4 v2, 0x0

    return-object v2

    :cond_0
    const/4 v5, 0x1

    aget-object v5, v4, v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    return-object v2

    :cond_2
    return-object v0
.end method

.method private handleBlockScreenGestures()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "handleBlockScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;->setGestureButtonBlock(Z)V

    const-string/jumbo v0, "persist.sys.osbc.operated"

    const-string v1, "1"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private handleRecoverScreenGestures()V
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "handleRecoverScreenGestures"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;->setGestureButtonBlock(Z)V

    const-string/jumbo v0, "persist.sys.osbc.operated"

    const-string v1, "0"

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->setProptValue(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private isBlockScreenGestures(Ljava/lang/Object;)Z
    .locals 11

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    const/4 v1, 0x3

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_3

    :try_start_0
    instance-of v4, p1, [Ljava/lang/String;

    if-eqz v4, :cond_3

    move-object v4, p1

    check-cast v4, [Ljava/lang/String;

    move v5, v3

    :goto_0
    array-length v6, v4

    if-ge v5, v6, :cond_3

    aget-object v6, v4, v5

    const-string v7, "\\|"

    invoke-virtual {v6, v7}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "keyBlock"

    aget-object v8, v6, v3

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    array-length v7, v6

    if-ge v7, v1, :cond_0

    return v3

    :cond_0
    aget-object v7, v6, v2

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    const/4 v9, 0x2

    :goto_1
    array-length v10, v6

    if-ge v9, v10, :cond_1

    aget-object v10, v6, v9

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    :cond_1
    invoke-virtual {v0, v7, v8}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_2

    :cond_3
    const/16 v4, 0xbb

    invoke-virtual {v0, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/4 v5, 0x4

    invoke-virtual {v0, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v4, :cond_7

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_4

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_4
    if-eqz v5, :cond_7

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_5

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    :cond_5
    if-eqz v1, :cond_7

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->ALL:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    sget-object v6, Lcom/android/server/OemSceneButtonController$Param;->FROM_NAVBAR_AND_NOT_HAS_NAVIGATIONBAR:Lcom/android/server/OemSceneButtonController$Param;

    invoke-virtual {v6}, Lcom/android/server/OemSceneButtonController$Param;->name()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_7

    :cond_6
    return v2

    :cond_7
    nop

    return v3

    :goto_2
    nop

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v3
.end method

.method private isNaviBarHidden()Z
    .locals 4

    sget-object v0, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v2, "oem_acc_key_lock_mode"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 v3, 0x1

    nop

    :cond_0
    return v3
.end method

.method private isOperatedScreenGestures()Z
    .locals 2

    const-string v0, "1"

    const-string/jumbo v1, "persist.sys.osbc.operated"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs makeParam([Ljava/lang/String;)Ljava/lang/String;
    .locals 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    array-length v1, p0

    const/4 v2, 0x0

    if-gtz v1, :cond_0

    return-object v2

    :cond_0
    const-string/jumbo v1, "keyBlock"

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v1, :cond_4

    array-length v1, p0

    const/4 v3, 0x3

    if-ge v1, v3, :cond_1

    return-object v2

    :cond_1
    const-string/jumbo v1, "keyBlock"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    nop

    :goto_0
    move v1, v4

    array-length v2, p0

    if-ge v1, v2, :cond_3

    aget-object v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, p0

    sub-int/2addr v2, v5

    if-eq v1, v2, :cond_2

    const-string/jumbo v2, "|"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    add-int/lit8 v4, v1, 0x1

    goto :goto_0

    :cond_3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_4
    const-string/jumbo v1, "specialParam"

    aget-object v3, p0, v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    array-length v1, p0

    if-ge v1, v4, :cond_5

    return-object v2

    :cond_5
    const-string/jumbo v1, "specialParam"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v1, p0, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    :cond_6
    return-object v2
.end method

.method private operateSpecialParams(Ljava/util/ArrayList;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I)V"
        }
    .end annotation

    if-nez p1, :cond_1

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string/jumbo v1, "operateSpecialParams list is null, return"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "Special for hideNavbar"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v3

    if-nez v3, :cond_2

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    :cond_2
    goto :goto_0

    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    if-nez v0, :cond_4

    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    :cond_4
    const/4 v1, 0x2

    if-ne p2, v1, :cond_5

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isNaviBarHidden()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v2}, Lcom/android/server/OemSceneButtonController;->setEnable(Z)V

    :cond_5
    return-void
.end method

.method private setKeyMode(I)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mResolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "oem_acc_key_lock_mode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setProptValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_0

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "set system property key:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |value:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " |curValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    :try_start_0
    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "OemSceneButtonController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "failed to set system property e:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleBlockScreenGestures()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleRecoverScreenGestures()V

    :cond_2
    :goto_0
    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public registerGestureButtonBlockListener(Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemSceneButtonController;->mGestureButtonBlockListener:Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;

    return-void
.end method

.method public setEnable(Z)V
    .locals 4

    if-eqz p1, :cond_0

    sget-object v0, Lcom/android/server/OemSceneButtonController$KeyLockMode;->FOOT:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v0}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0

    :cond_0
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getOnScreenNaviBarEnable()Z

    move-result v0

    sget-boolean v1, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v1, :cond_1

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[scene] onScreenNaviBarEnabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    if-eqz v0, :cond_2

    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->BACK_SWITCH:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/android/server/OemSceneButtonController$KeyLockMode;->NORMAL:Lcom/android/server/OemSceneButtonController$KeyLockMode;

    invoke-virtual {v1}, Lcom/android/server/OemSceneButtonController$KeyLockMode;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/server/OemSceneButtonController;->setKeyMode(I)V

    :goto_0
    return-void
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->isBlockScreenGestures(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleBlockScreenGestures()V

    :cond_1
    invoke-static {p1}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    const-string v1, "[scene] KeyBlocking: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/OemSceneButtonController;->getSpecialParams(Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lcom/android/server/OemSceneButtonController;->operateSpecialParams(Ljava/util/ArrayList;I)V

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->isOperatedScreenGestures()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->handleRecoverScreenGestures()V

    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/policy/OemPhoneWindowManager;->setKeyLocks(Ljava/lang/Object;)V

    const/4 v0, 0x0

    return v0
.end method

.method public updateFunctionRule(I)V
    .locals 4

    :try_start_0
    const-class v0, Lcom/oneplus/server/OIMCService$LocalService;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oneplus/server/OIMCService$LocalService;

    iput-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] mUser = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", update for user = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] game_mode_button_locked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", mIsButtonLockFeatureDisabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget v0, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    if-eq v0, p1, :cond_3

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_2

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[scene] removeFuncRule for blocking key "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    iget v2, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    invoke-virtual {v0, v1, v2}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    :cond_3
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonFeatureDisabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_4
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getGameButtonSetting()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_5
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_GameMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    :goto_0
    invoke-direct {p0}, Lcom/android/server/OemSceneButtonController;->getCarButtonSetting()Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v1, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v0, v1, p1}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_1
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "OemSceneButtonController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateFunctionRule error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    iput p1, p0, Lcom/android/server/OemSceneButtonController;->mUser:I

    return-void
.end method

.method public updateKeyguardDoneStatus(Z)V
    .locals 3

    sget-boolean v0, Lcom/android/server/OemSceneButtonController;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "OemSceneButtonController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateKeyguardStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, -0x2

    if-eqz p1, :cond_1

    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode_KeyguardUnlocked:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/server/OIMCService$LocalService;->removeFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/android/server/OemSceneButtonController;->mLocalOIMCService:Lcom/oneplus/server/OIMCService$LocalService;

    sget-object v2, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_CarMode_KeyguardUnlocked:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {v1, v2, v0}, Lcom/oneplus/server/OIMCService$LocalService;->addFuncRule(Lcom/oneplus/oimc/OIMCRule;I)V

    :goto_0
    return-void
.end method
