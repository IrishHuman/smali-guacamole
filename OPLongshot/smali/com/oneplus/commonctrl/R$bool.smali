.class public final Lcom/oneplus/commonctrl/R$bool;
.super Ljava/lang/Object;
.source "R.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/commonctrl/R;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "bool"
.end annotation


# static fields
.field public static abc_action_bar_embed_tabs:I

.field public static allow_stacked_button_bar:I

.field public static config_closeDialogWhenTouchOutside:I

.field public static op_abc_action_bar_embed_tabs:I

.field public static op_abc_config_showMenuShortcutsWhenKeyboardPresent:I

.field public static preferences_prefer_dual_pane:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput v0, Lcom/oneplus/commonctrl/R$bool;->abc_action_bar_embed_tabs:I

    sput v0, Lcom/oneplus/commonctrl/R$bool;->allow_stacked_button_bar:I

    sput v0, Lcom/oneplus/commonctrl/R$bool;->config_closeDialogWhenTouchOutside:I

    sput v0, Lcom/oneplus/commonctrl/R$bool;->op_abc_action_bar_embed_tabs:I

    sput v0, Lcom/oneplus/commonctrl/R$bool;->op_abc_config_showMenuShortcutsWhenKeyboardPresent:I

    sput v0, Lcom/oneplus/commonctrl/R$bool;->preferences_prefer_dual_pane:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
