.class Lcom/android/server/location/GnssLocationProvider$7;
.super Ljava/util/HashMap;
.source "GnssLocationProvider.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/GnssLocationProvider;->reloadGpsProperties(Landroid/content/Context;Ljava/util/Properties;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Lcom/android/server/location/GnssLocationProvider$SetCarrierProperty;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/GnssLocationProvider;


# direct methods
.method constructor <init>(Lcom/android/server/location/GnssLocationProvider;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/location/GnssLocationProvider$7;->this$0:Lcom/android/server/location/GnssLocationProvider;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "SUPL_VER"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$QJF3pfMLU2eqdETlLnaIgo9g6t4;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$QJF3pfMLU2eqdETlLnaIgo9g6t4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SUPL_MODE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$fogxX8tXcaruA0dRkrubiIB60uQ;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$fogxX8tXcaruA0dRkrubiIB60uQ;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "SUPL_ES"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$LbUEAOg2HAAEuTciqeVQFXIlo2A;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$LbUEAOg2HAAEuTciqeVQFXIlo2A;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "LPP_PROFILE"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$BS_CjX4BUG4ltc_pJRQEhUNOzL0;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$BS_CjX4BUG4ltc_pJRQEhUNOzL0;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "A_GLONASS_POS_PROTOCOL_SELECT"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$QvzR8W6ekTh_GN0UBloP9l0fRC4;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$QvzR8W6ekTh_GN0UBloP9l0fRC4;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "USE_EMERGENCY_PDN_FOR_EMERGENCY_SUPL"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$W8mY-2drKHnqU6GSG5PdLDlt2XQ;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$W8mY-2drKHnqU6GSG5PdLDlt2XQ;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "GPS_LOCK"

    sget-object v1, Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$bH-Wkv1t9PMJpKhs0eow1_zZQwg;->INSTANCE:Lcom/android/server/location/-$$Lambda$GnssLocationProvider$7$bH-Wkv1t9PMJpKhs0eow1_zZQwg;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/location/GnssLocationProvider$7;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$2100(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$1(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$2000(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$2(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1900(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$3(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1800(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$4(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1700(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$5(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1600(I)Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$new$6(I)Z
    .locals 1

    invoke-static {p0}, Lcom/android/server/location/GnssLocationProvider;->access$1500(I)Z

    move-result v0

    return v0
.end method
