.class public Lcom/google/common/eventbus/EventBus;
.super Ljava/lang/Object;
.source "EventBus.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/eventbus/EventBus$EventWithSubscriber;,
        Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;
    }
.end annotation


# static fields
.field private static final flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/cache/LoadingCache<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;>;"
        }
    .end annotation
.end field


# instance fields
.field private final eventsToDispatch:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/util/Queue<",
            "Lcom/google/common/eventbus/EventBus$EventWithSubscriber;",
            ">;>;"
        }
    .end annotation
.end field

.field private final finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

.field private final isDispatching:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

.field private final subscribersByType:Lcom/google/common/collect/SetMultimap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/SetMultimap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/google/common/eventbus/EventSubscriber;",
            ">;"
        }
    .end annotation
.end field

.field private final subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    invoke-static {}, Lcom/google/common/cache/CacheBuilder;->newBuilder()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/cache/CacheBuilder;->weakKeys()Lcom/google/common/cache/CacheBuilder;

    move-result-object v0

    new-instance v1, Lcom/google/common/eventbus/EventBus$1;

    invoke-direct {v1}, Lcom/google/common/eventbus/EventBus$1;-><init>()V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/CacheBuilder;->build(Lcom/google/common/cache/CacheLoader;)Lcom/google/common/cache/LoadingCache;

    move-result-object v0

    sput-object v0, Lcom/google/common/eventbus/EventBus;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    nop

    invoke-static {}, Lcom/google/common/collect/HashMultimap;->create()Lcom/google/common/collect/HashMultimap;

    move-result-object v0

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    new-instance v0, Ljava/util/concurrent/locks/ReentrantReadWriteLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantReadWriteLock;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    new-instance v0, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;

    invoke-direct {v0}, Lcom/google/common/eventbus/AnnotatedSubscriberFinder;-><init>()V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    new-instance v0, Lcom/google/common/eventbus/EventBus$2;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/EventBus$2;-><init>(Lcom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/google/common/eventbus/EventBus$3;

    invoke-direct {v0, p0}, Lcom/google/common/eventbus/EventBus$3;-><init>(Lcom/google/common/eventbus/EventBus;)V

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/eventbus/SubscriberExceptionHandler;

    iput-object v0, p0, Lcom/google/common/eventbus/EventBus;->subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;

    invoke-direct {v0, p1}, Lcom/google/common/eventbus/EventBus$LoggingSubscriberExceptionHandler;-><init>(Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/google/common/eventbus/EventBus;-><init>(Lcom/google/common/eventbus/SubscriberExceptionHandler;)V

    return-void
.end method


# virtual methods
.method dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 8

    :try_start_0
    invoke-virtual {p2, p1}, Lcom/google/common/eventbus/EventSubscriber;->handleEvent(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_1
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscriberExceptionHandler:Lcom/google/common/eventbus/SubscriberExceptionHandler;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    new-instance v3, Lcom/google/common/eventbus/SubscriberExceptionContext;

    invoke-virtual {p2}, Lcom/google/common/eventbus/EventSubscriber;->getSubscriber()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {p2}, Lcom/google/common/eventbus/EventSubscriber;->getMethod()Ljava/lang/reflect/Method;

    move-result-object v5

    invoke-direct {v3, p0, p1, v4, v5}, Lcom/google/common/eventbus/SubscriberExceptionContext;-><init>(Lcom/google/common/eventbus/EventBus;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Method;)V

    invoke-interface {v1, v2, v3}, Lcom/google/common/eventbus/SubscriberExceptionHandler;->handleException(Ljava/lang/Throwable;Lcom/google/common/eventbus/SubscriberExceptionContext;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_1
    move-exception v1

    const-class v2, Lcom/google/common/eventbus/EventBus;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->SEVERE:Ljava/util/logging/Level;

    const-string v4, "Exception %s thrown while handling exception: %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4, v1}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method dispatchQueuedEvents()V
    .locals 4

    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :try_start_0
    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    move-object v2, v1

    if-eqz v1, :cond_1

    iget-object v1, v2, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->event:Ljava/lang/Object;

    iget-object v3, v2, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;->subscriber:Lcom/google/common/eventbus/EventSubscriber;

    invoke-virtual {p0, v1, v3}, Lcom/google/common/eventbus/EventBus;->dispatch(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->remove()V

    nop

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->isDispatching:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->remove()V

    throw v0
.end method

.method enqueueEvent(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    .locals 2

    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->eventsToDispatch:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Queue;

    new-instance v1, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;

    invoke-direct {v1, p1, p2}, Lcom/google/common/eventbus/EventBus$EventWithSubscriber;-><init>(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V

    invoke-interface {v0, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    return-void
.end method

.method flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;
    .locals 2
    .annotation build Lcom/google/common/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/Class<",
            "*>;>;"
        }
    .end annotation

    :try_start_0
    sget-object v0, Lcom/google/common/eventbus/EventBus;->flattenHierarchyCache:Lcom/google/common/cache/LoadingCache;

    invoke-interface {v0, p1}, Lcom/google/common/cache/LoadingCache;->getUnchecked(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;
    :try_end_0
    .catch Lcom/google/common/util/concurrent/UncheckedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Lcom/google/common/util/concurrent/UncheckedExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-static {v1}, Lcom/google/common/base/Throwables;->propagate(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public post(Ljava/lang/Object;)V
    .locals 7

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/eventbus/EventBus;->flattenHierarchy(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    iget-object v4, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v4, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v4, v3}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_0

    const/4 v1, 0x1

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/google/common/eventbus/EventSubscriber;

    invoke-virtual {p0, p1, v6}, Lcom/google/common/eventbus/EventBus;->enqueueEvent(Ljava/lang/Object;Lcom/google/common/eventbus/EventSubscriber;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_0
    iget-object v4, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    goto :goto_0

    :catchall_0
    move-exception v2

    iget-object v4, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v4}, Ljava/util/concurrent/locks/ReadWriteLock;->readLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v2

    :cond_1
    if-nez v1, :cond_2

    instance-of v2, p1, Lcom/google/common/eventbus/DeadEvent;

    if-nez v2, :cond_2

    new-instance v2, Lcom/google/common/eventbus/DeadEvent;

    invoke-direct {v2, p0, p1}, Lcom/google/common/eventbus/DeadEvent;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v2}, Lcom/google/common/eventbus/EventBus;->post(Ljava/lang/Object;)V

    :cond_2
    invoke-virtual {p0}, Lcom/google/common/eventbus/EventBus;->dispatchQueuedEvents()V

    return-void
.end method

.method public register(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    invoke-interface {v0, p1}, Lcom/google/common/eventbus/SubscriberFindingStrategy;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v1, v0}, Lcom/google/common/collect/SetMultimap;->putAll(Lcom/google/common/collect/Multimap;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v1, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v1}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    return-void

    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v2}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1
.end method

.method public unregister(Ljava/lang/Object;)V
    .locals 8

    iget-object v0, p0, Lcom/google/common/eventbus/EventBus;->finder:Lcom/google/common/eventbus/SubscriberFindingStrategy;

    invoke-interface {v0, p1}, Lcom/google/common/eventbus/SubscriberFindingStrategy;->findAllSubscribers(Ljava/lang/Object;)Lcom/google/common/collect/Multimap;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/Multimap;->asMap()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    iget-object v5, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->lock()V

    :try_start_0
    iget-object v5, p0, Lcom/google/common/eventbus/EventBus;->subscribersByType:Lcom/google/common/collect/SetMultimap;

    invoke-interface {v5, v3}, Lcom/google/common/collect/SetMultimap;->get(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5, v4}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5, v4}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v5, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    nop

    goto :goto_0

    :cond_0
    :try_start_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "missing event subscriber for an annotated method. Is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v7, " registered?"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception v1

    iget-object v5, p0, Lcom/google/common/eventbus/EventBus;->subscribersByTypeLock:Ljava/util/concurrent/locks/ReadWriteLock;

    invoke-interface {v5}, Ljava/util/concurrent/locks/ReadWriteLock;->writeLock()Ljava/util/concurrent/locks/Lock;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/concurrent/locks/Lock;->unlock()V

    throw v1

    :cond_1
    return-void
.end method
