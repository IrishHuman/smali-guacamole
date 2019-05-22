.class public Lcom/android/server/engineer/OneplusEngineerShell;
.super Landroid/os/ShellCommand;
.source "OneplusEngineerShell.java"


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;

.field private static waitResult:Z


# instance fields
.field private mContext:Landroid/content/Context;

.field mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

.field private printWriter:Ljava/io/PrintWriter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/android/server/engineer/OneplusEngineerShell;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/server/engineer/OneplusEngineerService;Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Landroid/os/ShellCommand;-><init>()V

    new-instance v0, Lcom/android/server/engineer/OneplusEngineerShell$1;

    invoke-direct {v0, p0}, Lcom/android/server/engineer/OneplusEngineerShell$1;-><init>(Lcom/android/server/engineer/OneplusEngineerShell;)V

    iput-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    iput-object p2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.engineer.result"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p2, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/server/engineer/OneplusEngineerShell;)Ljava/io/PrintWriter;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    return-object v0
.end method

.method static synthetic access$202(Z)Z
    .locals 0

    sput-boolean p0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    return p0
.end method

.method private doShellCommond(Landroid/content/Context;Ljava/lang/String;)V
    .locals 4

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oem.engineermode.DoShellCommond"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "shell_cmd"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oneplus.factorymode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x1000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "send do shell commond broadcast: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private dumpConfigurableParameters(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "get_config_params"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_0
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpGoogleKeybox(Ljava/io/PrintWriter;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "install_keybox"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_0
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_0

    const-wide/16 v0, 0x64

    invoke-static {v0, v1}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private dumpWidevineKeyBox(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x7c7ee80e

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v0, v1, :cond_1

    const v1, -0x2a7530aa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--provision_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :cond_1
    const-string v0, "--verify_keybox"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, -0x1

    :goto_1
    const/4 v1, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x4

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_7

    :pswitch_0
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/16 v6, 0xa

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->getCryptoSerice()Ljava/lang/Object;

    move-result-object v6

    if-eqz v6, :cond_6

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->cryptoengInvokeCommand(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v7

    if-eqz v7, :cond_6

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-le v8, v5, :cond_6

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Byte;

    invoke-virtual {v8}, Ljava/lang/Byte;->byteValue()B

    move-result v8

    if-nez v8, :cond_3

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "Pass\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_3
    move v1, v3

    :goto_2
    if-ge v1, v5, :cond_4

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    invoke-static {v7}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_5

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Fail:%s\n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    const-string v2, "Fail\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    goto/16 :goto_7

    :cond_6
    const-string v1, "Fail\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_7

    :cond_7
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    const-string v1, "MTK not support yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_7

    :pswitch_1
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_c

    sget-object v6, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/16 v8, 0x9

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    array-length v8, v6

    move v9, v3

    :goto_4
    if-ge v9, v8, :cond_8

    aget-byte v10, v6, v9

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v11

    invoke-virtual {v7, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    :cond_8
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->getCryptoSerice()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_c

    invoke-static {v7}, Lcom/android/server/engineer/OneplusEngineerUtils;->cryptoengInvokeCommand(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v9

    if-eqz v9, :cond_c

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-le v10, v5, :cond_c

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Byte;

    invoke-virtual {v10}, Ljava/lang/Byte;->byteValue()B

    move-result v10

    if-nez v10, :cond_9

    invoke-virtual {v9, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Byte;

    invoke-virtual {v4}, Ljava/lang/Byte;->byteValue()B

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {v9, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Pass\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    move v1, v3

    :goto_5
    if-ge v1, v5, :cond_a

    invoke-virtual {v9, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    :cond_a
    invoke-static {v9}, Lcom/android/server/engineer/OneplusEngineerUtils;->transferByteListToString(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v5, "Fail:%s\n"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-static {v4, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_b
    const-string v2, "Fail\n"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    goto :goto_7

    :cond_c
    const-string v1, "Fail\n"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_d
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    const-string v1, "MTK not support yet"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :goto_7
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getIndicateInfo()Ljava/lang/String;
    .locals 15

    const-string v0, ""

    const-string v1, ""

    new-instance v2, Ljava/io/File;

    const-string v3, "data/vendor/oemnvitems/447"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    sget-object v2, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    const-string v3, "data/vendor/oemnvitems/447 exists"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v1

    :cond_0
    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "wifi"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->getWifiMacFromNvItem()Ljava/util/List;

    move-result-object v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/lang/String;

    :cond_1
    const-string v5, ""

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetProductLineTestResult()[B

    move-result-object v6

    if-eqz v6, :cond_2

    array-length v7, v6

    if-lez v7, :cond_2

    invoke-static {v6}, Lcom/android/server/engineer/OneplusEngineerUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    :cond_2
    const-string/jumbo v7, "null"

    const-string/jumbo v8, "gsm.serial"

    const-string/jumbo v9, "null"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "vendor.Oneplus.network.carrier_ver"

    const-string/jumbo v9, "null"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v9, ""

    const-string v10, ""

    :try_start_0
    iget-object v11, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v12, "phone"

    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/TelephonyManager;

    sget-object v12, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "telephonyManager : "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v11, :cond_4

    invoke-virtual {v11}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v12

    const/4 v13, 0x1

    if-ne v12, v13, :cond_3

    invoke-virtual {v11, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    goto :goto_0

    :cond_3
    const/4 v14, 0x2

    if-ne v12, v14, :cond_4

    invoke-virtual {v11, v4}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4

    move-object v9, v4

    invoke-virtual {v11, v13}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v10, v4

    :cond_4
    :goto_0
    goto :goto_1

    :catch_0
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->isMultiSimEnabled()Z

    move-result v4

    if-nez v4, :cond_5

    move-object v10, v9

    :cond_5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "WIFI: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nBT: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nPCBA: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nMMI: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nCarrier: 00000000\nIMEI1: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "\nIMEI2: "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method private handleAttkKeyCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    if-nez p1, :cond_0

    const-string v0, "cmd is null!"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    return-void

    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "--generate_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :sswitch_1
    const-string v1, "--verify_attk_key_pair"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move v0, v2

    goto :goto_0

    :sswitch_2
    const-string v1, "--export_attk_public_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x4

    goto :goto_0

    :sswitch_3
    const-string v1, "--get_tee_version"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/16 v0, 0x8

    goto :goto_0

    :sswitch_4
    const-string v1, "--enable_rpmb"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x6

    goto :goto_0

    :sswitch_5
    const-string v1, "--verify_ali_key"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x3

    goto :goto_0

    :sswitch_6
    const-string v1, "--verify_attk_key_pair_only"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :sswitch_7
    const-string v1, "--crypto_eng_verify"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x7

    goto :goto_0

    :sswitch_8
    const-string v1, "--get_device_id"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x5

    :cond_1
    :goto_0
    const-wide/16 v3, 0x64

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_8

    :pswitch_0
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "mtk_trustonic_tee_version 1.0\n"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_8

    :pswitch_1
    invoke-direct {p0, v2}, Lcom/android/server/engineer/OneplusEngineerShell;->runCryptoCmd(B)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    goto/16 :goto_8

    :pswitch_2
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string v1, "enable_rpmb"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_1
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_1

    :pswitch_3
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "get_device_id"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_2
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_2

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string v1, "export_attk_public_key"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_3
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_3

    :pswitch_5
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "verify_ali_key"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_4
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_4

    :pswitch_6
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "verify_attk_key_pair_only"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_5
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_5

    :pswitch_7
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "verify_attk_key_pair"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_6
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_6

    :pswitch_8
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string v1, "generate_attk_key_pair"

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/OneplusEngineerShell;->doShellCommond(Landroid/content/Context;Ljava/lang/String;)V

    sput-boolean v2, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    :goto_7
    sget-boolean v0, Lcom/android/server/engineer/OneplusEngineerShell;->waitResult:Z

    if-eqz v0, :cond_2

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_7

    :cond_2
    :goto_8
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x60415fa5 -> :sswitch_8
        -0x60361868 -> :sswitch_7
        -0x20dab99e -> :sswitch_6
        -0x194d63e8 -> :sswitch_5
        -0xde8b811 -> :sswitch_4
        -0x4d2d5c -> :sswitch_3
        0x1dbb813 -> :sswitch_2
        0x1fb407c9 -> :sswitch_1
        0x40ec43c5 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleExecuteCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 10

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, -0x1

    const/4 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "--execute_start_mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v3

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "--execute_show_production_message"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto :goto_1

    :sswitch_2
    const-string v0, "--execute_switch_production_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_3
    const-string v0, "--execute_engineer_order"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_4
    const-string v0, "--execute_launch_wifi_mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_5
    const-string v0, "--execute_switch_wifi_mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto :goto_1

    :sswitch_6
    const-string v0, "--execute_power_off"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "--execute_model_test"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "--execute_stop_mmi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_1

    :sswitch_9
    const-string v0, "--execute_master_clear"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_a
    const-string v0, "--execute_detect_ms_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :cond_0
    :goto_0
    move v0, v2

    :goto_1
    const-wide/16 v4, 0x1f4

    const/high16 v6, 0x1000000

    const/high16 v7, 0x10000000

    packed-switch v0, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    :try_start_0
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.factorymode"

    const-string v4, "com.oneplus.factorymode.wireless.WifiAdbHelper"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/engineer/OneplusEngineerShell;->startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v3, "OK:Launch Wifi MMI Success"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL:Launch Wifi MMI Fail, Error Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_2
    goto :goto_3

    :cond_2
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_3
    goto/16 :goto_14

    :catch_0
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:ERROR"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_1
    :try_start_1
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.factorymode"

    const-string v3, "com.oneplus.factorymode.assistant.SwitchWifiMMI"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const-string v2, "OK:Switch Wifi MMI Success"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    const-string v2, "FAIL:Switch Wifi MMI Fail"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    goto :goto_5

    :cond_4
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    :goto_5
    goto/16 :goto_14

    :catch_1
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:ERROR"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_2
    :try_start_2
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.factorymode"

    const-string v4, "com.oneplus.factorymode.ShowRemoteMessage"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/engineer/OneplusEngineerShell;->startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "OK:Show Message Success"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL:Show Message Fail, Error Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    goto :goto_7

    :cond_6
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :goto_7
    goto/16 :goto_14

    :catch_2
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:ERROR"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_3
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v6, Landroid/content/ComponentName;

    const-string v8, "com.oneplus.factorymode"

    const-string v9, "com.oneplus.factorymode.DetectMasterClearResult"

    invoke-direct {v6, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v7, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-direct {p0, v7, v0, v3}, Lcom/android/server/engineer/OneplusEngineerShell;->startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v7

    if-eqz v7, :cond_9

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    const-string/jumbo v4, "sys.masterclear.result"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v1, :cond_7

    const-string v1, "OK:Detect Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_7
    if-nez v2, :cond_8

    const-string v1, "FAIL:Detect Failed"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_8
    const-string v1, "FAIL:Retry"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    goto :goto_9

    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FAIL:Error Code "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    goto/16 :goto_14

    :cond_a
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_4
    :try_start_3
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.factorymode"

    const-string v3, "com.oneplus.factorymode.assistant.SwitchProductionMode"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    const-string v2, "OK:Switch Mode Success"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_b
    const-string v2, "FAIL:Switch Mode Fail"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    goto :goto_b

    :cond_c
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    :goto_b
    goto/16 :goto_14

    :catch_3
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:ERROR"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_5
    :try_start_4
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.oem.engineermode.EngineerModeMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oneplus.factorymode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "OK:Start Engineer Order Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_d
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    :goto_c
    goto/16 :goto_14

    :catch_4
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_6
    :try_start_5
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextOption()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_e

    const-string/jumbo v4, "modeltest"

    const-string v5, ""

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    :cond_e
    new-instance v4, Landroid/content/Intent;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "com.oppo.engineermode.manualtest.modeltest.ModelTest"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v5, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-direct {p0, v5, v4, v3}, Lcom/android/server/engineer/OneplusEngineerShell;->startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v3

    invoke-static {v3}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v5

    if-eqz v5, :cond_f

    const-string v5, "OK:Start ModelTest Success"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_f
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "FAIL:Start ModelTest Fail, Error Code "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_d
    goto :goto_e

    :cond_10
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    :goto_e
    goto/16 :goto_14

    :catch_5
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_7
    :try_start_6
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.oem.engineermode.EngineerModeMain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.oneplus.factorymode"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string/jumbo v1, "order"

    const-string v2, "*#911#"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "isfromshell"

    const-string/jumbo v2, "true"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "OK:Start Power Off Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_11
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_6

    :goto_f
    goto/16 :goto_14

    :catch_6
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_8
    :try_start_7
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-direct {p0, p0}, Lcom/android/server/engineer/OneplusEngineerShell;->parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;

    move-result-object v0

    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.oneplus.factorymode"

    const-string v4, "com.oneplus.factorymode.manualtest.MasterClear"

    invoke-direct {v1, v2, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const v2, 0x8000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2, v0, v3}, Lcom/android/server/engineer/OneplusEngineerShell;->startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I

    move-result v2

    invoke-static {v2}, Landroid/app/ActivityManager;->isStartResultSuccessful(I)Z

    move-result v3

    if-eqz v3, :cond_12

    const-string v3, "OK:Start Master Clear Success"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_10

    :cond_12
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FAIL:Start Master Clear Fail, Error Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_10
    goto :goto_11

    :cond_13
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_7

    :goto_11
    goto/16 :goto_14

    :catch_7
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "exception caught "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_9
    :try_start_8
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_14

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.STOP_OPPO_AT_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string v1, "OK:Stop MMI Server Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_14
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_8

    :goto_12
    goto/16 :goto_14

    :catch_8
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "stop mmi server exception caught : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_14

    :pswitch_a
    :try_start_9
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_15

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v1, "oneplus.intent.action.START_OPPO_AT_SERVER"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    const-string v1, "OK:Start MMI Server Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_15
    const-string v0, "FAIL:System Not Ready"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_9

    :goto_13
    goto :goto_14

    :catch_9
    move-exception v0

    sget-object v1, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start mmi server exception caught : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v1, "FAIL:Error"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_14
    return-void

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f6b949c -> :sswitch_a
        -0x5c039fa6 -> :sswitch_9
        -0x5815fca -> :sswitch_8
        0xf240492 -> :sswitch_7
        0x26942d4b -> :sswitch_6
        0x35c1b0e0 -> :sswitch_5
        0x57ace341 -> :sswitch_4
        0x643ca528 -> :sswitch_3
        0x6a8d7408 -> :sswitch_2
        0x70914a99 -> :sswitch_1
        0x75496b82 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleQueryCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "--query_cplc"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "--query_battery_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x5

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "--query_serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "--query_write_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "--query_download_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_5
    const-string v0, "--query_sd_card_exists"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xc

    goto :goto_1

    :sswitch_6
    const-string v0, "--query_indicate_info"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xd

    goto :goto_1

    :sswitch_7
    const-string v0, "--query_pcb_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xa

    goto :goto_1

    :sswitch_8
    const-string v0, "--query_battery_level"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_9
    const-string v0, "--query_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "--query_download_status"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_b
    const-string v0, "--query_sim_state"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/16 v0, 0xb

    goto :goto_1

    :sswitch_c
    const-string v0, "--query_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_d
    const-string v0, "--query_version"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_1

    :cond_0
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_6

    :pswitch_0
    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getIndicateInfo()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_1
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "storage"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    :try_start_0
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/VolumeInfo;

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    if-eqz v5, :cond_1

    iget-object v5, v4, Landroid/os/storage/VolumeInfo;->disk:Landroid/os/storage/DiskInfo;

    invoke-virtual {v5}, Landroid/os/storage/DiskInfo;->isSd()Z

    move-result v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_3

    :cond_1
    goto :goto_2

    :cond_2
    :goto_3
    nop

    if-eqz v0, :cond_3

    const-string v2, "OK:SD Card Found"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_3
    const-string v2, "OK:SD Card Not Found"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string v3, "FAIL:Access Fail"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_2
    const-string/jumbo v0, "gsm.sim.state"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_4
    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_3
    const-string v0, ""

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string/jumbo v1, "vendor.gsm.serial"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    :cond_5
    const-string/jumbo v1, "gsm.serial"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_4
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    if-eqz v0, :cond_8

    :try_start_1
    const-string v1, "android.nfc.NfcAdapter"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getCplc"

    new-array v4, v2, [Ljava/lang/Class;

    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_7

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "OK:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_6

    :cond_7
    goto :goto_5

    :catch_1
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_8
    :goto_5
    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_5
    const-string/jumbo v0, "persist.sys.oneplus.serialno"

    const-string v3, ""

    invoke-static {v0, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->isOemSerialNoValid(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v4, "OK:%s"

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-static {v3, v4, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_9
    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_6
    const-string/jumbo v0, "sys.oem.production.login.mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_a

    const-string v0, "OK:Switch is On"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_a
    const-string v0, "OK:Switch is Off"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_7
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetProductLineTestResult()[B

    move-result-object v0

    if-eqz v0, :cond_b

    array-length v1, v0

    if-lez v1, :cond_b

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_b
    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_8
    const-string v0, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {v0, v1}, Lcom/android/server/engineer/OneplusEngineerUtils;->readIntFromFile(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_c

    const-string v1, "OK:Battery Status Okay"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :cond_c
    const-string v1, "FAIL:Battery DET Exception"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_6

    :pswitch_9
    const-string v0, "download over"

    const-string v1, "download over"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    const-string v1, "OK:Download Over"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    const-string v1, "FAIL:Download Not Finished"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OK:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v1}, Lcom/android/server/engineer/OneplusEngineerService;->getBatteryLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_b
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_e

    const-string v1, "FAIL:Access Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "OK:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_c
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_f

    return-void

    :cond_f
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "OK:WP ON"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_10
    const-string v0, "OK:WP OFF"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :pswitch_d
    const-string v0, "OK:190101"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_6
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x779f4d3f -> :sswitch_d
        -0x60f7be46 -> :sswitch_c
        -0x545a992e -> :sswitch_b
        -0x401e878e -> :sswitch_a
        -0x3afc672a -> :sswitch_9
        -0x17160e05 -> :sswitch_8
        -0xc9159d0 -> :sswitch_7
        -0x862ee63 -> :sswitch_6
        0x194b0174 -> :sswitch_5
        0x1f170223 -> :sswitch_4
        0x25704998 -> :sswitch_3
        0x2fd2c31d -> :sswitch_2
        0x4110485b -> :sswitch_1
        0x7c600d5b -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleResetCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 4

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x41a803ed

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_3

    const v1, -0x28c3f196

    if-eq v0, v1, :cond_2

    const v1, -0x226aaa21

    if-eq v0, v1, :cond_1

    const v1, 0x816af5d

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--reset_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x2

    goto :goto_1

    :cond_1
    const-string v0, "--reset_write_protect"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v3

    goto :goto_1

    :cond_2
    const-string v0, "--reset_download_mode"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    goto :goto_1

    :cond_3
    const-string v0, "--reset_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    move v0, v2

    goto :goto_1

    :cond_4
    :goto_0
    const/4 v0, -0x1

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0xf4278

    new-array v1, v3, [B

    invoke-static {v0, v1, v3}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSaveEngineerData(I[BI)Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, "OK:Reset Success"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    const-string v0, "FAIL:Reset Fail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_1
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeResetProductLineTestResult()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "OK:Reset Success"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_6
    const-string v0, "FAIL:Reset Fail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_2
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    :cond_7
    iget-object v0, p0, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->resetWriteProtectStateInternal()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "OK:Reset Success"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    const-string v0, "FAIL:Reset Fail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :pswitch_3
    invoke-static {v2}, Lcom/android/server/secrecy/policy/util/ParamReader;->setBackCoverColorVal(I)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string v0, "OK:Reset Success"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v0, "FAIL:Reset Fail"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    nop

    :goto_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private handleUpdateCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 6

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, -0x65299362

    const/4 v2, -0x1

    if-eq v0, v1, :cond_2

    const v1, -0x1cd6367

    if-eq v0, v1, :cond_1

    const v1, 0x7dc2e617

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v0, "--update_engineer_result"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    const-string v0, "--update_back_cover_color"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    const-string v0, "--update_serial_number"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_5

    :pswitch_0
    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->isOemSerialNoValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "/mnt/vendor/persist/engineermode/oem_serial_no"

    invoke-static {v1, v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->writeStringToFile(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    :try_start_0
    const-string/jumbo v1, "persist.sys.oneplus.serialno"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v1

    sget-object v2, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set Oneplus serial no caught exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v1, "OK:Update Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_4
    const-string v1, "FAIL:Update Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_5
    const-string v1, "FAIL:Invalid Parameter"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_5

    :pswitch_1
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    const/4 v3, -0x1

    nop

    :try_start_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move v2, v4

    nop

    if-ltz v3, :cond_7

    const/16 v4, 0x80

    if-ge v3, v4, :cond_7

    if-ltz v2, :cond_7

    if-ge v2, v4, :cond_7

    :try_start_3
    invoke-static {v3, v2}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeSetProductLineTestResult(II)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string v4, "OK:Update Success"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_6
    const-string v4, "FAIL:Update Fail"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    const-string v4, "FAIL:Unknown Argument"

    invoke-virtual {p2, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_3
    goto :goto_5

    :catch_1
    move-exception v4

    invoke-virtual {v4}, Ljava/lang/NumberFormatException;->printStackTrace()V

    const-string v5, "FAIL:Unknown Argument"

    invoke-virtual {p2, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_5

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const-string v1, "FAIL:ERROR"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_5

    :pswitch_2
    invoke-virtual {p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->isBackCoverColorIdValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_9

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v1

    long-to-int v1, v1

    invoke-static {v1}, Lcom/android/server/secrecy/policy/util/ParamReader;->setBackCoverColorVal(I)Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "OK:Update Success"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    const-string v1, "FAIL:Update Fail"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_9
    const-string v1, "FAIL:Invalid Parameter"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_4
    nop

    :goto_5
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isMultiSimEnabled()Z
    .locals 3

    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const-string v2, "dsds"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "dsda"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string/jumbo v2, "tsts"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    return v1

    :cond_2
    return v1
.end method

.method private parseCommandArgs(Landroid/os/ShellCommand;)Landroid/content/Intent;
    .locals 11

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextOption()Ljava/lang/String;

    move-result-object v3

    move-object v2, v3

    if-eqz v3, :cond_b

    const/4 v3, -0x1

    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    sparse-switch v4, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v4, "--elal"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v4, "--eial"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x7

    goto/16 :goto_1

    :sswitch_2
    const-string v4, "--esn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x2

    goto/16 :goto_1

    :sswitch_3
    const-string v4, "--ela"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string v4, "--eia"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x6

    goto :goto_1

    :sswitch_5
    const-string v4, "--ecn"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x5

    goto :goto_1

    :sswitch_6
    const-string v4, "--ez"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xc

    goto :goto_1

    :sswitch_7
    const-string v4, "--eu"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x4

    goto :goto_1

    :sswitch_8
    const-string v4, "--es"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v6

    goto :goto_1

    :sswitch_9
    const-string v4, "--el"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0x8

    goto :goto_1

    :sswitch_a
    const-string v4, "--ei"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 v3, 0x3

    goto :goto_1

    :sswitch_b
    const-string v4, "--ef"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xb

    goto :goto_1

    :sswitch_c
    const-string v4, "-p"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/16 v3, 0xd

    goto :goto_1

    :sswitch_d
    const-string v4, "-e"

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v5

    :cond_0
    :goto_1
    packed-switch v3, :pswitch_data_0

    goto/16 :goto_9

    :pswitch_0
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_1
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_5

    const-string/jumbo v7, "t"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_3

    :cond_1
    const-string v7, "false"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    const-string v7, "f"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    goto :goto_2

    :cond_2
    :try_start_0
    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    move v5, v6

    nop

    :cond_3
    goto :goto_4

    :catch_0
    move-exception v1

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid boolean value: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :cond_4
    :goto_2
    const/4 v5, 0x0

    goto :goto_4

    :cond_5
    :goto_3
    const/4 v5, 0x1

    :goto_4
    nop

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_2
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_3
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    array-length v8, v6

    :goto_5
    if-ge v5, v8, :cond_6

    aget-object v9, v6, v5

    invoke-static {v9}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_5

    :cond_6
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_4
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [J

    nop

    :goto_6
    array-length v8, v6

    if-ge v5, v8, :cond_7

    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    aput-wide v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    :cond_7
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_5
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_6
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/util/ArrayList;

    array-length v8, v6

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    array-length v8, v6

    :goto_7
    if-ge v5, v8, :cond_8

    aget-object v9, v6, v5

    invoke-static {v9}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    :cond_8
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto/16 :goto_9

    :pswitch_7
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    const-string v6, ","

    invoke-virtual {v4, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v6

    array-length v7, v6

    new-array v7, v7, [I

    nop

    :goto_8
    array-length v8, v6

    if-ge v5, v8, :cond_9

    aget-object v8, v6, v5

    invoke-static {v8}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    aput v8, v7, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_8

    :cond_9
    invoke-virtual {v0, v3, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    goto :goto_9

    :pswitch_8
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v5

    if-eqz v5, :cond_a

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9

    :cond_a
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Bad component name: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_9
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    goto :goto_9

    :pswitch_a
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    goto :goto_9

    :pswitch_b
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    move-object v4, v1

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_9

    :pswitch_c
    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Landroid/os/ShellCommand;->getNextArgRequired()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    nop

    :goto_9
    goto/16 :goto_0

    :cond_b
    return-object v0

    nop

    :sswitch_data_0
    .sparse-switch
        0x5d8 -> :sswitch_d
        0x5e3 -> :sswitch_c
        0x152a41 -> :sswitch_b
        0x152a44 -> :sswitch_a
        0x152a47 -> :sswitch_9
        0x152a4e -> :sswitch_8
        0x152a50 -> :sswitch_7
        0x152a55 -> :sswitch_6
        0x2901df0 -> :sswitch_5
        0x2901e9d -> :sswitch_4
        0x2901efa -> :sswitch_3
        0x2901fe0 -> :sswitch_2
        0x4f73b56f -> :sswitch_1
        0x4f73c0b2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private runCryptoCmd(B)I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-static {v1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v2, -0x1

    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->getCryptoSerice()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerUtils;->cryptoengInvokeCommand(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    const/4 v6, 0x4

    if-ne v5, v6, :cond_0

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x2

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x3

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    if-nez v1, :cond_0

    const/4 v2, 0x0

    :cond_0
    return v2
.end method

.method private startActivityAsUserInternal(Landroid/content/Context;Landroid/content/Intent;I)I
    .locals 12

    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getIApplicationThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getBasePackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {p2, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/high16 v8, 0x10000000

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p2

    move v11, p3

    invoke-interface/range {v0 .. v11}, Landroid/app/IActivityManager;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    const/16 v1, -0x60

    return v1
.end method


# virtual methods
.method public onCommand(Ljava/lang/String;)I
    .locals 19

    move-object/from16 v1, p0

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return v2

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getOutPrintWriter()Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    move-object/from16 v5, p1

    :try_start_0
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0, v5}, Lcom/android/server/engineer/OneplusEngineerService;->isShellCommandInBlackListInternal(Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_c
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    nop

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :cond_1
    if-eqz v5, :cond_28

    :try_start_1
    sget-object v0, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "cmd = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v6, 0x10

    const/4 v10, 0x5

    const/4 v11, -0x1

    const/16 v12, 0xc

    const/16 v13, 0x8

    const/4 v14, 0x4

    const/4 v15, 0x6

    const/4 v7, 0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "--update_engineer_result"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xf

    goto/16 :goto_1

    :sswitch_1
    const-string v0, "--query_cplc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v0, "--execute_start_mmi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x15

    goto/16 :goto_1

    :sswitch_3
    const-string v0, "--execute_show_production_message"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1d

    goto/16 :goto_1

    :sswitch_4
    const-string v0, "--execute_switch_production_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1b

    goto/16 :goto_1

    :sswitch_5
    const-string v0, "--execute_engineer_order"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1a

    goto/16 :goto_1

    :sswitch_6
    const-string v0, "--execute_launch_wifi_mmi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1f

    goto/16 :goto_1

    :sswitch_7
    const-string v0, "--query_battery_status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v10

    goto/16 :goto_1

    :sswitch_8
    const-string v0, "--generate_attk_key_pair"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x20

    goto/16 :goto_1

    :sswitch_9
    const-string v0, "--execute_switch_wifi_mmi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1e

    goto/16 :goto_1

    :sswitch_a
    const-string v0, "--query_serial_number"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v13

    goto/16 :goto_1

    :sswitch_b
    const-string v0, "--execute_power_off"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x18

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "--query_write_protect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v7

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "--verify_attk_key_pair"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x21

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "--query_download_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto/16 :goto_1

    :sswitch_f
    const-string v0, "--query_sd_card_exists"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v12

    goto/16 :goto_1

    :sswitch_10
    const-string v0, "--execute_model_test"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x19

    goto/16 :goto_1

    :sswitch_11
    const-string v0, "--reset_engineer_result"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x13

    goto/16 :goto_1

    :sswitch_12
    const-string v0, "--export_attk_public_key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x24

    goto/16 :goto_1

    :sswitch_13
    const-string v0, "-mmi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2f

    goto/16 :goto_1

    :sswitch_14
    const-string v0, "-get"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x30

    goto/16 :goto_1

    :sswitch_15
    const-string v0, "-bcc"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2d

    goto/16 :goto_1

    :sswitch_16
    const-string v0, "-wp"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2e

    goto/16 :goto_1

    :sswitch_17
    const-string v0, "--get_tee_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x28

    goto/16 :goto_1

    :sswitch_18
    const-string v0, "--update_back_cover_color"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xe

    goto/16 :goto_1

    :sswitch_19
    const-string v0, "--execute_stop_mmi"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x16

    goto/16 :goto_1

    :sswitch_1a
    const-string v0, "--query_indicate_info"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xd

    goto/16 :goto_1

    :sswitch_1b
    const-string v0, "--query_pcb_number"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_1c
    const-string v0, "--enable_rpmb"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x26

    goto/16 :goto_1

    :sswitch_1d
    const-string v0, "--query_battery_level"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto/16 :goto_1

    :sswitch_1e
    const-string v0, "--verify_ali_key"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x23

    goto/16 :goto_1

    :sswitch_1f
    const-string v0, "--verify_attk_key_pair_only"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x22

    goto/16 :goto_1

    :sswitch_20
    const-string v0, "--reset_write_protect"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x12

    goto/16 :goto_1

    :sswitch_21
    const-string v0, "--reset_download_mode"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x14

    goto/16 :goto_1

    :sswitch_22
    const-string v0, "--provision_keybox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2a

    goto/16 :goto_1

    :sswitch_23
    const-string v0, "--install_keybox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x29

    goto/16 :goto_1

    :sswitch_24
    const-string v0, "--query_engineer_result"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v15

    goto/16 :goto_1

    :sswitch_25
    const-string v0, "--query_download_status"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v14

    goto/16 :goto_1

    :sswitch_26
    const-string v0, "--reset_back_cover_color"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x11

    goto/16 :goto_1

    :sswitch_27
    const-string v0, "--query_sim_state"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    :sswitch_28
    const-string v0, "--execute_master_clear"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x17

    goto :goto_1

    :sswitch_29
    const-string v0, "--crypto_eng_verify"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x27

    goto :goto_1

    :sswitch_2a
    const-string v0, "--get_device_id"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x25

    goto :goto_1

    :sswitch_2b
    const-string v0, "--query_back_cover_color"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_1

    :sswitch_2c
    const-string v0, "--update_serial_number"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v6

    goto :goto_1

    :sswitch_2d
    const-string v0, "--get_config_params"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x2c

    goto :goto_1

    :sswitch_2e
    const-string v0, "--execute_detect_ms_result"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x1c

    goto :goto_1

    :sswitch_2f
    const-string v0, "--query_version"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_30
    const-string v0, "--verify_keybox"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v0, :cond_2

    const/16 v0, 0x2b

    goto :goto_1

    :cond_2
    :goto_0
    move v0, v11

    :goto_1
    packed-switch v0, :pswitch_data_0

    goto/16 :goto_14

    :pswitch_0
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v8, 0x76

    if-eq v0, v8, :cond_9

    const/16 v8, 0xc4a

    if-eq v0, v8, :cond_8

    const/16 v8, 0xc51

    if-eq v0, v8, :cond_7

    const/16 v8, 0xc8f

    if-eq v0, v8, :cond_6

    const/16 v8, 0xed9

    if-eq v0, v8, :cond_5

    const v8, 0x17c42

    if-eq v0, v8, :cond_4

    const v8, 0x184e5

    if-eq v0, v8, :cond_3

    goto :goto_2

    :cond_3
    const-string v0, "dlm"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v16, v15

    goto :goto_3

    :cond_4
    const-string v0, "bcc"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v16, 0x2

    goto :goto_3

    :cond_5
    const-string/jumbo v0, "wp"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v16, v7

    goto :goto_3

    :cond_6
    const-string v0, "ds"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v16, v14

    goto :goto_3

    :cond_7
    const-string v0, "bs"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    move/from16 v16, v10

    goto :goto_3

    :cond_8
    const-string v0, "bl"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    const/16 v16, 0x3

    goto :goto_3

    :cond_9
    const-string/jumbo v0, "v"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_a

    move/from16 v16, v2

    goto :goto_3

    :cond_a
    :goto_2
    move/from16 v16, v11

    :goto_3
    packed-switch v16, :pswitch_data_1

    goto/16 :goto_d

    :pswitch_1
    :try_start_3
    const-string/jumbo v0, "sys.oem.production.login.mode"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:Switch is On"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_4

    :cond_b
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:Switch is Off"

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_4
    goto/16 :goto_d

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v1, v5}, Lcom/android/server/engineer/OneplusEngineerShell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v7
    :try_end_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v7

    :pswitch_2
    :try_start_5
    const-string v0, "/sys/class/power_supply/battery/short_c_hw_status"

    invoke-static {v0, v7}, Lcom/android/server/engineer/OneplusEngineerUtils;->readIntFromFile(Ljava/lang/String;I)I

    move-result v0

    const/4 v8, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArg()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_d

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-ne v11, v12, :cond_d

    const-string v11, "[0-9]*"

    invoke-static {v11}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v11

    invoke-virtual {v11}, Ljava/util/regex/Matcher;->matches()Z

    move-result v11

    if-nez v11, :cond_c

    goto :goto_5

    :cond_c
    invoke-virtual {v10, v2, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v10, v15, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v16

    invoke-virtual {v10, v13, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v2, v17

    invoke-virtual {v13, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, "/"

    invoke-virtual {v13, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v8, 0x1

    iget-object v13, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "check battery stats time:"

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v13, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_6

    :cond_d
    :goto_5
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "check battery stats time invalidate"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_6
    const/4 v2, 0x1

    if-ne v0, v2, :cond_e

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:HW Check Battery Status Okay"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_7

    :cond_e
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:HW Check  Battery DET Exception"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_7
    const-string v2, "/sys/class/power_supply/battery/short_ic_otp_status"

    const/4 v7, 0x1

    invoke-static {v2, v7}, Lcom/android/server/engineer/OneplusEngineerUtils;->readIntFromFile(Ljava/lang/String;I)I

    move-result v2

    move v0, v2

    if-ne v0, v7, :cond_f

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:IC Check Battery Status Okay"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_8

    :cond_f
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:IC Check Battery DET Exception"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_8
    const-string/jumbo v2, "persist.sys.hw_status_flag"

    const-string v7, ""

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, 0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_10

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v7, "hw_errcode:6(battery hw check err)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_10
    const-string/jumbo v2, "persist.sys.hw_status_flag"

    const-string v7, ""

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const/4 v7, -0x6

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v7, "hw_errcode:-6(battery hw check repair)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_9

    :cond_11
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v7, "hw_errcode:0(no error)"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_9
    const-string/jumbo v2, "persist.sys.hw_errTime"

    const-string v7, ""

    invoke-static {v2, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_12

    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "hw_err_time:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_a

    :cond_12
    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v9, "hw_err_time:0000/00/00/0000"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_a
    const-string/jumbo v7, "persist.sys.ic_status_flag"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, 0x7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_13

    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v9, "ic_errcode:7(battery ic check err)"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_13
    const-string/jumbo v7, "persist.sys.ic_status_flag"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const/4 v9, -0x7

    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v9, "ic_errcode:-7(battery ic check repair)"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b

    :cond_14
    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v9, "ic_errcode:0(no error)"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    :goto_b
    const-string/jumbo v7, "persist.sys.ic_errTime"

    const-string v9, ""

    invoke-static {v7, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_15

    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "ic_err_time:"

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_c

    :cond_15
    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string/jumbo v9, "ic_err_time:0000/00/00/0000"

    invoke-virtual {v7, v9}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_c
    goto/16 :goto_d

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v1, v5}, Lcom/android/server/engineer/OneplusEngineerShell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2
    :try_end_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :pswitch_3
    :try_start_7
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v0}, Lcom/android/server/engineer/OneplusEngineerService;->getDownloadStatusInternal()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_16

    const-string v2, "download over"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_16

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:Download Over"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    :cond_16
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:Download Not Finished"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_d

    :pswitch_4
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "OK:"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v7}, Lcom/android/server/engineer/OneplusEngineerService;->getBatteryLevel()I

    move-result v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_5
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:Access Fail"

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_17
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_6
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0

    if-nez v0, :cond_18

    invoke-virtual {v1, v5}, Lcom/android/server/engineer/OneplusEngineerShell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v0
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v0

    :cond_18
    :try_start_8
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v0

    if-nez v0, :cond_19

    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v2, "OK:WP ON"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :cond_19
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v2, "OK:WP OFF"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_d

    :pswitch_7
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v2, "OK:180112"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    nop

    :goto_d
    goto/16 :goto_14

    :catch_2
    move-exception v0

    :try_start_9
    invoke-virtual {v1, v5}, Lcom/android/server/engineer/OneplusEngineerShell;->handleDefaultCommands(Ljava/lang/String;)I

    move-result v2
    :try_end_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_9 .. :try_end_9} :catch_c
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    return v2

    :pswitch_8
    :try_start_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    move-object v2, v0

    const-string/jumbo v0, "start"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_a .. :try_end_a} :catch_c
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    const/high16 v6, 0x10000000

    const/high16 v7, 0x1000000

    if-eqz v0, :cond_1b

    :try_start_b
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1a

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "oneplus.intent.action.START_OPPO_AT_SERVER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-wide/16 v6, 0x1f4

    invoke-static {v6, v7}, Landroid/os/SystemClock;->sleep(J)V

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:Start MMI Server Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_1a
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "FAIL:System Not Ready"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_b .. :try_end_b} :catch_c
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    :goto_e
    goto/16 :goto_10

    :catch_3
    move-exception v0

    :try_start_c
    sget-object v6, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "start mmi server exception caught : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:Error"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_e

    :cond_1b
    const-string/jumbo v0, "stop"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_c .. :try_end_c} :catch_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    if-eqz v0, :cond_1d

    :try_start_d
    const-class v0, Landroid/app/ActivityManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_1c

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string/jumbo v8, "oneplus.intent.action.STOP_OPPO_AT_SERVER"

    invoke-virtual {v0, v8}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-virtual {v0, v6}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mContext:Landroid/content/Context;

    sget-object v7, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    invoke-virtual {v6, v0, v7}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK:Stop MMI Server Success"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_f

    :cond_1c
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "FAIL:System Not Ready"

    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_d .. :try_end_d} :catch_c
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    :goto_f
    goto :goto_10

    :catch_4
    move-exception v0

    :try_start_e
    sget-object v6, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "stop mmi server exception caught : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:ERROR"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    :cond_1d
    :goto_10
    goto/16 :goto_14

    :catch_5
    move-exception v0

    :try_start_f
    sget-object v2, Lcom/android/server/engineer/OneplusEngineerShell;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "mmi command exception caught : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "FAIL:Error"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto/16 :goto_14

    :pswitch_9
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerUtils;->isMtkPlatform()Z

    move-result v0
    :try_end_f
    .catch Ljava/lang/IllegalArgumentException; {:try_start_f .. :try_end_f} :catch_c
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    if-eqz v0, :cond_28

    :try_start_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "on"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1f

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->mOneplusEngineerService:Lcom/android/server/engineer/OneplusEngineerService;

    invoke-virtual {v2}, Lcom/android/server/engineer/OneplusEngineerService;->resetWriteProtectStateInternal()Z

    move-result v2

    if-eqz v2, :cond_1e

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "OK:enable wp success"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_1e
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "FAIL:enable wp fail"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_1f
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "Unknown argument"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_10
    .catch Ljava/lang/IllegalArgumentException; {:try_start_10 .. :try_end_10} :catch_6
    .catchall {:try_start_10 .. :try_end_10} :catchall_0

    goto :goto_11

    :catch_6
    move-exception v0

    :try_start_11
    invoke-static {}, Lcom/android/server/engineer/OneplusEngineerNative;->nativeGetPartionWriteProtectState()Z

    move-result v2

    if-nez v2, :cond_20

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "WP ON"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_11

    :cond_20
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "WP OFF"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_11
    .catch Ljava/lang/IllegalArgumentException; {:try_start_11 .. :try_end_11} :catch_c
    .catchall {:try_start_11 .. :try_end_11} :catchall_0

    :goto_11
    goto/16 :goto_14

    :pswitch_a
    :try_start_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArgRequired()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "reset"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/android/server/secrecy/policy/util/ParamReader;->setBackCoverColorVal(I)Z

    move-result v6

    if-eqz v6, :cond_21

    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "OK:RESET OK"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_21
    iget-object v2, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v6, "FAIL:RESET FAIL"

    invoke-virtual {v2, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_22
    const-string/jumbo v2, "set"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/engineer/OneplusEngineerShell;->getNextArg()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_24

    invoke-static {v2}, Lcom/android/server/engineer/OneplusEngineerUtils;->isBackCoverColorIdValid(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_24

    invoke-static {v2, v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-static {v6}, Lcom/android/server/secrecy/policy/util/ParamReader;->setBackCoverColorVal(I)Z

    move-result v6

    if-eqz v6, :cond_23

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "OK"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_23
    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:IO EXCEPTION"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    :cond_24
    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:INVALID PARAMETER"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_12
    .catch Ljava/lang/IllegalArgumentException; {:try_start_12 .. :try_end_12} :catch_7
    .catchall {:try_start_12 .. :try_end_12} :catchall_0

    :cond_25
    :goto_12
    goto/16 :goto_14

    :catch_7
    move-exception v0

    :try_start_13
    invoke-static {}, Lcom/android/server/secrecy/policy/util/ParamReader;->getBackCoverColorVal()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_26

    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    const-string v7, "FAIL:ACCESS FAIL"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_13

    :cond_26
    iget-object v6, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "OK:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_13
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_13} :catch_c
    .catchall {:try_start_13 .. :try_end_13} :catchall_0

    :goto_13
    goto :goto_14

    :pswitch_b
    const/4 v0, 0x1

    :try_start_14
    new-array v0, v0, [I

    const/16 v2, 0x8e

    const/4 v6, 0x0

    aput v2, v0, v6

    invoke-static {v0}, Landroid/util/OpFeatures;->isSupport([I)Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->dumpConfigurableParameters(Ljava/io/PrintWriter;)V
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_14} :catch_8
    .catch Ljava/lang/IllegalArgumentException; {:try_start_14 .. :try_end_14} :catch_c
    .catchall {:try_start_14 .. :try_end_14} :catchall_0

    :cond_27
    goto :goto_14

    :catch_8
    move-exception v0

    :try_start_15
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_15
    .catch Ljava/lang/IllegalArgumentException; {:try_start_15 .. :try_end_15} :catch_c
    .catchall {:try_start_15 .. :try_end_15} :catchall_0

    goto :goto_14

    :pswitch_c
    :try_start_16
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->dumpWidevineKeyBox(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_16 .. :try_end_16} :catch_9
    .catch Ljava/lang/IllegalArgumentException; {:try_start_16 .. :try_end_16} :catch_c
    .catchall {:try_start_16 .. :try_end_16} :catchall_0

    goto :goto_14

    :catch_9
    move-exception v0

    :try_start_17
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_17
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_17} :catch_c
    .catchall {:try_start_17 .. :try_end_17} :catchall_0

    goto :goto_14

    :pswitch_d
    :try_start_18
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->dumpGoogleKeybox(Ljava/io/PrintWriter;)V
    :try_end_18
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_18} :catch_a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_18} :catch_c
    .catchall {:try_start_18 .. :try_end_18} :catchall_0

    goto :goto_14

    :catch_a
    move-exception v0

    :try_start_19
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V
    :try_end_19
    .catch Ljava/lang/IllegalArgumentException; {:try_start_19 .. :try_end_19} :catch_c
    .catchall {:try_start_19 .. :try_end_19} :catchall_0

    goto :goto_14

    :pswitch_e
    :try_start_1a
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->handleAttkKeyCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_1a .. :try_end_1a} :catch_b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1a .. :try_end_1a} :catch_c
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    goto :goto_14

    :catch_b
    move-exception v0

    :try_start_1b
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_14

    :pswitch_f
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->handleExecuteCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_14

    :pswitch_10
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->handleResetCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_14

    :pswitch_11
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->handleUpdateCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V

    goto :goto_14

    :pswitch_12
    iget-object v0, v1, Lcom/android/server/engineer/OneplusEngineerShell;->printWriter:Ljava/io/PrintWriter;

    invoke-direct {v1, v5, v0}, Lcom/android/server/engineer/OneplusEngineerShell;->handleQueryCommand(Ljava/lang/String;Ljava/io/PrintWriter;)V
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1b .. :try_end_1b} :catch_c
    .catchall {:try_start_1b .. :try_end_1b} :catchall_0

    goto :goto_14

    :catchall_0
    move-exception v0

    goto :goto_15

    :catch_c
    move-exception v0

    :try_start_1c
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_0

    :cond_28
    :goto_14
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    nop

    const/4 v2, 0x0

    return v2

    :goto_15
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v0

    nop

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7c7ee80e -> :sswitch_30
        -0x779f4d3f -> :sswitch_2f
        -0x6f6b949c -> :sswitch_2e
        -0x6bc999a6 -> :sswitch_2d
        -0x65299362 -> :sswitch_2c
        -0x60f7be46 -> :sswitch_2b
        -0x60415fa5 -> :sswitch_2a
        -0x60361868 -> :sswitch_29
        -0x5c039fa6 -> :sswitch_28
        -0x545a992e -> :sswitch_27
        -0x41a803ed -> :sswitch_26
        -0x401e878e -> :sswitch_25
        -0x3afc672a -> :sswitch_24
        -0x3397a030 -> :sswitch_23
        -0x2a7530aa -> :sswitch_22
        -0x28c3f196 -> :sswitch_21
        -0x226aaa21 -> :sswitch_20
        -0x20dab99e -> :sswitch_1f
        -0x194d63e8 -> :sswitch_1e
        -0x17160e05 -> :sswitch_1d
        -0xde8b811 -> :sswitch_1c
        -0xc9159d0 -> :sswitch_1b
        -0x862ee63 -> :sswitch_1a
        -0x5815fca -> :sswitch_19
        -0x1cd6367 -> :sswitch_18
        -0x4d2d5c -> :sswitch_17
        0xb7c6 -> :sswitch_16
        0x15f0f5 -> :sswitch_15
        0x160409 -> :sswitch_14
        0x161b7c -> :sswitch_13
        0x1dbb813 -> :sswitch_12
        0x816af5d -> :sswitch_11
        0xf240492 -> :sswitch_10
        0x194b0174 -> :sswitch_f
        0x1f170223 -> :sswitch_e
        0x1fb407c9 -> :sswitch_d
        0x25704998 -> :sswitch_c
        0x26942d4b -> :sswitch_b
        0x2fd2c31d -> :sswitch_a
        0x35c1b0e0 -> :sswitch_9
        0x40ec43c5 -> :sswitch_8
        0x4110485b -> :sswitch_7
        0x57ace341 -> :sswitch_6
        0x643ca528 -> :sswitch_5
        0x6a8d7408 -> :sswitch_4
        0x70914a99 -> :sswitch_3
        0x75496b82 -> :sswitch_2
        0x7c600d5b -> :sswitch_1
        0x7dc2e617 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_11
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_10
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_f
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onHelp()V
    .locals 0

    return-void
.end method
