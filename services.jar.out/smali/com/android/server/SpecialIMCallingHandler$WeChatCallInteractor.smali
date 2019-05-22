.class Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;
.super Landroid/content/BroadcastReceiver;
.source "SpecialIMCallingHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/SpecialIMCallingHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "WeChatCallInteractor"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WeChatCallInteractor"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/SpecialIMCallingHandler$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/SpecialIMCallingHandler$WeChatCallInteractor;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$300()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WeChatCallInteractor"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, 0x23c3af96

    const/4 v4, 0x0

    if-eq v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "com.oem.intent.action.CUSTOM_INCALL_ANSWER"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v4

    :cond_2
    :goto_0
    if-eqz v1, :cond_3

    goto :goto_1

    :cond_3
    const-string v0, "Answer_Action"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$400()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$400()Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$400()Landroid/content/Intent;

    move-result-object v1

    new-instance v2, Landroid/os/UserHandle;

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$500()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p1, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$600()Landroid/os/Handler;

    move-result-object v1

    if-eqz v1, :cond_5

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$600()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    iput v4, v1, Landroid/os/Message;->what:I

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$500()I

    move-result v2

    iput v2, v1, Landroid/os/Message;->arg1:I

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    const-string v3, "PKG"

    const-string v4, "com.tencent.mm"

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/android/server/SpecialIMCallingHandler;->access$600()Landroid/os/Handler;

    move-result-object v3

    const-wide/16 v4, 0x1f4

    invoke-virtual {v3, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_1

    :cond_4
    const-string v1, "WeChatCallInteractor"

    const-string v2, "There is not yet wechat activity cached"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    nop

    :cond_5
    :goto_1
    return-void
.end method
