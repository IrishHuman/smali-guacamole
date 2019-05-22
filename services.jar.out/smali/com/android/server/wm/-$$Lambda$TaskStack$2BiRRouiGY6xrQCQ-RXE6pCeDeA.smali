.class public final synthetic Lcom/android/server/wm/-$$Lambda$TaskStack$2BiRRouiGY6xrQCQ-RXE6pCeDeA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/TaskStack;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/TaskStack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$2BiRRouiGY6xrQCQ-RXE6pCeDeA;->f$0:Lcom/android/server/wm/TaskStack;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$TaskStack$2BiRRouiGY6xrQCQ-RXE6pCeDeA;->f$0:Lcom/android/server/wm/TaskStack;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/TaskStack;->lambda$onAppTransitionDone$2(Lcom/android/server/wm/TaskStack;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
