.class public Lcom/android/server/oneplus/MotorCalibrateHelper;
.super Ljava/lang/Object;
.source "MotorCalibrateHelper.java"


# static fields
.field private static final FAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

.field public static final HALL_CALIBRATION_DATA_BOTTOM_POS_HALL_ONE_INDEX:I = 0x6

.field public static final HALL_CALIBRATION_DATA_BOTTOM_POS_HALL_TWO_INDEX:I = 0x7

.field private static final HALL_CALIBRATION_DATA_FAR_HALL_ONE_INDEX:I = 0x4

.field private static final HALL_CALIBRATION_DATA_FAR_HALL_TWO_INDEX:I = 0x5

.field private static final HALL_CALIBRATION_DATA_LENGTH:I = 0xb

.field private static final HALL_CALIBRATION_DATA_NEAR_HALL_ONE_INDEX:I = 0x2

.field private static final HALL_CALIBRATION_DATA_NEAR_HALL_TWO_INDEX:I = 0x3

.field public static final HALL_CALIBRATION_DATA_PEAK_POS_HALL_ONE_INDEX:I = 0x8

.field public static final HALL_CALIBRATION_DATA_PEAK_POS_HALL_TWO_INDEX:I = 0x9

.field private static final HALL_ONE:I = 0x0

.field private static final HALL_TOTAL:I = 0x2

.field private static final HALL_TWO:I = 0x1

.field private static final INT_TO_BYTE_TRANSFER_UNIT:I = 0x4

.field private static final INVALID_HALL_IRQ:I = -0x1

.field private static final MOTOR_BLOCK_CALIBRATION_PATH:Ljava/lang/String; = "/sys/bus/platform/devices/vendor:motor_pl/hall_calibration"

.field private static final MOTOR_BLOCK_HALL_DATA_PATH:Ljava/lang/String; = "/sys/bus/platform/devices/vendor:motor_pl/hall_data"

.field public static final MOTOR_UP_STEP_COUNT_INDEX:I = 0xa

.field private static final NEAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

.field private static final TAG:Ljava/lang/String; = "MotorCalibrateHelper"

.field private static final VENDOR_PERSIST_CALIBRATION_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/hall_calibration"

.field private static sFarDeltaParameterIndex:I

