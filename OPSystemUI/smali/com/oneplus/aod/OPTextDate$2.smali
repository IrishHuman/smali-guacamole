.class Lcom/oneplus/aod/OPTextDate$2;
.super Ljava/lang/Object;
.source "OPTextDate.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/OPTextDate;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/OPTextDate;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/OPTextDate;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/OPTextDate$2;->this$0:Lcom/oneplus/aod/OPTextDate;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/oneplus/aod/OPTextDate$2;->this$0:Lcom/oneplus/aod/OPTextDate;

    invoke-static {v0}, Lcom/oneplus/aod/OPTextDate;->access$100(Lcom/oneplus/aod/OPTextDate;)V

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    rem-long v4, v0, v2

    sub-long/2addr v2, v4

    add-long/2addr v2, v0

    iget-object v4, p0, Lcom/oneplus/aod/OPTextDate$2;->this$0:Lcom/oneplus/aod/OPTextDate;

    invoke-virtual {v4}, Lcom/oneplus/aod/OPTextDate;->getHandler()Landroid/os/Handler;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/aod/OPTextDate$2;->this$0:Lcom/oneplus/aod/OPTextDate;

    invoke-static {v5}, Lcom/oneplus/aod/OPTextDate;->access$400(Lcom/oneplus/aod/OPTextDate;)Ljava/lang/Runnable;

    move-result-object v5

    invoke-virtual {v4, v5, v2, v3}, Landroid/os/Handler;->postAtTime(Ljava/lang/Runnable;J)Z

    return-void
.end method
