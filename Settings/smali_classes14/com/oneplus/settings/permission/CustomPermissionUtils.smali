.class public Lcom/oneplus/settings/permission/CustomPermissionUtils;
.super Ljava/lang/Object;
.source "CustomPermissionUtils.java"


# static fields
.field public static final CUSTOM_PERMISSION_CONTROL_BLUETOOTH:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

.field public static final CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

.field public static final CUSTOM_PERMISSION_CONTROL_WIFI:Ljava/lang/String; = "CUSTOM_PERMISSION_CONTROL_WIFI"

.field public static final CUSTOM_PERMISSION_READ_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_READ_MMS"

.field public static final CUSTOM_PERMISSION_SEND_MMS:Ljava/lang/String; = "CUSTOM_PERMISSION_SEND_MMS"

.field public static mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    const-string v1, "CUSTOM_PERMISSION_READ_MMS"

    const-string v2, "android.permission-group.SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    const-string v2, "android.permission-group.SMS"

    invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAffectedCustomPermissionsForGroup(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sget-object v1, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getCustomPermissionsForOriginalGroup()Ljava/util/LinkedHashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedHashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    sget-object v0, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method public static getGroupForCustomPermission(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    const-string v0, ""

    sget-object v1, Lcom/oneplus/settings/permission/CustomPermissionUtils;->mCustomPermissionToOriginalGroup:Ljava/util/LinkedHashMap;

    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

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

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, Ljava/lang/String;

    goto :goto_1

    :cond_0
    goto :goto_0

    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getGroupLabelForCustomPermission(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "CUSTOM_PERMISSION_READ_MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_1

    :sswitch_1
    const-string v1, "CUSTOM_PERMISSION_CONTROL_READ_BOOKMARKS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_1

    :sswitch_2
    const-string v1, "CUSTOM_PERMISSION_CONTROL_BLUETOOTH"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x3

    goto :goto_1

    :sswitch_3
    const-string v1, "CUSTOM_PERMISSION_SEND_MMS"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :sswitch_4
    const-string v1, "CUSTOM_PERMISSION_CONTROL_WIFI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    :goto_0
    move v1, v2

    :goto_1
    packed-switch v1, :pswitch_data_0

    goto :goto_2

    :pswitch_0
    const v0, 0x7f12047b

    goto :goto_2

    :pswitch_1
    const v0, 0x7f12047a

    goto :goto_2

    :pswitch_2
    const v0, 0x7f12047d

    goto :goto_2

    :pswitch_3
    const v0, 0x7f12047c

    nop

    :goto_2
    if-ne v0, v2, :cond_1

    const-string v1, ""

    return-object v1

    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x24e97187 -> :sswitch_4
        -0x2115dfe2 -> :sswitch_3
        -0x193e1656 -> :sswitch_2
        0x474ad4d8 -> :sswitch_1
        0x60d9f32c -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isCustomPermission(Ljava/lang/String;)Z
    .locals 1

    if-eqz p0, :cond_0

    const-string v0, "CUSTOM_PERMISSION"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isOtherCustomPermission(Ljava/lang/String;)Z
    .locals 1

    invoke-static {p0}, Lcom/oneplus/settings/permission/CustomPermissionUtils;->getGroupForCustomPermission(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
