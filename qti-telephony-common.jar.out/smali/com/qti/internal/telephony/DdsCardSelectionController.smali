.class public Lcom/qti/internal/telephony/DdsCardSelectionController;
.super Ljava/lang/Object;
.source "DdsCardSelectionController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;
    }
.end annotation


# static fields
.field private static final ACTION_MCFG_MBN_ACTIVATED_DONE:Ljava/lang/String; = "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

.field private static final CONFIG_CURRENT_PRIMARY_SUB:Ljava/lang/String; = "config_current_primary_sub"

.field private static final DDS_ICCID:Ljava/lang/String; = "persist.radio.ddssim.iccid"

.field private static final DDS_NETWORK_TYPE:Ljava/lang/String; = "persist.radio.ddssim.rat"

.field private static final DEBUG:Z = true

.field private static final EVENT_ADD_SUBINFO_RECORD_FOR_MULTIMODE:I = 0xa

.field private static final EVENT_ANTENNA_SWITCH_RETRY:I = 0x14

.field private static final EVENT_CARD_ABSENT_FOR_MULTIMODE:I = 0xb

.field private static final EVENT_GET_ANTENNA_POS:I = 0x15

.field private static final EVENT_GET_ICC_STATUS_DONE:I = 0xe

.field private static final EVENT_GET_RADIO_CAPABILITY:I = 0x11

.field private static final EVENT_MBN_ACTIVATED_DONE:I = 0x17

.field private static final EVENT_PRI_PERF_DONE:I = 0x12

.field private static final EVENT_RADIO_AVAILABLE:I = 0xc

.field private static final EVENT_RADIO_NOT_AVAILABLE:I = 0xd

.field private static final EVENT_SET_GW_PERF_DONE:I = 0x10

.field private static final EVENT_SIM_LOADED_DONE:I = 0x18

.field private static final EVENT_SIM_STATUS_CHANGE:I = 0x16

.field private static final EVENT_TEST_CARD_DETECT:I = 0x13

.field private static final EVENT_WAITING_TIME_OUT:I = 0xf

.field private static final FIRST_BOOT:Ljava/lang/String; = "persist.radio.firstboot"

.field static final LOG_TAG:Ljava/lang/String; = "DdsCardSelectionController"

.field private static final VDBG:Z = false

.field private static final WAITING_OTHER_CARD_INSERT_DELAY:I = 0xbb8

.field private static final mNumPhones:I

.field private static mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

.field private static sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

