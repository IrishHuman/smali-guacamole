.class public Lcom/oneplus/lib/util/OPFeaturesUtils;
.super Ljava/lang/Object;
.source "OPFeaturesUtils.java"


# static fields
.field private static sIsSupport:Ljava/lang/reflect/Method;

.field private static sOPFeatures:Ljava/lang/Class;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    return-void
.end method

.method public static isSupportXVibrate()Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    :cond_1
    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v3, "OP_FEATURE_X_LINEAR_VIBRATION_MOTOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v3, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [I

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    aput v7, v4, v0

    aput-object v4, v5, v0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return v1
.end method

.method public static isSupportZVibrate()Z
    .locals 8

    const/4 v0, 0x0

    move v1, v0

    :try_start_0
    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    if-eqz v2, :cond_0

    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    if-nez v2, :cond_1

    :cond_0
    invoke-static {}, Lcom/oneplus/lib/util/OPFeaturesUtils;->loadFeatures()V

    :cond_1
    sget-object v2, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v3, "OP_FEATURE_Z_VIBRATION_MOTOR"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sget-object v3, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    sget-object v3, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;

    new-array v5, v4, [Ljava/lang/Object;

    new-array v4, v4, [I

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v7

    aput v7, v4, v0

    aput-object v4, v5, v0

    invoke-virtual {v3, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move v1, v0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return v1
.end method

.method private static loadFeatures()V
    .locals 5

    :try_start_0
    const-string v0, "android.util.OpFeatures"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    sget-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sOPFeatures:Ljava/lang/Class;

    const-string v1, "isSupport"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, [I

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lcom/oneplus/lib/util/OPFeaturesUtils;->sIsSupport:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    :goto_0
    return-void
.end method
