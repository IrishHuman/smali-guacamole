.class public Lcom/oneplus/server/OIMCUtil;
.super Ljava/lang/Object;
.source "OIMCUtil.java"


# static fields
.field static final DEBUG:Z

.field private static final HAS_HW_KEYS:Z

.field static final TAG:Ljava/lang/String; = "OIMC"

.field private static sCarModeDockHandler:Lcom/android/server/CarModeDockHandler;

.field private static sESportMode:Lcom/android/server/ESportMode;

.field private static sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

.field private static sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

.field private static sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

.field private static sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

.field private static sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

.field private static sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

.field private static sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

.field private static sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

.field private static sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

.field private static sSpecialIMCallingHandler:Lcom/android/server/SpecialIMCallingHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget-boolean v0, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->DEBUG:Z

    const-string v0, "1"

    const-string/jumbo v1, "qemu.hw.mainkeys"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/oneplus/server/OIMCUtil;->HAS_HW_KEYS:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static adjustOIMCRulesForSwitch(Lcom/oneplus/server/OIMCService;I)V
    .locals 4

    :try_start_0
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0, p1}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const/16 v2, 0x43

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/android/server/am/OemSceneWiFiBoostController;->addOrRemoveRule(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static log(Ljava/lang/String;)V
    .locals 1

    const-string v0, "OIMC"

    invoke-static {v0, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public static log(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1

    const-string v0, "OIMC"

    invoke-static {v0, p0, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method public static registerOIMCFunctions(Lcom/oneplus/server/OIMCService;)V
    .locals 8

    :try_start_0
    new-instance v0, Lcom/oneplus/server/ColorManager;

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oneplus/server/ColorManager;-><init>(Landroid/content/Context;)V

    const-string v1, "GrayColor"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mGrayColor:Lcom/oneplus/server/ColorManager$GrayColor;

    const/4 v3, 0x1

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "ColorBalance"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorBalance:Lcom/oneplus/server/ColorManager$ColorBalance;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "ColorDisable"

    iget-object v2, v0, Lcom/oneplus/server/ColorManager;->mColorDisable:Lcom/oneplus/server/ColorManager$ColorDisable;

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    const-string v1, "HeadsUpNotification"

    const-string/jumbo v2, "op_oimc_func_disable_headsup"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    const-string v1, "HeadsUpNotificationBreath"

    const-string/jumbo v2, "op_oimc_func_disable_headsup_breath"

    invoke-virtual {p0, v1, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/scene/OimcBrickModeObserver;->getInstance()Lcom/oneplus/scene/OimcBrickModeObserver;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, "BrickModeObserver"

    invoke-virtual {p0, v2, v3, v1}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_0
    const-string v2, "HeadsUpNotificationCar"

    const-string/jumbo v4, "op_oimc_func_disable_headsup_car"

    invoke-virtual {p0, v2, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    invoke-static {}, Lcom/oneplus/scene/OimcCarModeObserver;->getInstance()Lcom/oneplus/scene/OimcCarModeObserver;

    move-result-object v2

    if-eqz v2, :cond_1

    const-string v4, "CarModeObserver"

    invoke-virtual {p0, v4, v3, v2}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_1
    invoke-static {}, Lcom/oneplus/scene/OimcGameModeObserver;->getInstance()Lcom/oneplus/scene/OimcGameModeObserver;

    move-result-object v4

    if-eqz v4, :cond_2

    const-string v5, "GameModeObserver"

    invoke-virtual {p0, v5, v3, v4}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_2
    new-array v5, v3, [I

    const/16 v6, 0x43

    const/4 v7, 0x0

    aput v6, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v5

    if-eqz v5, :cond_3

    const-string v6, "WiFiBackgroudNetLimit"

    invoke-virtual {p0, v6, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_3
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/oneplus/util/OemSceneCallBlocker;->getInstance(Landroid/content/Context;)Lcom/oneplus/util/OemSceneCallBlocker;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    if-eqz v5, :cond_4

    const-string v5, "NotifyFor3PtyCallsBlocking"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_4
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/ESportMode;->getInstance(Landroid/content/Context;)Lcom/android/server/ESportMode;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    if-eqz v5, :cond_5

    const-string v5, "ESportMode"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sESportMode:Lcom/android/server/ESportMode;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_5
    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    if-eqz v5, :cond_6

    const-string v5, "NotifyFor3PtyCallsBlocking_CarMode"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneCallBlocker:Lcom/oneplus/util/OemSceneCallBlocker;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_6
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/SpecialIMCallingHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/SpecialIMCallingHandler;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sSpecialIMCallingHandler:Lcom/android/server/SpecialIMCallingHandler;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sSpecialIMCallingHandler:Lcom/android/server/SpecialIMCallingHandler;

    if-eqz v5, :cond_7

    const-string v5, "SpecialIMCallingHandler"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sSpecialIMCallingHandler:Lcom/android/server/SpecialIMCallingHandler;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_7
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/CarModeDockHandler;->getInstance(Landroid/content/Context;)Lcom/android/server/CarModeDockHandler;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sCarModeDockHandler:Lcom/android/server/CarModeDockHandler;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sCarModeDockHandler:Lcom/android/server/CarModeDockHandler;

    if-eqz v5, :cond_8

    const-string v5, "CarModeDockHandler"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sCarModeDockHandler:Lcom/android/server/CarModeDockHandler;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_8
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneAutoBrightnessController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAutoBrightnessController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    if-eqz v5, :cond_9

    const-string v5, "TurnOffAutoBacklight"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_9
    new-array v5, v3, [I

    const/16 v6, 0xb

    aput v6, v5, v7

    invoke-static {v5}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v5

    if-eqz v5, :cond_a

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneButtonController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneButtonController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v5, :cond_a

    const-string v5, "KeyBlocking"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_a
    sget-boolean v5, Lserver/oneplus/scene/OemSceneAdModeController;->IN_USING:Z

    if-eqz v5, :cond_b

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lserver/oneplus/scene/OemSceneAdModeController;->getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneAdModeController;

    move-result-object v5

    if-eqz v5, :cond_b

    const-string v6, "AdModeController"

    invoke-virtual {p0, v6, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_b
    sget-boolean v5, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v5, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    move-result-object v5

    if-eqz v5, :cond_c

    const-string v6, "XLVMotorController"

    invoke-virtual {p0, v6, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_c
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneVibrationController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneVibrationController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    if-eqz v5, :cond_d

    const-string v5, "AllowWhiteVibration"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneVibrationController:Lcom/android/server/OemSceneVibrationController;

    invoke-virtual {v6}, Lcom/android/server/OemSceneVibrationController;->getAllowWhiteVibration()Lcom/android/server/OemSceneVibrationController$AllowWhiteVibration;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_d
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneActivityController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneActivityController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    if-eqz v5, :cond_e

    const-string v5, "AllowWhiteActivity"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneActivityController:Lcom/android/server/OemSceneActivityController;

    invoke-virtual {v6}, Lcom/android/server/OemSceneActivityController;->getAllowWhiteActivity()Lcom/android/server/OemSceneActivityController$AllowWhiteActivity;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_e
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneLightsController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneLightsController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    if-eqz v5, :cond_f

    const-string v5, "BreathModeLedController"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneLightsController:Lcom/android/server/OemSceneLightsController;

    invoke-virtual {v6}, Lcom/android/server/OemSceneLightsController;->getBreathModeLedController()Lcom/android/server/OemSceneLightsController$BreathModeLedController;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_f
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneFloatWindowController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneFloatWindowController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    if-eqz v5, :cond_10

    const-string v5, "FloatWindowController"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneFloatWindowController:Lcom/android/server/OemSceneFloatWindowController;

    invoke-virtual {v6}, Lcom/android/server/OemSceneFloatWindowController;->getFloatWindowController()Lcom/android/server/OemSceneFloatWindowController$FloatWindowController;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_10
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneAudioController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAudioController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    if-eqz v5, :cond_11

    const-string v5, "AudioProcessesController"

    sget-object v6, Lcom/oneplus/server/OIMCUtil;->sOemSceneAudioController:Lcom/android/server/OemSceneAudioController;

    invoke-virtual {v6}, Lcom/android/server/OemSceneAudioController;->getAudioProcessesController()Lcom/android/server/OemSceneAudioController$AudioProcessesController;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    :cond_11
    const-string v5, "AnswerWithoutUI"

    const-string/jumbo v6, "op_oimc_func_answer_without_ui"

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILjava/lang/String;)V

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v5

    sput-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v5, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v5}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    const-string v5, "FingerprintGestureLimit"

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Lcom/oneplus/server/FingerprintGestureLimit;->getInstance(Landroid/content/Context;)Lcom/oneplus/server/FingerprintGestureLimit;

    move-result-object v6

    invoke-virtual {p0, v5, v3, v6}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V

    invoke-static {}, Lcom/android/server/am/OnePlusRamBoostManager;->getInstance()Lcom/android/server/am/OnePlusRamBoostManager;

    move-result-object v5

    if-eqz v5, :cond_12

    const-string v6, "OnePlusRamboost"

    invoke-virtual {p0, v6, v3, v5}, Lcom/oneplus/server/OIMCService;->registerFunction(Ljava/lang/String;ILcom/oneplus/oimc/IOPFunction;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_12
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCFunctions error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static registerOIMCRulesForBoot(Lcom/oneplus/server/OIMCService;)V
    .locals 4

    :try_start_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAutoBrightnessController:Lcom/android/server/OemSceneAutoBrightnessController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneAutoBrightnessController;->updateFunctionRule(I)V

    :cond_0
    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneButtonController:Lcom/android/server/OemSceneButtonController;

    invoke-virtual {v0, v1}, Lcom/android/server/OemSceneButtonController;->updateFunctionRule(I)V

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->getInstance(Landroid/content/Context;)Lcom/android/server/OemSceneAnswerWithoutUIController;

    move-result-object v0

    sput-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-virtual {v0}, Lcom/android/server/OemSceneAnswerWithoutUIController;->registerAnswerWithoutUIContentObServer()V

    sget-object v0, Lcom/oneplus/server/OIMCUtil;->sOemSceneAnswerWithoutUIController:Lcom/android/server/OemSceneAnswerWithoutUIController;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/OemSceneAnswerWithoutUIController;->addOrRemoveRule(I)V

    :cond_2
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/16 v2, 0x43

    aput v2, v0, v1

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcom/android/server/am/OemSceneWiFiBoostController;->getInstance()Lcom/android/server/am/OemSceneWiFiBoostController;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/android/server/am/OemSceneWiFiBoostController;->isInitFunc()Z

    move-result v1

    if-eqz v1, :cond_3

    sget-object v1, Lcom/oneplus/oimc/OIMCRule;->Rule_WiFiBackgroudNetLimit:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v1}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    :cond_3
    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NightMode_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ReadMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_GrayColor:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_Disable_ColorBalance:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FingerPrintMode_ColorDisable:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Disable_FingerprintGesture:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_ESportMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_NotifyFor3PtyCallsBlocking_CarMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_SpecialIMCallingHandler:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/android/server/OemSceneButtonController;->Rule_KeyBlocking_BrickMode:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_CarModeDockHandler:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteVibration:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AllowWhiteActivity:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_BreathModeLedController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_FloatWindowController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_AudioProcessesController:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Brick_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Game_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-object v0, Lcom/oneplus/oimc/OIMCRule;->Rule_Car_Mode_Observer:Lcom/oneplus/oimc/OIMCRule;

    invoke-virtual {p0, v0}, Lcom/oneplus/server/OIMCService;->addFuncRuleGlobal(Lcom/oneplus/oimc/OIMCRule;)V

    sget-boolean v0, Lserver/oneplus/scene/OemSceneAdModeController;->IN_USING:Z

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneAdModeController;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Lserver/oneplus/scene/OemSceneAdModeController;->updateFunctionRule()V

    :cond_4
    sget-boolean v0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->IN_USING:Z

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/oneplus/server/OIMCService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->getInstance(Landroid/content/Context;)Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;

    move-result-object v0

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;->updateFunctionRule()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "OIMC"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "registerOIMCRules error "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static toFuncAction(Ljava/lang/String;)I
    .locals 5

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x50c07cbe

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-eq v0, v1, :cond_2

    const/16 v1, 0xddf

    if-eq v0, v1, :cond_1

    const v1, 0x1ad6f

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string/jumbo v0, "off"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v3

    goto :goto_1

    :cond_1
    const-string/jumbo v0, "on"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "config"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v4

    :goto_1
    packed-switch v0, :pswitch_data_0

    return v4

    :pswitch_0
    const/4 v0, 0x3

    return v0

    :pswitch_1
    return v2

    :pswitch_2
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
