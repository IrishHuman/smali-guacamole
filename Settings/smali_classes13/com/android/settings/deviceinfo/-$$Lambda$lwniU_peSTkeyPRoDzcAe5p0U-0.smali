.class public final synthetic Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;-><init>()V

    sput-object v0, Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;->INSTANCE:Lcom/android/settings/deviceinfo/-$$Lambda$lwniU_peSTkeyPRoDzcAe5p0U-0;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Ljava/lang/Character;

    invoke-virtual {p1}, Ljava/lang/Character;->charValue()C

    move-result p1

    invoke-static {p1}, Lcom/oneplus/settings/utils/OPUtils;->isEmojiCharacter(C)Z

    move-result p1

    return p1
.end method
