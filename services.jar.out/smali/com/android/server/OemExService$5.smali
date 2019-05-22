.class Lcom/android/server/OemExService$5;
.super Ljava/lang/Object;
.source "OemExService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/OemExService;->showCarModeNotification(ILandroid/content/Context;IILandroid/app/Notification$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/OemExService;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$currentId:I

.field final synthetic val$n:Landroid/app/Notification$Builder;

.field final synthetic val$picNumber:I

.field final synthetic val$sourceLength:I


# direct methods
.method constructor <init>(Lcom/android/server/OemExService;Landroid/app/Notification$Builder;Landroid/content/Context;III)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    iput-object p2, p0, Lcom/android/server/OemExService$5;->val$n:Landroid/app/Notification$Builder;

    iput-object p3, p0, Lcom/android/server/OemExService$5;->val$context:Landroid/content/Context;

    iput p4, p0, Lcom/android/server/OemExService$5;->val$picNumber:I

    iput p5, p0, Lcom/android/server/OemExService$5;->val$currentId:I

    iput p6, p0, Lcom/android/server/OemExService$5;->val$sourceLength:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    iget-object v0, p0, Lcom/android/server/OemExService$5;->val$n:Landroid/app/Notification$Builder;

    iget-object v1, p0, Lcom/android/server/OemExService$5;->val$context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v2}, Lcom/android/server/OemExService;->access$900(Lcom/android/server/OemExService;)[I

    move-result-object v2

    iget v3, p0, Lcom/android/server/OemExService$5;->val$picNumber:I

    aget v2, v2, v3

    invoke-static {v1, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setLargeIcon(Landroid/graphics/Bitmap;)Landroid/app/Notification$Builder;

    iget-object v0, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    iget-object v1, p0, Lcom/android/server/OemExService$5;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/OemExService$5;->val$n:Landroid/app/Notification$Builder;

    invoke-static {v0, v1, v2}, Lcom/android/server/OemExService;->access$1000(Lcom/android/server/OemExService;Landroid/content/Context;Landroid/app/Notification$Builder;)V

    iget-object v0, p0, Lcom/android/server/OemExService$5;->val$n:Landroid/app/Notification$Builder;

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1100(Lcom/android/server/OemExService;)Landroid/app/NotificationManager;

    move-result-object v1

    iget v2, p0, Lcom/android/server/OemExService$5;->val$currentId:I

    invoke-virtual {v1, v2, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    iget v1, p0, Lcom/android/server/OemExService$5;->val$picNumber:I

    iget v2, p0, Lcom/android/server/OemExService$5;->val$sourceLength:I

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    iget-object v3, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    iget v1, p0, Lcom/android/server/OemExService$5;->val$picNumber:I

    add-int/lit8 v4, v1, 0x1

    iget-object v5, p0, Lcom/android/server/OemExService$5;->val$context:Landroid/content/Context;

    iget v6, p0, Lcom/android/server/OemExService$5;->val$currentId:I

    iget v7, p0, Lcom/android/server/OemExService$5;->val$sourceLength:I

    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1200(Lcom/android/server/OemExService;)Landroid/app/Notification$Builder;

    move-result-object v8

    invoke-static/range {v3 .. v8}, Lcom/android/server/OemExService;->access$1300(Lcom/android/server/OemExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    goto :goto_0

    :cond_0
    iget v1, p0, Lcom/android/server/OemExService$5;->val$picNumber:I

    iget v2, p0, Lcom/android/server/OemExService$5;->val$sourceLength:I

    add-int/lit8 v2, v2, -0x1

    if-ne v1, v2, :cond_2

    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1400(Lcom/android/server/OemExService;)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1500(Lcom/android/server/OemExService;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/OemExService$5;->val$context:Landroid/content/Context;

    iget v5, p0, Lcom/android/server/OemExService$5;->val$currentId:I

    iget v6, p0, Lcom/android/server/OemExService$5;->val$sourceLength:I

    iget-object v1, p0, Lcom/android/server/OemExService$5;->this$0:Lcom/android/server/OemExService;

    invoke-static {v1}, Lcom/android/server/OemExService;->access$1200(Lcom/android/server/OemExService;)Landroid/app/Notification$Builder;

    move-result-object v7

    invoke-static/range {v2 .. v7}, Lcom/android/server/OemExService;->access$1300(Lcom/android/server/OemExService;ILandroid/content/Context;IILandroid/app/Notification$Builder;)V

    :cond_2
    :goto_0
    return-void
.end method
