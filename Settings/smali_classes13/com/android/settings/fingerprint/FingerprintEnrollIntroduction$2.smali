.class Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$2;
.super Ljava/lang/Object;
.source "FingerprintEnrollIntroduction.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onNextButtonClick()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;


# direct methods
.method constructor <init>(Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction$2;->this$0:Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->mNextButtonClicked:Z

    return-void
.end method
