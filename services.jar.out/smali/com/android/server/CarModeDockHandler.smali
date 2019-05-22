.class public Lcom/android/server/CarModeDockHandler;
.super Ljava/lang/Object;
.source "CarModeDockHandler.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# static fields
.field private static final CAR_MODE_PKG:Ljava/lang/String; = "com.oneplus.carmode"

.field private static DBG:Z = false

.field private static final DBG_LOGV:Z

.field private static final DIALER_PKG:Ljava/lang/String; = "com.android.dialer"

.field private static ONEPLUS_CARMODE_DONOTDISTURB_SWITCH:Ljava/lang/String; = null

.field private static ONEPLUS_CARMODE_SWITCH:Ljava/lang/String; = null

.field private static final SPEECH_ASSIST_MAIN_ACCESS_CN:Ljava/lang/String; = "com.oneplus.speechassist/com.oneplus.speechassist.MainAccessActivity"

.field private static final SPEECH_ASSIST_PKG:Ljava/lang/String; = "com.oneplus.speechassist"

.field private static final TAG:Ljava/lang/String; = "CarModeDockHandler"

.field private static final TELE_SERVICE_PKG:Ljava/lang/String; = "com.android.server.telecom"

.field private static final VALUE_OFF_STR:Ljava/lang/String; = "0"

.field private static final VALUE_ON_STR:Ljava/lang/String; = "1"

.field private static sCarModeDockHandlerOn:Z

.field private static sCarModeInside:Z

.field private static sCarModePackageWithDock:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sContext:Landroid/content/Context;

.field private static sDockEntryMask:I

.field public static sDockHeight:I

.field private static sDockShown:Z

.field private static sInstance:Lcom/android/server/CarModeDockHandler;

.field private static sKeyguardShowing:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x0

    sput v0, Lcom/android/server/CarModeDockHandler;->sDockHeight:I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    sget-boolean v1, Landroid/os/Build;->DEBUG_ONEPLUS:Z

    sput-boolean v1, Lcom/android/server/CarModeDockHandler;->DBG:Z

    const-string/jumbo v1, "persist.debug.scene.carmodedock"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/CarModeDockHandler;->DBG_LOGV:Z

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeInside:Z

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sKeyguardShowing:Z

    const/4 v0, -0x1

    sput v0, Lcom/android/server/CarModeDockHandler;->sDockEntryMask:I

    const-string/jumbo v0, "oneplus_carmode_switch"

    sput-object v0, Lcom/android/server/CarModeDockHandler;->ONEPLUS_CARMODE_SWITCH:Ljava/lang/String;

    const-string/jumbo v0, "oneplus_carmode_donotdisturb_switch"

    sput-object v0, Lcom/android/server/CarModeDockHandler;->ONEPLUS_CARMODE_DONOTDISTURB_SWITCH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/server/CarModeDockHandler;
    .locals 4

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sInstance:Lcom/android/server/CarModeDockHandler;

    if-nez v0, :cond_1

    new-instance v0, Lcom/android/server/CarModeDockHandler;

    invoke-direct {v0, p0}, Lcom/android/server/CarModeDockHandler;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/server/CarModeDockHandler;->sInstance:Lcom/android/server/CarModeDockHandler;

    sput-object p0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x5050029

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/server/CarModeDockHandler;->sDockHeight:I

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_dock_show"

    const/4 v2, -0x2

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    sput-boolean v1, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    const/4 v0, -0x1

    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    invoke-static {v3}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    :cond_1
    sget-object v0, Lcom/android/server/CarModeDockHandler;->sInstance:Lcom/android/server/CarModeDockHandler;

    return-object v0
.end method

.method public static handleCarModeDockChange(Landroid/content/ComponentName;Z)V
    .locals 6

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG_LOGV:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "handleCarModeDockChange: component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    if-eqz p1, :cond_2

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_1

    const-string v0, "CarModeDockHandler"

    const-string/jumbo v1, "handleCarModeDockChange: launch hiding activity, skip"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    return-void

    :cond_2
    const/4 v0, -0x1

    if-nez p0, :cond_4

    sget-boolean v1, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v1, :cond_3

    const-string v1, "CarModeDockHandler"

    const-string/jumbo v2, "handleCarModeDockChange: invalid component name"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    return-void

    :cond_4
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.oneplus.carmode"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_5

    invoke-static {v4}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    invoke-static {v3}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    return-void

    :cond_5
    const-string v2, "com.android.dialer"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-static {}, Lcom/android/server/CarModeDockHandler;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_6

    const-string v2, "com.android.dialer.oneplus.car.OPCarDialtactsActivity"

    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_6

    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    invoke-static {v4}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    return-void

    :cond_6
    sget-object v2, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-static {}, Lcom/android/server/CarModeDockHandler;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_7

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->showDock(I)V

    invoke-static {v3}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    return-void

    :cond_7
    const-string v2, "com.oneplus.speechassist/com.oneplus.speechassist.MainAccessActivity"

    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    return-void

    :cond_8
    const-string v2, "com.android.server.telecom"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    return-void

    :cond_9
    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    invoke-static {v4}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    return-void
.end method

.method public static handleResetCarModeFlags()V
    .locals 3

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    const-string v1, "Clear car mode related settings value since car mode died"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/CarModeDockHandler;->ONEPLUS_CARMODE_SWITCH:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/server/CarModeDockHandler;->ONEPLUS_CARMODE_DONOTDISTURB_SWITCH:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_inside"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private static hideDock(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    const/4 v1, -0x2

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oneplus_carmode_dock_show"

    const-string v3, "0"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    sget v0, Lcom/android/server/CarModeDockHandler;->sDockEntryMask:I

    if-eq v0, p0, :cond_1

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oneplus_carmode_dock_mask_entry"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_1
    sput p0, Lcom/android/server/CarModeDockHandler;->sDockEntryMask:I

    return-void
