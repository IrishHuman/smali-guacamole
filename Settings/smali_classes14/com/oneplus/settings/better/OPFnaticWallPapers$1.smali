.class Lcom/oneplus/settings/better/OPFnaticWallPapers$1;
.super Ljava/lang/Object;
.source "OPFnaticWallPapers.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oneplus/settings/better/OPFnaticWallPapers;->initViews()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;


# direct methods
.method constructor <init>(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V
    .locals 0

    iput-object p1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 7

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$000(Lcom/oneplus/settings/better/OPFnaticWallPapers;)I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$100(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    iget-object v1, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    const v2, 0x7f120b78

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v6}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$200(Lcom/oneplus/settings/better/OPFnaticWallPapers;)[I

    move-result-object v6

    array-length v6, v6

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v4}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$300(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/settings/better/OPFnaticWallPapers$1;->this$0:Lcom/oneplus/settings/better/OPFnaticWallPapers;

    invoke-static {v0}, Lcom/oneplus/settings/better/OPFnaticWallPapers;->access$400(Lcom/oneplus/settings/better/OPFnaticWallPapers;)V

    :goto_0
    return-void
.end method
