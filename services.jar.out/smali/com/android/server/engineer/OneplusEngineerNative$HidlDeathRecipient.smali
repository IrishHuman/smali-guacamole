.class Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;
.super Ljava/lang/Object;
.source "OneplusEngineerNative.java"

# interfaces
.implements Landroid/os/IHwBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerNative;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "HidlDeathRecipient"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/engineer/OneplusEngineerNative$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/engineer/OneplusEngineerNative$HidlDeathRecipient;-><init>()V

    return-void
.end method


# virtual methods
.method public serviceDied(J)V
    .locals 3

    const-string v0, "OneplusEngineerNative"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "serviceDied! cookie = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    invoke-static {v0}, Lcom/android/server/engineer/OneplusEngineerNative;->access$102(Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;)Lvendor/oneplus/engnative/engineer/V1_0/IEngineer;

    return-void
.end method
