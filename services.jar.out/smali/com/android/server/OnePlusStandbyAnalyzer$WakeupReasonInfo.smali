.class public Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;
.super Ljava/lang/Object;
.source "OnePlusStandbyAnalyzer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/OnePlusStandbyAnalyzer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WakeupReasonInfo"
.end annotation


# instance fields
.field public mAverage_Count:F

.field public mCount:I

.field public mCount_End:I

.field public mCount_Start:I

.field public mName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;III)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    iput v0, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    iput-object p1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    iput p2, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    iput p3, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    iput p4, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "# wr ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_Start:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount_End:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/server/OnePlusStandbyAnalyzer$WakeupReasonInfo;->mCount:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
