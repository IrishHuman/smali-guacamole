.class public final enum Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "TELEPHONY_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum DATA_CONNECTION_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

.field public static final enum SIGNAL_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "NETWORK_STATE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "DATACALL_STATE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v3, v4}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "IMS_STATE"

    const/4 v5, 0x3

    invoke-direct {v0, v1, v4, v5}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "RAT_STATE"

    const/4 v6, 0x4

    invoke-direct {v0, v1, v5, v6}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "SIGNAL_CHANGE_TYPE"

    const/4 v7, 0x5

    invoke-direct {v0, v1, v6, v7}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->SIGNAL_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-instance v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    const-string v1, "DATA_CONNECTION_CHANGE_TYPE"

    const/4 v8, 0x6

    invoke-direct {v0, v1, v7, v8}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATA_CONNECTION_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    new-array v0, v8, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->NETWORK_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATACALL_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->IMS_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->RAT_STATE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->SIGNAL_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->DATA_CONNECTION_CHANGE_TYPE:Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    aput-object v1, v0, v7

    sput-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

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

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    return-void
.end method

.method static fromValue(I)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 5

    invoke-static {}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    iget v4, v3, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->value:I

    if-ne v4, p0, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method static toReasonString(Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;Z)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x0

    sget-object v1, Lcom/android/server/OnePlusStandbyAnalyzer$13;->$SwitchMap$com$android$server$OnePlusStandbyAnalyzer$TELEPHONY_TYPE:[I

    invoke-virtual {p0}, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_6

    :pswitch_0
    if-eqz p1, :cond_0

    const-string v1, "QXDM_DATA_FREQ_CHANGE_ANNOMALY"

    goto :goto_0

    :cond_0
    const-string v1, "DATA_FREQ_CHANGE_ANNOMALY"

    :goto_0
    move-object v0, v1

    goto :goto_6

    :pswitch_1
    if-eqz p1, :cond_1

    const-string v1, "QXDM_NO_SIGNAL_INTERSECTION_ANNOMALY"

    goto :goto_1

    :cond_1
    const-string v1, "NO_SIGNAL_INTERSECTION_ANNOMALY"

    :goto_1
    move-object v0, v1

    goto :goto_6

    :pswitch_2
    if-eqz p1, :cond_2

    const-string v1, "QXDM_TELEPHONY_RAT_ANOMALY"

    goto :goto_2

    :cond_2
    const-string v1, "TELEPHONY_RAT_ANOMALY"

    :goto_2
    move-object v0, v1

    goto :goto_6

    :pswitch_3
    if-eqz p1, :cond_3

    const-string v1, "QXDM_TELEPHONY_IMS_ANOMALY"

    goto :goto_3

    :cond_3
    const-string v1, "TELEPHONY_IMS_ANOMALY"

    :goto_3
    move-object v0, v1

    goto :goto_6

    :pswitch_4
    if-eqz p1, :cond_4

    const-string v1, "QXDM_TELEPHONY_DATACALL_ANOMALY"

    goto :goto_4

    :cond_4
    const-string v1, "TELEPHONY_DATACALL_ANOMALY"

    :goto_4
    move-object v0, v1

    goto :goto_6

    :pswitch_5
    if-eqz p1, :cond_5

    const-string v1, "QXDM_TELEPHONY_NETWORK_ANOMALY"

    goto :goto_5

    :cond_5
    const-string v1, "TELEPHONY_NETWORK_ANOMALY"

    :goto_5
    move-object v0, v1

    nop

    :goto_6
    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->$VALUES:[Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusStandbyAnalyzer$TELEPHONY_TYPE;

    return-object v0
.end method
