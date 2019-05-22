.class public Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;
.super Ljava/lang/Object;
.source "RomUpdateHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/RomUpdateHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "UpdateInfo"
.end annotation


# instance fields
.field protected mVersion:J

.field final synthetic this$0:Lcom/android/server/engineer/RomUpdateHelper;


# direct methods
.method protected constructor <init>(Lcom/android/server/engineer/RomUpdateHelper;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->this$0:Lcom/android/server/engineer/RomUpdateHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->mVersion:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    return-void
.end method

.method public clone(Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public dump()V
    .locals 0

    return-void
.end method

.method public getVersion()J
    .locals 2

    iget-wide v0, p0, Lcom/android/server/engineer/RomUpdateHelper$UpdateInfo;->mVersion:J

    return-wide v0
.end method

.method public insert(ILjava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public parseContentFromXML(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public updateToLowerVersion(Ljava/lang/String;)Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
