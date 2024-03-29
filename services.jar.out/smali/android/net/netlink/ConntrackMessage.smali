.class public Landroid/net/netlink/ConntrackMessage;
.super Landroid/net/netlink/NetlinkMessage;
.source "ConntrackMessage.java"


# static fields
.field public static final CTA_IP_V4_DST:S = 0x2s

.field public static final CTA_IP_V4_SRC:S = 0x1s

.field public static final CTA_PROTO_DST_PORT:S = 0x3s

.field public static final CTA_PROTO_NUM:S = 0x1s

.field public static final CTA_PROTO_SRC_PORT:S = 0x2s

.field public static final CTA_TIMEOUT:S = 0x7s

.field public static final CTA_TUPLE_IP:S = 0x1s

.field public static final CTA_TUPLE_ORIG:S = 0x1s

.field public static final CTA_TUPLE_PROTO:S = 0x2s

.field public static final CTA_TUPLE_REPLY:S = 0x2s

.field public static final IPCTNL_MSG_CT_NEW:S = 0x0s

.field public static final NFNL_SUBSYS_CTNETLINK:S = 0x1s

.field public static final STRUCT_SIZE:I = 0x14


# instance fields
.field protected mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;


# direct methods
.method private constructor <init>()V
    .locals 2

    new-instance v0, Landroid/net/netlink/StructNlMsgHdr;

    invoke-direct {v0}, Landroid/net/netlink/StructNlMsgHdr;-><init>()V

    invoke-direct {p0, v0}, Landroid/net/netlink/NetlinkMessage;-><init>(Landroid/net/netlink/StructNlMsgHdr;)V

    new-instance v0, Landroid/net/netlink/StructNfGenMsg;

    sget v1, Landroid/system/OsConstants;->AF_INET:I

    int-to-byte v1, v1

    invoke-direct {v0, v1}, Landroid/net/netlink/StructNfGenMsg;-><init>(B)V

    iput-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    return-void
.end method

.method public static newIPv4TimeoutUpdateRequest(ILjava/net/Inet4Address;ILjava/net/Inet4Address;II)[B
    .locals 10

    new-instance v0, Landroid/net/netlink/StructNlAttr;

    const/4 v1, 0x2

    new-array v2, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    new-array v4, v1, [Landroid/net/netlink/StructNlAttr;

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    const/4 v6, 0x1

    invoke-direct {v5, v6, p1}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    const/4 v7, 0x0

    aput-object v5, v4, v7

    new-instance v5, Landroid/net/netlink/StructNlAttr;

    invoke-direct {v5, v1, p3}, Landroid/net/netlink/StructNlAttr;-><init>(SLjava/net/InetAddress;)V

    aput-object v5, v4, v6

    invoke-direct {v3, v6, v4}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v3, v2, v7

    new-instance v3, Landroid/net/netlink/StructNlAttr;

    const/4 v4, 0x3

    new-array v5, v4, [Landroid/net/netlink/StructNlAttr;

    new-instance v8, Landroid/net/netlink/StructNlAttr;

    int-to-byte v9, p0

    invoke-direct {v8, v6, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SB)V

    aput-object v8, v5, v7

    new-instance v7, Landroid/net/netlink/StructNlAttr;

    int-to-short v8, p2

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v1, v8, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v7, v5, v6

    new-instance v7, Landroid/net/netlink/StructNlAttr;

    int-to-short v8, p4

    sget-object v9, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v7, v4, v8, v9}, Landroid/net/netlink/StructNlAttr;-><init>(SSLjava/nio/ByteOrder;)V

    aput-object v7, v5, v1

    invoke-direct {v3, v1, v5}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    aput-object v3, v2, v6

    invoke-direct {v0, v6, v2}, Landroid/net/netlink/StructNlAttr;-><init>(S[Landroid/net/netlink/StructNlAttr;)V

    new-instance v1, Landroid/net/netlink/StructNlAttr;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/4 v3, 0x7

    invoke-direct {v1, v3, p5, v2}, Landroid/net/netlink/StructNlAttr;-><init>(SILjava/nio/ByteOrder;)V

    invoke-virtual {v0}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v2

    invoke-virtual {v1}, Landroid/net/netlink/StructNlAttr;->getAlignedLength()I

    move-result v3

    add-int/2addr v2, v3

    const/16 v3, 0x14

    add-int/2addr v3, v2

    new-array v3, v3, [B

    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v4

    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    new-instance v5, Landroid/net/netlink/ConntrackMessage;

    invoke-direct {v5}, Landroid/net/netlink/ConntrackMessage;-><init>()V

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    array-length v8, v3

    iput v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_len:I

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x100

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_type:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    const/16 v8, 0x105

    iput-short v8, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_flags:S

    iget-object v7, v5, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    iput v6, v7, Landroid/net/netlink/StructNlMsgHdr;->nlmsg_seq:I

    invoke-virtual {v5, v4}, Landroid/net/netlink/ConntrackMessage;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v0, v4}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    invoke-virtual {v1, v4}, Landroid/net/netlink/StructNlAttr;->pack(Ljava/nio/ByteBuffer;)V

    return-object v3
.end method


# virtual methods
.method public pack(Ljava/nio/ByteBuffer;)V
    .locals 1

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mHeader:Landroid/net/netlink/StructNlMsgHdr;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNlMsgHdr;->pack(Ljava/nio/ByteBuffer;)V

    iget-object v0, p0, Landroid/net/netlink/ConntrackMessage;->mNfGenMsg:Landroid/net/netlink/StructNfGenMsg;

    invoke-virtual {v0, p1}, Landroid/net/netlink/StructNfGenMsg;->pack(Ljava/nio/ByteBuffer;)V

    return-void
.end method
