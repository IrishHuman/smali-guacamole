.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$CeHsMqpt_XDGAeBs8vk9rNmyZ-E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/am/ActivityManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/am/ActivityManagerService;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$CeHsMqpt_XDGAeBs8vk9rNmyZ-E;->f$0:Lcom/android/server/am/ActivityManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$CeHsMqpt_XDGAeBs8vk9rNmyZ-E;->f$0:Lcom/android/server/am/ActivityManagerService;

    invoke-static {v0}, Lcom/android/server/am/ActivityManagerService;->lambda$setResumedActivityUncheckLocked$0(Lcom/android/server/am/ActivityManagerService;)V

    return-void
.end method
