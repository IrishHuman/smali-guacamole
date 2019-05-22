.class public final enum Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;
.super Ljava/lang/Enum;
.source "OneplusAppPreload.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/preload/OneplusAppPreload;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "UnpreloadFactor"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum ABNORMAL_APP:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum ALREADY_QUEUED:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum APP_RUNNING:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum BATTERY_LOW:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum INSUFFICIENT_MEMORY:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum NOT_LAUNCHABLE:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum NOT_MAIN_USER:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum NOT_SOPPORT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum NO_MAIN_INTENT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum OVER_MAX_PRELOAD:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum REMOVED_TASK:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

.field public static final enum SCREEN_OFF:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;


# instance fields
.field private mValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "REMOVED_TASK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->REMOVED_TASK:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "NOT_SOPPORT"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3, v3}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_SOPPORT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "ABNORMAL_APP"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v4}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ABNORMAL_APP:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "NOT_LAUNCHABLE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5, v5}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_LAUNCHABLE:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "ALREADY_QUEUED"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6, v6}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ALREADY_QUEUED:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "SCREEN_OFF"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7, v7}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->SCREEN_OFF:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "BATTERY_LOW"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8, v8}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->BATTERY_LOW:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "OVER_MAX_PRELOAD"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9, v9}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->OVER_MAX_PRELOAD:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "APP_RUNNING"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10, v10}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->APP_RUNNING:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "INSUFFICIENT_MEMORY"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11, v11}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->INSUFFICIENT_MEMORY:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "NOT_MAIN_USER"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12, v12}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_MAIN_USER:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    new-instance v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const-string v1, "NO_MAIN_INTENT"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13, v13}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NO_MAIN_INTENT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    const/16 v0, 0xc

    new-array v0, v0, [Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->REMOVED_TASK:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_SOPPORT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ABNORMAL_APP:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_LAUNCHABLE:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->ALREADY_QUEUED:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->SCREEN_OFF:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->BATTERY_LOW:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->OVER_MAX_PRELOAD:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->APP_RUNNING:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->INSUFFICIENT_MEMORY:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NOT_MAIN_USER:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->NO_MAIN_INTENT:Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    aput-object v1, v0, v13

    sput-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->$VALUES:[Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->mValue:I

    return-void
.end method

.method public static fromInt(I)Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;
    .locals 5

    invoke-static {}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->values()[Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    invoke-virtual {v3}, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->getValue()I

    move-result v4

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;
    .locals 1

    const-class v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    return-object v0
.end method

.method public static values()[Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;
    .locals 1

    sget-object v0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->$VALUES:[Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    invoke-virtual {v0}, [Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    iget v0, p0, Lcom/android/server/preload/OneplusAppPreload$UnpreloadFactor;->mValue:I

    return v0
.end method
