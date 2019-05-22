.class public Lcom/android/server/oneplus/MotorManagerService$SocketThread;
.super Ljava/lang/Thread;
.source "MotorManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/oneplus/MotorManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SocketThread"
.end annotation


# static fields
.field private static final MSG_INFO_MAX_SIZE:I = 0x400

.field private static final MSG_INFO_MIN_SIZE:I = 0x3

.field private static final SOCKETTAG:Ljava/lang/String; = "MotorSocketServer"

.field private static final SOCKET_NAME:Ljava/lang/String; = "motor_socket"


# instance fields
.field private keepRunning:Z

.field private final mService:Lcom/android/server/oneplus/MotorManagerService;

.field private serverSocket:Landroid/net/LocalServerSocket;

.field final synthetic this$0:Lcom/android/server/oneplus/MotorManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/oneplus/MotorManagerService;Lcom/android/server/oneplus/MotorManagerService;Ljava/lang/String;)V
    .locals 1

    iput-object p1, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->this$0:Lcom/android/server/oneplus/MotorManagerService;

    invoke-direct {p0, p3}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->keepRunning:Z

    iput-object p2, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->mService:Lcom/android/server/oneplus/MotorManagerService;

    return-void
.end method

.method private readFromSocket(Landroid/net/LocalSocket;)V
    .locals 9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/net/LocalSocket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    move-object v1, v3

    const/16 v3, 0x400

    new-array v4, v3, [B

    const/4 v5, -0x1

    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v3}, Ljava/io/InputStream;->read([BII)I

    move-result v3

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "MotorSocketServer"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "readBytes = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v5, 0x3

    if-lt v3, v5, :cond_2

    aput-byte v6, v4, v3

    new-instance v5, Ljava/lang/String;

    invoke-direct {v5, v4, v6, v3}, Ljava/lang/String;-><init>([BII)V

    move-object v2, v5

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "MotorSocketServer"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ClientSocket read info = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v5, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->mService:Lcom/android/server/oneplus/MotorManagerService;

    invoke-virtual {v5, v2}, Lcom/android/server/oneplus/MotorManagerService;->receiveSocketFromClient(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz p1, :cond_3

    :try_start_1
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    goto :goto_0

    :catch_0
    move-exception v3

    goto :goto_1

    :cond_3
    :goto_0
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2

    :goto_1
    nop

    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :cond_4
    :goto_2
    goto :goto_3

    :catchall_0
    move-exception v3

    goto :goto_4

    :catch_1
    move-exception v3

    :try_start_2
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-eqz p1, :cond_5

    :try_start_3
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    :cond_5
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_2

    :goto_3
    return-void

    :goto_4
    nop

    if-eqz p1, :cond_6

    :try_start_4
    invoke-virtual {p1}, Landroid/net/LocalSocket;->close()V

    goto :goto_5

    :catch_2
    move-exception v4

    goto :goto_6

    :cond_6
    :goto_5
    if-eqz v1, :cond_7

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_7

    :goto_6
    nop

    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    nop

    :cond_7
    :goto_7
    throw v3
.end method


# virtual methods
.method public run()V
    .locals 3

    :try_start_0
    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "MotorSocketServer"

    const-string v1, "LocalServerSocket SOCKET_NAME = motor_socket"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    new-instance v0, Landroid/net/LocalServerSocket;

    const-string/jumbo v1, "motor_socket"

    invoke-direct {v0, v1}, Landroid/net/LocalServerSocket;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    :goto_0
    iget-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->keepRunning:Z

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "MotorSocketServer"

    const-string/jumbo v1, "wait for new client coming!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->accept()Landroid/net/LocalSocket;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->keepRunning:Z

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/android/server/oneplus/MotorManagerService;->access$000()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "MotorSocketServer"

    const-string/jumbo v2, "new client coming!"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    invoke-direct {p0, v0}, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->readFromSocket(Landroid/net/LocalSocket;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    goto :goto_0

    :cond_4
    :try_start_1
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-exception v0

    :try_start_2
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v0}, Landroid/net/LocalServerSocket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_1
    goto :goto_2

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    nop

    :goto_2
    return-void

    :goto_3
    nop

    :try_start_4
    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->serverSocket:Landroid/net/LocalServerSocket;

    invoke-virtual {v1}, Landroid/net/LocalServerSocket;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_6
    goto :goto_4

    :catch_2
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    throw v0
.end method

.method public stopRun()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/oneplus/MotorManagerService$SocketThread;->keepRunning:Z

    return-void
.end method
