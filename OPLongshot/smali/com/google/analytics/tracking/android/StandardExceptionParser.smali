.class public Lcom/google/analytics/tracking/android/StandardExceptionParser;
.super Ljava/lang/Object;
.source "StandardExceptionParser.java"

# interfaces
.implements Lcom/google/analytics/tracking/android/ExceptionParser;


# instance fields
.field private final includedPackages:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {p0, p1, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V

    return-void
.end method


# virtual methods
.method protected getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;
    .locals 10

    invoke-virtual {p1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v0

    if-eqz v0, :cond_4

    array-length v1, v0

    if-nez v1, :cond_0

    goto :goto_2

    :cond_0
    move-object v1, v0

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_3

    aget-object v5, v1, v4

    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v7}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    return-object v5

    :cond_1
    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    aget-object v1, v0, v3

    return-object v1

    :cond_4
    :goto_2
    const/4 v1, 0x0

    return-object v1
.end method

.method protected getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2

    move-object v0, p1

    :goto_0
    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getDescription(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getBestStackTraceElement(Ljava/lang/Throwable;)Ljava/lang/StackTraceElement;

    move-result-object v1

    invoke-virtual {p0, v0, v1, p1}, Lcom/google/analytics/tracking/android/StandardExceptionParser;->getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getDescription(Ljava/lang/Throwable;Ljava/lang/StackTraceElement;Ljava/lang/String;)Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\."

    invoke-virtual {v3, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    const-string v4, "unknown"

    if-eqz v3, :cond_0

    array-length v5, v3

    if-lez v5, :cond_0

    array-length v5, v3

    sub-int/2addr v5, v2

    aget-object v4, v3, v5

    :cond_0
    const-string v5, " (@%s:%s:%s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v4, v6, v1

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v2

    const/4 v7, 0x2

    invoke-virtual {p2}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-eqz p3, :cond_2

    const-string v3, " {%s}"

    new-array v2, v2, [Ljava/lang/Object;

    aput-object p3, v2, v1

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public setIncludedPackages(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v0}, Ljava/util/TreeSet;->clear()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    if-eqz p2, :cond_0

    invoke-interface {v0, p2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_0
    if-eqz p1, :cond_2

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v2, v1}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/16 v3, 0xf

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v2

    iget-object v3, v2, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    if-eqz v3, :cond_1

    move-object v4, v3

    array-length v5, v4

    const/4 v6, 0x0

    :goto_0
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    iget-object v8, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    goto :goto_1

    :catch_0
    move-exception v1

    const-string v2, "No package found"

    invoke-static {v2}, Lcom/google/analytics/tracking/android/Log;->i(Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v4}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_3

    invoke-virtual {v5, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v4, v5}, Ljava/util/TreeSet;->remove(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_3
    const/4 v3, 0x0

    goto :goto_3

    :cond_4
    :goto_4
    if-eqz v3, :cond_5

    iget-object v4, p0, Lcom/google/analytics/tracking/android/StandardExceptionParser;->includedPackages:Ljava/util/TreeSet;

    invoke-virtual {v4, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    :cond_5
    goto :goto_2

    :cond_6
    return-void
.end method
