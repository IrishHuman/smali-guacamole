.class public final synthetic Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/-$$Lambda$HeadsUpAppearanceController$5yJ6zXPrjSk_KB2fbcTxEu2j2TI;->f$0:Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;->lambda$setShown$3(Lcom/android/systemui/statusbar/phone/HeadsUpAppearanceController;)V

    return-void
.end method
