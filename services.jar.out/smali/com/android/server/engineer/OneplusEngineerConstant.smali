.class public Lcom/android/server/engineer/OneplusEngineerConstant;
.super Ljava/lang/Object;
.source "OneplusEngineerConstant.java"


# static fields
.field static final ACTION_ENGINEERMODE_ORDER:Ljava/lang/String; = "com.oem.engineermode.EngineerModeMain"

.field static final ACTION_FASTBOOT_UNLOCK:I = 0xf4277

.field static final ACTION_GET_BACKCOVER_COLOR_ID:I = 0x186a5

.field static final ACTION_GET_BOOT_IMG_WATERMARK:I = 0xf425d

.field static final ACTION_GET_CALIBRATION_STATUS_FROM_NVRAM:I = 0xf4259

.field static final ACTION_GET_CARRIER_VERSION:I = 0xf4248

.field static final ACTION_GET_CARRIER_VERSION_FROM_NVRAM:I = 0xf4257

.field static final ACTION_GET_DEVICELOCK_DAYS:I = 0xf4265

.field static final ACTION_GET_DEVICELOCK_FIRST_BIND_TIME:I = 0xf426b

.field static final ACTION_GET_DEVICELOCK_ICCID:I = 0xf4269

.field static final ACTION_GET_DEVICELOCK_IMSI:I = 0xf4263

.field static final ACTION_GET_DEVICELOCK_LAST_BIND_TIME:I = 0xf4267

.field static final ACTION_GET_DEVICELOCK_STATUS:I = 0xf4261

.field static final ACTION_GET_DEVICELOCK_UNLOCK_TIME:I = 0xf426d

.field static final ACTION_GET_DOWNLOAD_MODE_FLAG:I = 0xf4279

.field static final ACTION_GET_DOWNLOAD_STATUS:I = 0x186a1

.field static final ACTION_GET_EMMC_HEALTH_INFO:I = 0x186a4

.field static final ACTION_GET_ENCRYPT_IMEI_FROM_NVRAM:I = 0xf4256

.field static final ACTION_GET_OEM_PRODUCT_INFO_FROM_NVRAM:I = 0xf425a

.field static final ACTION_GET_OEM_SERIAL_NO:I = 0xf427b

.field static final ACTION_GET_REGION_NETLOCK:I = 0xf424a

.field static final ACTION_GET_SERIAL_NO_FROM_NVRAM:I = 0xf4252

.field static final ACTION_GET_SERIAL_PORT_STATE:I = 0x186a2

.field static final ACTION_GET_SIM_OPERATOR_SWITCH:I = 0xf425b

.field static final ACTION_GET_SINGLEDOUBLE_CARE:I = 0xf4250

.field static final ACTION_GET_TELCEL_SIMLOCK:I = 0xf424c

.field static final ACTION_GET_TELCEL_SIMLOCK_UNLOCK_TIMES:I = 0xf424e

.field static final ACTION_SAVE_CARRIER_VERSION_TO_NVRAM:I = 0xf4258

.field static final ACTION_SAVE_SERIAL_NO_TO_NVRAM:I = 0xf4253

.field static final ACTION_SET_BACKCOVER_COLOR_ID:I = 0x186a6

.field static final ACTION_SET_CARRIER_VERSION:I = 0xf4249

.field static final ACTION_SET_DEVICELOCK_DAYS:I = 0xf4266

.field static final ACTION_SET_DEVICELOCK_FIRST_BIND_TIME:I = 0xf426c

.field static final ACTION_SET_DEVICELOCK_ICCID:I = 0xf426a

.field static final ACTION_SET_DEVICELOCK_IMSI:I = 0xf4264

.field static final ACTION_SET_DEVICELOCK_LAST_BIND_TIME:I = 0xf4268

.field static final ACTION_SET_DEVICELOCK_STATUS:I = 0xf4262

.field static final ACTION_SET_DEVICELOCK_UNLOCK_TIME:I = 0xf426e

.field static final ACTION_SET_DOWNLOAD_MODE_FLAG:I = 0xf4278

