.class public Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;
.super Ljava/lang/Object;
.source "OemSceneXLinearVibrationMotorController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AwinicConfig"
.end annotation


# instance fields
.field final mAwinicMode:I

.field final mFlag:I

.field final mPkgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mPkgName:Ljava/lang/String;

    iput p2, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mAwinicMode:I

    iput p3, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mFlag:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{ pkg="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mPkgName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", awinic="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mAwinicMode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", flag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lserver/oneplus/scene/OemSceneXLinearVibrationMotorController$AwinicConfig;->mFlag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " }"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
