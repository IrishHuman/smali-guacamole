.class Lcom/android/server/pm/dex/DexManager$2;
.super Landroid/database/ContentObserver;
.source "DexManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/dex/DexManager;->registerSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/dex/DexManager;

.field final synthetic val$resolver:Landroid/content/ContentResolver;


# direct methods
.method constructor <init>(Lcom/android/server/pm/dex/DexManager;Landroid/os/Handler;Landroid/content/ContentResolver;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/pm/dex/DexManager$2;->this$0:Lcom/android/server/pm/dex/DexManager;

    iput-object p3, p0, Lcom/android/server/pm/dex/DexManager$2;->val$resolver:Landroid/content/ContentResolver;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2

    iget-object v0, p0, Lcom/android/server/pm/dex/DexManager$2;->val$resolver:Landroid/content/ContentResolver;

    const-string/jumbo v1, "priv_app_oob_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "ALL"

    :cond_0
    const-string/jumbo v1, "pm.dexopt.priv-apps-oob-list"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
