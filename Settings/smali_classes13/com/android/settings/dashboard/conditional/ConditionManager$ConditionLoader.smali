.class Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;
.super Landroid/os/AsyncTask;
.source "ConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/ConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ConditionLoader"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/settings/dashboard/conditional/Condition;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;


# direct methods
.method private constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/dashboard/conditional/ConditionManager;Lcom/android/settings/dashboard/conditional/ConditionManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;-><init>(Lcom/android/settings/dashboard/conditional/ConditionManager;)V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;"
        }
    .end annotation

    const-string v0, "ConditionManager"

    const-string v1, "loading conditions from xml"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v3}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$200(Lcom/android/settings/dashboard/conditional/ConditionManager;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "condition_state.xml"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v1, v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$102(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;)Ljava/io/File;

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$100(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    iget-object v2, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$100(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/io/File;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$300(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/io/File;Ljava/util/ArrayList;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v1, v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$400(Lcom/android/settings/dashboard/conditional/ConditionManager;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/dashboard/conditional/Condition;",
            ">;)V"
        }
    .end annotation

    const-string v0, "ConditionManager"

    const-string v1, "conditions loaded from xml, refreshing conditions"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$500(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-static {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->access$500(Lcom/android/settings/dashboard/conditional/ConditionManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    iget-object v0, p0, Lcom/android/settings/dashboard/conditional/ConditionManager$ConditionLoader;->this$0:Lcom/android/settings/dashboard/conditional/ConditionManager;

    invoke-virtual {v0}, Lcom/android/settings/dashboard/conditional/ConditionManager;->refreshAll()V

    return-void
.end method
