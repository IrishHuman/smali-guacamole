.class Lcom/android/settings/widget/LabeledSeekBar$1;
.super Ljava/lang/Object;
.source "LabeledSeekBar.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/LabeledSeekBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/LabeledSeekBar;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/LabeledSeekBar;)V
    .locals 0

    iput-object p1, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 4

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0, p2}, Lcom/android/settings/widget/LabeledSeekBar;->access$100(Lcom/android/settings/widget/LabeledSeekBar;I)V

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v7/preference/VibratorSceneUtils;->systemVibrateEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v2}, Lcom/android/settings/widget/LabeledSeekBar;->access$300(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/os/Vibrator;

    move-result-object v2

    const/16 v3, 0x402

    invoke-static {v1, v2, v3}, Landroid/support/v7/preference/VibratorSceneUtils;->getVibratorScenePattern(Landroid/content/Context;Landroid/os/Vibrator;I)[J

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/widget/LabeledSeekBar;->access$202(Lcom/android/settings/widget/LabeledSeekBar;[J)[J

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$200(Lcom/android/settings/widget/LabeledSeekBar;)[J

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v1}, Lcom/android/settings/widget/LabeledSeekBar;->access$300(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/os/Vibrator;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/support/v7/preference/VibratorSceneUtils;->vibrateIfNeeded([JLandroid/os/Vibrator;)V

    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 1

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/LabeledSeekBar$1;->this$0:Lcom/android/settings/widget/LabeledSeekBar;

    invoke-static {v0}, Lcom/android/settings/widget/LabeledSeekBar;->access$000(Lcom/android/settings/widget/LabeledSeekBar;)Landroid/widget/SeekBar$OnSeekBarChangeListener;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/widget/SeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    :cond_0
    return-void
.end method
