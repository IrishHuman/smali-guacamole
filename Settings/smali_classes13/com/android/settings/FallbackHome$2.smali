.class Lcom/android/settings/FallbackHome$2;
.super Landroid/os/Handler;
.source "FallbackHome.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/FallbackHome;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/FallbackHome;


# direct methods
.method constructor <init>(Lcom/android/settings/FallbackHome;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/FallbackHome$2;->this$0:Lcom/android/settings/FallbackHome;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/FallbackHome$2;->this$0:Lcom/android/settings/FallbackHome;

    invoke-static {v0}, Lcom/android/settings/FallbackHome;->access$000(Lcom/android/settings/FallbackHome;)V

    return-void
.end method
