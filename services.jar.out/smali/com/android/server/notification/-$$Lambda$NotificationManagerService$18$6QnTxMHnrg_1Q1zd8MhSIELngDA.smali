.class public final synthetic Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/notification/NotificationManagerService$FlagChecker;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;

    invoke-direct {v0}, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;-><init>()V

    sput-object v0, Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;->INSTANCE:Lcom/android/server/notification/-$$Lambda$NotificationManagerService$18$6QnTxMHnrg_1Q1zd8MhSIELngDA;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(I)Z
    .locals 0

    invoke-static {p1}, Lcom/android/server/notification/NotificationManagerService$18;->lambda$run$0(I)Z

    move-result p1

    return p1
.end method
