.class public Lcom/android/server/am/OemExtraActivityManagerService;
.super Ljava/lang/Object;
.source "OemExtraActivityManagerService.java"


# static fields
.field private static final ACTION_MODE_LOCK:Ljava/lang/String; = "com.oem.intent.action.KEY_LOCK_MODE"

.field private static final KEY_LOCK_MODE_NORMAL:I = 0x0

.field private static final KEY_LOCK_MODE_POWER:I = 0x1

.field private static final KEY_LOCK_MODE_POWER_HOME:I = 0x2

.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/server/am/OemExtraActivityManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/server/am/OemExtraActivityManagerService;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setKeyLockModeNormal(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "processName"    # Ljava/lang/String;
    .param p2, "systemReady"    # Z

    .prologue
    .line 43
    if-eqz p2, :cond_1

    if-eqz p1, :cond_1

    const-string v1, "com.android.engineeringmode"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "com.oem.autotest"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.oem.intent.action.KEY_LOCK_MODE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 46
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "KeyLockMode"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 47
    const-string v1, "ProcessName"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 48
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 50
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method