.field static final ACTION_SET_OEM_SERIAL_NO:I = 0xf427a

.field static final ACTION_SET_REGION_NETLOCK:I = 0xf424b

.field static final ACTION_SET_SERIAL_PORT_STATE:I = 0x186a3

.field static final ACTION_SET_SIM_OPERATOR_SWITCH:I = 0xf425c

.field static final ACTION_SET_SINGLEDOUBLE_CARE:I = 0xf4251

.field static final ACTION_SET_TELCEL_SIMLOCK:I = 0xf424d

.field static final ACTION_SET_TELCEL_SIMLOCK_UNLOCK_TIMES:I = 0xf424f

.field static final ATM_MODEM_MODE_NORMAL:Ljava/lang/String; = "normal"

.field static final ATM_MODEM_MODE_PROPERTY:Ljava/lang/String; = "persist.vendor.atm.mdmode"

.field static final BACK_COVER_COLOR_ID_PROP:Ljava/lang/String; = "ro.hw.phone.color"

.field static final BACK_COVER_COLOR_ID_REG_STRING:Ljava/lang/String; = "[a-f0-9A-F]{8}"

.field static final BATTERY_HW_STATUS_NODE:Ljava/lang/String; = "/sys/class/power_supply/battery/short_c_hw_status"

.field static final BATTERY_IC_OTP_STATUS_NODE:Ljava/lang/String; = "/sys/class/power_supply/battery/short_ic_otp_status"

.field static final BUILD_RELEASE_TYPE_PROPERTY:Ljava/lang/String; = "ro.build.release_type"

.field static final CE_CMD_GOOGLE_ATTESTATION_VERIFY:I = 0x4

.field static final CE_CMD_GOOGLE_ATTESTATION_WRITE:I = 0x3

.field static final COLOR_OS_TELEPHONY_MANAGER_CLASS_NAME:Ljava/lang/String; = "android.telephony.ColorOSTelephonyManager"

.field static final COLOR_OS_TELEPHONY_MANAGER_GET_DEFAULT:Ljava/lang/String; = "getDefault"

.field static final CRICAL_TYPE_BATTERY_STATUS:I = 0x46

.field static final DETECT_MASTER_CLEAR_RESULT_CLASS:Ljava/lang/String; = "com.oneplus.factorymode.DetectMasterClearResult"

.field static final DOWNLOAD_MODE_PRODUCTION_LOGIN_MODE:Ljava/lang/String; = "\"login_mode\":\t\"production\""

.field static final ENGINEERMODE_PACKAGE_NAME:Ljava/lang/String; = "com.oneplus.factorymode"

.field static final ENGINEER_MODE_TEST_MARK_FAIL:I = 0x2

.field static final ENGINEER_MODE_TEST_MARK_NOT_TEST:I = 0x0

.field static final ENGINEER_MODE_TEST_MARK_PASS:I = 0x1

.field static final ERR_HW_ERR:I = 0x6

.field static final ERR_IC_ERR:I = 0x7

.field static final EXTRA_ENGINEERMODE_ORDER:Ljava/lang/String; = "order"

.field static final EXTRA_MODEL_TEST_NUMBER:Ljava/lang/String; = "modeltest_key"

.field static final MASTER_CLEAR_CLASS_NAME:Ljava/lang/String; = "com.oneplus.factorymode.manualtest.MasterClear"

.field static final MASTER_CLEAR_RESULT_PROP:Ljava/lang/String; = "sys.masterclear.result"

.field static final MMI_PACKAGE_NAME:Ljava/lang/String; = "com.oem.autotest"

.field static final MMI_SERVER_CLASS_NAME:Ljava/lang/String; = "com.oem.autotest.connector.AutoTestServer"

.field static final MMI_SERVER_START_BROADCAST_ACTION:Ljava/lang/String; = "oneplus.intent.action.START_OPPO_AT_SERVER"

.field static final MMI_SERVER_STOP_BROADCAST_ACTION:Ljava/lang/String; = "oneplus.intent.action.STOP_OPPO_AT_SERVER"