.field private static sProxyPhones:[Lcom/android/internal/telephony/Phone;


# instance fields
.field private RF_AM_VERSION:Ljava/lang/String;

.field private RF_EU_VERSION:Ljava/lang/String;

.field isAmVersion:Z

.field private isCtaSwitchNotOn:Z

.field isEUVersion:Z

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

.field private mHandler:Landroid/os/Handler;

.field private mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

.field private mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

.field private mQcRilHookReady:Z

.field private mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

.field private mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

.field private mTelecomManager:Landroid/telecom/TelecomManager;

.field private retry_times:I

.field private switchSmartAntennal:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 121
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;Lcom/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "qRCC"    # Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    const/4 v3, 0x1

    const/4 v7, 0x0

    const/4 v4, 0x0

    .line 159
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v2, v2, [Lcom/android/internal/telephony/RadioCapability;

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    .line 124
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    new-array v2, v2, [Lcom/qti/internal/telephony/CurrentCardStatus;

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    .line 126
    const-string v2, "TDD_FDD_Eu"

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->RF_EU_VERSION:Ljava/lang/String;

    .line 127
    const-string v2, "TDD_FDD_Am"

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->RF_AM_VERSION:Ljava/lang/String;

    .line 128
    iput-boolean v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    .line 129
    iput-boolean v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    .line 130
    iput-boolean v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 131
    iput-boolean v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    .line 132
    iput-boolean v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    .line 134
    iput v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    .line 135
    iput-object v7, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 377
    new-instance v2, Lcom/qti/internal/telephony/DdsCardSelectionController$3;

    invoke-direct {v2, p0}, Lcom/qti/internal/telephony/DdsCardSelectionController$3;-><init>(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    .line 160
    iput-object p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    .line 161
    iput-object p3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 162
    sput-object p4, Lcom/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    .line 163
    sput-object p2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    .line 164
    new-instance v1, Landroid/os/HandlerThread;

    const-string v2, "DdsCardSelectionController"

    invoke-direct {v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 165
    .local v1, "thread":Landroid/os/HandlerThread;
    invoke-virtual {v1}, Landroid/os/HandlerThread;->start()V

    .line 166
    new-instance v2, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    invoke-direct {v2, p0, v5}, Lcom/qti/internal/telephony/DdsCardSelectionController$MyHandler;-><init>(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    .line 168
    invoke-static {p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getInstance(Landroid/content/Context;)Lcom/qti/internal/telephony/QtiRilInterface;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    .line 169
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    .line 171
    const-string v2, "ro.rf_version"

    const-string v5, "TDD_FDD_All"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->RF_EU_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    .line 172
    const-string v2, "ro.rf_version"

    const-string v5, "TDD_FDD_All"

    invoke-static {v2, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->RF_AM_VERSION:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    .line 173
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const-string v5, "oem.ctaSwitch.support"

    invoke-virtual {v2, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    move v2, v3

    :goto_0
    iput-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    .line 174
    iget-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-nez v2, :cond_0

    iget-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isAmVersion:Z

    if-eqz v2, :cond_2

    :cond_0
    iget-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCtaSwitchNotOn:Z

    if-eqz v2, :cond_2

    :goto_1
    iput-boolean v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    .line 176
    new-instance v2, Lcom/qualcomm/qcrilhook/QcRilHook;

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookCallback:Lcom/qualcomm/qcrilhook/QcRilHookCallback;

    invoke-direct {v2, v3, v5}, Lcom/qualcomm/qcrilhook/QcRilHook;-><init>(Landroid/content/Context;Lcom/qualcomm/qcrilhook/QcRilHookCallback;)V

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    .line 178
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_3

    .line 180
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    new-instance v3, Lcom/qti/internal/telephony/CurrentCardStatus;

    const/4 v5, -0x1

    invoke-direct {v3, v5, v7}, Lcom/qti/internal/telephony/CurrentCardStatus;-><init>(ILjava/lang/String;)V

    aput-object v3, v2, v0

    .line 181
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 182
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v0

    iput-boolean v4, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 183
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aput-object v7, v2, v0

    .line 184
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xc

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 185
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v5, 0xd

    new-instance v6, Ljava/lang/Integer;

    invoke-direct {v6, v0}, Ljava/lang/Integer;-><init>(I)V

    invoke-interface {v2, v3, v5, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 178
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .end local v0    # "i":I
    :cond_1
    move v2, v4

    .line 173
    goto :goto_0

    :cond_2
    move v3, v4

    .line 174
    goto :goto_1

    .line 187
    .restart local v0    # "i":I
    :cond_3
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/qti/internal/telephony/DdsCardSelectionController$1;

    invoke-direct {v3, p0}, Lcom/qti/internal/telephony/DdsCardSelectionController$1;-><init>(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 204
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/qti/internal/telephony/DdsCardSelectionController$2;

    invoke-direct {v3, p0}, Lcom/qti/internal/telephony/DdsCardSelectionController$2;-><init>(Lcom/qti/internal/telephony/DdsCardSelectionController;)V

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "qualcomm.intent.action.ACTION_MCFG_MBN_DONE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 213
    const-string v2, "Constructor - Exit"

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 214
    return-void
.end method

.method static synthetic access$000(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->oemSendSubscriptionSettings()V

    return-void
.end method

.method static synthetic access$1100(Lcom/qti/internal/telephony/DdsCardSelectionController;)Z
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-boolean v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/qti/internal/telephony/DdsCardSelectionController;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # Z

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHookReady:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/qti/internal/telephony/DdsCardSelectionController;)Lcom/qualcomm/qcrilhook/QcRilHook;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQcRilHook:Lcom/qualcomm/qcrilhook/QcRilHook;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/qti/internal/telephony/DdsCardSelectionController;)I
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic access$1302(Lcom/qti/internal/telephony/DdsCardSelectionController;I)I
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    iput p1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return p1
.end method

.method static synthetic access$1308(Lcom/qti/internal/telephony/DdsCardSelectionController;)I
    .locals 2
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->retry_times:I

    return v0
.end method

.method static synthetic access$1400(Lcom/qti/internal/telephony/DdsCardSelectionController;I)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # I

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->processSimStatusChange(I)V

    return-void
.end method

.method static synthetic access$1500(Lcom/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->processMbnActivatedDone()V

    return-void
.end method

.method static synthetic access$1600(Lcom/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPhoneMatchImei()V

    return-void
.end method

.method static synthetic access$200(Lcom/qti/internal/telephony/DdsCardSelectionController;ILjava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic access$300(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/qti/internal/telephony/CurrentCardStatus;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    return-object v0
.end method

.method static synthetic access$400(Lcom/qti/internal/telephony/DdsCardSelectionController;Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # Landroid/os/AsyncResult;
    .param p2, "x2"    # Ljava/lang/Integer;

    .prologue
    .line 82
    invoke-direct {p0, p1, p2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V

    return-void
.end method

.method static synthetic access$500(Lcom/qti/internal/telephony/DdsCardSelectionController;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->handleTimeOut()V

    return-void
.end method

.method static synthetic access$600()Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .locals 1

    .prologue
    .line 82
    sget-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    return-object v0
.end method

.method static synthetic access$700(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/CommandsInterface;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic access$800(Lcom/qti/internal/telephony/DdsCardSelectionController;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 82
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$900(Lcom/qti/internal/telephony/DdsCardSelectionController;)[Lcom/android/internal/telephony/RadioCapability;
    .locals 1
    .param p0, "x0"    # Lcom/qti/internal/telephony/DdsCardSelectionController;

    .prologue
    .line 82
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    return-object v0
.end method

.method private checkAllCardInsert()Z
    .locals 4

    .prologue
    const/4 v2, 0x1

    .line 988
    const/4 v0, 0x1

    .line 989
    .local v0, "hasAllSimInsert":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v3, :cond_1

    .line 991
    if-eqz v0, :cond_0

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v3, v3, v1

    iget v3, v3, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    if-ne v3, v2, :cond_0

    move v0, v2

    .line 989
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 991
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 994
    :cond_1
    return v0
.end method

.method private checkAllCardIsReady()Z
    .locals 3

    .prologue
    .line 522
    const/4 v0, 0x1

    .line 523
    .local v0, "hasAllSimReady":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_1

    .line 525
    if-eqz v0, :cond_0

    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    .line 523
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 525
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 528
    :cond_1
    return v0
.end method

.method public static getInstance()Lcom/qti/internal/telephony/DdsCardSelectionController;
    .locals 2

    .prologue
    .line 151
    sget-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 152
    const-string v0, "DdsCardSelectionController"

    const-string v1, "DdsCardSelectionController.getInstance called before make"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_0
    sget-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

    return-object v0
.end method

.method private getNetworkModeFromDB(I)I
    .locals 8
    .param p1, "phoneId"    # I

    .prologue
    const/4 v7, 0x0

    .line 484
    const/4 v0, 0x0

    .line 485
    .local v0, "mQtiSubscriptionController":Lcom/qti/internal/telephony/QtiSubscriptionController;
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v0

    .line 486
    invoke-virtual {v0, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v3

    .line 490
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-lez v4, :cond_0

    aget v4, v3, v7

    invoke-virtual {v0, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 492
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "preferred_network_mode"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v7

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget v6, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 495
    .local v1, "networkMode":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get sub based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    .line 506
    :goto_0
    return v1

    .line 498
    .end local v1    # "networkMode":I
    :cond_0
    :try_start_0
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "preferred_network_mode"

    invoke-static {v4, v5, p1}, Landroid/telephony/TelephonyManager;->getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 504
    .restart local v1    # "networkMode":I
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " get slot based N/W mode, val["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logv(Ljava/lang/String;)V

    goto :goto_0

    .line 500
    .end local v1    # "networkMode":I
    :catch_0
    move-exception v2

    .line 501
    .local v2, "snfe":Landroid/provider/Settings$SettingNotFoundException;
    const-string v4, "getPreferredNetworkMode: Could not find PREFERRED_NETWORK_MODE!!!"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 502
    sget v1, Lcom/android/internal/telephony/Phone;->PREFERRED_NT_MODE:I

    .restart local v1    # "networkMode":I
    goto :goto_1
.end method

.method private getPhoneMatchImei()V
    .locals 4

    .prologue
    .line 1062
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v3, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v3, :cond_2

    .line 1064
    sget-object v3, Lcom/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v3, v3, v0

    check-cast v3, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 1065
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    instance-of v3, v2, Lcom/android/internal/telephony/gsm/GSMPhone;

    if-eqz v3, :cond_1

    .line 1067
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1068
    .local v1, "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1062
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1070
    .restart local v2    # "phone":Lcom/android/internal/telephony/Phone;
    :cond_1
    instance-of v3, v2, Lcom/android/internal/telephony/cdma/CDMAPhone;

    if-eqz v3, :cond_0

    .line 1072
    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    const/16 v3, 0x15

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/PhoneBase;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1073
    .restart local v1    # "msg":Landroid/os/Message;
    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v3, v3, v0

    invoke-interface {v3, v1}, Lcom/android/internal/telephony/CommandsInterface;->getDeviceIdentity(Landroid/os/Message;)V

    goto :goto_1

    .line 1076
    .end local v1    # "msg":Landroid/os/Message;
    :cond_2
    return-void
.end method

.method private getPrimaryICCID()Ljava/lang/String;
    .locals 3

    .prologue
    .line 765
    const/4 v0, 0x0

    .line 766
    .local v0, "iccid":Ljava/lang/String;
    const-string v1, "persist.radio.ddssim.iccid"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 767
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPrimaryICCID,DDS_ICCId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 768
    return-object v0
.end method

.method private getPrimaryNetworkType()I
    .locals 3

    .prologue
    .line 783
    const-string v1, "persist.radio.ddssim.rat"

    const/16 v2, 0x14

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 784
    .local v0, "network_type":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPrimaryNetworkType  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 785
    return v0
.end method

.method private getPrimarySlot()I
    .locals 4

    .prologue
    .line 750
    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "config_current_primary_sub"

    const/4 v3, -0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 753
    .local v0, "slotId":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " getPrimarySlot,CONFIG_CURRENT_PRIMARY_SUB="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 755
    return v0
.end method

.method private handleAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 6
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    const/4 v4, 0x1

    .line 395
    const/4 v0, 0x0

    .line 398
    .local v0, "isAllSimInsert":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detect iccid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  slotId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 402
    if-eqz p2, :cond_0

    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-le v2, v4, :cond_0

    .line 404
    invoke-direct {p0, p1, v4, p2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 405
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 406
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 409
    :cond_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v0

    .line 410
    if-eqz v0, :cond_1

    .line 412
    invoke-virtual {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v1

    .line 413
    .local v1, "phoneId":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "all sim insert set  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to dds"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 414
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 416
    .end local v1    # "phoneId":I
    :cond_1
    return-void
.end method

.method private handleTimeOut()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 580
    invoke-virtual {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v1

    .line 581
    .local v1, "phoneId":I
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v2

    .line 582
    .local v2, "subId":[I
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 583
    .local v0, "isSubActive":Z
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleTimeOut isSubActive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  phoneId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 584
    if-eqz v0, :cond_0

    .line 586
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v3

    aget v4, v2, v5

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 589
    :cond_0
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 591
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    .line 598
    :goto_0
    return-void

    .line 595
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_0
.end method

.method private hasCdmaCardInsert()Z
    .locals 4

    .prologue
    .line 694
    const/4 v0, 0x0

    .line 695
    .local v0, "cdmaCardInsert":Z
    const/4 v1, 0x0

    .line 696
    .local v1, "index":I
    const/4 v1, 0x0

    :goto_0
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v2, :cond_0

    .line 698
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, v1

    iget-boolean v2, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 702
    const/4 v0, 0x1

    .line 706
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasCdmaCardInsert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 707
    return v0

    .line 696
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private isCdmaRat(II)Z
    .locals 3
    .param p1, "network_type"    # I
    .param p2, "phoneId"    # I

    .prologue
    .line 923
    const/4 v0, 0x0

    .line 924
    .local v0, "iscdmarat":Z
    const/4 v1, 0x5

    if-eq v1, p1, :cond_0

    const/4 v1, 0x7

    if-eq v1, p1, :cond_0

    const/16 v1, 0xa

    if-eq v1, p1, :cond_0

    const/4 v1, 0x6

    if-eq v1, p1, :cond_0

    const/16 v1, 0x8

    if-eq v1, p1, :cond_0

    const/4 v1, 0x4

    if-eq v1, p1, :cond_0

    const/16 v1, 0x15

    if-eq v1, p1, :cond_0

    const/16 v1, 0x16

    if-ne v1, p1, :cond_1

    .line 933
    :cond_0
    const/4 v0, 0x1

    .line 935
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdmaRat  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "   phoneId "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 936
    return v0
.end method

.method private isOnlyOneCardInsert()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 999
    const/4 v1, 0x0

    .line 1000
    .local v1, "onlyOneCard":Z
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v4, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v4, :cond_2

    .line 1002
    if-nez v1, :cond_0

    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v4, v4, v0

    iget v4, v4, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    if-ne v4, v3, :cond_1

    :cond_0
    move v1, v3

    .line 1000
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v1, v2

    .line 1002
    goto :goto_1

    .line 1005
    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->checkAllCardInsert()Z

    move-result v4

    if-nez v4, :cond_3

    :goto_2
    return v3

    :cond_3
    move v3, v2

    goto :goto_2
.end method

.method private isRadioAvailable(I)Z
    .locals 1
    .param p1, "phoneId"    # I

    .prologue
    .line 517
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v0, v0, p1

    invoke-interface {v0}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/CommandsInterface$RadioState;->isAvailable()Z

    move-result v0

    return v0
.end method

.method private logd(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1079
    const-string v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1080
    return-void
.end method

.method private loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1087
    const-string v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1088
    return-void
.end method

.method private logi(Ljava/lang/String;)V
    .locals 1
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1083
    const-string v0, "DdsCardSelectionController"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1084
    return-void
.end method

.method private logv(Ljava/lang/String;)V
    .locals 0
    .param p1, "string"    # Ljava/lang/String;

    .prologue
    .line 1092
    return-void
.end method

.method public static make(Landroid/content/Context;Lcom/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)Lcom/qti/internal/telephony/DdsCardSelectionController;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "qRCC"    # Lcom/qti/internal/telephony/QtiRadioCapabilityController;
    .param p2, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "phoneProxy"    # [Lcom/android/internal/telephony/Phone;

    .prologue
    .line 140
    const-string v0, "DdsCardSelectionController"

    const-string v1, "make and getInstance"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    sget-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

    if-nez v0, :cond_0

    .line 142
    new-instance v0, Lcom/qti/internal/telephony/DdsCardSelectionController;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/qti/internal/telephony/DdsCardSelectionController;-><init>(Landroid/content/Context;Lcom/qti/internal/telephony/QtiRadioCapabilityController;[Lcom/android/internal/telephony/CommandsInterface;[Lcom/android/internal/telephony/Phone;)V

    sput-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

    .line 146
    :goto_0
    sget-object v0, Lcom/qti/internal/telephony/DdsCardSelectionController;->sInstance:Lcom/qti/internal/telephony/DdsCardSelectionController;

    return-object v0

    .line 144
    :cond_0
    const-string v0, "DdsCardSelectionController"

    const-string v1, "DdsCardSelectionController.make() should be called once"

    invoke-static {v0, v1}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private oemSendSubscriptionSettings()V
    .locals 8

    .prologue
    .line 963
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getDefaultDataSubId()I

    move-result v1

    .line 964
    .local v1, "ddsSubId":I
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getPhoneId(I)I

    move-result v3

    .line 966
    .local v3, "phoneId":I
    if-gez v3, :cond_1

    .line 968
    const-string v5, "phoneId is invalid,maybe SIM card plug out, return"

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 984
    :cond_0
    :goto_0
    return-void

    .line 971
    :cond_1
    invoke-static {}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    check-cast v0, Lcom/qti/internal/telephony/dataconnection/QtiDctController;

    .line 972
    .local v0, "dctCntrl":Lcom/qti/internal/telephony/dataconnection/QtiDctController;
    if-eqz v0, :cond_2

    .line 973
    invoke-virtual {v0, v1}, Lcom/qti/internal/telephony/dataconnection/QtiDctController;->informDdsToRil(I)V

    .line 975
    :cond_2
    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v5, v5, v3

    const/4 v6, 0x1

    const/4 v7, 0x0

    invoke-interface {v5, v6, v7}, Lcom/android/internal/telephony/CommandsInterface;->setDataAllowed(ZLandroid/os/Message;)V

    .line 977
    sget-object v5, Lcom/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v5, v5, v3

    check-cast v5, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v5}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v2

    .line 978
    .local v2, "phone":Lcom/android/internal/telephony/Phone;
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 979
    .local v4, "subId":[I
    if-eqz v4, :cond_0

    array-length v5, v4

    if-lez v5, :cond_0

    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v4, v6

    invoke-virtual {v5, v6}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v2

    .line 981
    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    iget-object v5, v5, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    check-cast v2, Lcom/android/internal/telephony/PhoneBase;

    .end local v2    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v2, Lcom/android/internal/telephony/PhoneBase;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataEnabled()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataEnabled(Z)V

    goto :goto_0
.end method

.method private oemSetDefaultDataSubId(I)V
    .locals 5
    .param p1, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 221
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 222
    .local v1, "subId":[I
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 223
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oemSetDefaultDataSubId isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 224
    if-eqz v0, :cond_0

    .line 226
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 228
    :cond_0
    return-void
.end method

.method private onGetIccCardStatusDone(Landroid/os/AsyncResult;Ljava/lang/Integer;)V
    .locals 8
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "index"    # Ljava/lang/Integer;

    .prologue
    const/4 v7, 0x0

    .line 532
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_0

    .line 533
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting ICC status. RIL_REQUEST_GET_ICC_STATUS should never return an error:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->loge(Ljava/lang/String;)V

    .line 564
    :goto_0
    return-void

    .line 539
    :cond_0
    iget-object v2, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, Lcom/android/internal/telephony/uicc/IccCardStatus;

    .line 541
    .local v2, "ics":Lcom/android/internal/telephony/uicc/IccCardStatus;
    const/4 v3, 0x0

    .line 542
    .local v3, "isCDMACard":Z
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v5, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " applications"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 543
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    array-length v4, v4

    if-ge v1, v4, :cond_3

    .line 544
    iget-object v4, v2, Lcom/android/internal/telephony/uicc/IccCardStatus;->mApplications:[Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;

    aget-object v4, v4, v1

    iget-object v0, v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus;->app_type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .line 546
    .local v0, "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_RUIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v0, v4, :cond_1

    sget-object v4, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v0, v4, :cond_2

    .line 548
    :cond_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CDMA card insert app_type:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "  phoneId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 549
    const/4 v3, 0x1

    .line 543
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 552
    .end local v0    # "app_type":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_3
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    aget-object v4, v4, v5

    iput-boolean v3, v4, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 554
    sget v4, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    const/4 v5, 0x1

    if-le v4, v5, :cond_4

    .line 556
    const/16 v4, 0xbb8

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->sendSetNetWorkTypeMsg(I)V

    goto :goto_0

    .line 560
    :cond_4
    const-string v4, "14001 set_pref to modem"

    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 561
    sget-object v4, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-direct {p0, v7}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v4, v7, v5, v6}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    goto :goto_0
.end method

.method private processMbnActivatedDone()V
    .locals 4

    .prologue
    .line 1051
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v2, :cond_0

    .line 1052
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getNetworkModeFromDB(I)I

    move-result v1

    .line 1054
    .local v1, "type":I
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, v0

    const/4 v3, 0x0

    invoke-interface {v2, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 1051
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1056
    .end local v1    # "type":I
    :cond_0
    return-void
.end method

.method private processSimStatusChange(I)V
    .locals 6
    .param p1, "phoneId"    # I

    .prologue
    const/4 v0, 0x1

    .line 1010
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iput-boolean v0, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 1011
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iput v0, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1012
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iget-object v2, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 1014
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    invoke-virtual {v3, p1}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1018
    :cond_0
    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-le v2, v0, :cond_1

    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v2, :cond_1

    .line 1022
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRilInterface:Lcom/qti/internal/telephony/QtiRilInterface;

    rsub-int/lit8 v4, p1, 0x1

    invoke-virtual {v3, v4}, Lcom/qti/internal/telephony/QtiRilInterface;->getUiccIccId(I)Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 1023
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v3, p1, 0x1

    aget-object v2, v2, v3

    iget-object v2, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 1025
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v2, v2, p1

    iput v0, v2, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 1029
    :cond_1
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v2, v2, p1

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0xe

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->getIccCardStatus(Landroid/os/Message;)V

    .line 1031
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->isOnlyOneCardInsert()Z

    move-result v2

    if-nez v2, :cond_2

    sget v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ne v2, v0, :cond_3

    .line 1033
    :cond_2
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->oemSetDefaultDataSubId(I)V

    .line 1034
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 1036
    :cond_3
    const-string v2, "true"

    const-string v3, "persist.radio.ptcrb.enable"

    const-string v4, "false"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 1037
    .local v0, "isNotPtcrb":Z
    :goto_0
    if-eqz v0, :cond_4

    iget-boolean v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    if-eqz v2, :cond_4

    .line 1039
    sget-object v2, Lcom/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v2, v2, p1

    check-cast v2, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    .line 1040
    .local v1, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v1, Lcom/android/internal/telephony/PhoneBase;

    .end local v1    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v2, v1, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1041
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v2, :cond_4

    .line 1043
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v3, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v4, 0x13

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForTestCard(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1046
    :cond_4
    return-void

    .line 1036
    .end local v0    # "isNotPtcrb":Z
    :cond_5
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private savePrefNetworkInDb(II)V
    .locals 6
    .param p1, "phoneId"    # I
    .param p2, "networkMode"    # I

    .prologue
    const/4 v5, 0x0

    .line 470
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 471
    .local v1, "subId":[I
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v5

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 472
    .local v0, "isSubActive":Z
    if-eqz v0, :cond_0

    .line 474
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "preferred_network_mode"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    aget v4, v1, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 478
    :cond_0
    iget-object v2, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, p1, p2}, Landroid/telephony/TelephonyManager;->putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 480
    return-void
.end method

.method private savePrimaryICCID(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 773
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " savePrimaryICCID ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 774
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 776
    const-string v0, "persist.radio.ddssim.iccid"

    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v1, v1, p1

    iget-object v1, v1, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 778
    :cond_0
    return-void
.end method

.method private savePrimarySlot(I)V
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 759
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "config_current_primary_sub"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 761
    return-void
.end method

.method private sendSetNetWorkTypeMsg(I)V
    .locals 4
    .param p1, "delay"    # I

    .prologue
    const/16 v3, 0xf

    .line 568
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendSetNetWorkTypeMsg delay:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 569
    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 570
    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 571
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    int-to-long v2, p1

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 572
    return-void
.end method

.method private setPreferredCdmaNetworkType()V
    .locals 8

    .prologue
    .line 602
    const/4 v0, -0x1

    .line 603
    .local v0, "dds_PhoneId":I
    const/4 v2, -0x1

    .line 604
    .local v2, "nondds_PhoneId":I
    const/4 v3, 0x1

    .line 605
    .local v3, "nondds_network_type":I
    const/16 v1, 0x16

    .line 606
    .local v1, "dds_network_type":I
    const/4 v4, 0x0

    .line 608
    .local v4, "primaryNetworkType":I
    invoke-virtual {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 609
    rsub-int/lit8 v2, v0, 0x1

    .line 610
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    .line 613
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v6, v6, v0

    iget-boolean v6, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    if-eqz v6, :cond_2

    .line 615
    const-string v6, "setPreferredCdmaNetworkType cdma card on dds"

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 617
    invoke-direct {p0, v4, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 619
    move v1, v4

    .line 644
    :cond_0
    :goto_0
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 645
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 646
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 648
    invoke-direct {p0, v0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 649
    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 650
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 651
    .local v5, "response":Landroid/os/Message;
    sget-object v6, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v2, v3, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 652
    return-void

    .line 623
    .end local v5    # "response":Landroid/os/Message;
    :cond_1
    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchGW2CDMARat(I)I

    move-result v1

    goto :goto_0

    .line 628
    :cond_2
    const-string v6, "setPreferredCdmaNetworkType GW card on dds"

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 630
    invoke-direct {p0, v4, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 632
    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    .line 639
    :goto_1
    iget-boolean v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-eqz v6, :cond_0

    .line 641
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchAll2EURat(I)I

    move-result v1

    goto :goto_0

    .line 636
    :cond_3
    move v1, v4

    goto :goto_1
.end method

.method private setPreferredGWNetworkType()V
    .locals 8

    .prologue
    .line 656
    const/4 v0, -0x1

    .line 657
    .local v0, "dds_PhoneId":I
    const/4 v2, -0x1

    .line 658
    .local v2, "nondds_PhoneId":I
    const/4 v3, 0x1

    .line 659
    .local v3, "nondds_network_type":I
    const/16 v1, 0x16

    .line 660
    .local v1, "dds_network_type":I
    const/4 v4, 0x0

    .line 662
    .local v4, "primaryNetworkType":I
    const-string v6, "setPreferredGWNetworkType all card is GW"

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 664
    invoke-virtual {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrevPrimaryPhoneId()I

    move-result v0

    .line 665
    rsub-int/lit8 v2, v0, 0x1

    .line 666
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrimaryNetworkType()I

    move-result v4

    .line 668
    invoke-direct {p0, v4, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->isCdmaRat(II)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 670
    invoke-direct {p0, v4}, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchCDMA2GWRat(I)I

    move-result v1

    .line 677
    :goto_0
    iget-boolean v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->isEUVersion:Z

    if-eqz v6, :cond_0

    .line 679
    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchAll2EURat(I)I

    move-result v1

    .line 682
    :cond_0
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 683
    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 684
    invoke-virtual {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPrimaryNetworkType(I)V

    .line 686
    invoke-direct {p0, v0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 687
    invoke-direct {p0, v2, v3}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrefNetworkInDb(II)V

    .line 688
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v7, 0x10

    invoke-virtual {v6, v7, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    .line 689
    .local v5, "response":Landroid/os/Message;
    sget-object v6, Lcom/qti/internal/telephony/DdsCardSelectionController;->mQtiRadioCapabilityController:Lcom/qti/internal/telephony/QtiRadioCapabilityController;

    invoke-virtual {v6, v2, v3, v5}, Lcom/qti/internal/telephony/QtiRadioCapabilityController;->setPreferredNetworkType(IILandroid/os/Message;)V

    .line 690
    return-void

    .line 674
    .end local v5    # "response":Landroid/os/Message;
    :cond_1
    move v1, v4

    goto :goto_0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 947
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    .line 948
    .local v3, "telephonyManager":Landroid/telephony/TelephonyManager;
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 951
    .local v2, "phoneAccounts":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/telecom/PhoneAccountHandle;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 952
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telecom/PhoneAccountHandle;

    .line 953
    .local v1, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v4, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v4, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 954
    .local v0, "phoneAccount":Landroid/telecom/PhoneAccount;
    invoke-virtual {v3, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 958
    .end local v0    # "phoneAccount":Landroid/telecom/PhoneAccount;
    .end local v1    # "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    :goto_0
    return-object v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private switchAll2EURat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 899
    const/16 v0, 0x9

    .line 900
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 914
    const/16 v0, 0x9

    .line 917
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchAll2EURat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 918
    return v0

    .line 904
    :sswitch_0
    const/16 v0, 0x9

    .line 905
    goto :goto_0

    .line 908
    :sswitch_1
    const/4 v0, 0x3

    .line 909
    goto :goto_0

    .line 911
    :sswitch_2
    const/4 v0, 0x1

    .line 912
    goto :goto_0

    .line 900
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_2
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchCDMA2GWRat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 874
    const/16 v0, 0x14

    .line 875
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 890
    const/16 v0, 0x14

    .line 893
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchCDMA2GWRat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 894
    return v0

    .line 880
    :sswitch_0
    const/16 v0, 0x14

    .line 881
    goto :goto_0

    .line 884
    :sswitch_1
    const/16 v0, 0x12

    .line 885
    goto :goto_0

    .line 887
    :sswitch_2
    const/4 v0, 0x1

    .line 888
    goto :goto_0

    .line 875
    :sswitch_data_0
    .sparse-switch
        0x5 -> :sswitch_2
        0x7 -> :sswitch_1
        0x8 -> :sswitch_0
        0xa -> :sswitch_0
        0x15 -> :sswitch_1
        0x16 -> :sswitch_0
    .end sparse-switch
.end method

.method private switchGW2CDMARat(I)I
    .locals 3
    .param p1, "network_type"    # I

    .prologue
    .line 851
    const/16 v0, 0xa

    .line 852
    .local v0, "type":I
    sparse-switch p1, :sswitch_data_0

    .line 865
    const/16 v0, 0xa

    .line 868
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "switchGW2CDMARat  rat "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 869
    return v0

    .line 856
    :sswitch_0
    const/16 v0, 0x16

    .line 857
    goto :goto_0

    .line 862
    :sswitch_1
    const/16 v0, 0x15

    .line 863
    goto :goto_0

    .line 852
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_1
        0x1 -> :sswitch_1
        0x3 -> :sswitch_1
        0x9 -> :sswitch_0
        0x12 -> :sswitch_1
        0x14 -> :sswitch_0
    .end sparse-switch
.end method

.method private updateCurrentCardStatus(IILjava/lang/String;)V
    .locals 1
    .param p1, "slotId"    # I
    .param p2, "status"    # I
    .param p3, "iccid"    # Ljava/lang/String;

    .prologue
    .line 511
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iput p2, v0, Lcom/qti/internal/telephony/CurrentCardStatus;->cardStatus:I

    .line 512
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v0, v0, p1

    iput-object p3, v0, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    .line 513
    return-void
.end method


# virtual methods
.method public getPrevPrimaryPhoneId()I
    .locals 7

    .prologue
    .line 799
    const/4 v3, 0x0

    .line 801
    .local v3, "phoneId":I
    const/4 v2, 0x0

    .line 803
    .local v2, "isSubActive":Z
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrimaryICCID()Ljava/lang/String;

    move-result-object v0

    .line 805
    .local v0, "iccid":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 807
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    sget v5, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v1, v5, :cond_1

    .line 809
    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v1

    iget-object v5, v5, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 846
    .end local v1    # "index":I
    :goto_1
    return v1

    .line 807
    .restart local v1    # "index":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 818
    .end local v1    # "index":I
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->getPrimarySlot()I

    move-result v3

    .line 819
    const/4 v5, -0x1

    if-eq v3, v5, :cond_2

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_2

    move v1, v3

    .line 823
    goto :goto_1

    .line 827
    :cond_2
    const/4 v3, 0x0

    .line 828
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 830
    .local v4, "subId":[I
    if-eqz v4, :cond_3

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 832
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getPrevPrimaryPhoneId 1 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    move v1, v3

    .line 833
    goto :goto_1

    .line 836
    :cond_3
    const/4 v3, 0x1

    .line 837
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v4

    .line 839
    if-eqz v4, :cond_4

    iget-object v5, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v5, v5, v3

    iget-object v5, v5, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v5, :cond_4

    .line 841
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " getPrevPrimaryPhoneId 2 phoneId "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    move v1, v3

    .line 842
    goto :goto_1

    .line 845
    :cond_4
    const-string v5, " getPrevPrimaryPhoneId  default phoneId 0 "

    invoke-direct {p0, v5}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 846
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public handleSimAbsentforSelectMultiMode(I)V
    .locals 12
    .param p1, "slotId"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 426
    const/4 v3, 0x0

    .line 427
    .local v3, "maxNumRafBit":I
    const/4 v2, -0x1

    .line 428
    .local v2, "mainStackPhoneId":I
    const/4 v4, 0x0

    .line 429
    .local v4, "numRafSupported":I
    const/4 v1, 0x0

    .line 431
    .local v1, "isNotPtcrb":Z
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "card absent phoneId: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 433
    sget-object v6, Lcom/qti/internal/telephony/DdsCardSelectionController;->sProxyPhones:[Lcom/android/internal/telephony/Phone;

    aget-object v6, v6, p1

    check-cast v6, Lcom/android/internal/telephony/PhoneProxy;

    invoke-virtual {v6}, Lcom/android/internal/telephony/PhoneProxy;->getActivePhone()Lcom/android/internal/telephony/Phone;

    move-result-object v5

    .line 434
    .local v5, "phone":Lcom/android/internal/telephony/Phone;
    check-cast v5, Lcom/android/internal/telephony/PhoneBase;

    .end local v5    # "phone":Lcom/android/internal/telephony/Phone;
    iget-object v6, v5, Lcom/android/internal/telephony/PhoneBase;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/IccRecords;

    iput-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 435
    const-string v6, "true"

    const-string v9, "persist.radio.ptcrb.enable"

    const-string v10, "false"

    invoke-static {v9, v10}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    move v1, v7

    .line 437
    :goto_0
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v6, v6, p1

    iget-object v6, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v6, :cond_0

    if-eqz v1, :cond_0

    iget-boolean v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->switchSmartAntennal:Z

    if-eqz v6, :cond_0

    .line 444
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    iget-object v9, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v6, v9}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForTestCard(Landroid/os/Handler;)V

    .line 447
    :cond_0
    invoke-direct {p0, p1, v8, v11}, Lcom/qti/internal/telephony/DdsCardSelectionController;->updateCurrentCardStatus(IILjava/lang/String;)V

    .line 448
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v6, v6, p1

    iput-boolean v8, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->isCardReady:Z

    .line 449
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    aget-object v6, v6, p1

    iput-boolean v8, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->isCDMACard:Z

    .line 450
    sget v6, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-le v6, v7, :cond_4

    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCurrentCardStatus:[Lcom/qti/internal/telephony/CurrentCardStatus;

    rsub-int/lit8 v7, p1, 0x1

    aget-object v6, v6, v7

    iget-object v6, v6, Lcom/qti/internal/telephony/CurrentCardStatus;->iccId:Ljava/lang/String;

    if-nez v6, :cond_4

    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const-string v7, "oem.ctaSwitch.support"

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 456
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "card absent phoneId: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v6}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 457
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_1
    sget v6, Lcom/qti/internal/telephony/DdsCardSelectionController;->mNumPhones:I

    if-ge v0, v6, :cond_3

    .line 459
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mRadioCapability:[Lcom/android/internal/telephony/RadioCapability;

    aget-object v6, v6, v0

    invoke-virtual {v6}, Lcom/android/internal/telephony/RadioCapability;->getRadioAccessFamily()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->bitCount(I)I

    move-result v4

    .line 460
    if-ge v3, v4, :cond_1

    .line 461
    move v3, v4

    .line 462
    move v2, v0

    .line 457
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .end local v0    # "index":I
    :cond_2
    move v1, v8

    .line 435
    goto :goto_0

    .line 465
    .restart local v0    # "index":I
    :cond_3
    iget-object v6, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v6, v6, v2

    const/16 v7, 0x8

    invoke-interface {v6, v7, v11}, Lcom/android/internal/telephony/CommandsInterface;->setPreferredNetworkType(ILandroid/os/Message;)V

    .line 467
    .end local v0    # "index":I
    :cond_4
    return-void
.end method

.method public oemDdsSwitch(IZ)V
    .locals 5
    .param p1, "phoneId"    # I
    .param p2, "autoSwitch"    # Z

    .prologue
    const/4 v4, 0x0

    .line 714
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getSubId(I)[I

    move-result-object v1

    .line 716
    .local v1, "subId":[I
    if-nez v1, :cond_0

    .line 718
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oemDdsSwitch subId is null  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 746
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->isActiveSubId(I)Z

    move-result v0

    .line 723
    .local v0, "isSubActive":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "oemDdsSwitch isSubActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  phoneId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 725
    if-eqz v0, :cond_1

    .line 727
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimaryICCID(I)V

    .line 728
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->savePrimarySlot(I)V

    .line 729
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultDataSubId(I)V

    .line 730
    if-eqz p2, :cond_1

    .line 732
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultSmsSubId(I)V

    .line 733
    invoke-static {}, Lcom/qti/internal/telephony/QtiSubscriptionController;->getInstance()Lcom/qti/internal/telephony/QtiSubscriptionController;

    move-result-object v2

    aget v3, v1, v4

    invoke-virtual {v2, v3}, Lcom/qti/internal/telephony/QtiSubscriptionController;->setDefaultVoiceSubId(I)V

    .line 734
    aget v2, v1, v4

    invoke-virtual {p0, v2}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setConfigOfChangeDefaultVoiceSub(I)V

    .line 738
    :cond_1
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->hasCdmaCardInsert()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 740
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPreferredCdmaNetworkType()V

    goto :goto_0

    .line 744
    :cond_2
    invoke-direct {p0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->setPreferredGWNetworkType()V

    goto :goto_0
.end method

.method public sendAddSubInfoRecordforSelectMultiMode(ILjava/lang/String;)V
    .locals 4
    .param p1, "slotId"    # I
    .param p2, "iccId"    # Ljava/lang/String;

    .prologue
    .line 390
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 391
    return-void
.end method

.method public sendSimAbsentforSelectMultiMode(I)V
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    .line 420
    iget-object v0, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    const/4 v3, -0x1

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 421
    return-void
.end method

.method public setConfigOfChangeDefaultVoiceSub(I)V
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 942
    invoke-direct {p0, p1}, Lcom/qti/internal/telephony/DdsCardSelectionController;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    .line 943
    .local v0, "phoneAccountHandle":Landroid/telecom/PhoneAccountHandle;
    iget-object v1, p0, Lcom/qti/internal/telephony/DdsCardSelectionController;->mTelecomManager:Landroid/telecom/TelecomManager;

    invoke-virtual {v1, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 944
    return-void
.end method

.method public setPrimaryNetworkType(I)V
    .locals 2
    .param p1, "network_type"    # I

    .prologue
    .line 791
    const-string v0, "persist.radio.ddssim.rat"

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " setPrimaryNetworkType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/qti/internal/telephony/DdsCardSelectionController;->logd(Ljava/lang/String;)V

    .line 793
    return-void
.end method
