.class public final Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
.super Lcom/google/protobuf/nano/MessageNano;
.source "TouchAnalyticsProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TouchEvent"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;,
        Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;
    }
.end annotation


# static fields
.field private static volatile _emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;


# instance fields
.field private actionIndex_:I

.field private action_:I

.field private bitField0_:I

.field public pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

.field public removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

.field private removedRedacted_:Z

.field private timeOffsetNanos_:J


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/google/protobuf/nano/MessageNano;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    return-void
.end method

.method public static emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 2

    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v0, :cond_1

    sget-object v0, Lcom/google/protobuf/nano/InternalNano;->LAZY_INIT_LOCK:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    sput-object v1, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_1
    :goto_0
    sget-object v0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->_emptyArray:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;

    return-object v0
.end method


# virtual methods
.method public clear()Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const-wide/16 v1, 0x0

    iput-wide v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    invoke-static {}, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;->emptyArray()[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    move-result-object v1

    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    const/4 v0, -0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->cachedSize:I

    return-object p0
.end method

.method protected computeSerializedSize()I
    .locals 5

    invoke-super {p0}, Lcom/google/protobuf/nano/MessageNano;->computeSerializedSize()I

    move-result v0

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    if-eqz v1, :cond_0

    iget-wide v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    invoke-static {v2, v3, v4}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeUInt64Size(IJ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_0
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v2, 0x2

    and-int/2addr v1, v2

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    invoke-static {v2, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_1
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    const/4 v1, 0x3

    iget v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    invoke-static {v1, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeInt32Size(II)I

    move-result v1

    add-int/2addr v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v1, v1

    if-lez v1, :cond_4

    const/4 v1, 0x0

    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v3, v3

    if-ge v1, v3, :cond_4

    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v3, v3, v1

    if-eqz v3, :cond_3

    nop

    invoke-static {v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v4

    add-int/2addr v0, v4

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    iget v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_5

    const/4 v1, 0x5

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeBoolSize(IZ)I

    move-result v1

    add-int/2addr v0, v1

    :cond_5
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v1, :cond_6

    const/4 v1, 0x6

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-static {v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->computeMessageSize(ILcom/google/protobuf/nano/MessageNano;)I

    move-result v1

    add-int/2addr v0, v1

    :cond_6
    return v0
.end method

.method public setAction(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setActionIndex(I)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public setTimeOffsetNanos(J)Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;
    .locals 1

    iput-wide p1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    return-object p0
.end method

.method public writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    iget-wide v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->timeOffsetNanos_:J

    invoke-virtual {p1, v1, v2, v3}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeUInt64(IJ)V

    :cond_0
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->action_:I

    invoke-virtual {p1, v1, v0}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    const/4 v1, 0x4

    and-int/2addr v0, v1

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    iget v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->actionIndex_:I

    invoke-virtual {p1, v0, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeInt32(II)V

    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v0, v0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->pointers:[Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$Pointer;

    aget-object v2, v2, v0

    if-eqz v2, :cond_3

    invoke-virtual {p1, v1, v2}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    iget v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_5

    const/4 v0, 0x5

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedRedacted_:Z

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeBool(IZ)V

    :cond_5
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    if-eqz v0, :cond_6

    const/4 v0, 0x6

    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent;->removedBoundingBox:Lcom/android/systemui/statusbar/phone/nano/TouchAnalyticsProto$Session$TouchEvent$BoundingBox;

    invoke-virtual {p1, v0, v1}, Lcom/google/protobuf/nano/CodedOutputByteBufferNano;->writeMessage(ILcom/google/protobuf/nano/MessageNano;)V

    :cond_6
    invoke-super {p0, p1}, Lcom/google/protobuf/nano/MessageNano;->writeTo(Lcom/google/protobuf/nano/CodedOutputByteBufferNano;)V

    return-void
.end method
