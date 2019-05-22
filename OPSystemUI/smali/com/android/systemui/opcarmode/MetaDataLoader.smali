.class public Lcom/android/systemui/opcarmode/MetaDataLoader;
.super Ljava/lang/Object;
.source "MetaDataLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;,
        Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;
    }
.end annotation


# instance fields
.field private final LIMIT_BACKGROUND_COUNT:I

.field private final LIMIT_ICON_COUNT:I

.field private final LIMIT_ICON_DEFINITION:I

.field private mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

.field private mCarModeRes:Landroid/content/res/Resources;

.field private mContext:Landroid/content/Context;

.field private mIconData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;",
            ">;"
        }
    .end annotation
.end field

.field private mIsBackgroundLoaded:Z

.field private mIsEntriesLoaded:Z

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x5

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_ICON_COUNT:I

    const/4 v0, 0x4

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_ICON_DEFINITION:I

    const/4 v0, 0x2

    iput v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->LIMIT_BACKGROUND_COUNT:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    iput-object p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/NotificationManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadAll()Z

    return-void
.end method

.method static synthetic access$400(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/content/res/Resources;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/systemui/opcarmode/MetaDataLoader;)Landroid/app/NotificationManager;
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mNotificationManager:Landroid/app/NotificationManager;

    return-object v0
.end method

.method static synthetic access$702(Lcom/android/systemui/opcarmode/MetaDataLoader;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    return p1
.end method

.method private getMetaData(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v2, "com.oneplus.carmode"

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v2, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MetaDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught when loading meta: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    sget-boolean v1, Lcom/android/systemui/opcarmode/CarModeDockController;->DEBUG:Z

    if-eqz v1, :cond_0

    const-string v1, "MetaDataLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "key="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", data="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-object v0
.end method

.method private getResId(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v2, "com.oneplus.carmode"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mCarModeRes:Landroid/content/res/Resources;

    const-string v2, "drawable"

    const-string v3, "com.oneplus.carmode"

    invoke-virtual {v1, p1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "MetaDataLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "exception caught when loading res: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return v0
.end method

.method private loadBackground()Z
    .locals 13

    const-string v0, "op_car_mode_dock_background"

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MetaDataLoader"

    const-string v3, "background meta is empty."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    array-length v3, v1

    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    const/4 v3, 0x0

    const/4 v5, 0x0

    array-length v6, v1

    move-object v7, v5

    move-object v5, v3

    move v3, v2

    :goto_0
    if-ge v3, v6, :cond_6

    aget-object v8, v1, v3

    const-string v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_5

    array-length v10, v9

    if-ge v10, v4, :cond_2

    goto :goto_2

    :cond_2
    const-string v10, "normal"

    aget-object v11, v9, v2

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    const/4 v11, 0x1

    if-eqz v10, :cond_3

    aget-object v5, v9, v11

    goto :goto_1

    :cond_3
    const-string v10, "dnd"

    aget-object v12, v9, v2

    invoke-virtual {v10, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    aget-object v7, v9, v11

    :cond_4
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "not valid background data: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_6
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    new-instance v2, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    iput-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    invoke-static {v2, v5, v7}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->access$300(Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    invoke-virtual {v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->isValid()Z

    move-result v2

    return v2

    :cond_7
    return v2

    :cond_8
    :goto_3
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid background meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method private loadEntries()Z
    .locals 13

    const-string v0, "op_car_mode_dock"

    invoke-direct {p0, v0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getMetaData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v1, "MetaDataLoader"

    const-string v3, "entry meta is empty."

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    array-length v3, v1

    const/4 v4, 0x5

    if-ge v3, v4, :cond_1

    goto :goto_2

    :cond_1
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    array-length v3, v1

    move v5, v2

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_5

    aget-object v7, v1, v5

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_4

    array-length v9, v8

    const/4 v10, 0x4

    if-ge v9, v10, :cond_2

    goto :goto_1

    :cond_2
    new-instance v9, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    const/4 v10, 0x0

    invoke-direct {v9, p0, v10}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    aget-object v10, v8, v2

    aget-object v6, v8, v6

    const/4 v11, 0x2

    aget-object v11, v8, v11

    invoke-direct {p0, v11}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v11

    const/4 v12, 0x3

    aget-object v12, v8, v12

    invoke-direct {p0, v12}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v12

    invoke-static {v9, v10, v6, v11, v12}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-virtual {v9}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->isValid()Z

    move-result v6

    if-eqz v6, :cond_3

    iget-object v6, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_4
    :goto_1
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid data entry: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2

    :cond_5
    iget-object v3, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v3, v4, :cond_6

    return v6

    :cond_6
    return v2

    :cond_7
    :goto_2
    const-string v3, "MetaDataLoader"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "found invalid entry meta: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method public getBackgroundData()Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;
    .locals 3

    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mBackgroundData:Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    return-object v0

    :cond_0
    const-string v0, "MetaDataLoader"

    const-string v1, "Not loaded. Using default background data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v1, "#FFF3F4F9"

    const-string v2, "#FF262630"

    invoke-static {v0, v1, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;->access$300(Lcom/android/systemui/opcarmode/MetaDataLoader$BackgroundData;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getIconData()Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    return-object v0

    :cond_0
    const-string v0, "MetaDataLoader"

    const-string v1, "Not loaded. Using default entry data"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.oneplus.carmode/com.oneplus.carmode.activity.MainActivity"

    const-string v5, "light_home"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_home"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.netease.cloudmusic/com.netease.cloudmusic.activity.LoadingActivity"

    const-string v5, "light_music"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_music"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.autonavi.minimap/com.autonavi.map.activity.NewMapActivity"

    const-string v5, "light_navigation"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_navigation"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v3, "cn"

    const-string v4, "com.android.dialer/com.android.dialer.oneplus.car.OPCarDialtactsActivity"

    const-string v5, "light_phone"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    const-string v6, "dnd_phone"

    invoke-direct {p0, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v6

    invoke-static {v1, v3, v4, v5, v6}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    new-instance v1, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;-><init>(Lcom/android/systemui/opcarmode/MetaDataLoader;Lcom/android/systemui/opcarmode/MetaDataLoader$1;)V

    const-string v2, "act"

    const-string v3, "dnd"

    const-string v4, "light_donot_disturb"

    invoke-direct {p0, v4}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v4

    const-string v5, "dnd_donot_disturb"

    invoke-direct {p0, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader;->getResId(Ljava/lang/String;)I

    move-result v5

    invoke-static {v1, v2, v3, v4, v5}, Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;->access$100(Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;Ljava/lang/String;Ljava/lang/String;II)Lcom/android/systemui/opcarmode/MetaDataLoader$IconData;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIconData:Ljava/util/ArrayList;

    return-object v0
.end method

.method public isLoaded()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public loadAll()Z
    .locals 1

    invoke-direct {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadEntries()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsEntriesLoaded:Z

    invoke-direct {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->loadBackground()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/systemui/opcarmode/MetaDataLoader;->mIsBackgroundLoaded:Z

    invoke-virtual {p0}, Lcom/android/systemui/opcarmode/MetaDataLoader;->isLoaded()Z

    move-result v0

    return v0
.end method
