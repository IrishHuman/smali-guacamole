.class Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;
.super Ljava/lang/Object;
.source "CollapsiblePreferenceGroupController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->createExpandButton(Ljava/util/List;Ljava/util/List;)Landroid/support/v7/preference/CollapsiblePreferenceGroupController$ExpandButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;


# direct methods
.method constructor <init>(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->access$002(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;I)I

    iget-object v0, p0, Landroid/support/v7/preference/CollapsiblePreferenceGroupController$1;->this$0:Landroid/support/v7/preference/CollapsiblePreferenceGroupController;

    invoke-static {v0}, Landroid/support/v7/preference/CollapsiblePreferenceGroupController;->access$100(Landroid/support/v7/preference/CollapsiblePreferenceGroupController;)Landroid/support/v7/preference/PreferenceGroupAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroupAdapter;->onPreferenceHierarchyChange(Landroid/support/v7/preference/Preference;)V

    const/4 v0, 0x1

    return v0
.end method
