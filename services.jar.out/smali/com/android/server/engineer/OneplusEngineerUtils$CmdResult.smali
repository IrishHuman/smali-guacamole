.class Lcom/android/server/engineer/OneplusEngineerUtils$CmdResult;
.super Ljava/lang/Object;
.source "OneplusEngineerUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/engineer/OneplusEngineerUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "CmdResult"
.end annotation


# instance fields
.field public errorMsg:Ljava/lang/String;

.field public result:I

.field public successMsg:Ljava/lang/String;


# direct methods
.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerUtils$CmdResult;->result:I

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/android/server/engineer/OneplusEngineerUtils$CmdResult;->result:I

    iput-object p2, p0, Lcom/android/server/engineer/OneplusEngineerUtils$CmdResult;->successMsg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/engineer/OneplusEngineerUtils$CmdResult;->errorMsg:Ljava/lang/String;

    return-void
.end method
