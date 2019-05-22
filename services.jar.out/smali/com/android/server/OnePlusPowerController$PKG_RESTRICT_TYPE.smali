.class public final enum Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;
.super Ljava/lang/Enum;
.source "OnePlusPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PKG_RESTRICT_TYPE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

.field public static final enum DISABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

.field public static final enum ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

.field public static final enum NA:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    const-string v1, "NA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->NA:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    new-instance v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    const-string v1, "ENABLE"

    const/4 v3, 0x1

    invoke-direct {v0, v1, v3}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    new-instance v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    const-string v1, "DISABLE"

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4}, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->DISABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    sget-object v1, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->NA:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->ENABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->DISABLE:Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->$VALUES:[Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

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

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;
    .locals 1

    const-class v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    return-object v0
.end method

.method public static values()[Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;
    .locals 1

    sget-object v0, Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->$VALUES:[Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    invoke-virtual {v0}, [Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/OnePlusPowerController$PKG_RESTRICT_TYPE;

    return-object v0
.end method
