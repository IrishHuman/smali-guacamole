.class Lcom/android/server/location/LocationBasedCountryDetector$3;
.super Ljava/lang/Object;
.source "LocationBasedCountryDetector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/location/LocationBasedCountryDetector;->queryCountryCode(Landroid/location/Location;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/location/LocationBasedCountryDetector;

.field final synthetic val$location:Landroid/location/Location;


# direct methods
.method constructor <init>(Lcom/android/server/location/LocationBasedCountryDetector;Landroid/location/Location;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object p2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->val$location:Landroid/location/Location;

    invoke-virtual {v1, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->getCountryFromLocation(Landroid/location/Location;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    :cond_0
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    new-instance v3, Landroid/location/Country;

    const/4 v4, 0x1

    invoke-direct {v3, v0, v4}, Landroid/location/Country;-><init>(Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v1, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    :goto_0
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iget-object v2, v2, Lcom/android/server/location/LocationBasedCountryDetector;->mDetectedCountry:Landroid/location/Country;

    invoke-virtual {v0, v2}, Lcom/android/server/location/LocationBasedCountryDetector;->notifyListener(Landroid/location/Country;)V

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Lcom/android/server/location/LocationBasedCountryDetector$3;->this$0:Lcom/android/server/location/LocationBasedCountryDetector;

    iput-object v1, v0, Lcom/android/server/location/LocationBasedCountryDetector;->mQueryThread:Ljava/lang/Thread;

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :catchall_1
    move-exception v0

    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v0
.end method
