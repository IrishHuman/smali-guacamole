.class public Lcom/android/server/net/NetworkIdentitySet;
.super Ljava/util/HashSet;
.source "NetworkIdentitySet.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashSet<",
        "Landroid/net/NetworkIdentity;",
        ">;",
        "Ljava/lang/Comparable<",
        "Lcom/android/server/net/NetworkIdentitySet;",
        ">;"
    }
.end annotation


# static fields
.field private static final VERSION_ADD_DEFAULT_NETWORK:I = 0x5

.field private static final VERSION_ADD_METERED:I = 0x4

.field private static final VERSION_ADD_NETWORK_ID:I = 0x3

.field private static final VERSION_ADD_ROAMING:I = 0x2

.field private static final VERSION_INIT:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/util/HashSet;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/io/DataInputStream;)V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct/range {p0 .. p0}, Ljava/util/HashSet;-><init>()V

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    const/4 v4, 0x1

    if-gt v0, v4, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    :cond_0
    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readInt()I

    move-result v14

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v15

    const/4 v5, 0x3

    if-lt v0, v5, :cond_1

    invoke-static/range {p1 .. p1}, Lcom/android/server/net/NetworkIdentitySet;->readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    move-object v9, v5

    goto :goto_2

    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    :goto_2
    const/4 v5, 0x2

    if-lt v0, v5, :cond_2

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    move v10, v5

    goto :goto_3

    :cond_2
    move v10, v2

    :goto_3
    const/4 v5, 0x4

    if-lt v0, v5, :cond_3

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v5

    :goto_4
    move v11, v5

    goto :goto_5

    :cond_3
    if-nez v13, :cond_4

    move v5, v4

    goto :goto_4

    :cond_4
    move v5, v2

    goto :goto_4

    :goto_5
    const/4 v5, 0x5

    if-lt v0, v5, :cond_5

    invoke-virtual/range {p1 .. p1}, Ljava/io/DataInputStream;->readBoolean()Z

    move-result v4

    :goto_6
    move v12, v4

    goto :goto_7

    :cond_5
    goto :goto_6

    :goto_7
    new-instance v4, Landroid/net/NetworkIdentity;

    move-object v5, v4

    move v6, v13

    move v7, v14

    move-object v8, v15

    invoke-direct/range {v5 .. v12}, Landroid/net/NetworkIdentity;-><init>(IILjava/lang/String;Ljava/lang/String;ZZZ)V

    move-object/from16 v5, p0

    invoke-virtual {v5, v4}, Lcom/android/server/net/NetworkIdentitySet;->add(Ljava/lang/Object;)Z

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    move-object/from16 v5, p0

    return-void
.end method

.method private static readOptionalString(Ljava/io/DataInputStream;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readByte()B

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Ljava/io/DataInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private static writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    invoke-virtual {p0, p1}, Ljava/io/DataOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/io/DataOutputStream;->writeByte(I)V

    :goto_0
    return-void
.end method


# virtual methods
.method public areAllMembersOnDefaultNetwork()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public compareTo(Lcom/android/server/net/NetworkIdentitySet;)I
    .locals 3

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkIdentity;

    invoke-virtual {p1}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    invoke-virtual {v0, v1}, Landroid/net/NetworkIdentity;->compareTo(Landroid/net/NetworkIdentity;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/android/server/net/NetworkIdentitySet;

    invoke-virtual {p0, p1}, Lcom/android/server/net/NetworkIdentitySet;->compareTo(Lcom/android/server/net/NetworkIdentitySet;)I

    move-result p1

    return p1
.end method

.method public isAnyMemberMetered()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public isAnyMemberRoaming()Z
    .locals 4

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkIdentity;

    invoke-virtual {v2}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    goto :goto_0

    :cond_2
    return v1
.end method

.method public writeToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .locals 6

    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/NetworkIdentity;

    const-wide v4, 0x20b00000001L

    invoke-virtual {v3, p1, v4, v5}, Landroid/net/NetworkIdentity;->writeToProto(Landroid/util/proto/ProtoOutputStream;J)V

    goto :goto_0

    :cond_0
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    return-void
.end method

.method public writeToStream(Ljava/io/DataOutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {p0}, Lcom/android/server/net/NetworkIdentitySet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkIdentity;

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubType()I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeInt(I)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getNetworkId()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lcom/android/server/net/NetworkIdentitySet;->writeOptionalString(Ljava/io/DataOutputStream;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getRoaming()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getMetered()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    invoke-virtual {v1}, Landroid/net/NetworkIdentity;->getDefaultNetwork()Z

    move-result v2

    invoke-virtual {p1, v2}, Ljava/io/DataOutputStream;->writeBoolean(Z)V

    goto :goto_0

    :cond_0
    return-void
.end method
