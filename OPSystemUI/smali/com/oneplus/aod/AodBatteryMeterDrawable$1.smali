.class Lcom/oneplus/aod/AodBatteryMeterDrawable$1;
.super Ljava/lang/Object;
.source "AodBatteryMeterDrawable.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/aod/AodBatteryMeterDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;


# direct methods
.method constructor <init>(Lcom/oneplus/aod/AodBatteryMeterDrawable;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/AodBatteryMeterDrawable$1;->this$0:Lcom/oneplus/aod/AodBatteryMeterDrawable;

    invoke-virtual {v0}, Lcom/oneplus/aod/AodBatteryMeterDrawable;->invalidateSelf()V

    return-void
.end method
