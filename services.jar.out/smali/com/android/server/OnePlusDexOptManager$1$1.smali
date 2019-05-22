.class Lcom/android/server/OnePlusDexOptManager$1$1;
.super Ljava/util/ArrayList;
.source "OnePlusDexOptManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OnePlusDexOptManager$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/ArrayList<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/OnePlusDexOptManager$1;


# direct methods
.method constructor <init>(Lcom/android/server/OnePlusDexOptManager$1;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/OnePlusDexOptManager$1$1;->this$1:Lcom/android/server/OnePlusDexOptManager$1;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/android/server/OnePlusDexOptManager$1$1;->this$1:Lcom/android/server/OnePlusDexOptManager$1;

    iget-object v0, v0, Lcom/android/server/OnePlusDexOptManager$1;->val$packageName:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/server/OnePlusDexOptManager$1$1;->add(Ljava/lang/Object;)Z

    return-void
.end method
