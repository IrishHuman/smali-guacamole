.class Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;
.super Ljava/util/HashMap;
.source "OPGameVibrateManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;


# direct methods
.method constructor <init>(Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;)V
    .locals 2

    iput-object p1, p0, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;->this$0:Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager;

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    const-string v0, "com.tencent.tmgp.pubgmhd"

    const-string/jumbo v1, "pubgmhd_game_data_file"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "com.tencent.ig"

    const-string/jumbo v1, "ig_game_data_file"

    invoke-virtual {p0, v0, v1}, Lcom/android/server/oneplus/gamevibrate/OPGameVibrateManager$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
