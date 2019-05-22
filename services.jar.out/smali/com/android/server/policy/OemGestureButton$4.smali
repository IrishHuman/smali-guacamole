.class Lcom/android/server/policy/OemGestureButton$4;
.super Ljava/lang/Object;
.source "OemGestureButton.java"

# interfaces
.implements Lcom/android/server/OemSceneButtonController$GestureButtonBlockListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/OemGestureButton;->tryToRegistGestureButtonBlockListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/OemGestureButton;


# direct methods
.method constructor <init>(Lcom/android/server/policy/OemGestureButton;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/policy/OemGestureButton$4;->this$0:Lcom/android/server/policy/OemGestureButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getGestureButtonBlockStatus()Z
    .locals 1

    invoke-static {}, Lcom/android/server/policy/OemGestureButton;->access$400()Z

    move-result v0

    return v0
.end method

.method public setGestureButtonBlock(Z)V
    .locals 0

    invoke-static {p1}, Lcom/android/server/policy/OemGestureButton;->access$402(Z)Z

    return-void
.end method
