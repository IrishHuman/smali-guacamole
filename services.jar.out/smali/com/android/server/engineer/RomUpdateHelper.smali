.class public Lcom/android/server/engineer/RomUpdateHelper;
.super Ljava/lang/Object;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;
    }
.end annotation


# static fields
.field public static final BROADCAST_ACTION_ROM_UPDATE_CONFIG_SUCCES:Ljava/lang/String; = "oem.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

.field private static final COLUMN_NAME_1:Ljava/lang/String; = "version"

.field private static final COLUMN_NAME_2:Ljava/lang/String; = "xml"

.field private static final CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

.field private static final DEBUG:Z

.field private static final OEM_COMPONENT_SAFE_PERMISSION:Ljava/lang/String; = "oem.permission.OEM_COMPONENT_SAFE"

.field public static final ROM_UPDATE_CONFIG_LIST:Ljava/lang/String; = "ROM_UPDATE_CONFIG_LIST"

.field private static final TAG:Ljava/lang/String; = "RomUpdateHelper"


# instance fields
.field public mContext:Landroid/content/Context;

.field private mDataFilePath:Ljava/lang/String;

.field private mFilterName:Ljava/lang/String;

.field private mSystemFilePath:Ljava/lang/String;

.field private mUpdateInfo1:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

.field private mUpdateInfo2:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

.field private which2use:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-string/jumbo v0, "persist.sys.assert.panic"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/engineer/RomUpdateHelper;->DEBUG:Z

    const-string v0, "content://com.nearme.romupdate.provider.db/update_list"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/server/engineer/RomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/server/engineer/RomUpdateHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/server/engineer/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/engineer/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/server/engineer/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/engineer/RomUpdateHelper;->DEBUG:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/server/engineer/RomUpdateHelper;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method private getDataFromProvider()Ljava/lang/String;
    .locals 11

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const-string/jumbo v3, "version"

    const-string/jumbo v4, "xml"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v7

    :try_start_0
    iget-object v3, p0, Lcom/android/server/engineer/RomUpdateHelper;->mContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_0
    return-object v3

    :cond_1
    :try_start_1
    iget-object v3, p0, Lcom/android/server/engineer/RomUpdateHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    sget-object v6, Lcom/android/server/engineer/RomUpdateHelper;->CONTENT_URI_WHITE_LIST:Landroid/net/Uri;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "filtername=\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/server/engineer/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual/range {v5 .. v10}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    move-object v0, v3

    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    const-string/jumbo v3, "version"

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "xml"

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    move v1, v5

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    const-string v5, "RomUpdateHelper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "White List updated, version = "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    if-eqz v0, :cond_3

    :goto_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_1

    :catchall_0
    move-exception v3

    goto :goto_2

    :catch_0
    move-exception v3

    :try_start_2
    const-string v4, "RomUpdateHelper"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "We can not get white list data from provider, because of "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v0, :cond_3

    goto :goto_0

    :cond_3
    :goto_1
    return-object v2

    :goto_2
    if-eqz v0, :cond_4

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v3
.end method

.method private parseContentFromXML(Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method private readFromFile(Ljava/io/File;)Ljava/lang/String;
    .locals 6

    if-nez p1, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v0, 0x0

    move-object v1, v0

    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v1, v2

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, v1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ""

    :goto_0
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    if-eqz v5, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :goto_1
    nop

    :goto_2
    return-object v5

    :catchall_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_3

    :catch_2
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    :cond_2
    :goto_3
    nop

    :goto_4
    return-object v0

    :goto_5
    nop

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_6

    :catch_3
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_3
    :goto_6
    throw v0
.end method

.method private saveToFile(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    move-object v1, v3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x1

    nop

    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    :goto_0
    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v2

    goto :goto_2

    :catch_1
    move-exception v2

    :try_start_2
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz v1, :cond_0

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    :cond_0
    :goto_1
    return v0

    :goto_2
    if-eqz v1, :cond_1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_3

    :catch_2
    move-exception v3

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    :cond_1
    :goto_3
    throw v2
.end method

.method private setFlip()V
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    return-void
.end method

.method private updateToLowerVersion(Ljava/lang/String;)Z
    .locals 5

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, p1}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "RomUpdateHelper"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateToLowerVersion true, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public dump()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "which2use = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->log(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo1:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->dump()V

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo2:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    invoke-virtual {v0}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->dump()V

    return-void
.end method

.method public getFilterName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mFilterName:Ljava/lang/String;

    return-object v0
.end method

.method getUpdateFromProvider()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/engineer/RomUpdateHelper;->getDataFromProvider()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    invoke-direct {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->updateToLowerVersion(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    :cond_1
    iget-object v1, p0, Lcom/android/server/engineer/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->saveToFile(Ljava/lang/String;Ljava/lang/String;)Z

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v2

    if-nez v2, :cond_2

    return-void

    :cond_2
    invoke-virtual {p0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->parseContentFromXML(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/android/server/engineer/RomUpdateHelper;->setFlip()V

    invoke-virtual {p0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;
    .locals 1

    if-eqz p1, :cond_1

    iget-boolean v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo1:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo2:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    :goto_0
    return-object v0

    :cond_1
    iget-boolean v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->which2use:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo2:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo1:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    :goto_1
    return-object v0
.end method

.method public init()V
    .locals 3

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/server/engineer/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/server/engineer/RomUpdateHelper;->mDataFilePath:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/engineer/RomUpdateHelper;->mSystemFilePath:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return-void

    :cond_1
    invoke-direct {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->readFromFile(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->parseContentFromXML(Ljava/lang/String;)V

    return-void

    :cond_2
    :goto_0
    return-void
.end method

.method public initUpdateBroadcastReceiver()V
    .locals 5

    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string/jumbo v1, "oem.intent.action.ROM_UPDATE_CONFIG_SUCCESS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/server/engineer/RomUpdateHelper;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/engineer/RomUpdateHelper$1;

    invoke-direct {v2, p0}, Lcom/android/server/engineer/RomUpdateHelper$1;-><init>(Lcom/android/server/engineer/RomUpdateHelper;)V

    const-string/jumbo v3, "oem.permission.OEM_COMPONENT_SAFE"

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method protected insertValueInList(ILjava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->clone(Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->insert(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0}, Lcom/android/server/engineer/RomUpdateHelper;->setFlip()V

    invoke-virtual {p0, v0}, Lcom/android/server/engineer/RomUpdateHelper;->getUpdateInfo(Z)Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->clear()V

    return v2

    :cond_0
    const-string v1, "Failed to insert!"

    invoke-virtual {p0, v1}, Lcom/android/server/engineer/RomUpdateHelper;->log(Ljava/lang/String;)V

    return v0
.end method

.method public log(Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/engineer/RomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "RomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public log(Ljava/lang/String;Ljava/lang/Exception;)V
    .locals 1

    sget-boolean v0, Lcom/android/server/engineer/RomUpdateHelper;->DEBUG:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "RomUpdateHelper"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected setUpdateInfo(Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo1:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    iput-object p2, p0, Lcom/android/server/engineer/RomUpdateHelper;->mUpdateInfo2:Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;

    return-void
.end method
