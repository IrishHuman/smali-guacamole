.class Lcom/oneplus/server/OIMCTest$testFuncChange;
.super Ljava/lang/Object;
.source "OIMCTest.java"

# interfaces
.implements Lcom/oneplus/oimc/IOPFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/server/OIMCTest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "testFuncChange"
.end annotation


# instance fields
.field private configObj:Ljava/lang/Object;

.field private differenceSwitch:[Ljava/lang/String;

.field private newConfigVal:I

.field private newStartVal:I

.field private newStopVal:I

.field private oldConfigVal:I

.field private oldStartVal:I

.field private oldStopVal:I

.field final synthetic this$0:Lcom/oneplus/server/OIMCTest;


# direct methods
.method constructor <init>(Lcom/oneplus/server/OIMCTest;)V
    .locals 1

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->this$0:Lcom/oneplus/server/OIMCTest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public checkConfigStatus(ILjava/lang/Object;)Z
    .locals 2

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    if-ne p2, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public checkDifferenceSwitch([Ljava/lang/String;)Z
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    const-string v4, "OIMCTest"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkDifferenceSwitch new:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    array-length v2, v1

    move v3, v0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    const-string v5, "OIMCTest"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "checkDifferenceSwitch old:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-nez v1, :cond_2

    if-nez p1, :cond_2

    const/4 v0, 0x1

    return v0

    :cond_2
    iget-object v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    if-eqz v1, :cond_3

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0

    :cond_3
    return v0
.end method

.method public checkStatus(III)Z
    .locals 3

    const-string v0, "OIMCTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkStatus startChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |stopChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |configChange:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldStartVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldStopVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |oldConfigVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newStartVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newStopVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " |newConfigVal:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    add-int/2addr v1, p1

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    add-int/2addr v1, p2

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iget v1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    add-int/2addr v1, p3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public config(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iput-object p1, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    const/4 v0, 0x0

    return v0
.end method

.method public start(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    const/4 v0, 0x0

    return v0
.end method

.method public stop(Ljava/lang/Object;)I
    .locals 1

    if-eqz p1, :cond_0

    instance-of v0, p1, [Ljava/lang/String;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    :cond_0
    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    const/4 v0, 0x0

    return v0
.end method

.method public syncStatus()V
    .locals 1

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newConfigVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldConfigVal:I

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStartVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStartVal:I

    iget v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->newStopVal:I

    iput v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->oldStopVal:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->configObj:Ljava/lang/Object;

    iput-object v0, p0, Lcom/oneplus/server/OIMCTest$testFuncChange;->differenceSwitch:[Ljava/lang/String;

    return-void
.end method