.field private static sHallCaliDataInt:[I

.field private static sHallData:[I

.field public static sHallMaxDif:I

.field public static sHallMinDif:I

.field private static sLastHallCaliData:[Ljava/lang/String;

.field private static sNearDeltaParameterIndex:I

.field public static sNeedDownedCalibCount:I

.field public static sNeedUpedCalibCount:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->NEAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

    const/4 v0, 0x6

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->FAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

    const/4 v0, 0x2

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNearDeltaParameterIndex:I

    const/4 v1, 0x3

    sput v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sFarDeltaParameterIndex:I

    const/16 v1, 0xb

    new-array v2, v1, [I

    sput-object v2, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    new-array v0, v0, [I

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    new-array v0, v1, [Ljava/lang/String;

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sLastHallCaliData:[Ljava/lang/String;

    const/4 v0, 0x0

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    const/16 v0, 0x8

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMinDif:I

    const/16 v0, 0x28

    sput v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMaxDif:I

    return-void

    :array_0
    .array-data 4
        0x19
        0x14
        0xf
        0xa
    .end array-data

    :array_1
    .array-data 4
        0x28
        0x23
        0x1e
        0x19
        0x14
        0xf
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static downedCalib()V
    .locals 6

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getHallData()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    sget-object v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    const/4 v2, 0x0

    aget v1, v1, v2

    add-int/lit16 v1, v1, -0x96

    aput v1, v0, v2

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    const/4 v1, 0x2

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    aget v3, v3, v2

    sget-object v4, Lcom/android/server/oneplus/MotorCalibrateHelper;->NEAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

    sget v5, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNearDeltaParameterIndex:I

    aget v4, v4, v5

    sub-int/2addr v3, v4

    aput v3, v0, v1

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    const/4 v1, 0x3

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    const/4 v4, 0x1

    aget v3, v3, v4

    add-int/2addr v3, v4

    aput v3, v0, v1

    nop

    :goto_0
    move v0, v2

    sget-object v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "MotorCalibrateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "downedCalib i : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sHallCaliDataInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static getCalibrationData()Ljava/lang/String;
    .locals 2

    const-string v0, "MotorCalibrateHelper"

    const-string v1, "/sys/bus/platform/devices/vendor:motor_pl/hall_calibration"

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorCalibrateHelper;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getHallData()[I
    .locals 6

    const-string v0, "MotorCalibrateHelper"

    const-string v1, "/sys/bus/platform/devices/vendor:motor_pl/hall_data"

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorCalibrateHelper;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorCalibrateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getHallData hallData: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x2

    new-array v2, v1, [I

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v4, v3

    if-ne v4, v1, :cond_0

    const/4 v1, 0x0

    :try_start_0
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1

    const/4 v1, 0x1

    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v4, "MotorCalibrateHelper"

    const-string/jumbo v5, "hall data parse error : "

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v2, 0x0

    :cond_0
    :goto_0
    return-object v2
.end method

.method public static initHallCalibrationData()Z
    .locals 10

    const-string v0, "MotorCalibrateHelper"

    const-string v1, "/mnt/vendor/persist/engineermode/hall_calibration"

    invoke-static {v0, v1}, Lcom/android/server/oneplus/MotorCalibrateHelper;->readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    :try_start_0
    const-string v2, ","

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    array-length v3, v2

    const/16 v4, 0xb

    if-eq v3, v4, :cond_1

    goto :goto_0

    :cond_1
    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v6, v2, v1

    aput-object v6, v4, v1

    const/4 v6, 0x1

    aget-object v7, v2, v6

    aput-object v7, v4, v6

    const/4 v7, 0x2

    aget-object v8, v2, v7

    aput-object v8, v4, v7

    const/4 v7, 0x3

    aget-object v8, v2, v7

    aput-object v8, v4, v7

    const/4 v7, 0x4

    aget-object v8, v2, v7

    aput-object v8, v4, v7

    const/4 v8, 0x5

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    const/4 v8, 0x6

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    const/4 v8, 0x7

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    const/16 v8, 0x8

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    const/16 v8, 0x9

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    const/16 v8, 0xa

    aget-object v9, v2, v8

    aput-object v9, v4, v8

    invoke-static {v3, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->getInstance()Lcom/android/server/oneplus/MotorManagerService;

    move-result-object v4

    invoke-virtual {v4, v7, v3}, Lcom/android/server/oneplus/MotorManagerService;->writeMotorCalibData(ILjava/lang/String;)I

    :cond_2
    const-string v4, "MotorCalibrateHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "initHallCalibrationData : "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    return v6

    :cond_3
    :goto_0
    const-string v3, "MotorCalibrateHelper"

    const-string/jumbo v4, "invalid hall data need to be saved"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    :catch_0
    move-exception v2

    const-string v3, "MotorCalibrateHelper"

    const-string v4, "failed to init hall data, "

    invoke-static {v3, v4, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return v1
.end method

.method public static isCalibrationDataAvailble([I)Z
    .locals 5

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    array-length v1, p0

    const/16 v2, 0xb

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    aget v2, p0, v1

    const/16 v3, 0x1d1

    if-le v2, v3, :cond_1

    const-string v2, "MotorCalibrateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hallCaliData[HALL_CALIBRATION_DATA_NEAR_HALL_ONE_INDEX] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is overflow"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_1
    const/4 v1, 0x5

    aget v2, p0, v1

    const/16 v3, 0x1e0

    if-le v2, v3, :cond_2

    const-string v2, "MotorCalibrateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "hallCaliData[HALL_CALIBRATION_DATA_FAR_HALL_TWO_INDEX] : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v1, p0, v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " is overflow"

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0

    :cond_3
    :goto_0
    const-string v1, "MotorCalibrateHelper"

    const-string/jumbo v2, "invalid hall data need to be saved"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v0
.end method

.method public static isNeedCalib(Z)Z
    .locals 10

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getHallData()[I

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    array-length v2, v0

    const/4 v3, 0x2

    if-eq v2, v3, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getCalibrationData()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_1

    return v1

    :cond_1
    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    array-length v5, v4

    const/16 v6, 0xb

    if-eq v5, v6, :cond_2

    goto :goto_0

    :cond_2
    aget-object v3, v4, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    const/4 v5, 0x5

    aget-object v5, v4, v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    if-eqz p0, :cond_3

    aget v6, v0, v1

    sub-int/2addr v6, v3

    sget v7, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMinDif:I

    if-le v6, v7, :cond_3

    aget v6, v0, v1

    sub-int/2addr v6, v3

    sget v7, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMaxDif:I

    if-ge v6, v7, :cond_3

    const-string v6, "MotorCalibrateHelper"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isNeedCalib hallsData[0]: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v8, v0, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " near_hall1: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedDownedCalibCount:I

    return v1

    :cond_3
    if-nez p0, :cond_4

    const/4 v6, 0x1

    aget v7, v0, v6

    sub-int/2addr v7, v5

    sget v8, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMinDif:I

    if-le v7, v8, :cond_4

    aget v7, v0, v6

    sub-int/2addr v7, v5

    sget v8, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallMaxDif:I

    if-ge v7, v8, :cond_4

    const-string v7, "MotorCalibrateHelper"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "isNeedCalib hallsData[1]: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v6, v0, v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " far_hall2: "

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sput v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sNeedUpedCalibCount:I

    return v1

    :cond_4
    return v1

    :cond_5
    :goto_0
    return v1

    :cond_6
    :goto_1
    return v1
.end method

.method private static readStringFromFile(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "MotorCalibrateHelper"

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile file not exists : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :cond_2
    :try_start_0
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v0, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object v2, v0

    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_3

    :catch_0
    move-exception v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io close exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    const/4 v3, 0x0

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :goto_1
    goto :goto_2

    :catch_2
    move-exception v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "readStringFromFile io close exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_3
    :goto_2
    move-object v0, v3

    :goto_3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "readStringFromFile path:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", result:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0

    :goto_4
    if-eqz v2, :cond_4

    :try_start_4
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_5

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "readStringFromFile io close exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_5
    throw v0

    :cond_5
    :goto_6
    const-string/jumbo v1, "readStringFromFile invalid file path"

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public static resetHallCalibrationData()Z
    .locals 11

    const-string v0, "170"

    const-string v1, "170"

    const-string v2, "480"

    const-string v3, "0"

    const-string v4, "0"

    const-string v5, "480"

    const-string v6, "500"

    const-string v7, "0"

    const-string v8, "0"

    const-string v9, "500"

    const-string v10, "1500"

    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getCalibrationData()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    array-length v3, v2

    const/16 v4, 0xb

    if-ne v3, v4, :cond_0

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v4, :cond_0

    sget-object v6, Lcom/android/server/oneplus/MotorCalibrateHelper;->sLastHallCaliData:[Ljava/lang/String;

    sget-object v7, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    aget-object v10, v2, v5

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v3

    invoke-static {v7, v8, v9}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_0
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "MotorCalibrateHelper"

    const-string/jumbo v3, "number format exception, "

    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalibrationData([Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public static saveCalib()Z
    .locals 8

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->isCalibrationDataAvailble([I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    new-array v2, v0, [Ljava/lang/String;

    move v3, v1

    :goto_0
    const/4 v4, 0x1

    if-ge v3, v0, :cond_0

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v6, "%d"

    new-array v4, v4, [Ljava/lang/Object;

    sget-object v7, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    aget v7, v7, v3

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v1

    invoke-static {v5, v6, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    invoke-static {v2}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalibrationData([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getCalibrationData()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MotorCalibrateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "caliData = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_1
    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sLastHallCaliData:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalibrationData([Ljava/lang/String;)Z

    return v1

    :cond_2
    const-string v0, "MotorCalibrateHelper"

    const-string/jumbo v2, "isCalibrationDataAvailble false"

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sLastHallCaliData:[Ljava/lang/String;

    invoke-static {v0}, Lcom/android/server/oneplus/MotorCalibrateHelper;->saveCalibrationData([Ljava/lang/String;)Z

    return v1
.end method

.method public static saveCalibrationData([Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    array-length v2, p0

    const/16 v3, 0xb

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "%s,%s,%s,%s,%s,%s,%s,%s,%s,%s,%s"

    new-array v3, v3, [Ljava/lang/Object;

    aget-object v5, p0, v1

    aput-object v5, v3, v1

    const/4 v1, 0x1

    aget-object v5, p0, v1

    aput-object v5, v3, v1

    const/4 v1, 0x2

    aget-object v5, p0, v1

    aput-object v5, v3, v1

    const/4 v1, 0x3

    aget-object v5, p0, v1

    aput-object v5, v3, v1

    const/4 v1, 0x4

    aget-object v5, p0, v1

    aput-object v5, v3, v1

    const/4 v5, 0x5

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/4 v5, 0x6

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/4 v5, 0x7

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0x8

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0x9

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    const/16 v5, 0xa

    aget-object v6, p0, v5

    aput-object v6, v3, v5

    invoke-static {v2, v4, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "MotorCalibrateHelper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "saveCalibrationData newCalibrationData ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v2, :cond_1

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->getInstance()Lcom/android/server/oneplus/MotorManagerService;

    move-result-object v3

    invoke-virtual {v3, v1, v2}, Lcom/android/server/oneplus/MotorManagerService;->writeMotorCalibData(ILjava/lang/String;)I

    const-string v1, "MotorCalibrateHelper"

    const-string v3, "/mnt/vendor/persist/engineermode/hall_calibration"

    invoke-static {v1, v3, v2}, Lcom/android/server/oneplus/MotorCalibrateHelper;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_1
    return v0

    :cond_2
    :goto_0
    const-string v2, "MotorCalibrateHelper"

    const-string/jumbo v3, "invalid hall data need to be saved"

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private static toByteArray(II)[B
    .locals 3

    new-array v0, p1, [B

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x4

    if-ge v1, v2, :cond_0

    if-ge v1, p1, :cond_0

    const/16 v2, 0x8

    mul-int/2addr v2, v1

    shr-int v2, p0, v2

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public static upedCalib()V
    .locals 6

    invoke-static {}, Lcom/android/server/oneplus/MotorCalibrateHelper;->getHallData()[I

    move-result-object v0

    sput-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    sget-object v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    const/4 v2, 0x1

    aget v1, v1, v2

    add-int/lit16 v1, v1, -0x96

    aput v1, v0, v2

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    const/4 v1, 0x4

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    const/4 v4, 0x0

    aget v3, v3, v4

    add-int/2addr v3, v2

    aput v3, v0, v1

    sget-object v0, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    const/4 v1, 0x5

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallData:[I

    aget v2, v3, v2

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->FAR_CALIBRATION_DELTA_STANDARD_ARRAY:[I

    sget v5, Lcom/android/server/oneplus/MotorCalibrateHelper;->sFarDeltaParameterIndex:I

    aget v3, v3, v5

    sub-int/2addr v2, v3

    aput v2, v0, v1

    nop

    :goto_0
    move v0, v4

    sget-object v1, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v1, "MotorCalibrateHelper"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "upedCalib i : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v3, "sHallCaliDataInt: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/android/server/oneplus/MotorCalibrateHelper;->sHallCaliDataInt:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v4, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method private static writeStringToFile(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_5

    if-eqz p2, :cond_5

    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    goto/16 :goto_5

    :cond_0
    if-nez p0, :cond_1

    const-string p0, "MotorCalibrateHelper"

    :cond_1
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x0

    new-instance v4, Ljava/io/File;

    invoke-direct {v4, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile file not exists : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    :try_start_0
    new-instance v1, Ljava/io/FileWriter;

    invoke-direct {v1, v2}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V

    move-object v3, v1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V

    const/4 v0, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "writeStringToFile write "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " to "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_2

    :catch_0
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    :goto_1
    const-string/jumbo v5, "writeStringToFile io close exception :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catchall_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeStringToFile io exception:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v3, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    :catch_2
    move-exception v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_1

    :cond_3
    :goto_2
    return v0

    :goto_3
    if-eqz v3, :cond_4

    :try_start_4
    invoke-virtual {v3}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_4

    :catch_3
    move-exception v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "writeStringToFile io close exception :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_4
    throw v1

    :cond_5
    :goto_5
    const-string/jumbo v2, "writeStringToFile invalid file path or value"

    invoke-static {p0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method
