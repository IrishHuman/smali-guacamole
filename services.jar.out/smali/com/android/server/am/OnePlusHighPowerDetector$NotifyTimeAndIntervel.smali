.class Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;
.super Ljava/lang/Object;
.source "OnePlusHighPowerDetector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/OnePlusHighPowerDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotifyTimeAndIntervel"
.end annotation


# instance fields
.field private mCurTime:J

.field private mIsClickIgnoreAction:Z

.field final synthetic this$0:Lcom/android/server/am/OnePlusHighPowerDetector;


# direct methods
.method constructor <init>(Lcom/android/server/am/OnePlusHighPowerDetector;JZ)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->this$0:Lcom/android/server/am/OnePlusHighPowerDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mCurTime:J

    iput-boolean p4, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mIsClickIgnoreAction:Z

    return-void
.end method


# virtual methods
.method public getIsClickIgnoreAction()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mIsClickIgnoreAction:Z

    return v0
.end method

.method public getNotifyTime()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mCurTime:J

    return-wide v0
.end method

.method public setClickIgnoreAction()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mIsClickIgnoreAction:Z

    return-void
.end method

.method public setCurentTime(J)V
    .locals 0

    iput-wide p1, p0, Lcom/android/server/am/OnePlusHighPowerDetector$NotifyTimeAndIntervel;->mCurTime:J

    return-void
.end method
