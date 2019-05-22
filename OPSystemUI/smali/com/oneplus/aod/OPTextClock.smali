.class public Lcom/oneplus/aod/OPTextClock;
.super Landroid/view/View;
.source "OPTextClock.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation


# static fields
.field public static final DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

.field public static final DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;


# instance fields
.field private mAmPmPaint:Landroid/graphics/Paint;

.field private mClockStyle:I

.field private mContext:Landroid/content/Context;

.field private mDescFormat:Ljava/lang/CharSequence;

.field private mDescFormat12:Ljava/lang/CharSequence;

.field private mDescFormat24:Ljava/lang/CharSequence;

.field private mDigitColorRed:I

.field private mDigitColorWhite:I

.field private mFontBaseLineY:F

.field private mFormat:Ljava/lang/CharSequence;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mFormat12:Ljava/lang/CharSequence;

.field private mFormat24:Ljava/lang/CharSequence;

.field private mHasSeconds:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field private mHourPaint:Landroid/graphics/Paint;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mMinPaint:Landroid/graphics/Paint;

.field private mShowCurrentUserTime:Z

.field private final mTicker:Ljava/lang/Runnable;

.field private mTime:Ljava/util/Calendar;

.field private mTimeZone:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "h:mm a"

    sput-object v0, Lcom/oneplus/aod/OPTextClock;->DEFAULT_FORMAT_12_HOUR:Ljava/lang/CharSequence;

    const-string v0, "H:mm"

    sput-object v0, Lcom/oneplus/aod/OPTextClock;->DEFAULT_FORMAT_24_HOUR:Ljava/lang/CharSequence;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$1;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/aod/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$2;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/aod/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/aod/OPTextClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/oneplus/aod/OPTextClock$1;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$1;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Lcom/oneplus/aod/OPTextClock$2;

    invoke-direct {v0, p0}, Lcom/oneplus/aod/OPTextClock$2;-><init>(Lcom/oneplus/aod/OPTextClock;)V

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    sget-object v0, Lcom/android/internal/R$styleable;->TextClock:[I

    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    nop

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->init()V

    return-void

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v1
.end method

.method private static abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    move-object v0, p2

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/aod/OPTextClock;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/oneplus/aod/OPTextClock;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/aod/OPTextClock;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oneplus/aod/OPTextClock;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    return-object v0
.end method

.method private chooseFormat()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat(Z)V

    return-void
.end method

.method private chooseFormat(Z)V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->is24HourModeEnabled()Z

    move-result v0

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v1}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v1

    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    iget-object v4, v1, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat12:Ljava/lang/CharSequence;

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat24:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v2, v3, v4}, Lcom/oneplus/aod/OPTextClock;->abc(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    :goto_0
    iget-boolean v2, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/format/DateFormat;->hasSeconds(Ljava/lang/CharSequence;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    if-eqz p1, :cond_2

    iget-boolean v3, p0, Lcom/oneplus/aod/OPTextClock;->mHasSeconds:Z

    if-eq v2, v3, :cond_2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getHandler()Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-virtual {v3, v4}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto :goto_1

    :cond_1
    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mTicker:Ljava/lang/Runnable;

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    :goto_1
    return-void
.end method

.method private createTime(Ljava/lang/String;)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    goto :goto_0

    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    :goto_0
    return-void
.end method

.method private drawClockDefault(Landroid/graphics/Canvas;)V
    .locals 22

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    const/4 v3, 0x2

    new-array v4, v3, [C

    invoke-virtual/range {p0 .. p0}, Lcom/oneplus/aod/OPTextClock;->getTime()Ljava/lang/String;

    move-result-object v5

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    const-string v6, " "

    goto :goto_0

    :cond_0
    const-string v6, "."

    :goto_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    const-string v8, ""

    const-string v9, ""

    const/4 v10, 0x0

    move-object v11, v8

    move v8, v10

    :goto_1
    if-ge v8, v7, :cond_1

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v8, v7, 0x1

    :goto_2
    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    if-ge v8, v12, :cond_2

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/String;->charAt(I)C

    move-result v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    :cond_2
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v8

    const/4 v12, 0x1

    if-ne v8, v12, :cond_3

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "0"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :cond_3
    const/4 v13, 0x0

    new-array v14, v3, [F

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v11, v14}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;[F)I

    aget v13, v14, v10

    const/4 v15, 0x0

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v16

    div-int/lit8 v12, v16, 0x2

    int-to-float v12, v12

    aget v16, v14, v10

    sub-float v12, v12, v16

    float-to-int v12, v12

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v15, 0x31

    if-ne v3, v15, :cond_4

    iget v3, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    goto :goto_3

    :cond_4
    iget v3, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    :goto_3
    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual {v11, v10}, Ljava/lang/String;->charAt(I)C

    move-result v15

    aput-char v15, v4, v10

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    move/from16 v17, v3

    aget-char v3, v4, v10

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v3

    move-object/from16 v18, v5

    const/4 v5, 0x1

    invoke-virtual {v15, v3, v10, v5, v2}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    move v3, v12

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v5

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v15}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    const v10, 0x7f070147

    invoke-virtual {v15, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v10

    int-to-float v10, v10

    iput v10, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v15, 0x0

    aget-char v15, v4, v15

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v15, ""

    invoke-virtual {v10, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    int-to-float v15, v3

    move-object/from16 v19, v2

    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    move-object/from16 v20, v5

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v10, v15, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aput-char v5, v4, v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v2, 0x31

    if-ne v5, v2, :cond_5

    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    goto :goto_4

    :cond_5
    iget v2, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    :goto_4
    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setColor(I)V

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v10, 0x1

    aget-char v10, v4, v10

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v10, ""

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    int-to-float v10, v3

    add-float/2addr v10, v13

    iget v15, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    move/from16 v21, v2

    iget-object v2, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v5, v10, v15, v2}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v2, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v2}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v2

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v10, 0x7f070148

    invoke-virtual {v5, v10}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    int-to-float v5, v5

    iput v5, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    sget-object v10, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v5, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget v10, v0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v5, v10}, Landroid/graphics/Paint;->setColor(I)V

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result v5

    const/4 v10, 0x2

    div-int/2addr v5, v10

    int-to-float v5, v5

    iget v10, v0, Lcom/oneplus/aod/OPTextClock;->mFontBaseLineY:F

    iget-object v15, v0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v9, v5, v10, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-void
.end method

.method private init()V
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    if-nez v1, :cond_1

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    :cond_1
    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    if-nez v1, :cond_2

    iget-object v1, v0, Llibcore/icu/LocaleData;->timeFormat_Hm:Ljava/lang/String;

    iput-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    :cond_2
    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060139

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorRed:I

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f06013a

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-regular"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v3, "sans-serif-thin"

    invoke-static {v3, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget v3, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif-regular"

    invoke-static {v2, v0}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mAmPmPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/oneplus/aod/OPTextClock;->mDigitColorWhite:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method private onTimeChanged()V
    .locals 5

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->updateTextStyle()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v1

    iget v2, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    if-nez v2, :cond_0

    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    add-float/2addr v2, v3

    :goto_0
    goto :goto_1

    :cond_0
    iget v2, v1, Landroid/graphics/Paint$FontMetrics;->ascent:F

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    iget v3, v1, Landroid/graphics/Paint$FontMetrics;->descent:F

    add-float/2addr v2, v3

    goto :goto_0

    :goto_1
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    float-to-int v3, v2

    iput v3, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p0, v0}, Lcom/oneplus/aod/OPTextClock;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    iget-object v3, p0, Lcom/oneplus/aod/OPTextClock;->mDescFormat:Ljava/lang/CharSequence;

    iget-object v4, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v3, v4}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/oneplus/aod/OPTextClock;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getTime()Ljava/lang/String;
    .locals 4

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mFormat:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Calendar;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OPTextClock"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getTime = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public is24HourModeEnabled()Z
    .locals 2

    iget-boolean v0, p0, Lcom/oneplus/aod/OPTextClock;->mShowCurrentUserTime:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    move-result v0

    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/aod/OPTextClock;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/oneplus/aod/OPTextClock;->setTimeZone(Ljava/lang/String;)V

    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mTime:Ljava/util/Calendar;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    iget v0, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->drawClockDefault(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public setClockStyle(I)V
    .locals 0

    iput p1, p0, Lcom/oneplus/aod/OPTextClock;->mClockStyle:I

    return-void
.end method

.method public setFormat12Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat12:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public setFormat24Hour(Ljava/lang/CharSequence;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mFormat24:Ljava/lang/CharSequence;

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public setShowCurrentUserTime(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/oneplus/aod/OPTextClock;->mShowCurrentUserTime:Z

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->chooseFormat()V

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public setTimeZone(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    iput-object p1, p0, Lcom/oneplus/aod/OPTextClock;->mTimeZone:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/oneplus/aod/OPTextClock;->createTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/oneplus/aod/OPTextClock;->onTimeChanged()V

    return-void
.end method

.method public updateTextStyle()V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    const-string v2, "sans-serif"

    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mHourPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070149

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    iget-object v0, p0, Lcom/oneplus/aod/OPTextClock;->mMinPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/oneplus/aod/OPTextClock;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    return-void
.end method
