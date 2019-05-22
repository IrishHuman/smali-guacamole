.class public final synthetic Lcom/android/server/wm/-$$Lambda$WindowManagerService$Ee13tZD6pqcPBokQCFR9GpwHtKc;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/util/ToBooleanFunction;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Ee13tZD6pqcPBokQCFR9GpwHtKc;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Z
    .locals 1

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$WindowManagerService$Ee13tZD6pqcPBokQCFR9GpwHtKc;->f$0:Ljava/lang/String;

    check-cast p1, Lcom/android/server/wm/WindowState;

    invoke-static {v0, p1}, Lcom/android/server/wm/WindowManagerService;->lambda$isFloatWin$0(Ljava/lang/String;Lcom/android/server/wm/WindowState;)Z

    move-result p1

    return p1
.end method
