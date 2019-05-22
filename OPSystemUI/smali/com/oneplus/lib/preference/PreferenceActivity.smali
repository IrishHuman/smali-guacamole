.class public abstract Lcom/oneplus/lib/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/PreferenceActivity$Header;,
        Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;
    }
.end annotation


# instance fields
.field private mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mNextButton:Landroid/widget/Button;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method static synthetic access$000(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->bindPreferences()V

    return-void
.end method

.method static synthetic access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v0
.end method

.method private bindPreferences()V
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    invoke-super {p0, v1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    :cond_0
    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method private switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->isValidFragment(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v1

    const/16 v2, 0x1003

    invoke-virtual {v1, v2}, Landroid/app/FragmentTransaction;->setTransition(I)Landroid/app/FragmentTransaction;

    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {v1, v2, v0}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    return-void

    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid fragment for this activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            "Ljava/util/ArrayList<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_5

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eq p1, v3, :cond_4

    iget-wide v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    const-wide/16 v6, -0x1

    cmp-long v4, v4, v6

    if-eqz v4, :cond_0

    iget-wide v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    iget-wide v6, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->id:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_0

    goto :goto_2

    :cond_0
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_1
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v4, :cond_2

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_3

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_4
    :goto_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    nop

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    return-object v1

    :cond_6
    if-le v2, v3, :cond_a

    nop

    :goto_3
    if-ge v1, v2, :cond_a

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    if-eqz v4, :cond_7

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    return-object v3

    :cond_7
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    if-eqz v4, :cond_8

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->extras:Landroid/os/Bundle;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    return-object v3

    :cond_8
    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    if-eqz v4, :cond_9

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    iget-object v5, v3, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->title:Ljava/lang/CharSequence;

    invoke-virtual {v4, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    return-object v3

    :cond_9
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_a
    const/4 v1, 0x0

    return-object v1
.end method

.method public getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method protected isValidFragment(Ljava/lang/String;)Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Subclasses of PreferenceActivity must override isValidFragment(String) to verify that the Fragment class is valid! "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " has not checked if fragment "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityResult(IILandroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method public onBuildHeaders(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/oneplus/lib/preference/PreferenceActivity$Header;",
            ">;)V"
        }
    .end annotation

    return-void
.end method

.method public onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_args"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_title"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ":android:show_fragment_short_title"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v1, ":android:no_headers"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    return-object v0
.end method

.method public onContentChanged()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    sget-object v0, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity:[I

    sget v1, Lcom/oneplus/commonctrl/R$attr;->op_preferenceActivityStyle:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v0, v1, v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_android_layout:I

    sget v4, Lcom/oneplus/commonctrl/R$layout;->preference_list_content:I

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_oneplusHeaderLayout:I

    sget v5, Lcom/oneplus/commonctrl/R$layout;->preference_header_item:I

    invoke-virtual {v0, v4, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    sget v4, Lcom/oneplus/commonctrl/R$styleable;->PreferenceActivity_headerRemoveIconIfEmpty:I

    invoke-virtual {v0, v4, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    iput-boolean v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    sget v4, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    sget v4, Lcom/oneplus/commonctrl/R$id;->prefs_frame:I

    invoke-virtual {p0, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    iput-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsHidingHeaders()Z

    move-result v4

    const/4 v5, 0x1

    if-nez v4, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onIsMultiPane()Z

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    move v6, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v6, v5

    :goto_1
    iput-boolean v6, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    const-string v7, ":android:show_fragment"

    invoke-virtual {v6, v7}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    const-string v8, ":android:show_fragment_args"

    invoke-virtual {v7, v8}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v7

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v8

    const-string v9, ":android:show_fragment_title"

    invoke-virtual {v8, v9, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v9

    const-string v10, ":android:show_fragment_short_title"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    if-eqz p1, :cond_3

    const-string v10, ":android:headers"

    invoke-virtual {p1, v10}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v10

    if-eqz v10, :cond_2

    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v11, v10}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const-string v11, ":android:cur_header"

    const/4 v12, -0x1

    invoke-virtual {p1, v11, v12}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v11

    if-ltz v11, :cond_2

    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v11, v12, :cond_2

    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    :cond_2
    goto :goto_3

    :cond_3
    if-eqz v6, :cond_5

    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v10, :cond_5

    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    if-eqz v8, :cond_7

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v10

    if-eqz v9, :cond_4

    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v11

    goto :goto_2

    :cond_4
    move-object v11, v2

    :goto_2
    invoke-virtual {p0, v10, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_5
    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    iget-object v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-lez v10, :cond_7

    iget-boolean v10, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v10, :cond_7

    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_3

    :cond_6
    invoke-virtual {p0, v6, v7}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_7
    :goto_3
    const/16 v10, 0x8

    if-eqz v6, :cond_9

    iget-boolean v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v11, :cond_9

    sget v5, Lcom/oneplus/commonctrl/R$id;->headers:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v10}, Landroid/view/View;->setVisibility(I)V

    iget-object v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    if-eqz v8, :cond_c

    invoke-virtual {p0, v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v5

    if-eqz v9, :cond_8

    invoke-virtual {p0, v9}, Lcom/oneplus/lib/preference/PreferenceActivity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    nop

    :cond_8
    invoke-virtual {p0, v5, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_4

    :cond_9
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_b

    new-instance v2, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;

    iget-object v11, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    iget-boolean v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    invoke-direct {v2, p0, v11, v12, v13}, Lcom/oneplus/lib/preference/PreferenceActivity$HeaderAdapter;-><init>(Landroid/content/Context;Ljava/util/List;IZ)V

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setListAdapter(Landroid/widget/ListAdapter;)V

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-nez v2, :cond_c

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/widget/ListView;->setChoiceMode(I)V

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    :cond_a
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_4

    :cond_b
    sget v2, Lcom/oneplus/commonctrl/R$layout;->preference_list_content_single:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->setContentView(I)V

    sget v2, Lcom/oneplus/commonctrl/R$id;->list_footer:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    sget v2, Lcom/oneplus/commonctrl/R$id;->prefs:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    new-instance v2, Lcom/oneplus/lib/preference/PreferenceManager;

    const/16 v5, 0x64

    invoke-direct {v2, p0, v5}, Lcom/oneplus/lib/preference/PreferenceManager;-><init>(Landroid/app/Activity;I)V

    iput-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2, p0}, Lcom/oneplus/lib/preference/PreferenceManager;->setOnPreferenceTreeClickListener(Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;)V

    :cond_c
    :goto_4
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v5, "extra_prefs_show_button_bar"

    invoke-virtual {v2, v5, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_11

    sget v5, Lcom/oneplus/commonctrl/R$id;->button_bar:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    sget v5, Lcom/oneplus/commonctrl/R$id;->back_button:I

    invoke-virtual {p0, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/Button;

    new-instance v11, Lcom/oneplus/lib/preference/PreferenceActivity$2;

    invoke-direct {v11, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$2;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v5, v11}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v11, Lcom/oneplus/commonctrl/R$id;->skip_button:I

    invoke-virtual {p0, v11}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/widget/Button;

    new-instance v12, Lcom/oneplus/lib/preference/PreferenceActivity$3;

    invoke-direct {v12, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$3;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v11, v12}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    sget v12, Lcom/oneplus/commonctrl/R$id;->next_button:I

    invoke-virtual {p0, v12}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/Button;

    iput-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    iget-object v12, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    new-instance v13, Lcom/oneplus/lib/preference/PreferenceActivity$4;

    invoke-direct {v13, p0}, Lcom/oneplus/lib/preference/PreferenceActivity$4;-><init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    invoke-virtual {v12, v13}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const-string v12, "extra_prefs_set_next_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_e

    const-string v12, "extra_prefs_set_next_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_d

    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_5

    :cond_d
    iget-object v13, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mNextButton:Landroid/widget/Button;

    invoke-virtual {v13, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_e
    :goto_5
    const-string v12, "extra_prefs_set_back_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_10

    const-string v12, "extra_prefs_set_back_text"

    invoke-virtual {v2, v12}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-eqz v13, :cond_f

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_6

    :cond_f
    invoke-virtual {v5, v12}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :cond_10
    :goto_6
    const-string v10, "extra_prefs_show_skip"

    invoke-virtual {v2, v10, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v10

    if-eqz v10, :cond_11

    invoke-virtual {v11, v3}, Landroid/widget/Button;->setVisibility(I)V

    :cond_11
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityDestroy()V

    :cond_0
    return-void
.end method

.method public onGetInitialHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 3

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v2, v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v2, :cond_0

    return-object v1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must have at least one header with a fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onGetNewHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V
    .locals 9

    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbTitleRes:I

    iget v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->breadCrumbShortTitleRes:I

    if-nez v0, :cond_0

    iget v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->titleRes:I

    const/4 v1, 0x0

    :cond_0
    iget-object v3, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v4, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v2, p0

    move v7, v0

    move v8, v1

    invoke-virtual/range {v2 .. v8}, Lcom/oneplus/lib/preference/PreferenceActivity;->startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onIsHidingHeaders()Z
    .locals 3

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:no_headers"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public onIsMultiPane()Z
    .locals 2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$bool;->preferences_prefer_dual_pane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 2

    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {p0, v1, p3}, Lcom/oneplus/lib/preference/PreferenceActivity;->onHeaderClick(Lcom/oneplus/lib/preference/PreferenceActivity$Header;I)V

    :cond_0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 1

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchNewIntent(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    const-string v0, ":android:preferences"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/preference/PreferenceScreen;->restoreHierarchyState(Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-void

    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ":android:headers"

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v1, ":android:cur_header"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getPreferenceScreen()Lcom/oneplus/lib/preference/PreferenceScreen;

    move-result-object v0

    if-eqz v0, :cond_1

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/preference/PreferenceScreen;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string v2, ":android:preferences"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 1

    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->dispatchActivityStop()V

    :cond_0
    return-void
.end method

.method setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3

    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ListView;->clearChoices()V

    :goto_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method showBreadCrumbs(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 2

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_4

    const v0, 0x1020016

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :try_start_0
    move-object v1, v0

    check-cast v1, Landroid/app/FragmentBreadCrumbs;

    iput-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    nop

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v1, :cond_1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setVisibility(I)V

    sget v1, Lcom/oneplus/commonctrl/R$id;->breadcrumb_section:I

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_2
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_3
    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    iget-object v1, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v1, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_5
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public startWithFragment(Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Fragment;III)V
    .locals 1

    invoke-virtual {p0, p1, p2, p5, p6}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildStartFragmentIntent(Ljava/lang/String;Landroid/os/Bundle;II)Landroid/content/Intent;

    move-result-object v0

    if-nez p3, :cond_0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p3, v0, p4}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    :goto_0
    return-void
.end method

.method public switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V
    .locals 3

    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mCurHeader:Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    if-ne v0, p1, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/PreferenceActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, ":android:prefs"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentManager;->popBackStack(Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    iget-object v1, p1, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragmentArguments:Landroid/os/Bundle;

    invoke-direct {p0, v0, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "can\'t switch to header that has no fragment"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public switchToHeader(Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    const/4 v0, 0x0

    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    iget-object v2, v2, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/oneplus/lib/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    goto :goto_1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    :goto_1
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeaderInner(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method
