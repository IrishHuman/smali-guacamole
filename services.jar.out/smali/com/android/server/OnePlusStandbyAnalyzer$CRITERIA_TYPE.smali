.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CRITERIA_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SIGNAL_NONE:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SIGNAL_NONE_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

.field public static final enum USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "USERSPEACE_WAKELOCK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "USERSPEACE_WAKELOCK_MINOR"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "KERNELSPACE_WAKELOCK"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "KERNELSPACE_WAKELOCK_MINOR"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "KERNEL_WAKEUP"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "KERNEL_WAKEUP_MINOR"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SINGAL_BAD"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v8}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SINGAL_BAD_MINOR"

    const/4 v9, 0x7

    invoke-direct {v0, v1, v9}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "HIGH_UNACCOUNTED"

    const/16 v10, 0x8

    invoke-direct {v0, v1, v10}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "HIGH_UNACCOUNTED_MINOR"

    const/16 v11, 0x9

    invoke-direct {v0, v1, v11}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "AVERAGE_CURRENT_EXCEED_FOR_MINOR"

    const/16 v12, 0xa

    invoke-direct {v0, v1, v12}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "RPM_TIME_SINCE_LAST_MODE_SEC"

    const/16 v13, 0xb

    invoke-direct {v0, v1, v13}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SLEEP_ACC_DURATION_DIFF_PERCENT"

    const/16 v14, 0xc

    invoke-direct {v0, v1, v14}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SLPI_SLEEP_COUNT_DIFF"

    const/16 v15, 0xd

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SIGNAL_NONE"

    const/16 v15, 0xe

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SIGNAL_NONE:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const-string v1, "SIGNAL_NONE_MINOR"

    const/16 v15, 0xf

    invoke-direct {v0, v1, v15}, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SIGNAL_NONE_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v0, 0x10

    new-array v0, v0, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->USERSPEACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNELSPACE_WAKELOCK_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->KERNEL_WAKEUP_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v8

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SINGAL_BAD_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v10

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->HIGH_UNACCOUNTED_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v11

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->AVERAGE_CURRENT_EXCEED_FOR_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v12

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->RPM_TIME_SINCE_LAST_MODE_SEC:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v13

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLEEP_ACC_DURATION_DIFF_PERCENT:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    aput-object v1, v0, v14

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SLPI_SLEEP_COUNT_DIFF:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SIGNAL_NONE:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->SIGNAL_NONE_MINOR:Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$CRITERIA_TYPE;

    return-object v0
.end method
