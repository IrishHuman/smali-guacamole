.class Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;
.super Ljava/lang/Object;
.source "NavItemSelectedListener.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# instance fields
.field private final mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;


# direct methods
.method public constructor <init>(Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;->mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    return-void
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;->mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/appcompat/NavItemSelectedListener;->mListener:Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;

    invoke-interface {v0, p3, p4, p5}, Lcom/oneplus/lib/app/appcompat/ActionBar$OnNavigationListener;->onNavigationItemSelected(IJ)Z

    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    return-void
.end method
