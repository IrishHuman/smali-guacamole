.class public Lcom/android/server/OPFirewallRule;
.super Ljava/lang/Object;
.source "OPFirewallRule.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "FirewallRule"


# instance fields
.field private id:Ljava/lang/Integer;

.field private mobile:Ljava/lang/Integer;

.field private pkg:Ljava/lang/String;

.field private wlan:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->id:Ljava/lang/Integer;

    iput-object p2, p0, Lcom/android/server/OPFirewallRule;->pkg:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/OPFirewallRule;->wlan:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/android/server/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->pkg:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/server/OPFirewallRule;->wlan:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/android/server/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method private makeTag(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "ALLOW"

    goto :goto_0

    :cond_0
    const-string v0, "FORBID"

    :goto_0
    return-object v0
.end method


# virtual methods
.method public dumpInfo(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " # OPFirewallRule ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OPFirewallRule;->id:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OPFirewallRule;->pkg:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "], [wlan:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OPFirewallRule;->wlan:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/android/server/OPFirewallRule;->makeTag(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mobile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/server/OPFirewallRule;->mobile:Ljava/lang/Integer;

    invoke-direct {p0, v1}, Lcom/android/server/OPFirewallRule;->makeTag(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getId()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OPFirewallRule;->id:Ljava/lang/Integer;

    return-object v0
.end method

.method public getMobile()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-object v0
.end method

.method public getPkg()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OPFirewallRule;->pkg:Ljava/lang/String;

    return-object v0
.end method

.method public getWlan()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/android/server/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-object v0
.end method

.method public setId(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->id:Ljava/lang/Integer;

    return-void
.end method

.method public setMobile(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->mobile:Ljava/lang/Integer;

    return-void
.end method

.method public setPkg(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->pkg:Ljava/lang/String;

    return-void
.end method

.method public setWlan(Ljava/lang/Integer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/server/OPFirewallRule;->wlan:Ljava/lang/Integer;

    return-void
.end method
