.class Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;
.super Ljava/lang/Object;
.source "OPRingtoneBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$200(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-static {v0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->access$200(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v2}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualRingtoneUriBySubId(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget-object v1, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    invoke-virtual {v1}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->getUserContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget v2, v2, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mType:I

    invoke-static {v1, v2}, Lcom/oneplus/settings/ringtone/OPRingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mUriForDefaultItem:Landroid/net/Uri;

    :goto_0
    iget-object v0, p0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;->this$0:Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;

    iget-object v0, v0, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3$1;

    invoke-direct {v1, p0}, Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3$1;-><init>(Lcom/oneplus/settings/ringtone/OPRingtoneBaseActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