.field static final MODEL_TEST_INTENT_BASE:Ljava/lang/String; = "com.oppo.engineermode.manualtest.modeltest.ModelTest"

.field static final MTK_PCBA_PROPERTY:Ljava/lang/String; = "vendor.gsm.serial"

.field static final NVRAM_FACTORY_NUMBER_INFO_LENGTH:I = 0x10

.field static final NVRAM_OEM_PRODUCT_INFO_LENGTH:I = 0x80

.field static final OEM_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oem.permission.OEM_COMPONENT_SAFE"

.field static final OEM_FACTORY_NO_PROPERTY:Ljava/lang/String; = "oem.eng.factory.no"

.field static final OEM_SERIAL_NO_PATH:Ljava/lang/String; = "/mnt/vendor/persist/engineermode/oem_serial_no"

.field static final OEM_SERIAL_NO_PROPERTY:Ljava/lang/String; = "persist.sys.oneplus.serialno"

.field static final OEM_SERIAL_NO_REG_STRING:Ljava/lang/String; = "[A-J]{15}"

.field static final PARTION_PROTECT_NOTIFICAITON_ID:I = 0x2710

.field static final PCBA_PROPERTY:Ljava/lang/String; = "gsm.serial"

.field static final PCBA_UNKNOWN_DEFAULT:Ljava/lang/String; = "UNKNOWN"

.field static final POWER_OFF_CLASS_NAME:Ljava/lang/String; = "com.oneplus.factorymode.PowerOff"

.field static final PROPERTY_DOWNLOAD_MODE_FLAG:Ljava/lang/String; = "sys.oem.production.login.mode"

.field static final PROP_RESET_ATM_PROPERTY:Ljava/lang/String; = "vendor.oem.quit.atm"

.field static final SERIAL_NO_PROPERTY:Ljava/lang/String; = "ro.serialno"

.field static final SERIAL_PORT_SWITCH_DISABLE:Ljava/lang/String; = "ENABLE_UART:FALSE"

.field static final SERIAL_PORT_SWITCH_ENABLE:Ljava/lang/String; = "ENABLE_UART:TRUE"

.field static final SHOW_PRODUCTION_MESSAGE_CLASS:Ljava/lang/String; = "com.oneplus.factorymode.ShowRemoteMessage"

.field static final SIM_STATE_PROPERTY:Ljava/lang/String; = "gsm.sim.state"

.field static final SWITCH_PRODUCTION_MODE_CLASS:Ljava/lang/String; = "com.oneplus.factorymode.assistant.SwitchProductionMode"

.field static final SWITCH_WIFI_MMI_CLASS:Ljava/lang/String; = "com.oneplus.factorymode.assistant.SwitchWifiMMI"

.field static final TYPE_ENGINEER_ACTIVITY_ITEM:I = 0x1

.field static final TYPE_ENGINEER_ORDER_ITEM:I = 0x4

.field static final TYPE_ENGINEER_SERVICE_ITEM:I = 0x2

.field static final TYPE_ENGINEER_SHELL_COMMAND_ITEM:I = 0x3

.field static final USB_CHARGE_SWITCH_PROPERTY:Ljava/lang/String; = "sys.usb.config.meta"

.field static final WATCH_DOG_IC_TEST_FAIL:Ljava/lang/String; = "FAILED"

.field static final WATCH_DOG_IC_TEST_MARK:I = 0x53

.field static final WATCH_DOG_IC_TEST_PASS:Ljava/lang/String; = "PASS"

.field static final WATCH_DOG_IC_TEST_PATH:Ljava/lang/String; = "/proc/ldmp_wdt_test"

.field static final WIFI_MMI_CLASS:Ljava/lang/String; = "com.oneplus.factorymode.wireless.WifiAdbHelper"

.field static final WRITE_PROTECT_NEED_RESET_ISSUE_TYPE:I = 0x65

.field static final WRITE_PROTECT_RESET_DONE_ISSUE_TYPE:I = 0x66


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