.end method

.method public static isCarModeOn()Z
    .locals 4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    if-eqz v0, :cond_0

    const-string v0, "1"

    sget-object v1, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/android/server/CarModeDockHandler;->ONEPLUS_CARMODE_SWITCH:Ljava/lang/String;

    const/4 v3, -0x2

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isCarModeWindowWithDock(Ljava/lang/String;Z)Z
    .locals 4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sKeyguardShowing:Z

    if-eqz v0, :cond_1

    return v1

    :cond_1
    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG_LOGV:Z

    if-eqz v0, :cond_2

    const-string v0, "CarModeDockHandler"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "isCarModeWindowWithDock: packageName "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    if-nez p0, :cond_4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_3

    const-string v0, "CarModeDockHandler"

    const-string/jumbo v2, "isCarModeWindowWithDock: invalid package name"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return v1

    :cond_4
    invoke-static {}, Lcom/android/server/CarModeDockHandler;->isCarModeOn()Z

    move-result v0

    if-nez v0, :cond_6

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG_LOGV:Z

    if-eqz v0, :cond_5

    const-string v0, "CarModeDockHandler"

    const-string/jumbo v2, "isCarModeWindowWithDock: not in car mode"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return v1

    :cond_6
    const-string v0, "com.oneplus.carmode"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG_LOGV:Z

    if-eqz v0, :cond_7

    const-string v0, "CarModeDockHandler"

    const-string/jumbo v2, "isCarModeWindowWithDock: skip reset for car mode app"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_7
    return v1

    :cond_8
    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    if-nez v0, :cond_9

    return v1

    :cond_9
    const/4 v0, 0x1

    if-eqz p1, :cond_a

    return v0

    :cond_a
    const-string v2, "com.android.dialer"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/server/CarModeDockHandler;->isCarModeOn()Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-static {}, Lcom/android/server/CarModeDockHandler;->isInsideCarMode()Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    :cond_b
    sget-object v2, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    return v0

    :cond_c
    const-string v2, "com.android.server.telecom"

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    return v0

    :cond_d
    return v1
.end method

.method public static isInsideCarMode()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    if-eqz v0, :cond_0

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeInside:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static setCarModeInside(Z)V
    .locals 4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeInside:Z

    if-eq v0, p0, :cond_1

    sput-boolean p0, Lcom/android/server/CarModeDockHandler;->sCarModeInside:Z

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "oneplus_carmode_inside"

    sget-boolean v2, Lcom/android/server/CarModeDockHandler;->sCarModeInside:Z

    if-eqz v2, :cond_0

    const-string v2, "1"

    goto :goto_0

    :cond_0
    const-string v2, "0"

    :goto_0
    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    return-void
.end method

.method public static setKeyguardShowing(Z)V
    .locals 0

    sput-boolean p0, Lcom/android/server/CarModeDockHandler;->sKeyguardShowing:Z

    return-void
.end method

.method private static showDock(I)V
    .locals 4

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "showDock with masked index "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    const/4 v1, -0x2

    if-nez v0, :cond_1

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oneplus_carmode_dock_show"

    const-string v3, "1"

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sDockShown:Z

    sget v0, Lcom/android/server/CarModeDockHandler;->sDockEntryMask:I

    if-eq v0, p0, :cond_2

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "oneplus_carmode_dock_mask_entry"

    invoke-static {v0, v2, p0, v1}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :cond_2
    sput p0, Lcom/android/server/CarModeDockHandler;->sDockEntryMask:I

    return-void
.end method

.method private static updateDockInfo()V
    .locals 12

    :try_start_0
    sget-object v0, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    sget-object v0, Lcom/android/server/CarModeDockHandler;->sContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oneplus.carmode"

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    const-string/jumbo v2, "op_car_mode_dock"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    sget-boolean v3, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v3, :cond_0

    const-string v3, "CarModeDockHandler"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dockEntriesRawData = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-string v3, ";"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_2

    aget-object v7, v3, v6

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    aget-object v8, v8, v5

    const-string v9, ":"

    invoke-virtual {v7, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    aget-object v9, v9, v10

    const-string/jumbo v10, "na"

    const-string v11, "cn"

    invoke-virtual {v11, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    const-string v11, "/"

    invoke-virtual {v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v11

    aget-object v11, v11, v5

    move-object v10, v11

    :cond_1
    sget-object v11, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_2
    sget-boolean v3, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v3, :cond_3

    sget-object v3, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    const-string v5, "CarModeDockHandler"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "car mode dock entry ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v7, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ") : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :cond_3
    goto :goto_2

    :catch_0
    move-exception v0

    const-string v1, "CarModeDockHandler"

    const-string v2, "Exception while parsion dock info"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    sget-object v1, Lcom/android/server/CarModeDockHandler;->sCarModePackageWithDock:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    :goto_2
    return-void
.end method


# virtual methods
.method public config(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    const-string v1, "[scene] CarModeDockHandler: config"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    const-string v1, "[scene] CarModeDockHandler: start"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    invoke-static {}, Lcom/android/server/CarModeDockHandler;->updateDockInfo()V

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 2

    sget-boolean v0, Lcom/android/server/CarModeDockHandler;->DBG:Z

    if-eqz v0, :cond_0

    const-string v0, "CarModeDockHandler"

    const-string v1, "[scene] CarModeDockHandler: stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/CarModeDockHandler;->sCarModeDockHandlerOn:Z

    const/4 v1, -0x1

    invoke-static {v1}, Lcom/android/server/CarModeDockHandler;->hideDock(I)V

    invoke-static {v0}, Lcom/android/server/CarModeDockHandler;->setCarModeInside(Z)V

    return v0
.end method
