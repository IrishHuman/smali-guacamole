.class public final synthetic Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/internal/os/ProcessCpuTracker$FilterStats;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;

    invoke-direct {v0}, Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;-><init>()V

    sput-object v0, Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;->INSTANCE:Lcom/android/server/am/-$$Lambda$ActivityManagerService$qLjSm9VDxOdlZwBZT-qc8uDXM_o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final needed(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/am/ActivityManagerService;->lambda$reportMemUsage$5(Lcom/android/internal/os/ProcessCpuTracker$Stats;)Z

    move-result p1

    return p1
.end method
